unit UPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, DB, IBCustomDataSet, IBQuery, DUtilit, DBGrids, IBUpdateSQL, Buttons,
  IBSQL, IBODataset, JvExControls, JvComponent, JvXPCore, JvXPButtons,
  JvComponentBase, JvgCheckBox, JvXPCheckCtrls, IB_Components, JvLabel,MMJPanel;

const
  psCodigo = 0;
  psNome   = 1;

  ModoDesenvolvimento = true;

type
  TRegInfoField = record
    FieldName      : String;
    Caption        : String;
    Width          : word;
    Alignment      : TAlignment;
    DisplayFormat  : String;
    DataType       : TFieldType;
  end;
  TPesquisarOQue = (pqProdutos, pqClientes, pqVendedores, pqUsuarios, pqFornecedores, pqOrcamentos, pqPedidos, pqVendas, pqEntradaNotas, pqCodVenda, pqPracas, pqSimilares, pqRepresentantes);

  TItemEscolhido = record
    CodInt : Integer;
    CodExt : String[13];
    SubCod : Integer;
  end;

  TConfGeral = record
    CodVendaPadrao        : Integer;
    TaxaJurosFixa         : Currency;
    TipoTaxaDeJuros       : word;  // 0 = Individual;  1 = Taxa Fixa
    AutoDetectaCampoPesquisa : boolean;
    GradeCampoCodigo      : String;
    GradeCampoDescricao   : String;
    GradeExibirCodigo     : Boolean;
    ProdExibirNumSerie    : Boolean;
  end;

  TfPesquisa = class(TForm)
    MMJPanel1: TMMJPanel;
    Label1: TJvLabel;
    Label2: TJvLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    CheckBoxIncremental: TJvXPCheckbox;
    CheckBoxComposta: TJvXPCheckbox;
    wwDBGrid: TwwDBGrid;
    CheckBoxUltimoAcessado: TJvXPCheckbox;
    CheckBoxSomenteVinculados: TJvXPCheckbox;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    btCadastrar: TBitBtn;
    btAlterar: TBitBtn;
    DataSource1: TDataSource;
    IBPesquisa: TIBOQuery;
    Transacao: TIBOTransaction;
    lbInformacoes: TLabel;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure wwDBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wwDBGridDblClick(Sender: TObject);
    procedure CheckBoxIncrementalClick(Sender: TObject);
    procedure CheckBoxUltimoAcessadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBoxSomenteVinculadosClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btCadastrarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure wwDBGridColWidthChanged(Sender: TObject; Column: Integer);
    procedure FormActivate(Sender: TObject);
  private
    CampoPesquisa   : String;
    TabelaPesquisa  : String;
    PodePesquisar   : boolean;
    UltimaPalavra   : String;
    MudouComboAuto  : boolean;
    InfoField : Array of TRegInfoField;
    FormCadastro : TForm;
    EditSelectAll : boolean;
    procedure DetectaTipoPesquisa;
    procedure ExecutaBuscaTexto;
    procedure PegaInfoCampos;
    procedure AjustaPropriedadesDoForm;
    procedure AjustaPropriedadesDoGrid;
    procedure IncluiCampo(icCaption, icFieldName: String; icWidth:Integer; icDataType: TFieldType; icAlignment: TAlignment = taCenter; icDisplayFormat: String = '');
    procedure LimpaCampos;
    procedure PosicionaComponentes;
    function  PegaPropCampo(ppNomeDoCampo: String): integer;
    procedure CriaFormCadastro;
    procedure MostraGrade;
    function Pode(pdOperacao: char): boolean;
  public
    EntradaDeNotas  : Boolean;
    MostraInativos  : Boolean;
    ValorEntrada    : String;
    FiltroExterno   : String;
    ChaveDoRegistro : String;
    PesquisarOQue   : TPesquisarOQue;
    Select, SelectNormal, SelectComVinculo : String;
    Filtro : String;
    CampoResultadoInt : String;
    CampoResultadoExt : String;
    ModoConsulta    : boolean;
    ItemEscolhido   : TItemEscolhido;
    Vinculo         : integer;
  end;

var
  fPesquisa: TfPesquisa;
  C : word;

implementation

uses UComum;

{uses UPDV, UCadClientes, UCadFornecedores, UCadPracas, UCadSimilares,
     UCadRepresentantes, UProdutosDoFornecedor, USelecGrade, UCadUsuarios,
  UFocusForms, UValidacao;}

{$R *.dfm}

procedure TfPesquisa.DetectaTipoPesquisa;
begin
  if not PodePesquisar then Exit;
  if not ConfGeral.AutoDetectaCampoPesquisa then exit;

  MudouComboAuto := true;
  if not Vazio(Edit1.Text) then
  begin
    if (ComboBox1.ItemIndex = psNome) and (ENumero(Edit1.Text)) then
    begin
      ComboBox1.ItemIndex := psCodigo;
      ComboBox1Change(self);
    end;
    if (ComboBox1.ItemIndex = psCodigo) and (PorcentNumero(Edit1.Text)< PorcentCodigo) then
    begin
      ComboBox1.ItemIndex := psNome;
      ComboBox1Change(self);
    end;
  end;
  MudouComboAuto := false;
end;

procedure TfPesquisa.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case key of
    vk_Down  : if (Shift = []) and (IBPesquisa.Active) then IBPesquisa.Next;
    vk_Up    : if (Shift = []) and (IBPesquisa.Active) then IBPesquisa.Prior;
    vk_Next  : if (Shift = []) and (IBPesquisa.Active) then IBPesquisa.MoveBy(+10);
    vk_Prior : if (Shift = []) and (IBPesquisa.Active) then IBPesquisa.MoveBy(-10);
    vk_End   : if (Shift = [ssCtrl]) and (IBPesquisa.Active) then IBPesquisa.Last;
    vk_Home  : if (Shift = [ssCtrl]) and (IBPesquisa.Active) then IBPesquisa.First;

    vk_Return : begin
                  if NOT CheckBoxIncremental.Checked then
                  begin
                    DetectaTipoPesquisa;
                    if Edit1.Text = UltimaPalavra then btOk.OnClick(Self)
                    else begin
                      ExecutaBuscaTexto;
                      Edit1.SelectAll;
                    end;
                  end
                  else begin
                    btOk.OnClick(self);
                  end;
                end;
  end;
