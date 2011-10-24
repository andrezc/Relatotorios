unit UCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UCadastroPadrao, DB, IBODataset, IB_Components, Gradpan,
  DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, EDBImage, JvEdit,
  DBIboSuperCombo, wwdblook, ComCtrls, ExtDlgs, JvExStdCtrls, JvExControls,
  JvComponent, Menus, JvToolEdit, UComum, JvDBControls, JvExMask, JvBaseEdits,
  Mask, JvExExtCtrls, JvDBRadioPanel, JvLabel, JvSpeedButton, Wwdbigrd, Wwdbgrid,
  wwdbedit, Wwdbspin;

type
  RegEntraNaInclusaoValores = Record
    UsaValores  : boolean;
    Nm_Produto  : String[45];
    PrecoCusto  : Currency;
    Estoque     : Real;
    Cd_Grupo    : Integer;
  end;

  TfCadProdutos = class(TfCadastroPadrao)
    Bt_UltimasCompras: TBitBtn;
    btQtdePedida: TBitBtn;
    bt_UltimasVendas: TBitBtn;
    bt_VendaMensal: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbUnidade: TLabel;
    lbLocalizacao: TLabel;
    lbFabricante: TLabel;
    Label42: TLabel;
    lbEstoque: TLabel;
    lbEstoqueMinimo: TLabel;
    lbSimilares: TLabel;
    Label46: TLabel;
    SpeedButton2: TSpeedButton;
    btAlteraEstoque: TSpeedButton;
    bt_GeraCodigo: TSpeedButton;
    Label56: TLabel;
    SpeedButton5: TSpeedButton;
    lbDescrAbrev: TLabel;
    lbAplicacao: TLabel;
    DBEdit2: TDBEdit;
    edCodigo: TDBEdit;
    GroupBoxCodigos: TGroupBox;
    lbCodigo2: TLabel;
    lbCodigo3: TLabel;
    lbCodigo4: TLabel;
    edCodigo2: TDBEdit;
    edCodigo3: TDBEdit;
    edCodigo4: TDBEdit;
    edLocalizacao: TDBEdit;
    BitBtn1: TBitBtn;
    edReservas: TEdit;
    edFabricante: TDBEdit;
    edUnidade: TDBComboBox;
    edDescrAbrev: TDBEdit;
    DBIboSuperCombo2: TDBIboSuperCombo;
    edAplicacao: TDBEdit;
    TabSheet5: TTabSheet;
    lbClassFiscal: TLabel;
    lbIPI: TLabel;
    lbIPI2: TLabel;
    lbDesconto: TLabel;
    lbDesconto2: TLabel;
    lbComissao2: TLabel;
    lbComissao: TLabel;
    lbAliquota: TLabel;
    lbAliquota2: TLabel;
    Label45: TLabel;
    lbQuantParaTroca: TLabel;
    edClassFiscal: TDBEdit;
    edIPI: TDBEdit;
    GroupBox5: TGroupBox;
    lbValorEmbalagem: TLabel;
    lbUndConvEmbalagem: TLabel;
    lbUndConvEmbalagem2: TLabel;
    lbCodEmbalagem: TLabel;
    lbValorPDVEmbalagem: TLabel;
    edCodEmbalagem: TDBEdit;
    edDesconto: TDBEdit;
    edComissao: TDBEdit;
    GroupBox3: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBCheckBox3: TDBCheckBox;
    edAliquota2: TEdit;
    DBCheckBox2: TDBCheckBox;
    cbAliquota: TDBComboBox;
    DBEdit5: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    gbPromocoes: TGroupBox;
    DBCheckBox8: TDBCheckBox;
    TabSheet4: TTabSheet;
    DBMemo1: TDBMemo;
    TabSheet6: TTabSheet;
    Bt_Foto: TBitBtn;
    Bt_ApagaFoto: TBitBtn;
    EDBImage1: TEDBImage;
    GroupBoxFiltro: TGroupBox;
    RadioGroupAtivos: TRadioGroup;
    DBCheckBox5: TDBCheckBox;
    IBAliquotas: TIB_Query;
    IBSP_PegaCodBalanca: TIBOStoredProc;
    OpenPictureDialog1: TOpenPictureDialog;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    edCodBalanca: TDBEdit;
    cbCodBalanca: TDBCheckBox;
    lbPesoLiquido: TLabel;
    lbPesoBruto: TLabel;
    edEstoqueMinimo: TJvDBCalcEdit;
    EditMediaVenda: TJvDBCalcEdit;
    edPesoLiquido: TJvDBCalcEdit;
    edPesoBruto: TJvDBCalcEdit;
    edValorEmbalagem: TJvDBCalcEdit;
    edUndConvEmbalagem: TJvDBCalcEdit;
    edValorPDVEmbalagem: TJvDBCalcEdit;
    RxDBCalcEdit12: TJvDBCalcEdit;
    edQuantParaTroca: TJvDBCalcEdit;
    DBDateEdit3: TJvDBDateEdit;
    DBDateEdit4: TJvDBDateEdit;
    PopupMenu: TPopupMenu;
    MenuLiga: TMenuItem;
    MenuDesliga: TMenuItem;
    btPrecos: TBitBtn;
    edCodSimilar: TDBEdit;
    btPesquisaSimilar: TSpeedButton;
    EditNomeSimilar: TEdit;
    DBCheckBox1: TDBCheckBox;
    btEstoqueDepositos: TBitBtn;
    Label4: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label7: TLabel;
    Label8: TLabel;
    EditCodFornecedor: TEdit;
    SpeedButtonFornecedor: TSpeedButton;
    EditNomeFornecedor: TEdit;
    btEtiquetas: TBitBtn;
    btAuditoriaDeEstoque: TBitBtn;
    btGrade: TBitBtn;
    Label15: TLabel;
    GroupBoxPrecos: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    StaticText2: TStaticText;
    DBEditMargem: TJvDBCalcEdit;
    edUltimoCusto: TJvDBCalcEdit;
    edCustoMedio: TJvDBCalcEdit;
    edPrecoCusto: TJvDBCalcEdit;
    GroupBox6: TGroupBox;
    DBEditPrecoVenda: TJvDBCalcEdit;
    edPrecoVendaPDV: TJvDBCalcEdit;
    Label44: TLabel;
    DBEdit34: TDBEdit;
    chSincronizaPreco: TCheckBox;
    pnCalcCustoMedio: TPanel;
    spAtualizaCustoMedio: TSpeedButton;
    lbQuantDigitos: TLabel;
    DBCheckBox6: TDBCheckBox;
    btNumSeries: TBitBtn;
    RxDBCalcEdit5: TJvDBCalcEdit;
    EditQuantEstoque: TJvCalcEdit;
    GroupBoxTipoPreco: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    edMargem2: TJvDBCalcEdit;
    edMargem3: TJvDBCalcEdit;
    edMargem4: TJvDBCalcEdit;
    edMargem5: TJvDBCalcEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    edPreco2: TJvDBCalcEdit;
    edPreco3: TJvDBCalcEdit;
    edPreco4: TJvDBCalcEdit;
    edPreco5: TJvDBCalcEdit;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    chTiposPreco: TCheckBox;
    GroupBox1: TGroupBox;
    lbCodVenda: TLabel;
    SuperCombo1: TDBIboSuperCombo;
    DBCheckBoxTipoPrecoUnico: TDBCheckBox;
    btTransfGrade: TBitBtn;
    edGrupo: TEdit;
    DBEdit4: TDBEdit;
    Label24: TLabel;
    edGrupoFiltro: TEdit;
    btBuscaGrupo: TBitBtn;
    wwDBSpinEdit1: TwwDBSpinEdit;
    Label25: TLabel;
    DBEdit6: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bt_IncluirClick(Sender: TObject);
    procedure Bt_AlterarClick(Sender: TObject);
    procedure Bt_GravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure edCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure DBEditPrecoVendaExit(Sender: TObject);
    procedure edGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbAliquotaChange(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edUltimoCustoKeyPress(Sender: TObject; var Key: Char);
    procedure edCodBalancaKeyPress(Sender: TObject; var Key: Char);
    procedure Bt_FotoClick(Sender: TObject);
    procedure Bt_ApagaFotoClick(Sender: TObject);
    procedure edCodEmbalagemChange(Sender: TObject);
    procedure bt_GeraCodigoClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btAlteraEstoqueClick(Sender: TObject);
    procedure btPrecosClick(Sender: TObject);
    procedure RadioGroupAtivosClick(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure Bt_UltimasComprasClick(Sender: TObject);
    procedure btQtdePedidaClick(Sender: TObject);
    procedure bt_UltimasVendasClick(Sender: TObject);
    procedure bt_VendaMensalClick(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEditMargemExit(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure MenuLigaClick(Sender: TObject);
    procedure MenuDesligaClick(Sender: TObject);
    procedure edFabricanteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure spAtualizaCustoMedioClick(Sender: TObject);
    procedure edCodSimilarChange(Sender: TObject);
    procedure edCodSimilarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCodSimilarKeyPress(Sender: TObject; var Key: Char);
    procedure btPesquisaSimilarClick(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure edCustoMedioExit(Sender: TObject);
    procedure edUltimoCustoExit(Sender: TObject);
    procedure btEstoqueDepositosClick(Sender: TObject);
    procedure EditCodFornecedorChange(Sender: TObject);
    procedure EditCodFornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditCodFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButtonFornecedorClick(Sender: TObject);
    procedure EditNomeFornecedorChange(Sender: TObject);
    procedure btEtiquetasClick(Sender: TObject);
    procedure btAuditoriaDeEstoqueClick(Sender: TObject);
    procedure btGradeClick(Sender: TObject);
    procedure edCustoMedioEnter(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure edCodigoChange(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
    procedure btNumSeriesClick(Sender: TObject);
    procedure edMargem2Exit(Sender: TObject);
    procedure edPreco2Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure chTiposPrecoClick(Sender: TObject);
    procedure DBCheckBoxTipoPrecoUnicoClick(Sender: TObject);
    procedure btTransfGradeClick(Sender: TObject);
    procedure DBEdit4Change(Sender: TObject);
    procedure edGrupoFiltroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btBuscaGrupoClick(Sender: TObject);
  private
    CompSender        : TObject;  // Componente que poderá ser ligado ou desligado
    OldPrecoVenda     : Currency;
    PeriodoMedia      : Integer;
    GeraCodSequencial : boolean;
    CodSeq            : integer;
    FiltroFixo        : String;
    procedure VerificaPromocao;
    procedure AtualizaSimilares;
    procedure VerificaTresCasasDecimais;
    procedure OrdenaCampo; override;
    procedure AlteraModo(mdModo: TModos); override;
    procedure IniciaValores; override;
    procedure DesligaEsteComp(Sender: TObject);
    procedure LigaEsteComp(Sender: TObject);
    procedure CarregaEstadoLigadoDesligado;
    procedure GravaEstadoLigadoDesligado;
    procedure VerificaPrecoPDV;
    procedure VerificaTipoCusto;
    procedure FormataCampos; override;
    function  TemErroNaGravacao: boolean; override;
    procedure AjustaEstadoDoComponente(aeComponente: TObject);
  public
    EntraNaInclusaoValores : RegEntraNaInclusaoValores;
  end;

var
  fCadProdutos: TfCadProdutos;
  ListAliq : TStrings;

implementation

uses DUtilit, Jpeg, UComp, UAltEstoque, UPrecosDoProduto, UTabela,
     UEstoquesDepositos, UEtiquetas, UEditaGrade, UCadGrades, UEstoquesGrades,
     UModPesquisa, UValidacao, UFocusForms, UNumerosDeSerie,
     UTransfProdGrade, UCadGruposProdutos, UPerifericos, UImpEtiqCodBarras;

{$R *.dfm}

procedure TfCadProdutos.FormCreate(Sender: TObject);
var
  i : word;
  CodAliquota : String[2];
begin
  EstaChave    := '\CadProdutos';
  NomeDaTabela := 'PRODUTOS';
  EstaTabela   := IBCadastro;
  Select       := 'Select PRODUTOS.*, REFPRODUTOS.*, E.ESTOQUEATUAL from PRODUTOS '+PL+
                  'left outer join REFPRODUTOS on PRODUTOS.CD_PRODUTO = REFPRODUTOS.CD_PRODUTO'+PL+
                  'left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO,  0, 0) E on 1=1';
  Campo.CodigoInt := 'CD_PRODUTO';
  Campo.CodigoStr := 'COD_BARRAS';
  Campo.Descricao := 'NM_PRODUTO';
  FiltroFixo      := NomeDaTabela+'.'+Campo.CodigoInt+' > 0';
  CadObjeto       := 'Produto';
  EsteCadastro    := cadProdutos;

  with CM do begin
    IBTabela.Active := false;
    IBTabela.SQL.Clear;
    IBTabela.SQL.Add('Select PROD_CODIGO02, PROD_CODIGO03, PROD_CODIGO04, PROD_DESC_COD02, PROD_DESC_COD03, PROD_DESC_COD04, PERIODOMEDIAVENDA from CONFIG');
    if not IBTabela.Prepared then IBTabela.Prepare;
    IBTabela.Active := true;
    edCodigo2.Enabled  := IBTabela.FieldByName('PROD_CODIGO02').AsString = 'V';
    edCodigo3.Enabled  := IBTabela.FieldByName('PROD_CODIGO03').AsString = 'V';
    edCodigo4.Enabled  := IBTabela.FieldByName('PROD_CODIGO04').AsString = 'V';
    lbCodigo2.Caption  := IBTabela.FieldByName('PROD_DESC_COD02').AsString;
    lbCodigo3.Caption  := IBTabela.FieldByName('PROD_DESC_COD03').AsString;
    lbCodigo4.Caption  := IBTabela.FieldByName('PROD_DESC_COD04').AsString;
    PeriodoMedia := IBTabela.FieldByName('PERIODOMEDIAVENDA').AsInteger;
    CM.FechaTT(IBTabela);
  end;

  LimpaCamposOrdenados;
  IncluiCampoOrdenado('COD_BARRAS', 'Código');
  IncluiCampoOrdenado('NM_PRODUTO', 'Descrição');
  IncluiCampoOrdenado('CODIGO02',   lbCodigo2.Caption);
  IncluiCampoOrdenado('CODIGO03',   lbCodigo3.Caption);
  IncluiCampoOrdenado('CODIGO04',   lbCodigo4.Caption);
  IncluiCampoOrdenado('APLICACAO',  'Aplicação');

  inherited;

  with CM do
  begin
    IBTabela.Active := false;
    IBTabela.SQL.Clear;
    IBTabela.SQL.Add('Select * from ALIQUOTAS');
    if not IBTabela.Prepared then IBTabela.Prepare;
    IBTabela.Active := true;
    cbAliquota.Items.Clear;
    cbAliquota.Items.Add('II');
    cbAliquota.Items.Add('FF');
    cbAliquota.Items.Add('NN');
    for i := 1 to 16 do
    begin
      CodAliquota := PoeZeros(i, 2);
      if (IBTabela.FieldByName('ALIQ'+CodAliquota).IsNotNull) and (not Vazio(IBTabela.FieldByName('ALIQ'+CodAliquota).AsString)) then
        cbAliquota.Items.Add(CodAliquota);
    end;
    CM.FechaTT(IBTabela);
  end;
  IBAliquotas.Active := true;

  if (not mVAL.TemPermissao(RegUsuario.Login, sgEstoque, 'A')) and (RegUsuario.TipoPermissao = tpRestrito) then
  begin
    btAlteraEstoque.Enabled := false;
  end;

  if not edCodigo2.Enabled then
  begin
    DesligaComponente(Self, lbCodigo2);
    DesligaComponente(Self, edCodigo2);
  end;
  if not edCodigo3.Enabled then
  begin
    DesligaComponente(Self, lbCodigo3);
    DesligaComponente(Self, edCodigo3);
  end;
  if not edCodigo4.Enabled then
  begin
    DesligaComponente(Self, lbCodigo4);
    DesligaComponente(Self, edCodigo4);
  end;

  RadioGroupAtivos.ItemIndex := 0;
  btPrecos.Visible := CM.TemCodVenda;
end;

procedure TfCadProdutos.OrdenaCampo;
var
  op : String;
begin
  op := ' ';
  Filtro := FiltroFixo;
  op := ' and ';

  if edGrupoFiltro.tag <> 0 then
  begin
    Filtro := Filtro + op + ' (select PERTENCE from SP_PERTENCE_AO_GRUPO(PRODUTOS.CD_GRUPO, '+intToStr(edGrupoFiltro.tag)+')) = ''V''  ';
    op := ' and ';
  end;

  if not vazio(EditNomeFornecedor.Text) then
  begin
    Filtro := Filtro + op + ' (PRODUTOS.CD_PRODUTO in (Select CD_PRODUTO from PRODFORNEC where CD_FORNECEDOR = '+EditCodFornecedor.Text+')) ';
  end;

  case RadioGroupAtivos.ItemIndex of
    0 : Filtro := Filtro + op + ' (INATIVO = ''F'') ';
    1 : Filtro := Filtro + op + ' (INATIVO = ''V'') ';
  end;

  inherited;
end;

procedure TfCadProdutos.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  if AbreCad.EntraNaAlteracao > 0 then
  begin
    RadioGroupAtivos.ItemIndex := 2;
    RadioGroupAtivos.Enabled := false;
    DBCheckBox5Click(self);
  end;
  inherited;
  edCodEmbalagem.OnChange(edCodEmbalagem);

  chTiposPreco.Checked := LeBooleanDoRegistro(ChaveDoRegistro, chTiposPreco.Name, false);
  chTiposPrecoClick(self);
  CarregaEstadoLigadoDesligado;
  try
    Edit1.SetFocus;
  except
    try DBEdit2.SetFocus; except end;
  end;

  if AbreCad.EntraNaInclusao then
  begin
    if EntraNaInclusaoValores.UsaValores then
    begin
      EstaTabela.FieldByName('CD_GRUPO').AsInteger    := EntraNaInclusaoValores.Cd_Grupo;
      EstaTabela.FieldByName('NM_PRODUTO').AsString := EntraNaInclusaoValores.Nm_Produto;
      EstaTabela.FieldByName('PRECOCUSTO').AsCurrency := EntraNaInclusaoValores.PrecoCusto;
      EditQuantEstoque.Value := EntraNaInclusaoValores.Estoque;
    end;
  end
end;

procedure TfCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  SalvaBooleanNoRegistro(ChaveDoRegistro, chTiposPreco.Name, chTiposPreco.Checked);
  GravaEstadoLigadoDesligado;
end;

procedure TfCadProdutos.VerificaPromocao;
begin
  if DBCheckBox3.Checked then
  begin
    LigaComponente(self, Label53);        // Inicio da Promoção
    LigaComponente(self, DBDateEdit3);
    LigaComponente(self, Label54);        // Fim da Promoção
    LigaComponente(self, DBDateEdit4);
    LigaComponente(self, Label52);        // Preço da Promoção
    LigaComponente(self, RxDBCalcEdit12);
  end
  else begin
    DesligaComponente(self, Label53);        // Inicio da Promoção
    DesligaComponente(self, DBDateEdit3);
    DesligaComponente(self, Label54);        // Fim da Promoção
    DesligaComponente(self, DBDateEdit4);
    DesligaComponente(self, Label52);        // Preço da Promoção
    DesligaComponente(self, RxDBCalcEdit12);
  end;
end;

procedure TfCadProdutos.AlteraModo(mdModo: TModos);
begin
  inherited;

  case Modo of
    mdInclusao:
      begin
        DBEdit2.SetFocus;
        chSincronizaPreco.Checked := false;
        Bt_Foto.Enabled      := true;
        Bt_ApagaFoto.Enabled := true;
        EditQuantEstoque.Visible := true;
        RxDBCalcEdit5.Visible := false;
        btAlteraEstoque.Visible  := false;
        SpeedButton5.Visible  := false;
        spAtualizaCustoMedio.Visible := true;
        btGrade.Visible := false;
        btTransfGrade.Visible := false;
        Bt_UltimasCompras.Visible := false;
        bt_UltimasVendas.Visible := false;
        bt_VendaMensal.Visible := false;
        btQtdePedida.Visible := false;
        btEstoqueDepositos.Visible := false;
        btAuditoriaDeEstoque.Visible := false;
        btEtiquetas.Visible := false;
        btNumSeries.Visible := false;
        GroupBoxFiltro.Enabled := false;
      end;
    mdAlteracao:
      begin
        chSincronizaPreco.Checked := false;
        Bt_Foto.Enabled      := true;
        Bt_ApagaFoto.Enabled := true;
        EditQuantEstoque.Visible := false;
        RxDBCalcEdit5.Visible := true;
        RxDBCalcEdit5.Width := 93;
        btAlteraEstoque.Visible  := false;
        SpeedButton5.Visible  := true;
        spAtualizaCustoMedio.Visible := true;
        btGrade.Visible := true;
//        btAlteraEstoque.Visible := false;
        btTransfGrade.Visible := false;
        Bt_UltimasCompras.Visible := false;
        bt_UltimasVendas.Visible := false;
        bt_VendaMensal.Visible := false;
        btQtdePedida.Visible := false;
        btEstoqueDepositos.Visible := false;
        btAuditoriaDeEstoque.Visible := false;
        btEtiquetas.Visible := false;
        btNumSeries.Visible := false;
        GroupBoxFiltro.Enabled := false;
      end;
    mdNavegacao:
      begin
        chSincronizaPreco.Checked := false;
        Bt_Foto.Enabled      := false;
        Bt_ApagaFoto.Enabled := false;

        EditQuantEstoque.Visible := false;
        RxDBCalcEdit5.Visible := true;
        RxDBCalcEdit5.Width := 69;
        btAlteraEstoque.Visible  := true;
        SpeedButton5.Visible  := true;
        spAtualizaCustoMedio.Visible := false;
        btGrade.Visible := true;
        btAlteraEstoque.Visible := true;
        btTransfGrade.Visible := true;
        Bt_UltimasCompras.Visible := true;
        bt_UltimasVendas.Visible := true;
        bt_VendaMensal.Visible := true;
        btQtdePedida.Visible := true;
        btEstoqueDepositos.Visible := true;
        btAuditoriaDeEstoque.Visible := true;
        btEtiquetas.Visible := true;
        btNumSeries.Visible := true;
        GroupBoxFiltro.Enabled := true;
      end;
  end;
  if EstaTabela.IsEmpty then
  begin
    Bt_Foto.Enabled      := false;
    Bt_ApagaFoto.Enabled := false;
  end;
end;

procedure TfCadProdutos.IniciaValores;
begin
  with EstaTabela do
  begin
    if FieldByName('INATIVO').IsNull             then FieldByName('INATIVO').AsString := 'F';
    if FieldByName('BAL_GERARCODBALANCA').IsNull then FieldByName('BAL_GERARCODBALANCA').AsString := 'F';
    if FieldByName('PROM_ATIVO').IsNull          then FieldByName('PROM_ATIVO').AsString := 'F';
    if FieldByName('TRESCASAS').IsNull           then FieldByName('TRESCASAS').AsString := 'F';
    if FieldByName('EXPORTAR').IsNull            then FieldByName('EXPORTAR').AsString := 'F';
    if FieldByName('PRECOPROPESO').IsNull        then FieldByName('PRECOPROPESO').AsString := 'F';
    if FieldByName('PDV_PRECOVENDA').IsNull      then FieldByName('PDV_PRECOVENDA').AsCurrency  := 0;
    if FieldByName('CX_VALORCAIXAPDV').IsNull    then FieldByName('CX_VALORCAIXAPDV').AsCurrency  := 0;
    if FieldByName('TIPOCUSTO').IsNull           then FieldByName('TIPOCUSTO').AsString  := 'U';
    if FieldByName('UND_FRACIONADA').IsNull      then FieldByName('UND_FRACIONADA').AsString  := 'F';
    if FieldByName('CONTROLANUMSERIE').IsNull    then FieldByName('CONTROLANUMSERIE').AsString  := 'F';
    if FieldByName('USAR_CD_VENDA_UNICO').IsNull then FieldByName('USAR_CD_VENDA_UNICO').AsString  := 'F';
  end;
  EditQuantEstoque.Value := 0;
end;

function TfCadProdutos.TemErroNaGravacao: boolean;
var
  JaTem : boolean;
  S : String;
begin
  result := false;

  if (not result) and (Vazio(EdCodigo.Text)) then
  begin
    result := true;
    CM.MensagemDeAtencao('É necessário que o campo CÓDIGO esteja preenchido');
    PageControl1.ActivePage := TabSheet1;
    EdCodigo.SetFocus;
  end;

  if (not result) and (not ENumeroInteiro(TiraEspacos(edCodigo.Text)[1])) then
  begin
    result := true;
    CM.MensagemDeAtencao('O primeiro caracter do código deve ser sempre um caracter numérico');
    edCodigo.SetFocus;
  end;
  
  if (not result) then
  begin
    with CM do
    begin
      IBTabela.Active := false;
      IBTabela.SQL.Clear;
      IBTabela.SQL.Add('Select COD_BARRAS from PRODUTOS');
      IBTabela.SQL.Add('where COD_BARRAS = '+QuotedStr(edCodigo.Text));
      if Modo = mdAlteracao then
        IBTabela.SQL.Add('and CD_PRODUTO <> '+EstaTabela.FieldByName('CD_PRODUTO').AsString);

      if not IBTabela.Prepared then IBTabela.Prepare;
      IBTabela.Active := true;
      JaTem := IBTabela.RecordCount > 0;
      CM.FechaTT(IBTabela);
    end;
    
    if JaTem then
    begin
      result := true;
      CM.MensagemDeErro('Código já cadastrado');
      PageControl1.ActivePage := TabSheet1;
      edCodigo.SetFocus;
    end;
  end;

  if (not result) then
  begin
    with CM do
    begin
      IBTabela.Active := false;
      IBTabela.SQL.Clear;
      IBTabela.SQL.Add('Select COD_BARRAS from GRADES');
      IBTabela.SQL.Add('where COD_BARRAS = '+QuotedStr(edCodigo.Text));
      if not IBTabela.Prepared then IBTabela.Prepare;
      IBTabela.Active := true;
      JaTem := IBTabela.RecordCount > 0;
      CM.FechaTT(IBTabela);
    end;

    if JaTem then
    begin
      result := true;
      CM.MensagemDeErro('Código já cadastrado');
      PageControl1.ActivePage := TabSheet1;
      edCodigo.SetFocus;
    end;
  end;

  if (not result) and (not vazio(edCodigo2.Text)) then  // Verifica Código 02
  begin
    with CM do
    begin
      IBTabela.Active := false;
      IBTabela.SQL.Clear;
      IBTabela.SQL.Add('Select CODIGO02, COD_BARRAS, NM_PRODUTO from PRODUTOS');
      IBTabela.SQL.Add('where CODIGO02 = '+QuotedStr(edCodigo2.Text));
      if Modo = mdAlteracao then
        IBTabela.SQL.Add('and CD_PRODUTO <> '+EstaTabela.FieldByName('CD_PRODUTO').AsString);

      if not IBTabela.Prepared then IBTabela.Prepare;
      IBTabela.Active := true;
      JaTem := IBTabela.RecordCount > 0;
      S := IBTabela.FieldByName('COD_BARRAS').AsString+' - '+IBTabela.FieldByName('NM_PRODUTO').AsString;
      CM.FechaTT(IBTabela);
    end;

    if JaTem then
    begin
      CM.MensagemDeAtencao(lbCodigo2.Caption+' '+edCodigo2.Text+' já cadastrado no item'+PL+S);
      begin
        result := true;
        PageControl1.ActivePage := TabSheet1;
        edCodigo2.SetFocus;
      end;
    end;
  end;

  if (not result) and (not vazio(edCodigo3.Text)) then  // Verifica Código 03
  begin
    with CM do
    begin
      IBTabela.Active := false;
      IBTabela.SQL.Clear;
      IBTabela.SQL.Add('Select CODIGO03, COD_BARRAS, NM_PRODUTO from PRODUTOS');
      IBTabela.SQL.Add('where CODIGO03 = '+QuotedStr(edCodigo3.Text));
      if Modo = mdAlteracao then
        IBTabela.SQL.Add('and CD_PRODUTO <> '+EstaTabela.FieldByName('CD_PRODUTO').AsString);

      if not IBTabela.Prepared then IBTabela.Prepare;
      IBTabela.Active := true;
      JaTem := IBTabela.RecordCount > 0;
      S := IBTabela.FieldByName('COD_BARRAS').AsString+' - '+IBTabela.FieldByName('NM_PRODUTO').AsString;
      CM.FechaTT(IBTabela);
    end;

    if JaTem then
    begin
      CM.MensagemDeAtencao(lbCodigo3.Caption+' '+edCodigo3.Text+' já cadastrado no item'+PL+S);
      begin
        result := true;
        PageControl1.ActivePage := TabSheet1;
        edCodigo3.SetFocus;
      end;
    end;
  end;

  if (not result) and (not vazio(edCodigo4.Text)) then  // Verifica Código 04
  begin
    with CM do
    begin
      IBTabela.Active := false;
      IBTabela.SQL.Clear;
      IBTabela.SQL.Add('Select CODIGO04, COD_BARRAS, NM_PRODUTO from PRODUTOS');
      IBTabela.SQL.Add('where CODIGO04 = '+QuotedStr(edCodigo4.Text));
      if Modo = mdAlteracao then
        IBTabela.SQL.Add('and CD_PRODUTO <> '+EstaTabela.FieldByName('CD_PRODUTO').AsString);

      if not IBTabela.Prepared then IBTabela.Prepare;
      IBTabela.Active := true;
      JaTem := IBTabela.RecordCount > 0;
      S := IBTabela.FieldByName('COD_BARRAS').AsString+' - '+IBTabela.FieldByName('NM_PRODUTO').AsString;
      CM.FechaTT(IBTabela);
    end;

    if JaTem then
    begin
      CM.MensagemDeAtencao(lbCodigo4.Caption+' '+edCodigo4.Text+' já cadastrado no item'+PL+S);
      begin
        result := true;
        PageControl1.ActivePage := TabSheet1;
        edCodigo4.SetFocus;
      end;
    end;
  end;

  if (not result) and (not vazio(edCodBalanca.Text)) then  // Verifica Código de Balança
  begin
    with CM do
    begin
      IBTabela.Active := false;
      IBTabela.SQL.Clear;
      IBTabela.SQL.Add('Select BAL_COD_BALANCA, COD_BARRAS, NM_PRODUTO from PRODUTOS');
      IBTabela.SQL.Add('where BAL_COD_BALANCA = '+QuotedStr(edCodBalanca.Text));
      if Modo = mdAlteracao then
        IBTabela.SQL.Add('and CD_PRODUTO <> '+EstaTabela.FieldByName('CD_PRODUTO').AsString);

      if not IBTabela.Prepared then IBTabela.Prepare;
      IBTabela.Active := true;
      JaTem := IBTabela.RecordCount > 0;
      S := IBTabela.FieldByName('COD_BARRAS').AsString+' - '+IBTabela.FieldByName('NM_PRODUTO').AsString;
      CM.FechaTT(IBTabela);
    end;

    if JaTem then
    begin
      CM.MensagemDeAtencao('Código de Balança'+' '+edCodBalanca.Text+' já cadastrado no item'+PL+S);
      begin
        result := true;
        PageControl1.ActivePage := TabSheet1;
        edCodBalanca.SetFocus;
      end;
    end;
  end;

  if (not result) and (vazio(edGrupo.Text)) then
  begin
    result := true;
    CM.MensagemDeAtencao('É necessário que o campo GRUPO esteja preenchido');
    PageControl1.ActivePage := TabSheet1;
    edGrupo.SetFocus;
  end;

  if (not result) and (Vazio(DBEdit2.Text)) then
  begin
    result := true;
    CM.MensagemDeAtencao('É necessário que o campo DESCRIÇÃO esteja preenchido');
    PageControl1.ActivePage := TabSheet1;
    DBEdit2.SetFocus;
  end;

  if (not result) then
  begin
    with CM do
    begin
      IBTabela.Active := false;
      IBTabela.SQL.Clear;
      IBTabela.SQL.Add('Select NM_PRODUTO from PRODUTOS');
      IBTabela.SQL.Add('where NM_PRODUTO = '+QuotedStr(DBEdit2.Text));
      if Modo = mdAlteracao then
        IBTabela.SQL.Add('and CD_PRODUTO <> '+EstaTabela.FieldByName('CD_PRODUTO').AsString);

      if not IBTabela.Prepared then IBTabela.Prepare;
      IBTabela.Active := true;
      JaTem := IBTabela.RecordCount > 0;
      CM.FechaTT(IBTabela);
    end;

    if JaTem then
    begin
      if MessageDlg('A descrição para este produto já existe'+#13+#10+
                    'Deseja continuar?', mtWarning, [mbYes, mbNo], 0) = mrNo then
      begin
        result := true;
        PageControl1.ActivePage := TabSheet1;
        DBEdit2.SetFocus;
      end;
    end;
  end;

  if (not result) and (Vazio(edUnidade.Text)) then
  begin
    result := true;
    CM.MensagemDeAtencao('É necessário que o campo UNIDADE esteja preenchido');
    PageControl1.ActivePage := TabSheet1;
    edUnidade.SetFocus;
  end;

  if (not result) then
  begin
    if (cbCodBalanca.Checked) and ((edUnidade.Text <> 'UN')and(edUnidade.Text <> 'KG')) then
    begin
      result := true;
      CM.MensagemDeErro('Só é permitido usar unidades "UN" ou "KG" para produtos com código de balança');
      PageControl1.ActivePage := TabSheet1;
      edUnidade.SetFocus;
    end;
  end;

  if (not result) and (cbCodBalanca.Checked) then
  begin
    if StrToInt(edCodBalanca.Text) < 1 then
    begin
      result := true;
      CM.MensagemDeErro('O Código de Balança deve ser maior que zero');
      edCodBalanca.SetFocus;
    end;

    if CM.JaTemCodBalanca(edCodBalanca.Text, Modo, EstaTabela.FieldByName('CD_PRODUTO').AsInteger) then
    begin
      result := true;
      CM.MensagemDeErro('Código de Balança já cadastrado!');
      edCodBalanca.SetFocus;
    end;
  end;

  if (not result) then
  begin
    if (edValorEmbalagem.Value > 0) and (not vazio(edCodEmbalagem.Text)) and (((edValorEmbalagem.Value / edUndConvEmbalagem.Value) <> DBEditPrecoVenda.Value)) then
    begin
      if MessageDlg('O preço unitário da caixa fechada é diferente do preço cadastrado.'+#13+#10+'Continua?', mtConfirmation, [mbYes,mbNo], 0) = mrNo then
      begin
        result := true;
        PageControl1.ActivePage := TabSheet5;
        edUndConvEmbalagem.SetFocus;
      end;
    end;
  end;
  DeuErro := result;
  Inherited TemErroNaGravacao;
end;

procedure TfCadProdutos.Bt_IncluirClick(Sender: TObject);
begin
  inherited;
  try
    PageControl1.ActivePage := TabSheet1;
    DBEdit2.SetFocus;
    GeraCodSequencial := false;
    if edUnidade.tag = 100 then EstaTabela.FieldByName('UNIDADE').AsString := 'UN';

    with CM do
    begin
      IBTabela.Active := false;
      IBTabela.SQL.Clear;
      IBTabela.SQL.Add('Select first 1 PROD_UNIDADEPADRAO, PROD_ESTMINIMOPADRAO, PROD_MARGEMPADRAO, PROD_MARGEM2PADRAO, PROD_MARGEM3PADRAO, PROD_MARGEM4PADRAO, PROD_MARGEM5PADRAO from CONFIG');
      IBTabela.Active := true;
      IBCadastro.FieldByName('UNIDADE').AsString         := IBTabela.FieldByName('PROD_UNIDADEPADRAO').AsString;
      IBCadastro.FieldByName('ESTOQUEMINIMO').AsCurrency := IBTabela.FieldByName('PROD_ESTMINIMOPADRAO').AsCurrency;
      IBCadastro.FieldByName('MARGEM').AsCurrency        := IBTabela.FieldByName('PROD_MARGEMPADRAO').AsCurrency;
      IBCadastro.FieldByName('MARGEM2').AsCurrency       := IBTabela.FieldByName('PROD_MARGEM2PADRAO').AsCurrency;
      IBCadastro.FieldByName('MARGEM3').AsCurrency       := IBTabela.FieldByName('PROD_MARGEM3PADRAO').AsCurrency;
      IBCadastro.FieldByName('MARGEM4').AsCurrency       := IBTabela.FieldByName('PROD_MARGEM4PADRAO').AsCurrency;
      IBCadastro.FieldByName('MARGEM5').AsCurrency       := IBTabela.FieldByName('PROD_MARGEM5PADRAO').AsCurrency;
      CM.FechaTT(IBTabela);
    end;

  except
  end;
end;

procedure TfCadProdutos.Bt_AlterarClick(Sender: TObject);
begin
  GeraCodSequencial := false;
  OldPrecoVenda := EstaTabela.FieldByName('PRECOVENDA').AsCurrency;
  inherited;
  
  try
//    if (ActiveControl = Edit1) or (ActiveControl = nil) then
//    begin
//      PageControl1.ActivePage := TabSheet1;
//      EditGrupo.SetFocus;
//    end;
  except
  end;
  AlteraModo(mdAlteracao);
end;

procedure TfCadProdutos.Bt_GravarClick(Sender: TObject);
var
  ModoTemp : TModos;
  Codigo : Integer;
  NovoRegistro      : Integer;
begin
  if Modo = mdInclusao then
  begin
    Codigo := CM.CodigoWeb(CM.PegaValorDoGenerator('GEN_CD_PRODUTO'));
    IBCadastro.FieldByName('CD_PRODUTO').AsInteger := Codigo;
  end;
  NovoRegistro := IBCadastro.FieldByName('CD_PRODUTO').AsInteger;

  ModoTemp := Modo;

  if (cbCodBalanca.Checked) and ((EstaTabela.FieldByName('BAL_COD_BALANCA').AsInteger < 1) or (Vazio(edCodBalanca.Text))) then
    EstaTabela.FieldByName('BAL_COD_BALANCA').AsInteger := CM.PegaCodBalanca(Modo, EstaTabela.FieldByName('CD_PRODUTO').AsInteger);

  if TemErroNaGravacao then Exit;

  if GeraCodSequencial then CM.GravaGenerator('GEN_COD_PROD_SEQUENCIAL', CodSeq);

  if (DBEditMargem.Value = 0) and (edPrecoCusto.Value > 0) then
    DBEditPrecoVenda.Value := edPrecoCusto.Value + ((edPrecoCusto.Value * DBEditMargem.Value)/100);

  if chSincronizaPreco.Checked then
  begin
    EstaTabela.FieldByName('PDV_PRECOVENDA').AsCurrency  := DBEditPrecoVenda.Value;
    EstaTabela.FieldByName('CX_VALORCAIXAPDV').AsCurrency := edValorPDVEmbalagem.Value;
  end;

  inherited;
  Modo := ModoTemp;

  if modo = mdInclusao then  // Inclui a quantidade em estoque
    CM.AlteraEstoque(NovoRegistro, 0, CM.PegaDepositoEntradaOuSaida('E'), EditQuantEstoque.Value, 0, 'E', 'Novo Produto', RegUsuario.Login);

                                         // Atualiza similares
  if (not Vazio(EstaTabela.FieldByName('CD_SIMILAR').AsString)) and
     (ENumeroInteiro(EstaTabela.FieldByName('CD_SIMILAR').AsString)) and
     (EstaTabela.FieldByName('CD_SIMILAR').AsInteger > 0) and
     (OldPrecoVenda <> EstaTabela.FieldByName('PRECOVENDA').AsCurrency) then
  begin
    if MessageDlg('Deseja também alterar as informações para produtos similares?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
      AtualizaSimilares;
  end;

  AlteraModo(mdNavegacao);
  EstaTabela.Locate('CD_PRODUTO', NovoRegistro,[]);
end;

procedure TfCadProdutos.AtualizaSimilares;
begin
  with CM do begin
    if not IBTabela.IB_Transaction.InTransaction then IBTabela.IB_Transaction.StartTransaction;
    try
      IBTabela.Active := false;
      IBTabela.SQL.Clear;
      IBTabela.SQL.Add('Update Produtos set');
      if not Vazio(EstaTabela.FieldByName('PRECOCUSTO').AsString) then
        IBTabela.SQL.Add('PRECOCUSTO = :PRECOCUSTO,');
      if not Vazio(EstaTabela.FieldByName('MARGEM').AsString) then
        IBTabela.SQL.Add('MARGEM = :MARGEM,');
      if not Vazio(EstaTabela.FieldByName('PRECOVENDA').AsString) then
        IBTabela.SQL.Add('PRECOVENDA = :PRECOVENDA,');
      IBTabela.SQL[IBTabela.SQL.Count-1] := copy(IBTabela.SQL[IBTabela.SQL.Count-1], 1, Length(IBTabela.SQL[IBTabela.SQL.Count-1])-1); // Tira a última vírgula
      IBTabela.SQL.Add('where CD_SIMILAR = :CD_SIMILAR');

      if not IBTabela.Prepared then IBTabela.Prepare;
      IBTabela.ParamByName('CD_SIMILAR').AsInteger := EstaTabela.FieldByName('CD_SIMILAR').AsInteger;
      if not Vazio(EstaTabela.FieldByName('PRECOCUSTO').AsString) then
        IBTabela.ParamByName('PRECOCUSTO').AsCurrency := EstaTabela.FieldByName('PRECOCUSTO').AsCurrency;
      if not Vazio(EstaTabela.FieldByName('MARGEM').AsString) then
        IBTabela.ParamByName('MARGEM').AsCurrency := EstaTabela.FieldByName('MARGEM').AsCurrency;
      if not Vazio(EstaTabela.FieldByName('PRECOVENDA').AsString) then
        IBTabela.ParamByName('PRECOVENDA').AsCurrency := EstaTabela.FieldByName('PRECOVENDA').AsCurrency;

      IBTabela.ExecSQL;
      IBTabela.IB_Transaction.Commit;

      CM.AbreAviso('Atualizando registros', 0, 0, 0, 0);
      EstaTabela.Refresh;
      FechaAviso;
    except
      on E: exception do begin
        LogDeErros(E.Message);
        CM.MensagemDeErro('Não foi possível atualizar informações para produtos similares...');
        IBTabela.IB_Transaction.RollBack;
      end;
    end;
  end;
end;

procedure TfCadProdutos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
    vk_F8    : if (Shift = []) and (bt_GeraCodigo.Enabled) then bt_GeraCodigo.Click;
    vk_F6    : if (Shift = []) and (btGrade.Enabled)       then btGrade.Click;
  end;
end;

procedure TfCadProdutos.BitBtn1Click(Sender: TObject);
begin
  if not mVAL.TemAcessoPermissao(sgCadGrupos, 'L') then Exit;
  if (modo = mdInclusao) or (modo = mdAlteracao) then
  begin
    Application.CreateForm(TfCadGruposProdutos, fCadGruposProdutos);
    fCadGruposProdutos.CD_GRUPO := EstaTabela.FieldByName('CD_GRUPO').AsInteger;
    fCadGruposProdutos.AbrirNoUltimo := true;
    fCadGruposProdutos.ModoCadastro := true;
    fCadGruposProdutos.ShowModal;
    if fCadGruposProdutos.BotaoPressionado = bpOk then
      IBCadastro.FieldByName('CD_GRUPO').AsInteger := fCadGruposProdutos.CD_GRUPO;
    fCadGruposProdutos.Free;
  end;
end;

procedure TfCadProdutos.edCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', 'A'..'Z', 'a'..'z', #13,#27,#8]) then
    key := #0;
end;

procedure TfCadProdutos.DBCheckBox3Click(Sender: TObject);
begin
  VerificaPromocao;
end;

procedure TfCadProdutos.DBEditPrecoVendaExit(Sender: TObject);
var
  Lucro : real;
begin
  if (Modo = mdAlteracao) or (Modo = mdInclusao) then
  begin
    if edPrecoCusto.Value > 0 then
    begin
      Lucro := DBEditPrecoVenda.Value - edPrecoCusto.Value;
      EstaTabela.FieldByName('MARGEM').AsCurrency := (100 * Lucro) / edPrecoCusto.Value;
    end;
  end;
end;

procedure TfCadProdutos.edGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = vk_Return) then
  begin
    BitBtn1.Click;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfCadProdutos.cbAliquotaChange(Sender: TObject);
var
  S : String[2];
begin
  S := cbAliquota.Text;
  if (S = 'II') or (S = 'FF') or (S = 'SS') or (S = 'NN') then
    edAliquota2.Text := S
  else begin
    if not vazio(S) then
    begin
      try
        edAliquota2.Text := IBAliquotas.FieldByName('ALIQ'+S).AsString;
      except
        edAliquota2.Clear;
      end;
    end
    else begin
      edAliquota2.Clear;
    end;
  end;
end;

procedure TfCadProdutos.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  cbAliquota.OnChange(self);
  DBCheckBoxTipoPrecoUnicoClick(self);
  VerificaTresCasasDecimais;
  VerificaPromocao;
  VerificaPrecoPDV;
  if EstaTabela.FieldByName('QUANTTROCA').AsCurrency > 0 then
  begin
    DBEdit2.Color := clRed;
    DBEdit2.Font.Color := clWhite;
  end
  else begin
    DBEdit2.Color := clWindow;
    DBEdit2.Font.Color := clWindowText;
  end;

  inherited;
end;

procedure TfCadProdutos.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TfTabela, fTabela);
  fTabela.Caption := 'Fornecedores - '+ EstaTabela.FieldByName('COD_BARRAS').AsString+ ' - '+EstaTabela.FieldByName('NM_PRODUTO').AsString;
  fTabela.Top := Height - 258;
  fTabela.Left := Left + 20;
  fTabela.ChaveEntrada := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
  fTabela.MostrarOQue := mqProdFornec;
  fTabela.ShowModal;
  fTabela.Free;
end;

procedure TfCadProdutos.edUltimoCustoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = '.' then key := ',';
end;

procedure TfCadProdutos.edCodBalancaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#13,#27,#8]) then
    key := #0;
end;

procedure TfCadProdutos.Bt_FotoClick(Sender: TObject);
var
  JPG : TJPEGImage;
  MyStream: TMemoryStream;
begin
  if OpenPictureDialog1.Execute then
  begin
    try
      JPG := TJPEGImage.create;
      JPG.LoadFromFile(OpenPictureDialog1.FileName);
      MyStream := TMemoryStream.Create;
      JPG.SaveToStream(MyStream);
      MyStream.Seek(0,soFromBeginning);
      TBlobField(EstaTabela.FieldByName('FOTO')).LoadFromStream(MyStream);
//      DtM.IBProdutosFOTO.LoadFromStream(MyStream);
    finally
      MyStream.Free;
      JPG.Free;
    end;
  end;
end;

procedure TfCadProdutos.Bt_ApagaFotoClick(Sender: TObject);
begin
  TBlobField(EstaTabela.FieldByName('FOTO')).Clear;
//  DtM.IBProdutosFOTO.Clear;
end;

procedure TfCadProdutos.VerificaTresCasasDecimais;
begin
  if DBCheckBox2.Checked then
  begin
    edPrecoCusto.DecimalPlaces  := 3;
    edPrecoCusto.DisplayFormat  := ',0.000';
    edUltimoCusto.DecimalPlaces := 3;
    edUltimoCusto.DisplayFormat := ',0.000';
    edCustoMedio.DecimalPlaces  := 3;
    edCustoMedio.DisplayFormat  := ',0.000';
    DBEditPrecoVenda.DecimalPlaces := 3;
    DBEditPrecoVenda.DisplayFormat := ',0.000';
    edPrecoVendaPDV.DecimalPlaces  := 3;
    edPrecoVendaPDV.DisplayFormat  := ',0.000';
    edValorPDVEmbalagem.DecimalPlaces  := 3;
    edValorPDVEmbalagem.DisplayFormat  := ',0.000';
    RxDBCalcEdit12.DecimalPlaces := 3;
    RxDBCalcEdit12.DisplayFormat := ',0.000';
  end
  else begin
    edPrecoCusto.DecimalPlaces  := 2;
    edPrecoCusto.DisplayFormat  := ',0.00';
    edUltimoCusto.DecimalPlaces := 2;
    edUltimoCusto.DisplayFormat := ',0.00';
    edCustoMedio.DecimalPlaces  := 2;
    edCustoMedio.DisplayFormat  := ',0.00';
    DBEditPrecoVenda.DecimalPlaces := 2;
    DBEditPrecoVenda.DisplayFormat := ',0.00';
    edPrecoVendaPDV.DecimalPlaces  := 2;
    edPrecoVendaPDV.DisplayFormat  := ',0.00';
    edValorPDVEmbalagem.DecimalPlaces  := 2;
    edValorPDVEmbalagem.DisplayFormat  := ',0.00';
    RxDBCalcEdit12.DecimalPlaces := 2;
    RxDBCalcEdit12.DisplayFormat := ',0.00';
  end;
end;

procedure TfCadProdutos.edCodEmbalagemChange(Sender: TObject);
begin
  if Vazio(edCodEmbalagem.Text) then
  begin
    DesligaComponente(self, edValorEmbalagem);
    DesligaComponente(self, edValorPDVEmbalagem);
    DesligaComponente(self, edUndConvEmbalagem);
    DesligaComponente(self, lbValorEmbalagem);
    DesligaComponente(self, lbValorPDVEmbalagem);
    DesligaComponente(self, lbUndConvEmbalagem);
    DesligaComponente(self, lbUndConvEmbalagem2);
  end
  else begin
    LigaComponente(self, edValorEmbalagem);
    LigaComponente(self, edValorPDVEmbalagem);
    LigaComponente(self, edUndConvEmbalagem);
    LigaComponente(self, lbValorEmbalagem);
    LigaComponente(self, lbValorPDVEmbalagem);
    LigaComponente(self, lbUndConvEmbalagem);
    LigaComponente(self, lbUndConvEmbalagem2);

    edValorPDVEmbalagem.Color := clYellow;
    lbUndConvEmbalagem2.Font.Color  := clNavy;
  end;
end;

procedure TfCadProdutos.bt_GeraCodigoClick(Sender: TObject);
begin
  if (Modo = mdInclusao) or (Modo = mdAlteracao) then
  begin
    EstaTabela.FieldByName('COD_BARRAS').AsString := CM.GeraCodigo(GeraCodSequencial, CodSeq, EstaTabela.FieldByName('CD_GRUPO').AsString);
  end;
end;

procedure TfCadProdutos.SpeedButton5Click(Sender: TObject);
var
  Agora : TDateTime; 
begin
  with CM do
  begin
    Agora := CM.NowDoServidor;
    StoredProc.StoredProcName := 'CALC_MEDIAVENDA';
    if not StoredProc.Prepared then StoredProc.Prepare;
    StoredProc.ParamByName('PCD_PRODUTO').AsInteger := EstaTabela.FieldByname('CD_PRODUTO').AsInteger;
    StoredProc.ParamByName('PPERIODO').AsInteger    := PeriodoMedia;
    StoredProc.ParamByName('PDATA').AsDateTime      := Agora;
    StoredProc.ExecProc;

    IBTabela.Active := false;
    if not IBTabela.IB_Transaction.InTransaction then IBTabela.IB_Transaction.StartTransaction;
    try
      IBTabela.SQL.Clear;
      IBTabela.SQL.Add('Update REFPRODUTOS set MEDIAVENDA = :MEDIAVENDA');
      IBTabela.SQL.Add('where CD_PRODUTO = :CD_PRODUTO');
      if not IBTabela.Prepared then IBTabela.Prepare;
      IBTabela.ParamByName('MEDIAVENDA').AsCurrency := StoredProc.ParamByName('MEDIADIARIA').AsCurrency;
      IBTabela.ParamByName('CD_PRODUTO').AsInteger := EstaTabela.FieldByname('CD_PRODUTO').AsInteger;
      IBTabela.ExecSQL;
      IBTabela.IB_Transaction.Commit;
    except
      on E: exception do begin
        LogDeErros(E.Message);
        IBTabela.IB_Transaction.Rollback;
        CM.MensagemDeErro('Não foi possível atualizar a média de venda.');
      end;
    end;
    EditMediaVenda.Value := StoredProc.ParamByName('MEDIADIARIA').AsCurrency;
  end;
end;

procedure TfCadProdutos.btAlteraEstoqueClick(Sender: TObject);
begin
  if not mVAL.TemAcessoPermissao(sgEstoque, 'A') then Exit;

  if CM.TemDepositos then
  begin
    Application.CreateForm(TfEstoqueDepositos, fEstoqueDepositos);
    fEstoqueDepositos.CodProduto := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
    fEstoqueDepositos.ShowModal;
    fEstoqueDepositos.Free;
  end
  else begin
    if CM.TemGrades(EstaTabela.FieldByName('CD_PRODUTO').AsInteger) then
    begin
      Application.CreateForm(TfEstoqueGrades, fEstoqueGrades);
      fEstoqueGrades.CodProduto := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
      fEstoqueGrades.ShowModal;
      fEstoqueGrades.Free;
    end
    else begin
      Application.CreateForm(TfEstoqueSimples, fEstoqueSimples);
      fEstoqueSimples.CodProduto := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
      fEstoqueSimples.ShowModal;
      fEstoqueSimples.Free;
    end;
  end;

  EstaTabela.Refresh;
end;

procedure TfCadProdutos.btPrecosClick(Sender: TObject);
begin
  Application.CreateForm(TfPrecosDoProduto, fPrecosDoProduto);
  fPrecosDoProduto.CD_PRODUTO           := IBCadastro.FieldByName('CD_PRODUTO').AsInteger;
  fPrecosDoProduto.USAR_CD_VENDA_UNICO  := IBCadastro.FieldByName('USAR_CD_VENDA_UNICO').AsString;
  fPrecosDoProduto.CD_VENDA_UNICO       := IBCadastro.FieldByName('CD_VENDA_UNICO').AsInteger;
  fPrecosDoProduto.EditPrecoVenda.Value := DBEditPrecoVenda.Value;
  fPrecosDoProduto.ShowModal;
  fPrecosDoProduto.Free;
end;

procedure TfCadProdutos.RadioGroupAtivosClick(Sender: TObject);
begin
  OrdenaCampo;
end;

procedure TfCadProdutos.DBCheckBox5Click(Sender: TObject);
var
  i : integer;
begin
  if DBCheckBox5.Checked then
  begin
    SubstituiCor(self, clWindow, $00F8C4AD, 0);
    SubstituiCor(self, clYellow, $0088C4FF, 0);
  end
  else begin
    SubstituiCor(self, $00F8C4AD, clWindow, 0);
    SubstituiCor(self, $0088C4FF, clYellow, 0);
  end
end;

procedure TfCadProdutos.Bt_UltimasComprasClick(Sender: TObject);
begin
  Application.CreateForm(TfTabela, fTabela);
  fTabela.Caption := 'Últimas Compras - '+ EstaTabela.FieldByName('COD_BARRAS').AsString+ ' - '+EstaTabela.FieldByName('NM_PRODUTO').AsString;
  fTabela.ChaveEntrada := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
  fTabela.MostrarOQue := mqProdUltimasCompras;
  fTabela.ShowModal;
  fTabela.Free;
end;

procedure TfCadProdutos.btQtdePedidaClick(Sender: TObject);
var
  Q : String;
begin
  with CM do
  begin
    IBTabela.Active := false;
    IBTabela.SQL.Clear;
    IBTabela.SQL.Add('Select sum(QUANTIDADE) S from PEDIDOSDECOMPRA_ITEMS');
    IBTabela.SQL.Add('where CD_PRODUTO = :CD_PRODUTO');
    IBTabela.SQL.Add('and BAIXADO = :BAIXADO');
    if not IBTabela.Prepared then IBTabela.Prepare;
    IBTabela.ParamByName('CD_PRODUTO').AsInteger := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
    IBTabela.ParamByName('BAIXADO').AsString := 'F';
    IBTabela.Active := true;
    Q := FormatCurr(',0.000', IBTabela.FieldByName('S').AsCurrency);
    MessageBox(0, PChar('Quantidade Pedida:'+#13+#10+''+#13+#10+Q), 'Quantidade Pedida', MB_ICONINFORMATION or MB_OK);
    CM.FechaTT(IBTabela);
  end;
end;

procedure TfCadProdutos.bt_UltimasVendasClick(Sender: TObject);
begin
  Application.CreateForm(TfTabela, fTabela);
  fTabela.Caption := 'Últimas Vendas - '+ EstaTabela.FieldByName('COD_BARRAS').AsString+ ' - '+EstaTabela.FieldByName('NM_PRODUTO').AsString;
  fTabela.ChaveEntrada := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
  fTabela.MostrarOQue := mqProdUltimasVendas;
  fTabela.ShowModal;
  fTabela.Free;
end;

procedure TfCadProdutos.bt_VendaMensalClick(Sender: TObject);
begin
  Application.CreateForm(TfTabela, fTabela);
  fTabela.Caption := 'Venda Mensal - '+ EstaTabela.FieldByName('COD_BARRAS').AsString+ ' - '+EstaTabela.FieldByName('NM_PRODUTO').AsString;
  fTabela.ChaveEntrada := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
  fTabela.MostrarOQue := mqProdVendaMensal;
  fTabela.ShowModal;
  fTabela.Free;
end;

procedure TfCadProdutos.DBEdit2Enter(Sender: TObject);
begin
  if Vazio(edCodigo.Text) then bt_GeraCodigo.Click;
end;

procedure TfCadProdutos.DBEditMargemExit(Sender: TObject);
begin
  if (Modo = mdAlteracao) or (Modo = mdInclusao) then
  begin
    if edPrecoCusto.Value > 0 then
    begin
      if (Sender = DBEditMargem) then
      begin
        EstaTabela.FieldByName('PRECOVENDA').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * DBEditMargem.Value)/100);
      end;
    end;
  end;
end;

//##############################################################################
// Começa LIGA / DESLIGA COMPONENTE
//##############################################################################

procedure TfCadProdutos.DesligaEsteComp(Sender: TObject);
begin
       if (Sender = edCodigo2)          then begin DesligaComponente(self, lbCodigo2); end
  else if (Sender = edCodigo3)          then begin DesligaComponente(self, lbCodigo3); end
  else if (Sender = edCodigo4)          then begin DesligaComponente(self, lbCodigo4); end
  else if (Sender = edCodBalanca)       then begin DesligaComponente(self, cbCodBalanca); end
  else if (Sender = edFabricante)       then begin DesligaComponente(self, lbFabricante); end
  else if (Sender = edCodSimilar)       then begin DesligaComponente(self, lbSimilares); DesligaComponente(self, EditNomeSimilar); DesligaComponente(self, btPesquisaSimilar); end
  else if (Sender = edLocalizacao)      then begin DesligaComponente(self, lbLocalizacao); end
  else if (Sender = edPesoLiquido)      then begin DesligaComponente(self, lbPesoLiquido); end
  else if (Sender = edPesoBruto)        then begin DesligaComponente(self, lbPesoBruto); end
  else if (Sender = edEstoqueMinimo)    then begin DesligaComponente(self, lbEstoqueMinimo); end
  else if (Sender = edAplicacao)        then begin DesligaComponente(self, lbAplicacao); end
  else if (Sender = edQuantParaTroca)   then begin DesligaComponente(self, lbQuantParaTroca); end
  else if (Sender = edDesconto)         then begin DesligaComponente(self, lbDesconto); DesligaComponente(self, lbDesconto2); end
  else if (Sender = edComissao)         then begin DesligaComponente(self, lbComissao); DesligaComponente(self, lbComissao2); end
  else if (Sender = edClassFiscal)      then begin DesligaComponente(self, lbClassFiscal); end
  else if (Sender = edIPI)              then begin DesligaComponente(self, lbIPI); DesligaComponente(self, lbIPI2); end
  else if (Sender = edDescrAbrev)       then begin DesligaComponente(self, lbDescrAbrev); end
  else if (Sender = edUnidade)          then begin DesligaComponente(self, lbUnidade); end
  else if (Sender = edCodEmbalagem)     then begin DesligaComponente(self, lbCodEmbalagem);  DesligaComponente(self, edValorEmbalagem); DesligaComponente(self, lbValorEmbalagem); DesligaComponente(self, edUndConvEmbalagem); DesligaComponente(self, lbUndConvEmbalagem); DesligaComponente(self, lbUndConvEmbalagem2); DesligaComponente(self, edValorPDVEmbalagem); DesligaComponente(self, lbValorPDVEmbalagem); end
  else if (Sender = cbAliquota)         then begin DesligaComponente(self, lbAliquota); DesligaComponente(self, lbAliquota2); DesligaComponente(self, edAliquota2); end;

  DesligaComponente(self, Sender, true, clBtnFace, clGrayText, false, 100);
end;

procedure TfCadProdutos.LigaEsteComp(Sender: TObject);
begin
       if (Sender = edCodigo2)          then begin LigaComponente(self, lbCodigo2); end
  else if (Sender = edCodigo3)          then begin LigaComponente(self, lbCodigo3); end
  else if (Sender = edCodigo4)          then begin LigaComponente(self, lbCodigo4); end
  else if (Sender = edCodBalanca)       then begin LigaComponente(self, cbCodBalanca); end
  else if (Sender = edFabricante)       then begin LigaComponente(self, lbFabricante); end
  else if (Sender = edCodSimilar)       then begin LigaComponente(self, lbSimilares); LigaComponente(self, btPesquisaSimilar); LigaComponente(self, EditNomeSimilar, true, clYellow); end
  else if (Sender = edLocalizacao)      then begin LigaComponente(self, lbLocalizacao); end
  else if (Sender = edPesoLiquido)      then begin LigaComponente(self, lbPesoLiquido); end
  else if (Sender = edPesoBruto)        then begin LigaComponente(self, lbPesoBruto); end
  else if (Sender = edEstoqueMinimo)    then begin LigaComponente(self, lbEstoqueMinimo); end
  else if (Sender = edAplicacao)        then begin LigaComponente(self, lbAplicacao); end
  else if (Sender = edQuantParaTroca)   then begin LigaComponente(self, lbQuantParaTroca); end
  else if (Sender = edDesconto)         then begin LigaComponente(self, lbDesconto); LigaComponente(self, lbDesconto2); end
  else if (Sender = edComissao)         then begin LigaComponente(self, lbComissao); LigaComponente(self, lbComissao2); end
  else if (Sender = edClassFiscal)      then begin LigaComponente(self, lbClassFiscal); end
  else if (Sender = edIPI)              then begin LigaComponente(self, lbIPI); LigaComponente(self, lbIPI2); end
  else if (Sender = edDescrAbrev)       then begin LigaComponente(self, lbDescrAbrev); end
  else if (Sender = edUnidade)          then begin LigaComponente(self, lbUnidade); end
  else if (Sender = edCodEmbalagem)     then begin LigaComponente(self, lbCodEmbalagem);  DesligaComponente(self, edValorEmbalagem); DesligaComponente(self, lbValorEmbalagem); DesligaComponente(self, edUndConvEmbalagem); DesligaComponente(self, lbUndConvEmbalagem); DesligaComponente(self, lbUndConvEmbalagem2); DesligaComponente(self, edValorPDVEmbalagem); DesligaComponente(self, lbValorPDVEmbalagem); end
  else if (Sender = cbAliquota)         then begin LigaComponente(self, lbAliquota); LigaComponente(self, lbAliquota2); LigaComponente(self, edAliquota2); end;

  LigaComponente(self, Sender, true, clWindow, clWindowText, 111);

  try
    TCustomEdit(Sender as TControl).SetFocus;
    TCustomEdit(Sender as TControl).SelectAll;
  except
  end;  
end;

procedure TfCadProdutos.PopupMenuPopup(Sender: TObject);
begin
  MenuLiga.Enabled    := (CompSender as TControl).Tag = 100;
  MenuDesliga.Enabled := (CompSender as TControl).Tag = 111;
end;

procedure TfCadProdutos.MenuLigaClick(Sender: TObject);
begin
  LigaEsteComp(CompSender);
end;

procedure TfCadProdutos.MenuDesligaClick(Sender: TObject);
begin
  DesligaEsteComp(CompSender);
end;

procedure TfCadProdutos.edFabricanteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  pt : TPoint;
  NaoPode : boolean;
begin
  NaoPode := false;
  if Button = mbRight then
  begin
         if ((Sender = edCodigo2) or (Sender = lbCodigo2)) then CompSender := edCodigo2
    else if ((Sender = edCodigo3) or (Sender = lbCodigo3)) then CompSender := edCodigo3
    else if ((Sender = edCodigo4) or (Sender = lbCodigo4)) then CompSender := edCodigo4
    else if ((Sender = edCodBalanca)  or (Sender = cbCodBalanca))  then CompSender := edCodBalanca
    else if ((Sender = edFabricante)  or (Sender = lbFabricante))  then CompSender := edFabricante
    else if ((Sender = edCodSimilar)  or (Sender = lbSimilares) or (Sender = EditNomeSimilar) or (Sender = btPesquisaSimilar)) then CompSender := edCodSimilar
    else if ((Sender = edLocalizacao) or (Sender = lbLocalizacao)) then CompSender := edLocalizacao
    else if ((Sender = edPesoLiquido) or (Sender = lbPesoLiquido)) then CompSender := edPesoLiquido
    else if ((Sender = edPesoBruto)   or (Sender = lbPesoBruto))   then CompSender := edPesoBruto
    else if ((Sender = edEstoqueMinimo)  or (Sender = lbEstoqueMinimo))  then CompSender := edEstoqueMinimo
    else if ((Sender = edAplicacao)      or (Sender = lbAplicacao))      then CompSender := edAplicacao
    else if ((Sender = edQuantParaTroca) or (Sender = lbQuantParaTroca)) then CompSender := edQuantParaTroca
    else if ((Sender = edDesconto)       or (Sender = lbDesconto))       then CompSender := edDesconto
    else if ((Sender = edComissao)       or (Sender = lbComissao))       then CompSender := edComissao
    else if ((Sender = edClassFiscal)    or (Sender = lbClassFiscal))    then CompSender := edClassFiscal
    else if ((Sender = edIPI)            or (Sender = lbIPI))            then CompSender := edIPI
    else if ((Sender = edDescrAbrev)     or (Sender = lbDescrAbrev))     then CompSender := edDescrAbrev
    else if ((Sender = edUnidade)        or (Sender = lbUnidade))        then CompSender := edUnidade
    else if ((Sender = edCodEmbalagem)   or (Sender = lbCodEmbalagem))   then CompSender := edCodEmbalagem
    else if ((Sender = cbAliquota) or (Sender = lbAliquota) or (Sender = edAliquota2)) then CompSender := cbAliquota;

    if not NaoPode then
    begin
      GetCursorPos(pt);
      PopUpMenu.Popup(pt.X , pt.Y);
    end;
  end;
end;

procedure TfCadProdutos.GravaEstadoLigadoDesligado;
begin
  SalvaIntegerNoRegistro(ChaveDoRegistro, edCodigo2.Name,       edCodigo2.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edCodigo3.Name,       edCodigo3.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edCodigo4.Name,       edCodigo4.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edCodBalanca.Name,    edCodBalanca.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edFabricante.Name,    edFabricante.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edCodSimilar.Name,    edCodSimilar.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edLocalizacao.Name,   edLocalizacao.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edPesoLiquido.Name,   edPesoLiquido.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edPesoBruto.Name,     edPesoBruto.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edEstoqueMinimo.Name, edEstoqueMinimo.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edAplicacao.Name,     edAplicacao.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edQuantParaTroca.Name,edQuantParaTroca.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edDesconto.Name,      edDesconto.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edComissao.Name,      edComissao.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edClassFiscal.Name,   edClassFiscal.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edIPI.Name,           edIPI.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edDescrAbrev.Name,    edDescrAbrev.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edUnidade.Name,       edUnidade.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, edCodEmbalagem.Name,  edCodEmbalagem.Tag);
  SalvaIntegerNoRegistro(ChaveDoRegistro, cbAliquota.Name,      cbAliquota.Tag);
end;

procedure TfCadProdutos.AjustaEstadoDoComponente(aeComponente:TObject);
var
  T : word;
  Nome : String;
begin
  Nome := (aeComponente as TControl).Name;
  T := LeIntegerDoRegistro(ChaveDoRegistro, Nome, 111);
  (aeComponente as TControl).Tag := T;
  if (aeComponente as TControl).Tag = 100 then DesligaEsteComp(aeComponente)
                                          else LigaEsteComp(aeComponente);
end;

procedure TfCadProdutos.CarregaEstadoLigadoDesligado;
begin
  AjustaEstadoDoComponente(edCodigo2);
  AjustaEstadoDoComponente(edCodigo3);
  AjustaEstadoDoComponente(edCodigo4);
  AjustaEstadoDoComponente(edCodBalanca);
  AjustaEstadoDoComponente(edFabricante);
  AjustaEstadoDoComponente(edCodSimilar);
  AjustaEstadoDoComponente(edLocalizacao);
  AjustaEstadoDoComponente(edPesoLiquido);
  AjustaEstadoDoComponente(edPesoBruto);
  AjustaEstadoDoComponente(edEstoqueMinimo);
  AjustaEstadoDoComponente(edAplicacao);
  AjustaEstadoDoComponente(edQuantParaTroca);
  AjustaEstadoDoComponente(edDesconto);
  AjustaEstadoDoComponente(edComissao);
  AjustaEstadoDoComponente(edClassFiscal);
  AjustaEstadoDoComponente(edIPI);
  AjustaEstadoDoComponente(edDescrAbrev);
  AjustaEstadoDoComponente(edUnidade);
  AjustaEstadoDoComponente(edCodEmbalagem);
  AjustaEstadoDoComponente(cbAliquota);
end;

//##############################################################################
// Termina LIGA / DESLIGA COMPONENTE
//##############################################################################

procedure TfCadProdutos.VerificaPrecoPDV;
begin
  if DBEditPrecoVenda.Value <> edPrecoVendaPDV.Value then
  begin
    edPrecoVendaPDV.Font.Color := clRed;
    chSincronizaPreco.Visible := true;
  end
  else begin
    edPrecoVendaPDV.Font.Color := clBlack;
    chSincronizaPreco.Visible := false;
  end;
end;

procedure TfCadProdutos.spAtualizaCustoMedioClick(Sender: TObject);
begin
  if not (Modo in [mdAlteracao, mdInclusao]) then Exit;
  EstaTabela.FieldByName('CUSTOMEDIO').AsCurrency := CM.PegaCustoMedio(EstaTabela.FieldByname('CD_PRODUTO').AsInteger);
  EstaTabela.FieldByName('PRECOCUSTO').AsCurrency := EstaTabela.FieldByName('CUSTOMEDIO').AsCurrency;
end;

procedure TfCadProdutos.VerificaTipoCusto;
begin
  case StrToChar(DBRadioGroup1.Value, 'U') of
    'M' : begin
            LigaComponente(self, edCustoMedio, true, clWindow, clWindowText, 0);
            DesligaComponente(self, edUltimoCusto, true, clBtnFace, clGrayText, false, 0);
            if (Modo in [mdAlteracao, mdInclusao]) and (EstaTabela.state in dsEditModes) then
              EstaTabela.FieldByName('PRECOCUSTO').AsCurrency := EstaTabela.FieldByName('CUSTOMEDIO').AsCurrency;
          end;
    'U' : begin
            DesligaComponente(self, edCustoMedio, true, clBtnFace, clGrayText, false, 0);
            LigaComponente(self, edUltimoCusto, true, clWindow, clWindowText, 0);
            if (Modo in [mdAlteracao, mdInclusao]) and (EstaTabela.state in dsEditModes) then
              EstaTabela.FieldByName('PRECOCUSTO').AsCurrency := EstaTabela.FieldByName('ULTIMOCUSTO').AsCurrency;
          end;
  end;
end;

procedure TfCadProdutos.edCodSimilarChange(Sender: TObject);
begin
  CM.BuscaRegistro(edCodSimilar, EditNomeSimilar, 'SIMILARES', 'CD_SIMILAR', 'NM_SIMILAR', 'CD_SIMILAR > 0');
end;

procedure TfCadProdutos.edCodSimilarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (CM.F3OuAltDown(key, shift)) and (Modo in [mdAlteracao, mdInclusao]) then btPesquisaSimilar.Click;
end;

procedure TfCadProdutos.edCodSimilarKeyPress(Sender: TObject; var Key: Char);
begin
  ItemEsc.CodInt := CodigoVazio;
  if (Modo in [mdAlteracao, mdInclusao]) then
  begin
    if not (key in SetNumeros) then
      ItemEsc := mPesq.PesquisaDireto(key, pqSimilares, [mdInclusao, mdAlteracao], edCodSimilar, '', 'CD_SIMILAR > 0');
    if ItemEsc.CodInt <> CodigoVazio then
      IBCadastro.FieldByName('CD_SIMILAR').AsInteger := ItemEsc.CodInt;
  end;
end;

procedure TfCadProdutos.btPesquisaSimilarClick(Sender: TObject);
begin
  if (Modo in [mdAlteracao, mdInclusao]) then
  begin
    ItemEsc := mPesq.Pesquisa(pqSimilares, [mdInclusao, mdAlteracao], edCodSimilar, EditNomeSimilar.Text, 'CD_SIMILAR > 0');
    IBCadastro.FieldByName('CD_SIMILAR').AsInteger := ItemEsc.CodInt;
  end;
end;

procedure TfCadProdutos.FormataCampos;
begin
  inherited;
  CM.FormataCampo(TipoTimeStamp, EstaTabela.FieldByName('DT_ULTIMAVENDA'), 'dd/mm/yyyy hh:mm:ss', taCenter);
  CM.FormataCampo(TipoDate, EstaTabela.FieldByName('DT_ULTIMACOMPRA'),     'dd/mm/yyyy', taCenter);
  CM.FormataCampo(TipoDate, EstaTabela.FieldByName('DT_ULTIMOREAJUSTE'),   'dd/mm/yyyy', taCenter);
  CM.FormataCampo(TipoInteger, EstaTabela.FieldByName('CD_PRODUTO'),          '0', taRightJustify);
end;

procedure TfCadProdutos.DBRadioGroup1Change(Sender: TObject);
begin
  VerificaTipoCusto;
end;

procedure TfCadProdutos.edCustoMedioExit(Sender: TObject);
begin
  VerificaTipoCusto;

  if (Modo = mdAlteracao) or (Modo = mdInclusao) then
  begin
    if edPrecoCusto.Value > 0 then
    begin
      if (Sender = edCustoMedio) then
      begin
        EstaTabela.FieldByName('PRECOVENDA').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * DBEditMargem.Value)/100);
      end;
    end;
  end;
  pnCalcCustoMedio.Visible := false;

{  if (Modo = mdAlteracao) or (Modo = mdInclusao) then
  begin
    if (edPrecoCusto.Value > 0) and (EstaTabela.state in dsEditModes) then
    begin
      Lucro := DBEditPRECOVENDA.Value - edPrecoCusto.Value;
      EstaTabela.FieldByName('MARGEM').AsCurrency := (100 * Lucro) / edPrecoCusto.Value;
    end;
  end;}
end;

procedure TfCadProdutos.edUltimoCustoExit(Sender: TObject);
begin
  VerificaTipoCusto;

  if (Modo = mdAlteracao) or (Modo = mdInclusao) then
  begin
    if edPrecoCusto.Value > 0 then
    begin
      if (Sender = edUltimoCusto) then
      begin
        EstaTabela.FieldByName('PRECOVENDA').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * DBEditMargem.Value)/100);

        if edMargem2.Value > 0 then
          EstaTabela.FieldByName('PRECO2').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * edMargem2.Value)/100);

        if edMargem3.Value > 0 then
          EstaTabela.FieldByName('PRECO3').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * edMargem3.Value)/100);

        if edMargem4.Value > 0 then
          EstaTabela.FieldByName('PRECO4').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * edMargem4.Value)/100);

        if edMargem5.Value > 0 then
          EstaTabela.FieldByName('PRECO5').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * edMargem5.Value)/100);
      end;
    end;
  end;

