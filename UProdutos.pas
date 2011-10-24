unit UProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, IboSuperCombo, DB,
  IB_Components, IBODataset, ExtCtrls, Gradpan, DBGrids, JvExControls,
  JvGradient, Buttons;

const
  campos : array[0..2] of string = ('P.COD_BARRAS', 'P.NM_PRODUTO', 'P.APLICACAO');

type
  TFProdutos = class(TForm)
    EstaQuery: TIBOQuery;
    EstaTransaction: TIBOTransaction;
    EsteDataSource: TDataSource;
    TransactionSuperCombo: TIBOTransaction;
    Panel1: TPanel;
    Button1: TJvGradient;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBoxLembrarPesquisa: TCheckBox;
    EditPesquisa: TEdit;
    ComboBoxCampoOrdenado: TComboBox;
    Label1: TLabel;
    DBGrid1: TwwDBGrid;
    EstaQueryCD_PRODUTO: TIntegerField;
    EstaQueryNM_PRODUTO: TStringField;
    EstaQueryCOD_BARRAS: TStringField;
    EstaQueryPRECOVENDA: TBCDField;
    EstaQueryESTOQUEATUAL: TBCDField;
    EdtEmpresa: TEdit;
    btPesquisaFornecedor: TSpeedButton;
    EdtNomeEmpresa: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ComboBoxCampoOrdenadoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure EdtEmpresaChange(Sender: TObject);
  private
    nomedatabela  : string;
    campoPesquisa : integer;
    sql           : string;
    sqlcampos     : string;
    sqlordena     : string;
    indiceordena  : integer;
    sqljoin       : string;
    sqlcondicoes  : string;
    
    procedure MontaSQL;
    procedure Busca;
    procedure AtualizaGrid;
    procedure SalvaPesquisa(salva: boolean);
    procedure LembraPesquisa;
    function ExisteGrade(cd_produto: integer):boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;

implementation

uses UDataModule, UCadPadrao, DUtilit, UGrades, UEstoque, UComum;

{$R *.dfm}

procedure TFProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  indice : Integer;
begin
  case key of
    VK_RETURN :
      begin
        busca;
        AtualizaGrid;
      end;
    VK_F9:
      begin
        if (EdtEmpresa.Text = '') then
        begin
          CM.AbreAviso('Carregando Registros...');
          if ExisteGrade(EstaQuery.FieldByName('CD_PRODUTO').AsInteger) = true then
          begin
            Application.CreateForm(TFGrades, FGrades);
            FGrades.empresa := EdtEmpresa.Text;
            FGrades.produto := EstaQuery.FieldByName('CD_PRODUTO').AsString;
            FGrades.LblNomeProduto.Caption := EstaQuery.FieldByName('NM_PRODUTO').AsString;
            FGrades.busca;
            CM.FechaAviso;
            FGrades.ShowModal;
            FGrades.Free;
          end
          else begin
            Application.CreateForm(TFEstoque, FEstoque);
            FEstoque.produto := EstaQuery.FieldByName('CD_PRODUTO').AsString;
            FEstoque.busca;
            CM.FechaAviso;
            FEstoque.LblNomeProduto.Caption := EstaQuery.FieldByName('NM_PRODUTO').asstring;
            FEstoque.ShowModal;
            FEstoque.Free;
          end;
        end
        else begin
          CM.AbreAviso('Carregando Registros...');
          if ExisteGrade(EstaQuery.FieldByName('CD_PRODUTO').AsInteger) = true then
          begin
            Application.CreateForm(TFGrades, FGrades);
            FGrades.empresa := EdtEmpresa.Text;
            FGrades.produto := EstaQuery.FieldByName('CD_PRODUTO').AsString;
            FGrades.LblNomeProduto.Caption := EstaQuery.FieldByName('NM_PRODUTO').AsString;
            FGrades.busca;
            CM.FechaAviso;
            FGrades.Caption := 'Grades em '+EdtNomeEmpresa.Text;
            FGrades.ShowModal;
            FGrades.Free;
          end;
          CM.FechaAviso;
        end;
      end;
    VK_F11 :
      begin
        indice := FCadPadrao.PegaIndice(sqlordena,campos);
        if not (indice <= low(campos)) then
        begin
          Dec(indice);
          sqlordena := FCadPadrao.PegaCampoOrdenado(indice,campos);
          busca;
        end
        else begin
          indice := high(campos);
          sqlordena := FCadPadrao.PegaCampoOrdenado(indice,campos);
          busca;
        end;
        ComboBoxCampoOrdenado.ItemIndex := indice;
      end;
    VK_F12 :
      begin
        indice := FCadPadrao.PegaIndice(sqlordena,campos);
        if not (indice >= high(campos)) then
        begin
          Inc(indice);
          sqlordena := FCadPadrao.PegaCampoOrdenado(indice,campos);
          busca;
        end
        else begin
          indice := low(campos);
          sqlordena := FCadPadrao.PegaCampoOrdenado(indice,campos);
          busca;
        end;
        ComboBoxCampoOrdenado.ItemIndex := indice;
      end;
    VK_ESCAPE : Close;
  end;