end;

procedure TfPesquisa.ComboBox1Change(Sender: TObject);
begin
//  Edit1.Width := StrToInt(TiraEspacos(StringPos(ComboBox1.Text, '¤', 2)));
  CampoPesquisa := TiraEspacos(StringPos(ComboBox1.Text, '¤', 3));
  TabelaPesquisa := TiraEspacos(StringPos(ComboBox1.Text, '¤', 4));
  if not MudouComboAuto then Edit1.Clear;
end;

procedure TfPesquisa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case key of
    vk_Escape : Close;
    vk_F3     : Edit1.SetFocus;
    vk_F2     : if Shift = [] then if btCadastrar.Visible then btCadastrar.OnClick(self);
    vk_F5     : if Shift = [] then if btAlterar.Visible   then btAlterar.OnClick(self);
    vk_F9     : if Shift = [] then
                begin
                  case PesquisarOQue of
                    pqFornecedores :
                    begin
                      Application.CreateForm(TfProdutosDoFornecedor, fProdutosDoFornecedor);
                      fProdutosDoFornecedor.CodFornecedor := IBPesquisa.FieldByName(CampoResultadoInt).AsInteger;
                      fProdutosDoFornecedor.ShowModal;
                      fProdutosDoFornecedor.Free;
                    end;
                    pqRepresentantes :
                    begin
                      Application.CreateForm(TfProdutosDoFornecedor, fProdutosDoFornecedor);
                      fProdutosDoFornecedor.CodRepresentante := IBPesquisa.FieldByName(CampoResultadoInt).AsInteger;
                      fProdutosDoFornecedor.ShowModal;
                      fProdutosDoFornecedor.Free;
                    end;
                    pqPedidos    : FF.MostraItems(IBPesquisa.FieldByName('NUM_DOCUMENTO').AsInteger, 'P');
                    pqOrcamentos : FF.MostraItems(IBPesquisa.FieldByName('NUM_DOCUMENTO').AsInteger, 'O');
                    pqVendas     : FF.MostraItems(IBPesquisa.FieldByName('NUM_DOCUMENTO').AsInteger, 'V');
                  end;
                end;
    vk_F11    : begin
                  if ComboBox1.ItemIndex > 0 then
                    ComboBox1.ItemIndex := ComboBox1.ItemIndex -1
                  else
                    ComboBox1.ItemIndex := ComboBox1.Items.Count -1;
                  ComboBox1.OnChange(self);
                  Edit1.Clear;
                  Edit1.SetFocus;
                end;
    vk_F12    : begin
                  if ComboBox1.ItemIndex < ComboBox1.Items.Count -1 then
                    ComboBox1.ItemIndex := ComboBox1.ItemIndex + 1
                  else
                    ComboBox1.ItemIndex := 0;
                  ComboBox1.OnChange(self);
                  Edit1.Clear;
                  Edit1.SetFocus;
                end;
  end;
end;

procedure TfPesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SalvaValorNoRegistro(ChaveDoRegistro,   'Campo', ComboBox1.ItemIndex, 'I');
  SalvaBooleanNoRegistro(ChaveDoRegistro, 'PesquisaIncremental', CheckBoxIncremental.Checked);
  SalvaBooleanNoRegistro(ChaveDoRegistro, 'PesquisaComposta', CheckBoxComposta.Checked);
  SalvaBooleanNoRegistro(ChaveDoRegistro, 'AbrirUltimoAcesso', CheckBoxUltimoAcessado.Checked);
  SalvaStringNoRegistro(ChaveDoRegistro,  'UltimoPesquisado', Edit1.Text);
  SalvaStringNoRegistro(ChaveDoRegistro,  'UltimoSelecionado', IBPesquisa.FieldByName(CampoPesquisa).AsString);

  if CheckBoxSomenteVinculados.Visible then
    SalvaBooleanNoRegistro(ChaveDoRegistro, 'VinculoFornec', CheckBoxSomenteVinculados.Checked);

  CM.FechaTT(IBPesquisa);
end;

procedure TfPesquisa.FormCreate(Sender: TObject);
var
  i : integer;
begin
  EntradaDeNotas := false;
  IBPesquisa.IB_Connection := CM.IBTabela.IB_Connection;
  Transacao.IB_Connection := CM.IBTabela.IB_Connection;
  ValorEntrada := '';
  IBPesquisa.Close;
  MudouComboAuto := false;
  PodePesquisar := false;
  ItemEscolhido.CodExt  := '';
  ItemEscolhido.CodInt  := CodigoVazio;

  if (Modulo = moPDV) and (fPDV <> nil) then
  begin
    for i := 0 to ComponentCount-1 do
    begin
      if (Components[i] is TJVLabel) then
        TJVLabel(Components[i]).Font.Color := fPDV.lbNomeDoProduto1.Font.Color;

      if (Components[i].InheritsFrom(TCustomEdit)) or (Components[i].InheritsFrom(TCustomComboBox)) then
      begin
        TEdit(Components[i]).Font.Color := fPDV.EditCodBarras1.Font.Color;
        TEdit(Components[i]).Color := fPDV.EditCodBarras1.Color;
      end;
    end;

    FF.AjustaTelaPDV(self);
  end;
end;

procedure TfPesquisa.FormShow(Sender: TObject);
var
  S : String;