{  if (Modo = mdAlteracao) or (Modo = mdInclusao) then
  begin
    if (edPrecoCusto.Value > 0) and (EstaTabela.state in dsEditModes) then
    begin
      Lucro := DBEditPRECOVENDA.Value - edPrecoCusto.Value;
      EstaTabela.FieldByName('MARGEM').AsCurrency := (100 * Lucro) / edPrecoCusto.Value;
    end;
  end;}
end;

procedure TfCadProdutos.btEstoqueDepositosClick(Sender: TObject);
begin
  if not mVAL.TemAcessoPermissao(sgEstoque, 'L') then Exit;

  Application.CreateForm(TfEstoqueDepositos, fEstoqueDepositos);
  fEstoqueDepositos.CodProduto := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
  fEstoqueDepositos.ShowModal;
  fEstoqueDepositos.Free;
end;

procedure TfCadProdutos.EditCodFornecedorChange(Sender: TObject);
begin
  with CM do
  begin
    IBTabela.Active := false;
    IBTabela.SQL.Clear;
    IBTabela.SQL.Add('Select NM_FORNECEDOR, CD_FORNECEDOR from FORNECEDORES');
    IBTabela.SQL.Add('where CD_FORNECEDOR = :CD_FORNECEDOR');
    if not IBTabela.Prepared then IBTabela.Prepare;
    IBTabela.ParamByName('CD_FORNECEDOR').AsString := EditCodFornecedor.Text;
    IBTabela.Active := true;
    if not IBTabela.IsEmpty then
    begin
      EditNomeFornecedor.Text := IBTabela.FieldByName('NM_FORNECEDOR').AsString;
      EditNomeFornecedor.Tag  := IBTabela.FieldByName('CD_FORNECEDOR').AsInteger;
    end
    else begin
      EditNomeFornecedor.Clear;
      EditNomeFornecedor.Tag := 0;
    end;
    CM.FechaTT(IBTabela);
  end;