end;

procedure TFProdutos.MontaSQL;
begin
  sqlcondicoes := '';
  if not (EditPesquisa.Text = '') then
    sqlcondicoes := sqlcondicoes + 'AND '+sqlordena+' LIKE ''%'+editpesquisa.Text+'%'' '
  else
    sqlcondicoes := '';

  if not (EdtEmpresa.Text = '') then
  begin
    sqlcampos := 'P.CD_PRODUTO, P.NM_PRODUTO, p.cod_barras, E.estoqueatual, PR.PRECOVENDA, P.Ult_CD_Empresa';
    sqljoin   := 'LEFT OUTER JOIN SP_PEGAESTOQUE(p.cd_produto,0,:empresa) E on 1=1'+#13+
                 'LEFT OUTER JOIN PRECOS PR ON (P.CD_PRODUTO = PR.CD_PRODUTO and PR.CD_EMPRESA = :EMPRESA)';
  end
  else begin
    sqlcampos := 'P.CD_PRODUTO, P.NM_PRODUTO, p.cod_barras, E.estoqueatual, 0 as PRECOVENDA, P.Ult_CD_Empresa';
    sqljoin := 'LEFT OUTER JOIN SP_PEGAESTOQUE(p.cd_produto,0,:empresa) E on 1=1';
  end;

  sql := 'SELECT '+sqlcampos+pl+
         'FROM '+nomedatabela+pl+
         sqljoin+pl+
         'WHERE 1=1 '+sqlcondicoes+#13+
         'ORDER BY '+sqlOrdena;

  EstaQuery.SQL.Text := sql;
end;

procedure TFProdutos.Busca;
begin
  with EstaQuery do
  begin
    Close;

    if not IB_Transaction.InTransaction then
      IB_Transaction.StartTransaction;

    MontaSQL;


    if not prepared then prepare;

    if EdtEmpresa.Text <> '' then
      ParamByName('EMPRESA').AsString := EdtEmpresa.Text
    else
      paramByname('EMPRESA').AsInteger := 0;

    Open;
  end;
end;

procedure TFProdutos.FormCreate(Sender: TObject);
begin
  cm.AbreAviso('Carregando Registros...');
  nomedatabela    := 'PRODUTOS P';
  sqlcampos       := 'P.CD_PRODUTO, P.NM_PRODUTO, p.cod_barras, E.estoqueatual, PR.PRECOVENDA, P.Ult_CD_Empresa';
  sqljoin         := 'LEFT OUTER JOIN SP_PEGAESTOQUE(p.cd_produto,0,:empresa) E on 1=1'+#13+
                     'LEFT OUTER JOIN PRECOS PR ON P.CD_PRODUTO = PR.CD_PRODUTO';
  sqlcondicoes    := '';
  sqlordena       := LeStringDoRegistro('Software\focus\confLocais\WebFocus','CampoOrdenacaoProdutos','P.CD_PRODUTO');
  LembraPesquisa;
  busca;
  AtualizaGrid;
  cm.FechaAviso;
end;