begin
  try
    PegaInfoCampos;
    AjustaPropriedadesDoForm;
    CheckBoxSomenteVinculados.Visible := (Vinculo > 0); 
    CheckBoxSomenteVinculados.Checked := LeBooleanDoRegistro(ChaveDoRegistro, 'VinculoFornec', false);
    if not CheckBoxSomenteVinculados.Visible then CheckBoxSomenteVinculados.Checked := false;

    ComboBox1.ItemIndex := LeIntegerDoRegistro(ChaveDoRegistro, 'Campo', 0);
    ComboBox1Change(self);
    CheckBoxIncremental.Checked    := LeBooleanDoRegistro(ChaveDoRegistro, 'PesquisaIncremental', true);
    CheckBoxComposta.Checked       := LeBooleanDoRegistro(ChaveDoRegistro, 'PesquisaComposta', true);
    CheckBoxUltimoAcessado.Checked := LeBooleanDoRegistro(ChaveDoRegistro, 'AbrirUltimoAcesso', true);

    if CheckBoxUltimoAcessado.Checked then
      Edit1.Text := LeValorDoRegistro(ChaveDoRegistro, 'UltimoPesquisado', 'S', '')
    else Edit1.Clear;

    EditSelectAll := true;
    if not Vazio(ValorEntrada) then
    begin
      EditSelectAll := not (ValorEntrada[length(ValorEntrada)] = '¤');
      if not EditSelectAll then delete(ValorEntrada, length(ValorEntrada), 1);
      Edit1.Text := ValorEntrada;
    end;

    UltimaPalavra := Edit1.Text;

    IBPesquisa.Active := false;
    IBPesquisa.SQL.Clear;

    if CheckBoxSomenteVinculados.Checked then Select := SelectComVinculo
                                         else Select := SelectNormal;

    IBPesquisa.SQL.Add(Select);
    PodePesquisar := true;

    if not Vazio(FiltroExterno) then
    begin
      IBPesquisa.Filter := FiltroExterno;
      IBPesquisa.Filtered := true;
    end;

    ExecutaBuscaTexto;
    AjustaPropriedadesDoGrid;
    if CheckBoxUltimoAcessado.Checked then
    begin
      S := LeStringDoRegistro(ChaveDoRegistro, 'UltimoSelecionado', '');
      IBPesquisa.Locate(CampoPesquisa, S, [loCaseInsensitive]);
    end;
  finally
    CM.FechaAviso;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfPesquisa.ExecutaBuscaTexto;
var
  Texto : String;
begin
  if not PodePesquisar then Exit;
  Texto := Edit1.Text;

  CM.BuscaTexto(IbPesquisa, Texto, Select, CampoPesquisa, TabelaPesquisa, '', CampoPesquisa, CheckBoxComposta.Checked);
  UltimaPalavra := Edit1.Text;
  AjustaPropriedadesDoGrid;
end;

procedure TfPesquisa.Edit1Change(Sender: TObject);
begin
  if CheckBoxIncremental.Checked then    // SE FOR INCREMENTAL...
  begin
    DetectaTipoPesquisa;
    ExecutaBuscaTexto;
  end
  else UltimaPalavra := '';
end;

procedure TfPesquisa.wwDBGridDblClick(Sender: TObject);
begin
  btOk.OnClick(self);
end;

procedure TfPesquisa.wwDBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Pt : TPoint;
begin
//  if key in [vk_Down, vk_Up] then
  begin
    {Obtém o point no centro do Button1}
    Pt.x := Edit1.Left + (Edit1.Width div 2);
    Pt.y := Edit1.Top + (Edit1.Height div 2);
    {Converte Pt para as coordenadas da tela }
    Pt := ClientToScreen(Pt);
    Pt.x := Round(Pt.x * (65535 / Screen.Width));
    Pt.y := Round(Pt.y * (65535 / Screen.Height));
    {Move o mouse}
    Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE, Pt.x, Pt.y, 0, 0);
    {Simula o pressionamento do botão esquerdo do mouse}
    Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN, Pt.x, Pt.y, 0, 0);
    { Simula soltando o botão esquerdo do mouse }
    Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, Pt.x, Pt.y, 0, 0);
  end;
end;

procedure TfPesquisa.CheckBoxIncrementalClick(Sender: TObject);
begin
  try
    Edit1.SetFocus;
    ExecutaBuscaTexto;
  except
  end;
end;

procedure TfPesquisa.CheckBoxUltimoAcessadoClick(Sender: TObject);
begin
  try
    Edit1.SetFocus;
  except
  end;
end;

function TfPesquisa.PegaPropCampo(ppNomeDoCampo:String):integer;
var
  i : word;
begin
  result := -1;
  for i := 0 to length(InfoField)-1 do
  begin
    if InfoField[i].FieldName = ppNomeDoCampo then
    begin
      result := i;
      break;
    end;
  end;
end;

procedure TfPesquisa.AjustaPropriedadesDoGrid;
var
  i : word;
  pos : integer;
begin
  IBPesquisa.disableControls;
  try
    for i := 0 to IBPesquisa.Fields.Count-1 do
    begin
      pos := PegaPropCampo(IBPesquisa.Fields[i].FieldName);
      if pos < 0 then
      begin
        IBPesquisa.Fields[i].Visible := false;
      end
      else begin
        IBPesquisa.Fields[i].DisplayLabel := InfoField[pos].Caption;
        IBPesquisa.Fields[i].DisplayWidth := InfoField[pos].Width;
        IBPesquisa.Fields[i].Alignment    := InfoField[pos].Alignment;
        case InfoField[pos].DataType of
          ftFloat    : TFloatField(IBPesquisa.Fields[i]    as TField).DisplayFormat := InfoField[pos].DisplayFormat;
          ftCurrency : TCurrencyField(IBPesquisa.Fields[i] as TField).DisplayFormat := InfoField[pos].DisplayFormat;
          ftString   : TStringField(IBPesquisa.Fields[i]   as TField).EditMask      := InfoField[pos].DisplayFormat;
          ftDateTime : TDateTimeField(IBPesquisa.Fields[i] as TField).DisplayFormat := InfoField[pos].DisplayFormat;
          ftDate     : TDateField(IBPesquisa.Fields[i]     as TField).DisplayFormat := InfoField[pos].DisplayFormat;
          ftTime     : TTimeField(IBPesquisa.Fields[i]     as TField).DisplayFormat := InfoField[pos].DisplayFormat;
          ftInteger  : TTimeField(IBPesquisa.Fields[i]     as TField).DisplayFormat := InfoField[pos].DisplayFormat;
        end;
        IBPesquisa.Fields[i].Index := pos;  //  Tem que ser o último
      end;
    end;
  finally
    IBPesquisa.enableControls;
  end;
end;

procedure TfPesquisa.CheckBoxSomenteVinculadosClick(Sender: TObject);
begin
  if IBPesquisa.Active then
  begin
    IBPesquisa.Active := false;
    IBPesquisa.SQL.Clear;

    if CheckBoxSomenteVinculados.Checked then Select := SelectComVinculo
                                         else Select := SelectNormal;
    IBPesquisa.SQL.Add(Select);
    if not IBPesquisa.Prepared then IBPesquisa.Prepare;
    IBPesquisa.Active := true;
    Edit1.SetFocus;
  end;
  AjustaPropriedadesDoGrid;
end;