end;

procedure TfCadProdutos.EditCodFornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if CM.F3OuAltDown(key, Shift) then SpeedButtonFornecedor.Click;
end;

procedure TfCadProdutos.EditCodFornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in SetNumeros) then
    ItemEsc := mPesq.PesquisaDireto(key, pqFornecedores, [], EditCodFornecedor);
end;

procedure TfCadProdutos.SpeedButtonFornecedorClick(Sender: TObject);
begin
  ItemEsc := mPesq.Pesquisa(pqFornecedores, [mdAlteracao], EditCodFornecedor, EditNomeFornecedor.Text);
end;

procedure TfCadProdutos.EditNomeFornecedorChange(Sender: TObject);
begin
  if not Vazio(EditNomeFornecedor.Text) then 
    OrdenaCampo;
end;

procedure TfCadProdutos.btEtiquetasClick(Sender: TObject);
var
  i, Quantidade : Integer;
  S : String;
  VetEtiqCodBarras: array of TRegEtiqCodBarras;
begin
  Quantidade := 10;

  if RegImpCodBarras.Modelo <> 'N' then
  begin
    try
      Application.CreateForm(TfImpEtiqCodBarras, fImpEtiqCodBarras);
      fImpEtiqCodBarras.ShowModal;

      if fImpEtiqCodBarras.RadioGroupITEM.ItemIndex = 0 then
      begin   // Referência
        if fImpEtiqCodBarras.RadioGroupQUANTIDADE.ItemIndex = 0 then
          Quantidade := trunc(fImpEtiqCodBarras.edQuantidade.Value)
        else
          Quantidade := trunc(EstaTabela.FieldByName('ESTOQUEATUAL').AsCurrency);

        setLength(VetEtiqCodBarras, 0);
        for i := 1 to Quantidade do
        begin
          setLength(VetEtiqCodBarras, length(VetEtiqCodBarras)+1);
          VetEtiqCodBarras[length(VetEtiqCodBarras)-1].NM_Produto := EstaTabela.FieldByName('NM_PRODUTO').AsString;
          VetEtiqCodBarras[length(VetEtiqCodBarras)-1].NM_Grade   := '';
          VetEtiqCodBarras[length(VetEtiqCodBarras)-1].Cod_Barras := EstaTabela.FieldByName('COD_BARRAS').AsString;
        end;

        mPRF.ImprimeEtiqCodBarras(VetEtiqCodBarras, ColEsquerda);
      end     // Todas as Grades
      else begin
        CM.IBTabela.Active := false;
        CM.IBTabela.SQL.Clear;
        CM.IBTabela.SQL.Add('Select G.NM_GRADE, G.COD_BARRAS, E.ESTOQUEATUAL from GRADES G        ');
        CM.IBTabela.SQL.Add('left outer join sp_pegaestoque(G.CD_PRODUTO, G.CD_GRADE, 0) E on 1=1 ');
        CM.IBTabela.SQL.Add('where G.CD_PRODUTO = :CD_PRODUTO                                     ');
        if not CM.IBTabela.Prepared then CM.IBTabela.Prepare;
        CM.IBTabela.ParamByName('CD_PRODUTO').AsInteger := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
        CM.IBTabela.Active := true;
        CM.IBTabela.First;
        setLength(VetEtiqCodBarras, 0);
        while not CM.IBTabela.Eof do
        begin
          if fImpEtiqCodBarras.RadioGroupQUANTIDADE.ItemIndex = 0 then
            Quantidade := trunc(fImpEtiqCodBarras.edQuantidade.Value)
          else
            Quantidade := trunc(CM.IBTabela.FieldByName('ESTOQUEATUAL').AsCurrency);

          for i := 1 to Quantidade do
          begin
            setLength(VetEtiqCodBarras, length(VetEtiqCodBarras)+1);
            VetEtiqCodBarras[length(VetEtiqCodBarras)-1].NM_Produto := EstaTabela.FieldByName('COD_BARRAS').AsString + ' - '+EstaTabela.FieldByName('NM_PRODUTO').AsString;
            VetEtiqCodBarras[length(VetEtiqCodBarras)-1].NM_Grade   := CM.IBTabela.FieldByName('NM_GRADE').AsString;
            VetEtiqCodBarras[length(VetEtiqCodBarras)-1].Cod_Barras := CM.IBTabela.FieldByName('COD_BARRAS').AsString;
          end;
                                       
          CM.IBTabela.next;
        end;
        CM.FechaTT(CM.IBTabela);
        mPRF.ImprimeEtiqCodBarras(VetEtiqCodBarras, ColEsquerda);
      end;
    finally
      fImpEtiqCodBarras.Free;
    end;
  end
  else begin
    with CM do
    begin
      if not IBTabela.IB_Transaction.InTransaction then IBTabela.IB_Transaction.StartTransaction;
      try
        S := InputBox('Quantidade de Etiquetas', 'Quantidade:', '');
        if Vazio(S) then Exit;
        if not ENumeroInteiro(S) then
        begin
          CM.MensagemDeErro('Número inteiro inválido!');
          Exit;
        end;
        Quantidade := StrToInt(S);

        IBTabela.Active := false;
        IBTabela.SQL.Clear;
        IBTabela.SQL.Add('Delete from ETIQUETAS_PRODSELEC');
        IBTabela.SQL.Add('where NUM_TERMINAL = :NUM_TERMINAL');
        if not IBTabela.Prepared then IBTabela.Prepare;
        IBTabela.ParamByName('NUM_TERMINAL').AsInteger := RegTerm.IDNumTerminal;
        IBTabela.ExecSQL;

        IBTabela.Active := false;
        IBTabela.SQL.Clear;
        IBTabela.SQL.Add('insert into ETIQUETAS_PRODSELEC ( ');
        IBTabela.SQL.Add(' CD_PRODUTO,  COD_BARRAS,  NM_PRODUTO,  QUANTIDADE,  NUM_TERMINAL');
        IBTabela.SQL.Add(' ) VALUES ( ');
        IBTabela.SQL.Add(':CD_PRODUTO, :COD_BARRAS, :NM_PRODUTO, :QUANTIDADE, :NUM_TERMINAL');
        IBTabela.SQL.Add(' )');
        if not IBTabela.Prepared then IBTabela.Prepare;
        IBTabela.ParamByName('CD_PRODUTO').AsInteger := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
        IBTabela.ParamByName('COD_BARRAS').AsString  := EstaTabela.FieldByName('COD_BARRAS').AsString;
        IBTabela.ParamByName('NM_PRODUTO').AsString  := EstaTabela.FieldByName('NM_PRODUTO').AsString;
        IBTabela.ParamByName('QUANTIDADE').AsInteger := Quantidade;
        IBTabela.ParamByName('NUM_TERMINAL').AsInteger := RegTerm.IDNumTerminal;
        IBTabela.ExecSQL;

        IBTabela.IB_Transaction.Commit;
      except
        on E: exception do begin
          CM.LogDeErros(E.Message);
          CM.MensagemDeErro('Não foi possível preparar a impressão de etiquetas para este item');
          Exit;
        end;
      end;
    end;

    Application.CreateForm(TfEtiquetas, fEtiquetas);
    fEtiquetas.rbPSelecionados.Checked := true;
    fEtiquetas.ShowModal;
    fEtiquetas.Free;
  end;