Procedure TFProdutos.AtualizaGrid;
Begin
  if (EdtEmpresa.Text = '') then
  begin
    EstaQuery.FieldByName('PRECOVENDA').Visible := false;
    DBGrid1.Columns[1].DisplayWidth := 52;
  end
  else begin
    EstaQuery.FieldByName('PRECOVENDA').Visible := true;
    DBGrid1.Columns[1].DisplayWidth := 39;
  end;
end;

procedure TFProdutos.ComboBoxCampoOrdenadoChange(Sender: TObject);
begin
  sqlordena := FCadPadrao.PegaCampoOrdenado(ComboBoxCampoOrdenado.ItemIndex, campos);
  busca;
end;

procedure TFProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvaPesquisa(CheckBoxLembrarPesquisa.Checked);
  EstaQuery.Close;
end;

procedure TFProdutos.SalvaPesquisa(salva : boolean);
begin
  if salva then
  begin
    SalvaBooleanNoRegistro('Software\focus\confLocais\WebFocus','LembrarPesquisaProdutos',CheckBoxLembrarPesquisa.Checked);
    SalvaStringNoRegistro('Software\focus\confLocais\WebFocus','textoPesquisaProdutos',EditPesquisa.Text);
    SalvaStringNoRegistro('Software\focus\confLocais\WebFocus','CampoOrdenacaoProdutos',campos[ComboBoxCampoOrdenado.itemindex]);
    SalvaStringNoRegistro('Software\focus\confLocais\WebFocus','EmpresaPesquisaProdutos',EdtEmpresa.Text);
  end
  else
  begin
    SalvaBooleanNoRegistro('Software\focus\confLocais\WebFocus','LembrarPesquisaProdutos',CheckBoxLembrarPesquisa.Checked);
    SalvaStringNoRegistro('Software\focus\confLocais\WebFocus','textoPesquisaProdutos','');
    SalvaStringNoRegistro('Software\focus\confLocais\WebFocus','CampoOrdenacaoProdutos','P.CD_PRODUTO');
    SalvaStringNoRegistro('Software\focus\confLocais\WebFocus','EmpresaPesquisaProdutos','');
  end;
end;

procedure TFProdutos.LembraPesquisa;
begin
  if LeBooleanDoRegistro('Software\focus\confLocais\WebFocus','LembrarPesquisaProdutos',false) = true then
  begin
    CheckBoxLembrarPesquisa.Checked := LeBooleanDoRegistro('Software\focus\confLocais\WebFocus','LembrarPesquisaProdutos',false);
    EditPesquisa.Text := LeStringDoRegistro('Software\focus\confLocais\WebFocus','textoPesquisaProdutos','');
    ComboBoxCampoOrdenado.ItemIndex := FCadPadrao.PegaIndice(LeStringDoRegistro('Software\focus\confLocais\WebFocus','CampoOrdenacaoProdutos','P.CD_PRODUTO'),campos);
    EdtEmpresa.Text := LeStringDoRegistro('Software\focus\confLocais\WebFocus','EmpresaPesquisaProdutos','');
  end;
end;

function TFProdutos.ExisteGrade(cd_produto : integer):boolean;
begin
  with DtM.IB_Query do
  begin
    Close;

    if not IB_Transaction.InTransaction then
      IB_Transaction.StartTransaction;

    sql.Clear;
    sql.Add('SELECT FIRST 1 CD_PRODUTO FROM GRADES WHERE CD_PRODUTO = :CD_PRODUTO');

    if not prepared then prepare;

    ParamByName('CD_PRODUTO').Asinteger := cd_produto;

    Open;

    if not EoF then
      Result := true
    else
      Result := false;

    ib_transaction.Commit;
  end;
end;

procedure TFProdutos.DBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (Field = EstaQuery.FieldByName('ESTOQUEATUAL')) then
  begin
    if (EstaQuery.FieldByName('ESTOQUEATUAL').AsCurrency <= 0) then
      AFont.Color := clRed
    else begin
      if Highlight then
        AFont.Color := clWhite
    end;
  end;
end;

procedure TFProdutos.EdtEmpresaChange(Sender: TObject);
begin
  DtM.BuscaRegistro(EdtEmpresa, EdtNomeEmpresa, 'EMPRESAS E', 'E.CD_EMPRESA', 'E.NM_EMPRESA');
end;

end.