procedure TfPesquisa.IncluiCampo(icCaption, icFieldName: String; icWidth:Integer; icDataType: TFieldType; icAlignment: TAlignment = taCenter; icDisplayFormat: String = '');
begin
  SetLength(InfoField, Length(InfoField)+1);
  with InfoField[Length(InfoField)-1] do begin
    Caption        := icCaption;
    FieldName      := icFieldName;
    Width          := icWidth;
    Alignment      := icAlignment;
    DisplayFormat  := icDisplayFormat;
    DataType       := icDataType;
  end;
end;

procedure TfPesquisa.LimpaCampos;
begin
  SetLength(InfoField, 0);
end;

procedure TfPesquisa.btOkClick(Sender: TObject);
begin
  if IBPesquisa.IsEmpty then
  begin
    ItemEscolhido.CodInt := CodigoVazio;
    ItemEscolhido.CodExt := '';
  end
  else begin
    ItemEscolhido.CodInt := IBPesquisa.FieldByName(CampoResultadoInt).AsInteger;
    ItemEscolhido.CodExt := IBPesquisa.FieldByName(CampoResultadoExt).AsString;
  end;
  if not ModoConsulta then
    self.Close
  else begin
    if CM.TemGrades(IBPesquisa.FieldByName('CD_PRODUTO').AsInteger) then
      MostraGrade;
    Edit1.SetFocus;
    Edit1.SelectAll;
  end;
end;

procedure TfPesquisa.btCancelarClick(Sender: TObject);
begin
  ItemEscolhido.CodInt := CodigoVazio;
  ItemEscolhido.CodExt := '';
  self.Close;
end;

procedure TfPesquisa.PosicionaComponentes;
begin
  wwDBGrid.Width   := Width - 35;
  btOk.Left        := wwDBGrid.Left + wwDBGrid.Width - btOk.Width;
  btCancelar.Left  := btOk.Left;
  ComboBox1.Left   := wwDBGrid.Left + wwDBGrid.Width - ComboBox1.Width;
  Label2.Left      := wwDBGrid.Left + wwDBGrid.Width - Label2.Width;
  Edit1.Width      := ComboBox1.Left - 15 - 15;
end;

procedure TfPesquisa.AjustaPropriedadesDoForm;
begin
  case PesquisarOQue of
    pqClientes     : Caption := 'Pesquisa de Clientes';
    pqVendedores   : Caption := 'Pesquisa de Vendedores';
    pqUsuarios     : Caption := 'Pesquisa de Usuários';
    pqOrcamentos   : Caption := 'Pesquisa de Orçamentos';
    pqPedidos      : Caption := 'Pesquisa de Pedidos';
    pqVendas       : Caption := 'Pesquisa de Vendas';
    pqFornecedores : Caption := 'Pesquisa de Fornecedores';
    pqEntradaNotas : Caption := 'Pesquisa de Entrada de Notas';
    pqCodVenda     : Caption := 'Pesquisa de Cód. Venda';
    pqPracas       : Caption := 'Pesquisa de Praças';
    pqSimilares    : Caption := 'Pesquisa de Similares';
    pqRepresentantes : Caption := 'Pesquisa de Representantes';
  end;

  case PesquisarOQue of
    pqClientes : CheckBoxSomenteVinculados.Caption := 'Clientes vinculados';
  end;

  lbInformacoes.Visible := true;
  case PesquisarOQue of
    pqFornecedores   : lbInformacoes.Caption := '<F9> Produtos do Fornecedor';
    pqRepresentantes : lbInformacoes.Caption := '<F9> Produtos do Representante';
    pqPedidos        : lbInformacoes.Caption := '<F9> Produtos do Pedido';
    pqOrcamentos     : lbInformacoes.Caption := '<F9> Produtos do Orçamento';
    pqVendas         : lbInformacoes.Caption := '<F9> Produtos da Venda';
    else lbInformacoes.Visible := false;
  end;

  case PesquisarOQue of
    pqClientes :
    begin
      if Modulo = moPDV then
      begin
        btCadastrar.Visible := InfoPDV.PodeCadastClientes;
        btAlterar.Visible   := InfoPDV.PodeCadastClientes;
      end;
    end;
  end;
end;

procedure TfPesquisa.PegaInfoCampos;
var
  SelectTemp : String;
  Preco      : String;