end;

procedure TfCadProdutos.btAuditoriaDeEstoqueClick(Sender: TObject);
begin
  if not mVAL.TemAcessoPermissao(sgEstoque, 'L') then Exit;

  Application.CreateForm(TfTabela, fTabela);
  fTabela.Caption := 'Auditoria de Estoque - '+ EstaTabela.FieldByName('COD_BARRAS').AsString+ ' - '+EstaTabela.FieldByName('NM_PRODUTO').AsString;
  fTabela.ChaveEntrada := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
  fTabela.MostrarOQue := mqAuditoriaEstoque;
  fTabela.ShowModal;
  fTabela.Free;
end;

procedure TfCadProdutos.btGradeClick(Sender: TObject);
begin
  if not mVAL.TemAcessoPermissao(sgCadProdutos, 'A') then Exit;
  Application.CreateForm(TfCadGrades, fCadGrades);
  fCadGrades.CodProduto := IBCadastro.FieldByName('CD_PRODUTO').AsInteger;
  fCadGrades.CodGrupo   := IBCadastro.FieldByName('CD_GRUPO').AsInteger;
  fCadGrades.btTransfItem.Visible := true;
  fCadGrades.ShowModal;
  fCadGrades.Free;
  EstaTabela.Refresh;
end;

procedure TfCadProdutos.edCustoMedioEnter(Sender: TObject);
begin
  pnCalcCustoMedio.Visible := true;
end;

procedure TfCadProdutos.edCodigoExit(Sender: TObject);
begin
  lbQuantDigitos.Visible := false;
  try
    EstaTabela.FieldByName('COD_BARRAS').AsString := TiraEspacos(edCodigo.Text);

    if length(edCodigo.Text) > 13 then
      EstaTabela.FieldByName('COD_BARRAS').AsString := copy(edCodigo.Text, length(edCodigo.Text)-12, 13);
  except
  end;
end;

procedure TfCadProdutos.edCodigoChange(Sender: TObject);
begin
  lbQuantDigitos.Caption := PoeZeros(length(edCodigo.Text), 2)+' dígitos';
end;

procedure TfCadProdutos.edCodigoEnter(Sender: TObject);
begin
  edCodigoChange(self);
  lbQuantDigitos.Visible := true;
end;

procedure TfCadProdutos.btNumSeriesClick(Sender: TObject);
begin
  Application.CreateForm(TfNumerosDeSerie, fNumerosDeSerie);
  fNumerosDeSerie.EditCodProduto.ReadOnly := true;
  fNumerosDeSerie.EditNomeProduto.ReadOnly := true;
  fNumerosDeSerie.SpeedButtonProduto.Enabled := false;
  fNumerosDeSerie.EditCodProduto.TabStop := false;
  fNumerosDeSerie.EditCodProduto.Text := edCodigo.Text;
  fNumerosDeSerie.ShowModal;
  fNumerosDeSerie.Free;