begin
  case PesquisarOQue of
    //##########################################################################
    pqClientes : begin
      Width := 610;
      CampoResultadoInt := 'CD_CLIENTE';
      CampoResultadoExt := 'CD_CLIENTE';
      SelectNormal := ' Select CLIENTES.CD_CLIENTE, CLIENTES.NM_CLIENTE, CLIENTES.APELIDO, CLIENTES.CPF from CLIENTES ';
      if EstouNaTelaDeVendas and (ConfVendas.OcultaClientesBloq) then
        SelectNormal := SelectNormal + ' left outer join REFCLIENTES on REFCLIENTES.CD_CLIENTE = CLIENTES.CD_CLIENTE ';
      SelectNormal := SelectNormal + ' where CLIENTES.CD_CLIENTE > 0 ';
      if not MostraInativos then SelectNormal := SelectNormal + ' and INATIVO = ''F'' ';
      if EstouNaTelaDeVendas and (ConfVendas.OcultaClientesBloq) then
      begin
        if ConfVendas.OcultaClientesBloqMan then
          SelectNormal := SelectNormal + ' and  REFCLIENTES.BLOQUEIOMANUAL = ''F'' '
        else
          SelectNormal := SelectNormal + ' and  REFCLIENTES.BLOQUEADO = ''F'' ';
      end;
      SelectComVinculo := SelectNormal + ' and CLIENTES.CD_VENDEDOR = '+IntToStr(Vinculo);
      Filtro  := '';
      ChaveDoRegistro := RegChaveForms+'\PesqClientes';
      ComboBox1.Clear;

      ComboBox1.Items.Add('Código'             +Espacos100+'¤ 135 ¤ CD_CLIENTE ¤ CLIENTES');
      ComboBox1.Items.Add('Nome/Razão Soc.'    +Espacos100+'¤ 401 ¤ NM_CLIENTE ¤ CLIENTES');
      ComboBox1.Items.Add('Apelido/Nome Fant.' +Espacos100+'¤ 401 ¤ APELIDO ¤ CLIENTES');
      ComboBox1.Items.Add('CPF'                +Espacos100+'¤ 135 ¤ CPF ¤ CLIENTES');

      LimpaCampos;
      IncluiCampo('Código',               'CD_CLIENTE', 08, ftInteger, taCenter, Repete('0', DigCodCliente));
      IncluiCampo('Nome / Razão Soc.',    'NM_CLIENTE', 41, ftString,  taLeftJustify, '');
      IncluiCampo('Apelido / Nome Fant.', 'APELIDO',    22, ftString,  taLeftJustify, '');
      IncluiCampo('CPF / CNPJ',           'CPF',        15, ftString,  taLeftJustify, '');
    end;

    //##########################################################################
    pqVendedores : begin
      Width := 610;
      CampoResultadoInt := 'CD_USUARIO';
      CampoResultadoExt := 'CD_USUARIO';
      SelectNormal := ' select CD_USUARIO, NM_USUARIO, APELIDO from USUARIOS '+
                      ' where (CD_USUARIO > 0) and (E_VENDEDOR = ''V'') and (DEMITIDO = ''F'') ';
      if not MostraInativos then SelectNormal := SelectNormal + ' and INATIVO = ''F'' ';
      SelectComVinculo := '';
      Filtro  := '';

      ChaveDoRegistro := RegChaveForms+'\PesqVendedores';
      ComboBox1.Clear;

      ComboBox1.Items.Add('Código'  +Espacos100+'¤ 135 ¤ CD_USUARIO ¤ USUARIOS');
      ComboBox1.Items.Add('Nome'    +Espacos100+'¤ 401 ¤ NM_USUARIO ¤ USUARIOS');
      ComboBox1.Items.Add('Apelido' +Espacos100+'¤ 401 ¤ APELIDO ¤ USUARIOS');

      LimpaCampos;
      IncluiCampo('Código',   'CD_USUARIO', 14, ftInteger, taCenter, Repete('0', DigCodVendedor));
      IncluiCampo('Vendedor', 'NM_USUARIO', 43, ftString,  taLeftJustify, '');
      IncluiCampo('Apelido',  'APELIDO',    30, ftString,  taLeftJustify, '');
    end;

    //##########################################################################
    pqUsuarios : begin
      Width := 610;
      CampoResultadoInt := 'CD_USUARIO';
      CampoResultadoExt := 'CD_USUARIO';
      SelectNormal := ' select CD_USUARIO, NM_USUARIO, APELIDO from USUARIOS '+
                      ' where CD_USUARIO > 0 ';
      if not MostraInativos then SelectNormal := SelectNormal + ' and INATIVO = ''F'' ';
      SelectComVinculo := '';
      Filtro  := '';
      ChaveDoRegistro := RegChaveForms+'\PesqUsuarios';
      ComboBox1.Clear;

      ComboBox1.Items.Add('Código'  +Espacos100+'¤ 135 ¤ CD_USUARIO ¤ USUARIOS');
      ComboBox1.Items.Add('Nome'    +Espacos100+'¤ 401 ¤ NM_USUARIO ¤ USUARIOS');
      ComboBox1.Items.Add('Apelido' +Espacos100+'¤ 401 ¤ APELIDO ¤ USUARIOS');

      LimpaCampos;
      IncluiCampo('Código',      'CD_USUARIO', 14, ftInteger, taCenter, Repete('0', DigCodVendedor));
      IncluiCampo('Usuário',     'NM_USUARIO', 43, ftString,  taLeftJustify, '');
      IncluiCampo('Apelido',     'APELIDO',    30, ftString,  taLeftJustify, '');
    end;

    //##########################################################################
    pqFornecedores : begin
      Width := 610;
      CampoResultadoInt := 'CD_FORNECEDOR';
      CampoResultadoExt := 'CD_FORNECEDOR';
      SelectNormal := ' SELECT CD_FORNECEDOR, NM_FORNECEDOR, NOMEFANTASIA, CGC FROM FORNECEDORES '+
                      ' where CD_FORNECEDOR > 0 ';
      if not MostraInativos then SelectNormal := SelectNormal + ' and INATIVO = ''F'' ';
      SelectComVinculo := '';
      Filtro  := '';
      ChaveDoRegistro := RegChaveForms+'\PesqFornecedores';
      ComboBox1.Clear;

      ComboBox1.Clear;
      ComboBox1.Items.Add('Código'             +Espacos100+'¤ 135 ¤ CD_FORNECEDOR ¤ FORNECEDORES');
      ComboBox1.Items.Add('Razão Social/Nome'  +Espacos100+'¤ 465 ¤ NM_FORNECEDOR ¤ FORNECEDORES');
      ComboBox1.Items.Add('Nome Fant./Apelido' +Espacos100+'¤ 465 ¤ NOMEFANTASIA ¤ FORNECEDORES');
      ComboBox1.Items.Add('CNPJ'               +Espacos100+'¤ 465 ¤ CGC ¤ FORNECEDORES');

      LimpaCampos;
      IncluiCampo('Código',             'CD_FORNECEDOR',  06, ftInteger, taCenter, '');
      IncluiCampo('Razão Social/Nome',  'NM_FORNECEDOR',  32, ftString,  taLeftJustify, '');
      IncluiCampo('Nome Fant./Apelido', 'NOMEFANTASIA',   30, ftString,  taLeftJustify, '');
      IncluiCampo('CNPJ / CPF',         'CGC',            17, ftString,  taLeftJustify, '');
    end;

    //##########################################################################
    pqRepresentantes : begin
      Width := 542;
      CampoResultadoInt := 'CD_REPRESENTANTE';
      CampoResultadoExt := 'CD_REPRESENTANTE';
      SelectNormal := ' SELECT CD_REPRESENTANTE, NM_REPRESENTANTE FROM REPRESENTANTES '+
                      ' where CD_REPRESENTANTE > 0 ';
      if not MostraInativos then SelectNormal := SelectNormal + ' and INATIVO = ''F'' ';
      SelectComVinculo := '';
      Filtro  := '';
      ChaveDoRegistro := RegChaveForms+'\PesqRepresentantes';
      ComboBox1.Clear;

      ComboBox1.Clear;
      ComboBox1.Items.Add('Código'   +Espacos100+'¤ 135 ¤ CD_REPRESENTANTE ¤ REPRESENTANTES');
      ComboBox1.Items.Add('Nome'     +Espacos100+'¤ 500 ¤ NM_REPRESENTANTE ¤ REPRESENTANTES');

      LimpaCampos;
      IncluiCampo('Código', 'CD_REPRESENTANTE',  12, ftInteger, taCenter, '');
      IncluiCampo('Nome',   'NM_REPRESENTANTE',  65, ftString,  taLeftJustify, '');
    end;

    //##########################################################################
    pqOrcamentos : begin
      Width := 610;
      CampoResultadoInt := 'NUM_DOCUMENTO';
      CampoResultadoExt := 'NUM_DOCUMENTO';
      SelectNormal := ' Select DT_VENDA, NUM_DOCUMENTO, case coalesce(CD_CLIENTE, 0) '+
                      ' when -1 then 0  else coalesce(CD_CLIENTE, 0) end as CD_CLIENTE, '+
                      ' NM_CLIENTE, TOTALLIQUIDO from VENDAS '+
                      ' where PED_ORC_VENDA = ''O'' and  CANCELADO <> ''V''  ';
      SelectComVinculo := '';
      Filtro  := '';
      ChaveDoRegistro := RegChaveForms+'\PesqOrcamentos';
      ComboBox1.Clear;

      ComboBox1.Items.Add('Nº Documento'    +Espacos100+'¤ 135 ¤ NUM_DOCUMENTO ¤ VENDAS');
      ComboBox1.Items.Add('Nome do Cliente' +Espacos100+'¤ 401 ¤ NM_CLIENTE ¤ VENDAS');
      ComboBox1.Items.Add('Cód. do Cliente' +Espacos100+'¤ 135 ¤ CD_CLIENTE ¤ VENDAS');

      LimpaCampos;
      IncluiCampo('Data',            'DT_VENDA',         10, ftDateTime, taCenter,       'dd/mm/yyyy');
      IncluiCampo('Nº Doc.',         'NUM_DOCUMENTO',    09, ftInteger,  taLeftJustify,  Repete('0', DigNumDocumento));
      IncluiCampo('Cliente',         'CD_CLIENTE',       07, ftInteger,  taLeftJustify,  '');
      IncluiCampo('Nome do Cliente', 'NM_CLIENTE',       44, ftString,   taLeftJustify,  '');
      IncluiCampo('Valor',           'TOTALLIQUIDO',     14, ftCurrency, taRightJustify, ',0.00;-,0.00');
    end;

    //##########################################################################
    pqPedidos : begin
      Width := 610;
      CampoResultadoInt := 'NUM_DOCUMENTO';
      CampoResultadoExt := 'NUM_DOCUMENTO';
      SelectNormal := ' Select DT_VENDA, NUM_DOCUMENTO, case coalesce(CD_CLIENTE, 0) '+
                      ' when -1 then 0  else coalesce(CD_CLIENTE, 0) end as CD_CLIENTE, '+
                      ' NM_CLIENTE, TOTALLIQUIDO from VENDAS '+
                      ' where PED_ORC_VENDA = ''P'' and  CANCELADO <> ''V''  ';
      SelectComVinculo := '';
      Filtro  := '';
      ChaveDoRegistro := RegChaveForms+'\PesqPedidos';
      ComboBox1.Clear;

      ComboBox1.Items.Add('Nº Documento'    +Espacos100+'¤ 135 ¤ NUM_DOCUMENTO ¤ VENDAS');
      ComboBox1.Items.Add('Nome do Cliente' +Espacos100+'¤ 401 ¤ NM_CLIENTE ¤ VENDAS');
      ComboBox1.Items.Add('Cód. do Cliente' +Espacos100+'¤ 135 ¤ CD_CLIENTE ¤ VENDAS');

      LimpaCampos;
      IncluiCampo('Data',            'DT_VENDA',         10, ftDateTime, taCenter,       'dd/mm/yyyy');
      IncluiCampo('Nº Doc.',         'NUM_DOCUMENTO',    09, ftInteger,  taLeftJustify,  Repete('0', DigNumDocumento));
      IncluiCampo('Cliente',         'CD_CLIENTE',       07, ftInteger,  taLeftJustify,  '');
      IncluiCampo('Nome do Cliente', 'NM_CLIENTE',       44, ftString,   taLeftJustify,  '');
      IncluiCampo('Valor',           'TOTALLIQUIDO',     14, ftCurrency, taRightJustify, ',0.00;-,0.00');
    end;

    //##########################################################################
    pqVendas : begin
      Width := 610;
      CampoResultadoInt := 'NUM_DOCUMENTO';
      CampoResultadoExt := 'NUM_DOCUMENTO';
      SelectNormal := ' Select DT_VENDA, NUM_DOCUMENTO, case coalesce(CD_CLIENTE, 0) '+
                      ' when -1 then 0  else coalesce(CD_CLIENTE, 0) end as CD_CLIENTE, '+
                      ' NM_CLIENTE, TOTALLIQUIDO from VENDAS '+
                      ' where PED_ORC_VENDA = ''V'' and  CANCELADO <> ''V''  ';
      SelectComVinculo := '';
      Filtro  := '';
      ChaveDoRegistro := RegChaveForms+'\PesqVendas';
      ComboBox1.Clear;

      ComboBox1.Items.Add('Nº Documento'    +Espacos100+'¤ 135 ¤ NUM_DOCUMENTO ¤ VENDAS');
      ComboBox1.Items.Add('Nome do Cliente' +Espacos100+'¤ 401 ¤ NM_CLIENTE ¤ VENDAS');
      ComboBox1.Items.Add('Cód. do Cliente' +Espacos100+'¤ 135 ¤ CD_CLIENTE ¤ VENDAS');

      LimpaCampos;
      IncluiCampo('Data',            'DT_VENDA',         10, ftDateTime, taCenter,       'dd/mm/yyyy');
      IncluiCampo('Nº Doc.',         'NUM_DOCUMENTO',    09, ftInteger,  taLeftJustify,  Repete('0', DigNumDocumento));
      IncluiCampo('Cliente',         'CD_CLIENTE',       07, ftInteger,  taLeftJustify,  '');
      IncluiCampo('Nome do Cliente', 'NM_CLIENTE',       44, ftString,   taLeftJustify,  '');
      IncluiCampo('Valor',           'TOTALLIQUIDO',     14, ftCurrency, taRightJustify, ',0.00;-,0.00');
    end;

    //##########################################################################
    pqEntradaNotas : begin
      Width := 742;
      CampoResultadoInt := 'CD_NOTA';
      CampoResultadoExt := 'CD_NOTA';
      SelectNormal := ' SELECT NF.DT_ENTRADA, NF.NUM_DOCUMENTO, NF.CNPJ, FORNECEDORES.NM_FORNECEDOR, FORNECEDORES.NOMEFANTASIA, NF.VALOR_TOTAL_NOTA, NF.CD_NOTA FROM NF left outer join FORNECEDORES on NF.CD_FORNECEDOR = FORNECEDORES.CD_FORNECEDOR ';
      SelectComVinculo := '';
      Filtro  := 'NOTA_FECHADA = ''V'' ';
      ChaveDoRegistro := RegChaveForms+'\PesqEntradaNotas';
      ComboBox1.Clear;

      ComboBox1.Items.Add('Nº Nota'      +Espacos100+'¤ 135 ¤ NUM_DOCUMENTO ¤ NF');
      ComboBox1.Items.Add('Nome Fantasia'+Espacos100+'¤ 577 ¤ NOMEFANTASIA ¤ F');
      ComboBox1.Items.Add('Fornecedor'   +Espacos100+'¤ 577 ¤ NM_FORNECEDOR ¤ F');
      ComboBox1.Items.Add('Data'         +Espacos100+'¤ 135 ¤ DT_ENTRADA ¤ NF');
      ComboBox1.Items.Add('CNPJ'         +Espacos100+'¤ 285 ¤ CNPJ ¤ NF');

      LimpaCampos;
      IncluiCampo('Data',            'DT_ENTRADA',       10, ftDateTime, taCenter,       'dd/mm/yyyy');
      IncluiCampo('Nº Nota',         'NUM_DOCUMENTO',    09, ftInteger,  taLeftJustify,  '');
      IncluiCampo('CNPJ',            'CNPJ',             17, ftString,   taLeftJustify,  '');
      IncluiCampo('Fornecedor',      'NM_FORNECEDOR',    28, ftString,   taLeftJustify,  '');
      IncluiCampo('Nome Fanatsia',   'NOMEFANTASIA',     28, ftString,   taLeftJustify,  '');
      IncluiCampo('Valor da Nota',   'VALOR_TOTAL_NOTA', 14, ftCurrency, taRightJustify, ',0.00;-,0.00');
    end;

    //##########################################################################
    pqCodVenda : begin
      Width := 542;
      CampoResultadoInt := 'CD_VENDA';
      CampoResultadoExt := 'CD_VENDA';
      SelectNormal := ' SELECT CD_VENDA, NM_VENDA from CODIGOVENDA where CD_VENDA > 0 ';
      if not MostraInativos then SelectNormal := SelectNormal + ' and INATIVO = ''F'' ';
      SelectComVinculo := '';
      Filtro  := '';
      ChaveDoRegistro := RegChaveForms+'\PesqCodVenda';
      ComboBox1.Clear;

      ComboBox1.Items.Add('Código'       +Espacos100+'¤ 135 ¤ CD_VENDA ¤ CODIGOVENDA');
      ComboBox1.Items.Add('Descrição'    +Espacos100+'¤ 500 ¤ NM_VENDA ¤ CODIGOVENDA');

      LimpaCampos;
      IncluiCampo('Código',    'CD_VENDA', 12, ftInteger,  taCenter,       '');
      IncluiCampo('Descrição', 'NM_VENDA', 65, ftString,   taLeftJustify,  '');
    end;

    //##########################################################################
    pqPracas : begin
      Width := 542;
      CampoResultadoInt := 'CD_PRACA';
      CampoResultadoExt := 'CD_PRACA';
      SelectNormal := ' SELECT CD_PRACA, NM_PRACA from PRACAS where CD_PRACA > 0 ';
      if not MostraInativos then SelectNormal := SelectNormal + ' and INATIVO = ''F'' ';
      SelectComVinculo := '';
      Filtro  := '';
      ChaveDoRegistro := RegChaveForms+'\PesqPracas';
      ComboBox1.Clear;

      ComboBox1.Items.Add('Código'       +Espacos100+'¤ 135 ¤ CD_PRACA ¤ PRACAS');
      ComboBox1.Items.Add('Descrição'    +Espacos100+'¤ 500 ¤ NM_PRACA ¤ PRACAS');

      LimpaCampos;
      IncluiCampo('Código',    'CD_PRACA', 12, ftInteger,  taCenter,       '');
      IncluiCampo('Descrição', 'NM_PRACA', 65, ftString,   taLeftJustify,  '');
    end;

    //##########################################################################
    pqSimilares : begin
      Width := 542;
      CampoResultadoInt := 'CD_SIMILAR';
      CampoResultadoExt := 'CD_SIMILAR';
      SelectNormal := ' SELECT CD_SIMILAR, NM_SIMILAR from SIMILARES ';
      SelectComVinculo := '';
      Filtro  := '';
      ChaveDoRegistro := RegChaveForms+'\PesqSimilares';
      ComboBox1.Clear;

      ComboBox1.Items.Add('Código'       +Espacos100+'¤ 135 ¤ CD_SIMILAR ¤ SIMILARES');
      ComboBox1.Items.Add('Descrição'    +Espacos100+'¤ 500 ¤ NM_SIMILAR ¤ SIMILARES');

      LimpaCampos;
      IncluiCampo('Código',    'CD_SIMILAR', 12, ftInteger,  taCenter,       '');
      IncluiCampo('Descrição', 'NM_SIMILAR', 65, ftString,   taLeftJustify,  '');
    end;
  end;
  PosicionaComponentes;