end;

procedure TfCadProdutos.edMargem2Exit(Sender: TObject);
begin
  if (Modo = mdAlteracao) or (Modo = mdInclusao) then
  begin
    if edPrecoCusto.Value > 0 then
    begin
      if (Sender = edMargem2) and (edMargem2.Value > 0) then
        EstaTabela.FieldByName('PRECO2').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * edMargem2.Value)/100)
      else if (Sender = edMargem3) and (edMargem3.Value > 0) then
        EstaTabela.FieldByName('PRECO3').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * edMargem3.Value)/100)
      else if (Sender = edMargem4) and (edMargem4.Value > 0) then
        EstaTabela.FieldByName('PRECO4').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * edMargem4.Value)/100)
      else if (Sender = edMargem5) and (edMargem5.Value > 0) then
        EstaTabela.FieldByName('PRECO5').AsCurrency := edPrecoCusto.Value + ((edPrecoCusto.Value * edMargem5.Value)/100);
    end;
  end;
end;

procedure TfCadProdutos.edPreco2Exit(Sender: TObject);
var
  Lucro : real;
begin
  if (Modo = mdAlteracao) or (Modo = mdInclusao) then
  begin
    if edPrecoCusto.Value > 0 then
    begin
      if (Sender = edPreco2) then
      begin
        Lucro := edPreco2.Value - edPrecoCusto.Value;
        EstaTabela.FieldByName('MARGEM2').AsCurrency := (100 * Lucro) / edPrecoCusto.Value;
      end
      else if (Sender = edPreco3) then
      begin
        Lucro := edPreco3.Value - edPrecoCusto.Value;
        EstaTabela.FieldByName('MARGEM3').AsCurrency := (100 * Lucro) / edPrecoCusto.Value;
      end
      else if (Sender = edPreco4) then
      begin
        Lucro := edPreco4.Value - edPrecoCusto.Value;
        EstaTabela.FieldByName('MARGEM4').AsCurrency := (100 * Lucro) / edPrecoCusto.Value;
      end
      else if (Sender = edPreco5) then
      begin
        Lucro := edPreco5.Value - edPrecoCusto.Value;
        EstaTabela.FieldByName('MARGEM5').AsCurrency := (100 * Lucro) / edPrecoCusto.Value;
      end
    end;
  end;