end;

procedure TfPesquisa.btCadastrarClick(Sender: TObject);
begin
  if mVAL.VerificaSistemaExpirado then exit;
  if not Pode('I') then Exit;

  CriaFormCadastro;
  AbreCad.EntraNaInclusao  := true;
  AbreCad.EntraNaAlteracao := CodigoVazio;
  //aqui
  CM.AbreAviso('Abrindo tela de cadastro');
  FormCadastro.ShowModal;
  FormCadastro.Free;

  with CM do
  begin
    IBTabela.Active := false;
    IBTabela.SQL.Clear;
    IBTabela.SQL.Add('Select '+CampoPesquisa+' from '+TabelaPesquisa);
    IBTabela.SQL.Add('where '+CampoResultadoInt+' = :'+CampoResultadoInt);
    if not IBTabela.Prepared then IBTabela.Prepare;
    IBTabela.ParamByName(CampoResultadoInt).AsInteger := ItemEsc.CodInt;
    IBTabela.Active := true;
    Edit1.Text := IBTabela.FieldByName(CampoPesquisa).AsString;
    Edit1.SetFocus;
    Edit1.SelectAll;
    if not CheckBoxIncremental.Checked then
    begin
      DetectaTipoPesquisa;
      ExecutaBuscaTexto;
    end;
    CM.FechaTT(IBTabela);
  end;
end;

procedure TfPesquisa.CriaFormCadastro;
begin
  case PesquisarOQue of
    pqClientes     : begin
                       FormCadastro := fCadClientes;
                       Application.CreateForm(TfCadClientes, FormCadastro);
                     end;
    pqFornecedores : begin
                       FormCadastro := fCadFornecedores;
                       Application.CreateForm(TfCadFornecedores, FormCadastro);
                     end;
    pqRepresentantes : begin
                       FormCadastro := fCadRepresentantes;
                       Application.CreateForm(TfCadRepresentantes, FormCadastro);
                     end;
    pqUsuarios :     begin
                       FormCadastro := fCadUsuarios;
                       Application.CreateForm(TfCadUsuarios, FormCadastro);
                     end;
    pqVendedores   : begin
                       FormCadastro := fCadUsuarios;
                       Application.CreateForm(TfCadUsuarios, FormCadastro);
                     end;
    pqPracas       : begin
                       FormCadastro := fCadPracas;
                       Application.CreateForm(TfCadPracas, FormCadastro);
                     end;
    pqSimilares    : begin
                       FormCadastro := fCadSimilares;
                       Application.CreateForm(TfCadSimilares, FormCadastro);
                     end;
  end;
end;

function TfPesquisa.Pode(pdOperacao:char):boolean;
begin
  case PesquisarOQue of
    pqClientes:        result := mVAL.TemAcessoPermissao(sgCadClientes, pdOperacao);
    pqFornecedores:    result := mVAL.TemAcessoPermissao(sgCadFornecedores, pdOperacao);
    pqCodVenda:        result := mVAL.TemAcessoPermissao(sgCadCodVenda, pdOperacao);
    pqUsuarios:        result := mVAL.TemAcessoPermissao(sgCadUsuarios, pdOperacao);
    pqPracas:          result := mVAL.TemAcessoPermissao(sgCadPracas, pdOperacao);
    pqRepresentantes:  result := mVAL.TemAcessoPermissao(sgCadFornecedores, pdOperacao);