end;

procedure TfCadProdutos.DBEdit2Exit(Sender: TObject);
begin
  if (Modo in [mdInclusao, mdAlteracao]) and (Vazio(edDescrAbrev.Text)) then
    EstaTabela.FieldByName('DESCRICAO_ABREV').AsString := DBEdit2.Text;
end;

procedure TfCadProdutos.chTiposPrecoClick(Sender: TObject);
begin
  GroupBoxTipoPreco.Visible := chTiposPreco.Checked;
end;

procedure TfCadProdutos.DBCheckBoxTipoPrecoUnicoClick(Sender: TObject);
begin
  if DBCheckBoxTipoPrecoUnico.Checked then
  begin
    LigaComponente(self, lbCodVenda);
    LigaComponente(self, SuperCombo1);
  end
  else begin
    DesligaComponente(self, lbCodVenda);
    DesligaComponente(self, SuperCombo1);
  end;
end;

procedure TfCadProdutos.btTransfGradeClick(Sender: TObject);
begin
  if not mVAL.TemAcessoPermissao(sgCadProdutos, 'A') then Exit;
  Application.CreateForm(TfTransfProdGrade, fTransfProdGrade);
  fTransfProdGrade.CD_OLDPRODUTO := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
  fTransfProdGrade.CD_GRUPO      := EstaTabela.FieldByName('CD_GRUPO').AsInteger;
  fTransfProdGrade.ShowModal;
  fTransfProdGrade.Free;
  EstaTabela.Refresh;
end;

procedure TfCadProdutos.DBEdit4Change(Sender: TObject);
begin
  try
    edGrupo.Text := CM.StringGrupo(IBCadastro.FieldByName('CD_GRUPO').AsInteger);
  except
  end;
end;

procedure TfCadProdutos.edGrupoFiltroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = vk_Return) then
  begin
    btBuscaGrupo.Click;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfCadProdutos.btBuscaGrupoClick(Sender: TObject);
begin
  if not mVAL.TemAcessoPermissao(sgCadGrupos, 'L') then Exit;
  Application.CreateForm(TfCadGruposProdutos, fCadGruposProdutos);
  fCadGruposProdutos.CD_GRUPO := edGrupoFiltro.Tag;
  fCadGruposProdutos.ShowModal;
  if fCadGruposProdutos.BotaoPressionado = bpOk then
  begin
    edGrupoFiltro.Tag := fCadGruposProdutos.CD_GRUPO;
    if edGrupoFiltro.Tag = 0 then edGrupoFiltro.Text := '*** TODOS OS GRUPOS ***'
                             else edGrupoFiltro.Text := CM.StringGrupo(edGrupoFiltro.Tag);
  end;
  fCadGruposProdutos.Free;
  OrdenaCampo;
end;

end.