//    pqBancos:          result := mVAL.TemAcessoPermissao(sgCadBancos, pdOperacao);
//    pqEmpresas:        result := mVAL.TemAcessoPermissao(sgCadEmpresas, pdOperacao);
//    pqFormasPagamento: result := mVAL.TemAcessoPermissao(sgCadFormaPgto, pdOperacao);
//    pqDepositos:       result := mVAL.TemAcessoPermissao(sgCadDepositos, pdOperacao);
//    pqTerminais:       result := mVAL.TemAcessoPermissao(sgCadTerminais, pdOperacao);
//    pqBoletos:         result := mVAL.TemAcessoPermissao(sgCadFormBoletos, pdOperacao);
//    pqEtiquetas:       result := mVAL.TemAcessoPermissao(sgCadFormEtiquetas, pdOperacao);
//    pqNF:              result := mVAL.TemAcessoPermissao(sgCadFormNF, pdOperacao);
//    pqContasBancarias: result := mVAL.TemAcessoPermissao(sgCadContaBancaria, pdOperacao);
//    pqPromocoes:       result := mVAL.TemAcessoPermissao(sgCadPromocoes, pdOperacao);
//    pqCartoes:         result := mVAL.TemAcessoPermissao(sgCadCartao, pdOperacao);
//    pqFaixaComissao:   result := mVAL.TemAcessoPermissao(sgCadFaixaComissao, pdOperacao);
//    pqCFOP:            result := mVAL.TemAcessoPermissao(sgCadCFOP, pdOperacao);
//    pqTransportadoras: result := mVAL.TemAcessoPermissao(sgCadTransportadoras, pdOperacao);
    else result := true;
  end;
end;

procedure TfPesquisa.btAlterarClick(Sender: TObject);
begin
  if mVAL.VerificaSistemaExpirado then exit;
  if not Pode('A') then Exit;

  CriaFormCadastro;
  AbreCad.EntraNaInclusao  := false;
  AbreCad.EntraNaAlteracao := IBPesquisa.FieldByName(CampoResultadoInt).AsInteger;
  FormCadastro.ShowModal;

  with CM do
  begin
    IBTabela.Active := false;
    IBTabela.SQL.Clear;
    IBTabela.SQL.Add('Select '+CampoPesquisa+' from '+TabelaPesquisa);
    IBTabela.SQL.Add('where '+CampoResultadoInt+' = :'+CampoResultadoInt);
    if not IBTabela.Prepared then IBTabela.Prepare;
    IBTabela.ParamByName(CampoResultadoInt).AsInteger := ItemEsc.CodInt;
    IBTabela.Active := true;
    Edit1.Text := IBTabela.FieldByName(CampoPesquisa).AsString;
    Edit1.SetFocus;
    Edit1.SelectAll;

    FormCadastro.Free;
    CM.FechaTT(IBTabela);
  end;
end;

procedure TfPesquisa.wwDBGridColWidthChanged(Sender: TObject; Column: Integer);
var
  i : word;
begin
  if ModoDesenvolvimento then
  begin
    PodePesquisar := false;
    Edit1.Text := '';
    for i := 0 to wwDBGrid.FieldCount-1 do
      if wwDBGrid.Fields[i].Visible then
        Edit1.Text := Edit1.Text + intToStr(wwDBGrid.Fields[i].DisplayWidth)+'  -  ';
  end;
end;

procedure TfPesquisa.MostraGrade;
begin
end;

procedure TfPesquisa.FormActivate(Sender: TObject);
begin
  if EditSelectAll then Edit1.SelectAll
                   else Edit1.SelStart := length(Edit1.Text);
end;

end.


