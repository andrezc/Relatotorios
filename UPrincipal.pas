unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, IB_Components, IBODataset, frxExportMail,
  frxExportPDF, frxClass, frxIBOSet, frxIBXComponents, frxADOComponents,
  frxBDEComponents, frxCrypt, frxGZip, frxDCtrl, frxDMPExport, frxGradient,
  frxChBox, frxCross, frxRich, frxOLE, frxDesgn, frxDBSet, StdCtrls,
  Buttons, XPMan, DUtilit, frxChart, ImgList, frxExportXML, frxExportXLS,
  Mask, JvExMask, JvToolEdit, JvExStdCtrls, JvEdit, JvValidateEdit,
  ComCtrls, UComp, IboSuperCombo, JvSpin, Grids, DBGrids, DBClient,
  Provider;

Const
  P01orCustoVendaUnitarios = 0;
  P01orCustoUnitario = 1;
  P01orVendaUnitaria = 2;            
  P02orProdPrecoAlteradoVenda = 3;
  P02orProdPrecoAlteradoCusto = 4;
  P02orProdPrecoAlteradoCustoVenda = 5;
  P03orQuebraInventario = 6;
  P04orProdutosTroca = 7;
  P05orTabelaPrecoCustoVenda = 8;
  C01orClientesComContasAbertas = 9;
  C02orClientesComContasemAtraso = 10;
  C03orClienteSaldoDividaAlto = 11;
  C04orClientesBloqueados = 12;
  C05orClientesSimp = 13;
  C06orSaldoMaior = 14;
  C07orAniversariantesP = 15;
  F01orValoresCompradosP = 16;
  F02orFornecedoresSimp = 17;
  CP01orContasAPagarVP = 18;
  CP02orContasPagasP = 19;
  CR01orChequesLiquidadosP = 20;
  CR02orChequeComVencP = 21;
  CR03orCrediariosLiquidP = 22;
  CR04orCrediariosComVencP = 23;
  CR05orBoletosLiquidP = 24;
  CR06orBoletosComVencP = 25;
  CR07orRecebimentosDeContasP = 26;
  CR08orContasReceberCliente = 27;
  CR09orContasReceberEmitP = 28;
  CR10orCobTitulosVencidosVend = 29;
  CR11orCobTitulosAbertosVend = 30;
  C11orMediadeComprasP = 31;
  P06orProdutosPorFornecedor = 32;
  P07orFornecedoresPorProduto = 33;
  P08orMediaVendasReferenteP = 34;
  P09orEntradaseSaidasP = 35;
  P10orProdPrecoNaoConciliadoPDV = 36;
  P11orFormInventario = 37;
  P12orProdVinculadosForn = 38;
  P13orLevantaEstoqueCusto = 39;
  P14orAuditoriaEstoqueProd = 40;
  C08orExtratodeCliente = 41;
  C09orProdutosPorCliente = 42;
  C10orClientesPorVendedorDet = 43;
  C13orClientesPorPraCa = 44;
  E01orValoresCompradosP = 45;
  E02orTransferenciasP = 46;
  V01orSaidaProdutosP = 47;
  V02orPedidosEfetuadosP = 48;
  V03orPedidoscomFormaPg = 49;
  V04orPedidoscomLucro = 50;
  V05orPedidoscomLucroCatDet = 51;
  V06orQuebranoPeriodo = 52;
  V07orSaidaProdTipoPgDet = 53;
  V08orVendasFatporGrupoP = 54;
  V09orTransferenciasP = 55;
  V10orSaidaProdAgrupadoP = 56;
  V11orComissaoVendedores = 57;
  V12orTicketMedio = 58;
  V13orPedidosPraca = 59;
  V14orPedidosCanceladosP = 60;
  V15orSaidadeProdutosporPraca = 61;
  V16orFreteseDespesas = 62;
  V17orSaidadeProdutosemPedporVend = 63;
  V18orResumoPedidosVendedor = 64;
  V19orNFemitidasP = 65;
  P10orProdPrecoNaoConciliadoPDVSemCusto = 66;
  P10orProdPrecoNaoConciliadoPDVSBal = 67;
  P10orProdPrecoNaoConciliadoPDVSemCustoBal = 68;
  P11orFormInventarioBal = 69;
  V01orSaidaProdutosAgP = 70;
  V01orSaidaProdutosPDVP = 71;
  C10orClientesPorVendedorAgr = 72;
  C12orClientesPorProduto = 73;
  V05orPedidoscomLucroCatAgr = 74;
  V07orSaidaProdTipoPgAgr = 75;
type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    IBOQuery1: TIBOQuery;
    IBOTransaction1: TIBOTransaction;
    frxDesigner1: TfrxDesigner;
    frxOLEObject1: TfrxOLEObject;
    frxRichObject1: TfrxRichObject;
    frxCrossObject1: TfrxCrossObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxGradientObject1: TfrxGradientObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxDialogControls1: TfrxDialogControls;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxCrypt1: TfrxCrypt;
    frxBDEComponents1: TfrxBDEComponents;
    frxADOComponents1: TfrxADOComponents;
    frxIBXComponents1: TfrxIBXComponents;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    BtnVisualizar: TBitBtn;
    XPManifest1: TXPManifest;
    BitBtn1: TBitBtn;
    frxDBDataset1: TfrxDBDataset;
    IBOQuery2: TIBOQuery;
    IBOTransaction2: TIBOTransaction;
    DataSource2: TDataSource;
    BitBtn2: TBitBtn;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxDBDataset2: TfrxDBDataset;
    Pan1: TPanel;
    GroupBoxRelatorio: TGroupBox;
    CmbRelatorio: TComboBox;
    Pan2: TPanel;
    GroupBoxordenacao: TGroupBox;
    ComboBoxOrdena: TComboBox;
    GroupBoxPeriodo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEditDe: TJvDateEdit;
    DateEditAte: TJvDateEdit;
    CheckBoxDeHoje: TCheckBox;
    CheckBoxAteHoje: TCheckBox;
    Pan3: TPanel;
    GroupBoxTipoEstoque: TGroupBox;
    ComboBoxTipoEst: TComboBox;
    GroupBoxExibeValores: TGroupBox;
    CheckBoxCusto: TCheckBox;
    Pan0: TPanel;
    RadioGroupCategoria: TRadioGroup;
    Pan4: TPanel;
    GroupBoxValor: TGroupBox;
    edtValor: TJvValidateEdit;
    GroupBoxPerDias: TGroupBox;
    edtDias: TJvValidateEdit;
    StatusBar1: TStatusBar;
    GroupBoxNInvent: TGroupBox;
    edtNInvent: TJvValidateEdit;
    CheckBoxNumInvent: TCheckBox;
    RadioGroupItems: TRadioGroup;
    RadioGroupTipoFatura: TRadioGroup;
    chbDecres: TCheckBox;
    RadioGroupDetalhes: TRadioGroup;
    GroupBoxExibeBal: TGroupBox;
    CheckBoxBal: TCheckBox;
    GroupBoxTerminal: TGroupBox;
    CheckBoxTerminal: TCheckBox;
    GroupBoxVendedor: TGroupBox;
    CheckBoxVendedor: TCheckBox;
    edtVendedor: TIboSuperCombo;
    GroupBoxCliente: TGroupBox;
    CheckBoxCliente: TCheckBox;
    edtCliente: TIboSuperCombo;
    edtTerminal: TJvSpinEdit;
    RadioGroupTiposPG: TRadioGroup;
    frxUserDataSetDatas: TfrxUserDataSet;
    frxUserDataSetNum: TfrxUserDataSet;
    frxUserDataSetSituacao: TfrxUserDataSet;
    Pan5: TPanel;
    GroupBoxFornecedor: TGroupBox;
    edtFornecedor: TIboSuperCombo;
    GroupBoxProdutos: TGroupBox;
    edtProduto: TIboSuperCombo;
    GroupBoxPraca: TGroupBox;
    edtPraca: TIboSuperCombo;
    RadioGroupComissao: TRadioGroup;
    Grid1: TDBGrid;
    CDS: TClientDataSet;
    dtstprvdr1: TDataSetProvider;
    botao_Atualiza: TBitBtn;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBoxCustoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmbRelatorioChange(Sender: TObject);
    procedure CheckBoxDeHojeClick(Sender: TObject);
    procedure CheckBoxAteHojeClick(Sender: TObject);
    procedure DateEditDeChange(Sender: TObject);
    procedure DateEditAteChange(Sender: TObject);
    procedure RadioGroupCategoriaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBoxNumInventClick(Sender: TObject);
    procedure RadioGroupDetalhesClick(Sender: TObject);
    procedure CheckBoxTerminalClick(Sender: TObject);
    procedure CheckBoxVendedorClick(Sender: TObject);
    procedure CheckBoxClienteClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroupTiposPGClick(Sender: TObject);
    procedure frxUserDataSetDatasGetValue(const VarName: String;
      var Value: Variant);
    procedure frxUserDataSetNumGetValue(const VarName: String;
      var Value: Variant);
    procedure frxUserDataSetSituacaoGetValue(const VarName: String;
      var Value: Variant);
    procedure bt_VisualizarNoGridClick(Sender: TObject);
    procedure botao_AtualizaClick(Sender: TObject);
    procedure Grid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure MontaSQL;
    procedure TipoOrdem;
    procedure Leregistro;
    procedure CmbTipoOrdem;
    procedure MontaComboRelatorios;
    procedure ExibePan0(Exibir: boolean = true);
    procedure ExibePan1(Exibir: boolean = true);
    procedure ExibePan2(Exibir: boolean = true);
    procedure ExibePan3(Exibir: boolean = true);
    procedure ExibePan4(Exibir: boolean = true);
    procedure AtivaOrdenacao(Ativo: boolean = true);
    procedure AtivaPeriodo(Ativo: boolean = true);
    procedure AtivaTipo(Ativo: boolean = true);
    procedure AtivaTipoEstoque(Ativo: boolean = true);
    procedure AtivaValores(Ativo: boolean = true);
    procedure EsteRelatorioGetValue(const VarName: String;
      var Value: Variant);
    procedure AtivaedtValor(Ativo: boolean = true);
    procedure AtivaPerDias(Ativo: boolean = true);
    procedure AtivaBalanca(Ativo: boolean = true);
    procedure AtivaLeNumInvent(Ativo: boolean = true);
    procedure AtivaDetalhes(Ativo: boolean = true);
    procedure AtivaTipoFatura(Ativo: boolean = true);
    procedure AtivaTerminal(Ativo: boolean = true);
    procedure AtivaVendedor(Ativo: boolean = true);
    procedure AtivaCliente(Ativo: boolean = true);
    procedure SQLVendedor;
    procedure AtivaTiposPG(Ativo: boolean = true);
    procedure ExibePan5(Exibir: boolean = true);
    procedure AtivaFornecedor(Ativo: boolean = true);
    procedure AtivaProduto(Ativo: boolean = true);
    procedure AtivaPraca(Ativo: boolean = true);
    procedure AtivaTipoComissao(Ativo: boolean = true);
    { Private declarations }
  public
    esterelatorio: TfrxReport;


    { Public declarations }

    procedure GridZebrado (RecNo:LongInt; Grid:TDBGrid; Rect:TRect;
              State:TGridDrawState; Column:TColumn; ColunaOrdenada:TColumn=nil;
              CorSim:TColor=clMoneyGreen; CorNao:TColor=clWhite; CorSelecionado:TColor=$00619FE4);

   //Inicio da declara��o das procedures.
   { protected

    procedure Execute; override;
    procedure MontaSQL;
    }



  end;

var
  FrmPrincipal: TFrmPrincipal;
  OrdemRelat: Word;
  ItemIndexCategoria: integer;
  ordem : TColumn;
implementation

uses UDtm, UDtmRel;

{$R *.dfm}
//Trecho do sync.
{
procedure TFrmPrincipal.Execute;
begin
  //Sincroniza
  SYNCHRONIZE(MontaSQL);
end;
 }

procedure TFrmPrincipal.Grid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
// Chamar gridZebrado aqui
   GridZebrado(TDBGrid(Sender).DataSource.DataSet.RecNo, TDBGrid(Sender), Rect, State, Column, ordem);
end;

procedure TFrmPrincipal.GridZebrado (RecNo:LongInt; Grid:TDBGrid; Rect:TRect;
  State:TGridDrawState; Column:TColumn; Colunaordenada:TColumn=nil;
  CorSim:TColor=clMoneyGreen; CorNao:TColor=clWhite; CorSelecionado:TColor=$00619FE4);
begin
  if not(Odd(RecNo)) then // Se for �mpar
  begin
    with Grid do
    begin
      with Canvas do
      begin
        if Column = ColunaOrdenada then
          Brush.Color := IntensificaCor(CorSim, -30)
        else
          Brush.Color := CorSim;

        FillRect (Rect); // Pinta a c�lula
      end;
      DefaultDrawDataCell (Rect, Column.Field, State) // Reescreve o valor que vem do banco
    end;
  end
  else begin              // Se for Par
    with Grid do
    begin
      with Canvas do
      begin
        if Column = ColunaOrdenada then
          Brush.Color := IntensificaCor(CorNao, -30)
        else
          Brush.Color := CorNao;

        FillRect (Rect); // Pinta a c�lula
      end;
      DefaultDrawDataCell (Rect, Column.Field, State) // Reescreve o valor que vem do banco
    end;
  end;

  if (gdSelected in State) then  // Se a Linha ou a c�lula estiver Selecionada
  begin
    with Grid do
    begin
      with Canvas do
      begin
        Brush.Color := CorSelecionado;
        Font.Color := clBlack;
        FillRect (Rect); // Pinta a c�lula
      end;
      DefaultDrawDataCell (Rect, Column.Field, State) // Reescreve o valor que vem do banco
    end;
  end;
end;

procedure TFrmPrincipal.MontaComboRelatorios;
begin

  case RadioGroupCategoria.ItemIndex of
    0:begin //produtos
      CmbRelatorio.Items.Clear;
      CmbRelatorio.Items.Add('P01 - Levantamento de Estoque');
      CmbRelatorio.Items.Add('P02 - Produtos com Pre�os Alterados');
      CmbRelatorio.Items.Add('P03 - Quebra do Invent�rio');
      CmbRelatorio.Items.Add('P04 - Produtos para Troca');
      CmbRelatorio.Items.Add('P05 - Tabela de Pre�os');
      CmbRelatorio.Items.Add('P06 - Produtos por Fornecedor');
      CmbRelatorio.Items.Add('P07 - Fornecedores por Produto');
      CmbRelatorio.Items.Add('P08 - M�dia de Venda Referente a X dias');
      CmbRelatorio.Items.Add('P09 - Entradas e Sa�das de Produtos por Per�odo');
      CmbRelatorio.Items.Add('P10 - Produtos com Pre�os n�o Conciliados para o PDV');
      CmbRelatorio.Items.Add('P11 - Formul�rio para Invent�rio');//add balan�a
      CmbRelatorio.Items.Add('P12 - Produtos Vinculados ao Fornecedor');
     // CmbRelatorio.Items.Add('P13 - Levantamento de Estoque CUSTO');
      CmbRelatorio.Items.Add('P13 - Auditoria de Estoque do Produto');
    end;
    1:begin//clientes
      CmbRelatorio.Items.Clear;
      CmbRelatorio.Items.Add('C01 - Clientes com Contas Abertas');
      CmbRelatorio.Items.Add('C02 - Clientes com Contas em Atraso');
      CmbRelatorio.Items.Add('C03 - Clientes com Saldo da D�vida Acima do Limite de Cr�dito');
      CmbRelatorio.Items.Add('C04 - Clientes Bloqueados');//inserir op��o filtro por pra�a
      CmbRelatorio.Items.Add('C05 - Clientes Simplificado');
      CmbRelatorio.Items.Add('C06 - Saldo da D�vida maior que o Valor indicado');
      CmbRelatorio.Items.Add('C07 - Aniversariantes do Per�odo');
      CmbRelatorio.Items.Add('C08 - Extrato de Cliente');
      CmbRelatorio.Items.Add('C09 - Produtos por Cliente');
      CmbRelatorio.Items.Add('C10 - Clientes por Vendedor');
      CmbRelatorio.Items.Add('C11 - M�dia de Compras no Per�odo');
      CmbRelatorio.Items.Add('C12 - Clientes por Produto');
      CmbRelatorio.Items.Add('C13 - Clientes por Pra�a');
    end;
    2:begin//fornecedores
      CmbRelatorio.Items.Clear;
      CmbRelatorio.Items.Add('F01 - Valores Comprados no Per�odo');
      CmbRelatorio.Items.Add('F02 - Fornecedores Simplificado');
    end;
    3:begin//entradas (falta)
      CmbRelatorio.Items.Clear;
      CmbRelatorio.Items.Add('E01 - Entradas de NF no Per�odo');
      CmbRelatorio.Items.Add('E02 - Transfer�ncias (entrada) no Per�odo');
    end;
    4:begin//sa�das (falta)
      CmbRelatorio.Items.Clear;
      CmbRelatorio.Items.Add('V01 - Sa�da de Produtos em Pedidos no Per�odo');
      CmbRelatorio.Items.Add('V02 - Pedidos Efetuados no Per�odo');//incrementar por peso
      CmbRelatorio.Items.Add('V03 - Pedidos com Forma de Pagamento Resumido');
      CmbRelatorio.Items.Add('V04 - Pedidos com Lucro');//incrementar o  detalhado
      CmbRelatorio.Items.Add('V05 - Pedidos com Lucro por Categoria');//por categoria
      CmbRelatorio.Items.Add('V06 - Quebra no Per�odo');
      CmbRelatorio.Items.Add('V07 - Sa�da de Produtos com Tipo de Pagamento');//por o resumido aqui
      CmbRelatorio.Items.Add('V08 - Vendas Faturadas por Grupo no Per�odo');
      CmbRelatorio.Items.Add('V09 - Transfer�ncias (sa�das) no Per�odo');
      CmbRelatorio.Items.Add('V10 - Sa�da de Produtos no Per�odo Agrupado (peso)');
      CmbRelatorio.Items.Add('V11 - Comiss�o de Vendedores');
      CmbRelatorio.Items.Add('V12 - Ticket M�dio');
      CmbRelatorio.Items.Add('V13 - Pedidos por Pra�a');
      CmbRelatorio.Items.Add('V14 - Pedidos Cancelados no Per�odo');
      CmbRelatorio.Items.Add('V15 - Sa�da de Produtos por Pra�a');
      CmbRelatorio.Items.Add('V16 - Fretes e Despesas');
      CmbRelatorio.Items.Add('V17 - Sa�da de Produtos em Pedidos por Vendedor');
      CmbRelatorio.Items.Add('V18 - Resumo dos Pedidos por Vendedor');
      CmbRelatorio.Items.Add('V19 - Notas Fiscais Emitidas no Per�odo');
    end;
    5:begin//contas a pagar
      CmbRelatorio.Items.Clear;
      CmbRelatorio.Items.Add('CP01 - Contas a Pagar com Vencimento no Per�odo');
      CmbRelatorio.Items.Add('CP02 - Contas Pagas no Per�odo');
    end;
    6:begin//contas a receber
      CmbRelatorio.Items.Clear;
      CmbRelatorio.Items.Add('CR01 - Cheques Liquidados no Per�odo');
      CmbRelatorio.Items.Add('CR02 - Cheques com Vencimento no Per�odo');
      CmbRelatorio.Items.Add('CR03 - Credi�rios Liquidados no Per�odo');
      CmbRelatorio.Items.Add('CR04 - Credi�rios com Vencimento no Per�odo');
      CmbRelatorio.Items.Add('CR05 - Boletos Liquidados no Per�odo');
      CmbRelatorio.Items.Add('CR06 - Boletos com Vencimento no Per�odo');
      CmbRelatorio.Items.Add('CR07 - Recebimentos de Contas no Per�odo');
      CmbRelatorio.Items.Add('CR08 - Contas a Receber do Cliente');
      CmbRelatorio.Items.Add('CR09 - Contas a Receber Emitidas no Per�odo');
      CmbRelatorio.Items.Add('CR10 - Cobran�a de T�tulos Vencidos por Vendedor');
      CmbRelatorio.Items.Add('CR11 - Cobran�a de T�tulos Abertos por Vendedor');
    end
    else
      CmbRelatorio.Items.Clear;
  end;
  ItemIndexCategoria := RadioGroupCategoria.ItemIndex;
  CmbRelatorio.ItemIndex := 0;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  RadioGroupCategoria.ItemIndex := LeIntegerDoRegistro('Software\Focus\Forms\Relatorios','Categoria',0);
  MontaComboRelatorios;
  CmbRelatorio.ItemIndex :=  LeIntegerDoRegistro('Software\Focus\Forms\Relatorios','TipoRelatorio',0);
  Leregistro;
  TipoOrdem;
  MontaSQL; 
end;

procedure TFrmPrincipal.Leregistro;
begin
  CheckBoxCusto.Checked := LeBooleanDoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','ExibeCusto',false);
  DateEditDe.Date := LeDateDoRegistro('Software\Focus\Forms\Relatorios','PeriodoDe',Date);
  DateEditAte.Date := LeDateDoRegistro('Software\Focus\Forms\Relatorios','PeriodoAte',Date);
  RadioGroupItems.ItemIndex := LeIntegerDoRegistro('Software\Focus\Forms\Relatorios','Selecao',0);
end;

procedure TFrmPrincipal.TipoOrdem;
begin
  case RadioGroupCategoria.ItemIndex of
    0:begin //caso esteja selecionada a categoria de Produtos
      case CmbRelatorio.ItemIndex of
        0:begin
          //se for exibir o relat�rio com os valores de custo e venda unit�rios por item
          if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true) and (RadioButtonTotal.Checked = true) }then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Estoque');
            ComboBoxOrdena.Items.Add('Estoque M�nimo');
            ComboBoxOrdena.Items.Add('Valor Custo');
            ComboBoxOrdena.Items.Add('Margem');
            ComboBoxOrdena.Items.Add('Custo do Estoque');
            ComboBoxOrdena.Items.Add('Valor Venda');
            ComboBoxOrdena.Items.Add('Valor Venda Estoq.');
            OrdemRelat := P01orCustoVendaUnitarios;
          end
          else
          //Se for exibir o relat�rio somente do valor de venda unit�rio
          if (CheckBoxCusto.Checked = false) {and (CheckBoxVenda.Checked = true) and (RadioButtonUnit.Checked = true) }then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Estoque');
            ComboBoxOrdena.Items.Add('Estoque M�nimo');
            ComboBoxOrdena.Items.Add('Valor Venda');
            ComboBoxOrdena.Items.Add('Valor Venda Estoq.');
            OrdemRelat := P01orVendaUnitaria;
          end;
          ComboBoxTipoEst.ItemIndex := LeIntegerDoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','TipoEstoque',0);
          ComboBoxOrdena.ItemIndex := 0;
        end;//do case = 0
        1: begin
          if (CheckBoxCusto.Checked = false) {and (CheckBoxVenda.Checked = true)} then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Valor de Venda Atual');
            ComboBoxOrdena.Items.Add('Valor de Venda Anterior');
            OrdemRelat := P02orProdPrecoAlteradoVenda;
          end
          else
          {if (CheckBoxCusto.Checked = true) and (CheckBoxVenda.Checked = false) then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Valor de Custo Atual');
            ComboBoxOrdena.Items.Add('Valor de Custo Anterior');
            OrdemRelat := P02orProdPrecoAlteradoCusto;
          end
          else }
          if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true)} then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Valor de Custo Anterior');
            ComboBoxOrdena.Items.Add('Valor de Custo Atual');
            ComboBoxOrdena.Items.Add('Margem de Lucro');
            ComboBoxOrdena.Items.Add('Valor de Venda Anterior');
            ComboBoxOrdena.Items.Add('Valor de Venda Atual');
            OrdemRelat := P02orProdPrecoAlteradoCustoVenda;
          end;
        end;//do case = 1
        2:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Data');
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Descri��o');
          ComboBoxOrdena.Items.Add('Estoque Atual');
          ComboBoxOrdena.Items.Add('Estoque Real');
          ComboBoxOrdena.Items.Add('Quebra');
          ComboBoxOrdena.Items.Add('Valor Venda');
          ComboBoxOrdena.Items.Add('Valor Total');
          OrdemRelat := P03orQuebraInventario;
        end;//do case = 2
        3: begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Descri��o');
          ComboBoxOrdena.Items.Add('Unidade');
          ComboBoxOrdena.Items.Add('Quantidade');
          ComboBoxOrdena.Items.Add('Valor');
          OrdemRelat := P04orProdutosTroca;
        end;//do case = 3
        4:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Descri��o');
          ComboBoxOrdena.Items.Add('Unidade');
          ComboBoxOrdena.Items.Add('Valor Custo');
          ComboBoxOrdena.Items.Add('Valor Venda');
          ComboBoxOrdena.Items.Add('Margem');
          OrdemRelat := P05orTabelaPrecoCustoVenda;
        end;
        5:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Cd.Prod.Forn.');
          ComboBoxOrdena.Items.Add('Produto');
          ComboBoxOrdena.Items.Add('Prim. Compra');
          ComboBoxOrdena.Items.Add('�lt. Compra');
          ComboBoxOrdena.Items.Add('�ltima Venda');
          ComboBoxOrdena.Items.Add('Estoque');
          ComboBoxOrdena.Items.Add('M.Venda');
          ComboBoxOrdena.Items.Add('Troca');
          OrdemRelat := P06orProdutosPorFornecedor;
        end;
        6:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Fornecedor');
          ComboBoxOrdena.Items.Add('C�d. Prod. Fornec.');
          ComboBoxOrdena.Items.Add('�lt. Compra');
          OrdemRelat := P07orFornecedoresPorProduto;

        end;
        7: begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Descri��o');
          ComboBoxOrdena.Items.Add('Unidade');
          ComboBoxOrdena.Items.Add('Estoque');
          ComboBoxOrdena.Items.Add('Quantidede de Venda');
          ComboBoxOrdena.Items.Add('M�dia');
          ComboBoxOrdena.Items.Add('Tempo');
          OrdemRelat := P08orMediaVendasReferenteP;
        end;
        9: begin
          if (CheckBoxCusto.Checked) and (CheckBoxBal.Checked) then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Balan�a');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Pre�o de Custo');
            ComboBoxOrdena.Items.Add('Pre�o de Venda');
            OrdemRelat := P10orProdPrecoNaoConciliadoPDV;
          end
          else
          if (CheckBoxCusto.Checked) and (CheckBoxBal.Checked = false) then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Pre�o de Custo');
            ComboBoxOrdena.Items.Add('Pre�o de Venda');
            OrdemRelat := P10orProdPrecoNaoConciliadoPDVSBal;
          end
          else
          if (CheckBoxCusto.Checked = false) and (CheckBoxBal.Checked) then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Balan�a');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Pre�o de Venda');
            OrdemRelat := P10orProdPrecoNaoConciliadoPDVSemCusto;
          end
          else
          if (CheckBoxCusto.Checked = false) and (CheckBoxBal.Checked = false) then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Pre�o de Venda');
            OrdemRelat := P10orProdPrecoNaoConciliadoPDVSemCustoBal;
          end;
        end;
        10: begin
          if (CheckBoxBal.Checked = false) then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Estoque');
            OrdemRelat := P11orFormInventario;
          end
          else
          if (CheckBoxBal.Checked) then
          begin
            ComboBoxOrdena.Clear;
            ComboBoxOrdena.Items.Add('C�digo');
            ComboBoxOrdena.Items.Add('Balan�a');
            ComboBoxOrdena.Items.Add('Descri��o');
            ComboBoxOrdena.Items.Add('Unidade');
            ComboBoxOrdena.Items.Add('Estoque');
            OrdemRelat := P11orFormInventarioBal;
          end;
        end;
        11: begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Descri��o');
          ComboBoxOrdena.Items.Add('Unidade');
          ComboBoxOrdena.Items.Add('Custo');
          ComboBoxOrdena.Items.Add('Estoque');
          ComboBoxOrdena.Items.Add('�ltima Compra');
          ComboBoxOrdena.Items.Add('�ltima Venda');
          OrdemRelat := P12orProdVinculadosForn;
        end;
        12: begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Descri��o');
          ComboBoxOrdena.Items.Add('Unidade');
          ComboBoxOrdena.Items.Add('Estoque');
          ComboBoxOrdena.Items.Add('Custo');
          ComboBoxOrdena.Items.Add('Custo Total');
          OrdemRelat := P13orLevantaEstoqueCusto;
        end;


      end;//do case do cmbRelatorio
    end;//do case da categoria = produtos
    1:begin//caso a categoria seja clientes
      case CmbRelatorio.ItemIndex of
        0:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Cliente');
          ComboBoxOrdena.items.Add('Endere�o');
          ComboBoxOrdena.Items.Add('Atraso');
          ComboBoxOrdena.Items.Add('D�vida');
          ComboBoxOrdena.Items.Add('Juros');
          ComboBoxOrdena.Items.Add('Total');
          OrdemRelat := C01orClientesComContasAbertas;
        end;
        1:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Cliente');
          ComboBoxOrdena.Items.Add('Endere�o');
          ComboBoxOrdena.Items.Add('Atraso');
          ComboBoxOrdena.Items.Add('D�vida Vencida');
          ComboBoxOrdena.Items.Add('D�vida a Vencer');
          ComboBoxOrdena.Items.Add('Total');
          OrdemRelat := C02orClientesComContasemAtraso;
        end;
        2:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Nome');
          ComboBoxOrdena.Items.Add('Apelido');
          ComboBoxOrdena.Items.Add('Telefone');
          ComboBoxOrdena.Items.Add('Limite de Cr�dito');
          ComboBoxOrdena.Items.Add('Saldo da D�vida');
          OrdemRelat := C03orClienteSaldoDividaAlto;
        end;
        3:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Nome');
          ComboBoxOrdena.Items.Add('Apelido');
          ComboBoxOrdena.Items.Add('Telefone');
          ComboBoxOrdena.Items.Add('Endere�o');
          OrdemRelat := C04orClientesBloqueados;
        end;
        4:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Nome');
          ComboBoxOrdena.Items.Add('Apelido');
          ComboBoxOrdena.Items.Add('Telefone');
          ComboBoxOrdena.Items.Add('Endere�o');
          OrdemRelat := C05orClientesSimp;
        end;
        5:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Nome');
          ComboBoxOrdena.Items.Add('Apelido');
          ComboBoxOrdena.Items.Add('Atraso (dias)');
          ComboBoxOrdena.Items.Add('Saldo da D�vida');
          OrdemRelat := C06orSaldoMaior;
        end;
        6:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Nome');
          ComboBoxOrdena.Items.Add('Data');
          ComboBoxOrdena.Items.Add('Idade');
          ComboBoxOrdena.Items.Add('Bairro');
          ComboBoxOrdena.Items.Add('Telefone');
          OrdemRelat := C07orAniversariantesP;
        end;
        7:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Data');
          ComboBoxOrdena.Items.Add('N�.Doc.');
          ComboBoxOrdena.Items.Add('D�bitos');
          ComboBoxOrdena.Items.Add('Juros');
          ComboBoxOrdena.Items.Add('Total');
          ComboBoxOrdena.Items.Add('Cr�ditos');
          ComboBoxOrdena.Items.Add('Tipo Pg');
          ComboBoxOrdena.Items.Add('Operador');
          OrdemRelat := C08orExtratodeCliente;
        end;
        8:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Produto');
          ComboBoxOrdena.Items.Add('Quantidade');
          ComboBoxOrdena.Items.Add('Menor Valor');
          ComboBoxOrdena.Items.Add('Maior Valor');
          ComboBoxOrdena.Items.Add('Pre�o M�dio');
          ComboBoxOrdena.Items.Add('�ltima Compra');
          OrdemRelat := C09orProdutosPorCliente;
        end;
        9:begin
          ComboBoxOrdena.Clear;
          case RadioGroupDetalhes.ItemIndex of
            0:begin
              ComboBoxOrdena.Items.Add('C�digo');
              ComboBoxOrdena.Items.Add('Nome/Raz�o Social');
              ComboBoxOrdena.Items.Add('Contato');
              ComboBoxOrdena.Items.Add('Cidade');
              ComboBoxOrdena.Items.Add('Bairro');
              ComboBoxOrdena.Items.Add('Endere�o');
              ComboBoxOrdena.Items.Add('Telefone');
              OrdemRelat := C10orClientesPorVendedorDet;
            end;
            1:begin
              ComboBoxOrdena.Items.Add('C�digo');
              ComboBoxOrdena.Items.Add('Nome/Raz�o Social');
              ComboBoxOrdena.Items.Add('Apelido/Nome Fantasia');
              ComboBoxOrdena.Items.Add('Telefone');
              OrdemRelat := C10orClientesPorVendedorAgr;
            end;
          end;
        end;
        10:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Cliente');
          ComboBoxOrdena.Items.Add('Valor');
          ComboBoxOrdena.Items.Add('�ltima Compra');
          OrdemRelat := C11orMediadeComprasP;
        end;
        11:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Cliente');
          ComboBoxOrdena.Items.Add('Quantidade');
          ComboBoxOrdena.Items.Add('�ltima Compra');
          OrdemRelat := C12orClientesPorProduto;
        end;
        12:begin//clientes por pra�a
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Cliente');
          ComboBoxOrdena.Items.Add('Contato');
          ComboBoxOrdena.Items.Add('Cidade');
          ComboBoxOrdena.Items.Add('Bairro');
          ComboBoxOrdena.Items.Add('Endere�o');
          ComboBoxOrdena.Items.Add('Telefone');
          OrdemRelat := C13orClientesPorPraCa;
        end;
      end;

    end;
    2:begin//categoria = fornecedores
      case CmbRelatorio.ItemIndex of
        0:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Fornecedor');
          ComboBoxOrdena.Items.Add('Valor');
          ComboBoxOrdena.Items.Add('�ltima Compra');
          OrdemRelat := F01orValoresCompradosP;
        end;
        1:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Fornecedor');
          ComboBoxOrdena.Items.Add('Nome Fantasia');
          ComboBoxOrdena.Items.Add('Telefone');
          ComboBoxOrdena.Items.Add('Contato');
          ComboBoxOrdena.Items.Add('Tel.Contato');
          OrdemRelat := F02orFornecedoresSimp;
        end;
      end;
    end;//categoria = fornecedores
    3:begin//categoria = entradas
      case CmbRelatorio.ItemIndex of
        0:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Data de Emiss�o');
          ComboBoxOrdena.Items.Add('C�digo do Fornecedor');
          ComboBoxOrdena.Items.Add('Fornecedor');
          ComboBoxOrdena.Items.Add('N� da NF');
          ComboBoxOrdena.Items.Add('Valor dos Produtos');
          ComboBoxOrdena.Items.Add('Valor da Nota');
          OrdemRelat := E01orValoresCompradosP;
        end;
        1:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo do Produto');
          ComboBoxOrdena.Items.Add('Produto');
          ComboBoxOrdena.Items.Add('Unidade');
          ComboBoxOrdena.Items.Add('Quantidade');
          OrdemRelat := E02orTransferenciasP;
        end;
      end;
    end;
    4:begin//categoria = sa�da
      case CmbRelatorio.ItemIndex of
        0:begin//Sa�da de Produtos em Pedidos no Per�odo...
          case RadioGroupDetalhes.ItemIndex of
            0:begin//Detalhado
              ComboBoxOrdena.Clear;
              ComboBoxOrdena.Items.Add('Data');
              ComboBoxOrdena.Items.Add('C�digo do Produto');
              ComboBoxOrdena.Items.Add('Descri��o');
              ComboBoxOrdena.Items.Add('Unidade');
              ComboBoxOrdena.Items.Add('Quantidade');
              ComboBoxOrdena.Items.Add('Pre�o Unit�rio');
              ComboBoxOrdena.Items.Add('Desconto');
              ComboBoxOrdena.Items.Add('Total');
              ComboBoxOrdena.Items.Add('PDV');
              OrdemRelat := V01orSaidaProdutosP;
            end;//detalhado
            1:begin//Agrupado
              ComboBoxOrdena.Clear;
              ComboBoxOrdena.Items.Add('C�digo do Produto');
              ComboBoxOrdena.Items.Add('Descri��o');
              ComboBoxOrdena.Items.Add('Unidade');
              ComboBoxOrdena.Items.Add('Quantidade');
              ComboBoxOrdena.Items.Add('Pre�o Atual');
              ComboBoxOrdena.Items.Add('Desconto');
              ComboBoxOrdena.Items.Add('Total');
              OrdemRelat := V01orSaidaProdutosAgP;
            end;//Agrupado
            2:begin//Por PDV
              ComboBoxOrdena.Clear;
              ComboBoxOrdena.Items.Add('Data');
              ComboBoxOrdena.Items.Add('C�digo do Produto');
              ComboBoxOrdena.Items.Add('Descri��o');
              ComboBoxOrdena.Items.Add('Unidade');
              ComboBoxOrdena.Items.Add('Quantidade');
              ComboBoxOrdena.Items.Add('Pre�o Unit�rio');
              ComboBoxOrdena.Items.Add('Desconto');
              ComboBoxOrdena.Items.Add('Total');
              OrdemRelat := V01orSaidaProdutosPDVP;
            end;//Por PDV

            end;
        end;
        1:begin//pedidos efetuados no per�odo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Data');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('Vendedor');
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('Valor');
          ComboBoxOrdena.Items.Add('Desconto');
          ComboBoxOrdena.Items.Add('Total');
          OrdemRelat := V02orPedidosEfetuadosP;
        end;//pedidos efetuados no per�odo
        2:begin//pedidos com pagamento em credi�rio
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Data');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('Vendedor');
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('Valor Venda');
          ComboBoxOrdena.Items.Add('Desconto');
          ComboBoxOrdena.Items.Add('Total do Pedido');
          ComboBoxOrdena.Items.Add('Valor Conta');
          OrdemRelat := V03orPedidoscomFormaPg;
        end;//pedidos com pagamento em credi�rio
        3:begin//pedidos com lucro
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('N� Doc.');
          ComboBoxOrdena.Items.Add('Data Venda');
          ComboBoxOrdena.Items.Add('C�d. Cliente');
          ComboBoxOrdena.Items.Add('Nome Cliente');
          ComboBoxOrdena.Items.Add('Valor');
          ComboBoxOrdena.Items.Add('Despesas');
          ComboBoxOrdena.Items.Add('Custo');
          ComboBoxOrdena.Items.Add('Lucro');
          OrdemRelat := V04orPedidoscomLucro;
        end;//pedidos com lucro
        4:begin//pedidos com lucro por categoria
          ComboBoxOrdena.Clear;
          case RadioGroupDetalhes.ItemIndex of
            0:begin
              ComboBoxOrdena.Items.Add('Data');
              ComboBoxOrdena.Items.Add('C�d. Produto');
              ComboBoxOrdena.Items.Add('Produto');
              ComboBoxOrdena.Items.Add('Unidade');
              ComboBoxOrdena.Items.Add('Quantidade');
              ComboBoxOrdena.Items.Add('Pre�o Custo');
              ComboBoxOrdena.Items.Add('Pre�o Venda');
              ComboBoxOrdena.Items.Add('Margem (R$)');
              ComboBoxOrdena.Items.Add('Margem (%)');
              OrdemRelat := V05orPedidoscomLucroCatDet;
            end;
            1:begin
              ComboBoxOrdena.Items.Add('Data');
              ComboBoxOrdena.Items.Add('C�d. Produto');
              ComboBoxOrdena.Items.Add('Produto');
              ComboBoxOrdena.Items.Add('Quantidade');
              ComboBoxOrdena.Items.Add('Pre�o Custo');
              ComboBoxOrdena.Items.Add('Pre�o Venda');
              ComboBoxOrdena.Items.Add('Margem (%)');
              OrdemRelat := V05orPedidoscomLucroCatAgr;
            end;
          end;
        end;//pedidos com lucro por categoria
        5:begin//V06 tabela de quebra no per�odo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Descri��o');
          ComboBoxOrdena.Items.Add('Quantidade');
          ComboBoxOrdena.Items.Add('Peso Sa�da');
          ComboBoxOrdena.Items.Add('Quebra');
          ComboBoxOrdena.Items.Add('Quebra (%)');
          ComboBoxOrdena.Items.Add('Diferen�a');
          OrdemRelat := V06orQuebranoPeriodo;
        end;//V06 tabela de quebra no per�odo
        6:begin//v07 pedidos com tipo de pagamento
          case RadioGroupDetalhes.ItemIndex of
            0:begin
              ComboBoxOrdena.Clear;
              ComboBoxOrdena.Items.Add('Data');
              ComboBoxOrdena.Items.Add('N�.Doc.');
              ComboBoxOrdena.Items.Add('Valor Total');
              ComboBoxOrdena.Items.Add('Dinheiro');
              ComboBoxOrdena.Items.Add('Cheque');
              ComboBoxOrdena.Items.Add('Cart�o');
              ComboBoxOrdena.Items.Add('Ticket');
              ComboBoxOrdena.Items.Add('Credi�rio');
              ComboBoxOrdena.Items.Add('Cred.Cli.');
              OrdemRelat := V07orSaidaProdTipoPgDet;
            end;
            1:begin
              ComboBoxOrdena.Clear;
              ComboBoxOrdena.Items.Add('Data');
              ComboBoxOrdena.Items.Add('Valor Total');
              ComboBoxOrdena.Items.Add('Dinheiro');
              ComboBoxOrdena.Items.Add('Cheque');
              ComboBoxOrdena.Items.Add('Cheque Pr�');
              ComboBoxOrdena.Items.Add('Cart�o');
              ComboBoxOrdena.Items.Add('Ticket');
              ComboBoxOrdena.Items.Add('Credi�rio');
              ComboBoxOrdena.Items.Add('Cred.Cli.');
              OrdemRelat := V07orSaidaProdTipoPgAgr;
            end;
          end;
        end;//v07 pedidos com tipo de pagamento
        7:begin//V08 vendas faturadas por grupo no per�odo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Grupo');
          ComboBoxOrdena.Items.Add('Quantidade');
          ComboBoxOrdena.Items.Add('Valor Venda');
          ComboBoxOrdena.Items.Add('Lucro');
          ComboBoxOrdena.Items.Add('Margem Lucro');
          OrdemRelat := V08orVendasFatporGrupoP;
        end;//V08 vendas faturadas por grupo no per�odo
        8:begin//V09 Transfer�ncias no per�odo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo');
          ComboBoxOrdena.Items.Add('Balan�a');
          ComboBoxOrdena.Items.Add('Produto');
          ComboBoxOrdena.Items.Add('Unidade');
          ComboBoxOrdena.Items.Add('Quantidade');
          ComboBoxOrdena.Items.Add('Valor');
          OrdemRelat := V09orTransferenciasP;
        end;//V09 Transfer�ncias no per�odo
        {continuar parei no V04 pedidos sem lucro, unir v7 c/ v18, e v10  c/ v19}

      end;

    end;//da categoria = sa�da
    5:begin//contas a pagar
      case CmbRelatorio.ItemIndex of
        0:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Vencimento');
          ComboBoxOrdena.Items.Add('Valor');
          ComboBoxOrdena.Items.Add('Fornecedor');
          ComboBoxOrdena.Items.Add('Tipo Documento');
          ComboBoxOrdena.Items.Add('Hist�rico');
          OrdemRelat := CP01orContasAPagarVP;
        end;
        1:begin
          ComboBoxOrdena.clear;
          ComboBoxOrdena.Items.Add('Data Pagamento');
          ComboBoxOrdena.Items.Add('Vencimento');
          ComboBoxOrdena.Items.Add('Valor');
          ComboBoxOrdena.Items.Add('Valor Pago');
          ComboBoxOrdena.Items.Add('Fornecedor');
          ComboBoxOrdena.Items.Add('Tipo Documento');
          ComboBoxOrdena.Items.Add('Hist�rico');
          OrdemRelat := CP02orContasPagasP;
        end;
      end;//do case cmbrelatorio.itemindex
    end;//contas a pagar
    6:begin//contas a receber
      case CmbRelatorio.ItemIndex of
        0:begin
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('Banco');
          ComboBoxOrdena.Items.Add('Ag�ncia');
          ComboBoxOrdena.Items.Add('N� Cheque');
          ComboBoxOrdena.Items.Add('Data');
          ComboBoxOrdena.Items.Add('Valor');
          OrdemRelat := CR01orChequesLiquidadosP;
        end;
        1:begin//cheques com vencimento no per�odo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('Banco');
          ComboBoxOrdena.Items.Add('Ag�ncia');
          ComboBoxOrdena.Items.Add('N� Cheque');
          ComboBoxOrdena.Items.Add('Data');
          ComboBoxOrdena.Items.Add('Valor');
          ComboBoxOrdena.Items.Add('Hist�rico');
          OrdemRelat := CR02orChequeComVencP
        end;//cheques com vencimento no per�odo
        2:begin//crediario liquidado no periodo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Data');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('Vencimento');
          ComboBoxOrdena.Items.Add('Atraso');
          ComboBoxOrdena.Items.Add('Juros');
          ComboBoxOrdena.Items.Add('Valor Original');
          OrdemRelat := CR03orCrediariosLiquidP;
        end;//crediario liquidado no periodo
        3:begin//Crediarios com vencimento no periodo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Data Emiss�o');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('Vencimento');
          ComboBoxOrdena.Items.Add('Valor do Credi�rio');
          OrdemRelat := CR04orCrediariosComVencP;
        end;//Crediarios com vencimento no periodo
        4:begin//Boletos liquidados no periodo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('Banco');
          ComboBoxOrdena.Items.Add('N� Boleto');
          ComboBoxOrdena.Items.Add('Data');
          ComboBoxOrdena.Items.Add('Valor');
          OrdemRelat := CR05orBoletosLiquidP;
        end;//boletos liquidados no periodo
        5:begin//Boletos com Vencimento no Periodo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Data Emiss�o');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('N� Boleto');
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('Banco');
          ComboBoxOrdena.Items.Add('Ag�ncia');
          ComboBoxOrdena.Items.Add('Vencimento');
          ComboBoxOrdena.Items.Add('Valor');
          OrdemRelat := CR06orBoletosComVencP;
        end;//Boletos com Vencimento no Periodo
        6: begin//recebimentos de contas no per�odo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Data');
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('Valor');
          ComboBoxOrdena.Items.Add('Juros');
          ComboBoxOrdena.Items.Add('Ref. Contas');
          ComboBoxOrdena.Items.Add('Total Recebido');
          OrdemRelat := CR07orRecebimentosDeContasP;
        end;//recebimentos de contas no per�odo
        7:begin//Contas a receber por cliente
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('Tipo DOC');
          ComboBoxOrdena.Items.Add('Emiss�o');
          ComboBoxOrdena.Items.Add('Vencimento');
          ComboBoxOrdena.Items.Add('Valor');
          ComboBoxOrdena.Items.Add('Atraso');
          ComboBoxOrdena.Items.Add('Juros');
          ComboBoxOrdena.Items.Add('Abatido');
          ComboBoxOrdena.Items.Add('Total');
          OrdemRelat := CR08orContasReceberCliente;
        end;//Contas a receber por cliente
        8:begin//Contas a Receber Emitidas no Per�odo
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.Items.Add('Data Emiss�o');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('DOC');
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('Vencimento');
          ComboBoxOrdena.Items.Add('Valor');
          ComboBoxOrdena.Items.Add('Atraso');
          ComboBoxOrdena.Items.Add('Juros');
          ComboBoxOrdena.Items.Add('Abatido');
          ComboBoxOrdena.Items.Add('Total');
          OrdemRelat := CR09orContasReceberEmitP;
        end;//Contas a Receber Emitidas no Per�odo
        9:begin//Cobran�a de titulos vencidos por vendedor
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.items.Add('Emiss�o');
          ComboBoxOrdena.Items.Add('Tipo de Conta');
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('Vencimento');
          ComboBoxOrdena.Items.Add('Valor');
          OrdemRelat := CR10orCobTitulosVencidosVend;
        end;//Cobran�a de titulos vencidos por vendedor
        10:begin//Cobran�a de titulos abertos por vendedor
          ComboBoxOrdena.Clear;
          ComboBoxOrdena.items.Add('Emiss�o');
          ComboBoxOrdena.Items.Add('Tipo de Conta');
          ComboBoxOrdena.Items.Add('C�digo do Cliente');
          ComboBoxOrdena.Items.Add('Nome do Cliente');
          ComboBoxOrdena.Items.Add('N� DOC');
          ComboBoxOrdena.Items.Add('Vencimento');
          ComboBoxOrdena.Items.Add('Valor');
          OrdemRelat := CR11orCobTitulosAbertosVend;
        end;//Cobran�a de titulos abertos por vendedor
      end;//do case cmbrelatorio.itemindex
    end;//contas a receber
  end;
  ComboBoxOrdena.ItemIndex := LeIntegerDoRegistro('Software\Focus\Forms\Relatorios','Ordenacao',0);
  chbDecres.Checked := LeBooleanDoRegistro('Software\Focus\Forms\Relatorios','OrdDecrescente',false);
end;

procedure TfrmPrincipal.AtivaValores(Ativo: boolean = true);
begin
  //dos valores a serem exibidos
  GroupBoxExibeValores.Visible := Ativo;
  if ativo = true then
  begin
    ExibePan3(ativo);
    Pan3.Top := 196;
    GroupBoxExibeValores.Left := 162;
    {CheckBoxVenda.Enabled := true;}
  end;
end;

procedure TFrmPrincipal.AtivaBalanca(Ativo: boolean = true);
begin
  //se vai exibir o campo balan�a no relat�rio
  GroupBoxExibeBal.Visible := ativo;
  if ativo = true then
  begin
    ExibePan3(ativo);
    Pan3.Top :=196;//coloca o painel 3 por baixo
    GroupBoxExibeBal.Left := 341;
  end;
end;

procedure TFrmPrincipal.AtivaedtValor(Ativo: boolean = true);
begin
  GroupBoxValor.Visible := Ativo;
  if ativo = true then
  begin
    ExibePan4(ativo);
    Pan4.Top := 326;
    GroupBoxValor.Left := 271;
  end;
end;

procedure TfrmPrincipal.AtivaTipoEstoque(Ativo: boolean = true);
begin
  //dos itens do tipo de estoque
  GroupBoxTipoEstoque.Visible := Ativo;
  if ativo = true then
  begin
    ExibePan3(ativo);
    Pan3.Top := 196;
    GroupBoxTipoEstoque.Left := 1;
  end;
end;

procedure TfrmPrincipal.AtivaOrdenacao(Ativo: boolean = true);
begin
  //do tipo de ordena��o exibida
  GroupBoxordenacao.Visible := Ativo;
  chbDecres.Enabled := Ativo;
  if ativo = true then
  begin
    ExibePan2(ativo);
    Pan2.Top := 131;
    GroupBoxordenacao.Left := 2;
  end;
end;

procedure TfrmPrincipal.AtivaPeriodo(Ativo: boolean = true);
begin
  GroupBoxPeriodo.Visible := Ativo;
  {DateEditDe.Enabled := Ativo;
  DateEditAte.Enabled := Ativo;
  CheckBoxDeHoje.Enabled := Ativo;
  CheckBoxAteHoje.Enabled := Ativo;
  label1.Enabled := Ativo;
  label2.Enabled := Ativo;}
  if ativo = true then
  begin
    ExibePan2(ativo);
    Pan2.Top := 131;
    GroupBoxPeriodo.Left := 412;
  end;
end;

procedure TFrmPrincipal.AtivaPerDias(Ativo: boolean = true);
begin
  GroupBoxPerDias.Visible := Ativo;
  edtDias.Enabled := Ativo;
  if ativo = true then
  begin
    ExibePan4(ativo);
    Pan4.Top := 326;
    GroupBoxPerDias.Left := 89;
  end;
end;

procedure TFrmPrincipal.AtivaTerminal(Ativo: boolean = true);
begin
  GroupBoxTerminal.Visible := Ativo;
    if Ativo = true then
  begin
    ExibePan3(ativo);
    AtivaPerDias(false);
    Pan3.Top := 196;
    GroupBoxTerminal.Left := 30;
  end;
end;

procedure TFrmPrincipal.AtivaVendedor(Ativo: boolean = true);
begin
  GroupBoxVendedor.Visible := Ativo;
  if Ativo = true then
  begin
    ExibePan3(ativo);
    Pan3.Top := 196;
    GroupBoxVendedor.Left := 300;
  end;
end;

procedure TFrmPrincipal.AtivaFornecedor(Ativo: boolean = true);
begin
  GroupBoxFornecedor.Visible := Ativo;
  if Ativo = true then
  begin
    ExibePan5(ativo);
    Pan5.Top := 326;
  end;
end;

procedure TFrmPrincipal.AtivaProduto(Ativo:boolean = true);
begin
  GroupBoxProdutos.Visible := Ativo;
  if Ativo = true then
  begin
    ExibePan5(ativo);
    pan5.Top := 326;
    GroupBoxProdutos.Left := 530;
  end;
end;

procedure TFrmPrincipal.AtivaTiposPG(Ativo: boolean = true);
begin
  RadioGroupTiposPG.Visible := Ativo;
  if Ativo = true then
  begin
    ExibePan3(ativo);
    Pan3.Top := 196;
    RadioGroupTiposPG.Left := 350;
  end;
end;

procedure TFrmPrincipal.AtivaTipoComissao(Ativo: boolean = true);
begin
  RadioGroupComissao.Visible := Ativo;
  if Ativo = true then
  begin
    ExibePan3(ativo);
    Pan3.Top := 196;
    RadioGroupComissao.Left := 380;
  end;
end;

procedure TFrmPrincipal.AtivaCliente(Ativo: boolean = true);
begin
  GroupBoxCliente.Visible := Ativo;
  if Ativo = true then
  begin
    ExibePan4(ativo);
    Pan4.Top := 326;
    GroupBoxCliente.Left := 430;
  end;
end;

procedure TFrmPrincipal.AtivaPraca(Ativo: boolean = true);
begin
  GroupBoxPraca.Visible := Ativo;
  if Ativo = true then
  begin
    ExibePan4(ativo);
    Pan4.Top := 326;
    GroupBoxPraca.Left := 737;
  end;
end;

procedure TfrmPrincipal.AtivaTipo(Ativo: boolean = true);
//para os tipos ATIVO,INATIVO, TODOS
begin
  RadioGroupItems.Visible := ativo;
  if ativo = true then
  begin
    ExibePan2(ativo);
    Pan2.Top := 131;
    RadioGroupItems.Left := 1;
  end;
end;

procedure TFrmPrincipal.AtivaTipoFatura(Ativo: boolean = true);
//para os tipos faturados, abertos e todos
begin
  RadioGroupTipoFatura.Visible := Ativo;
  if Ativo = true then
  begin
    AtivaTipo(false);
    ExibePan2(ativo);
    Pan2.Top := 131;
    RadioGroupTipoFatura.Left := 1;
  end;
end;

procedure TFrmPrincipal.AtivaLeNumInvent(Ativo: boolean = true);
begin
  GroupBoxNInvent.Visible := ativo;
  if CheckBoxNumInvent.Checked = true then
  begin
    edtNInvent.Enabled:= true;
    AtivaPeriodo(false);
  end
  else
  begin
    edtNInvent.Text := '';
    edtNInvent.Enabled := false;
  end;
  if ativo = true then
  begin
    ExibePan4(ativo);
    Pan4.Top := 326;
    GroupBoxNInvent.Left := 177;
  end;
end;

procedure TFrmPrincipal.AtivaDetalhes(Ativo: boolean = true);
begin
  RadioGroupDetalhes.Visible := ativo;
  if ativo = true then
  begin
    ExibePan3(ativo);
    Pan3.Top := 326;
    RadioGroupDetalhes.Left := 10;
  end;
end;


procedure TFrmPrincipal.ExibePan0(Exibir: boolean = true);
begin
  Pan0.visible := exibir;
end;

procedure TFrmPrincipal.ExibePan1(Exibir: boolean = true);
begin
  Pan1.visible := Exibir;
end;

procedure TFrmPrincipal.ExibePan2(Exibir: boolean = true);
begin
  Pan2.visible := Exibir;
end;

procedure TFrmPrincipal.ExibePan3(Exibir: boolean = true);
begin
  Pan3.visible := Exibir;
end;

procedure TFrmPrincipal.ExibePan4(Exibir: boolean = true);
begin
  Pan4.visible := Exibir;
end;

procedure TFrmPrincipal.ExibePan5(Exibir: boolean = true);
begin
  Pan5.visible := Exibir;
end;


procedure TFrmPrincipal.MontaSQL;
begin
  try
  //apagar todos os groupBox para verificar os que devem ser utilizados
  AtivaValores(false);
  AtivaBalanca(false);
  AtivaTipoEstoque(false);
  AtivaOrdenacao(false);
  AtivaTipo(false);
  AtivaTipoFatura(false);
  AtivaPeriodo(false);
  AtivaedtValor(false);
  AtivaPerDias(false);
  AtivaTerminal(false);
  AtivaVendedor(false);
  AtivaTiposPG(false);
  AtivaTipoComissao(false);
  AtivaCliente(false);
  AtivaPraca(false);
  AtivaLeNumInvent(false);
  AtivaDetalhes(false);
  AtivaFornecedor(false);
  AtivaProduto(false);
  ExibePan2(false);
  ExibePan3(false);
  ExibePan4(false);
  ExibePan5(false);
  GroupBoxValor.Caption := 'V&alor';
 (* {neste bloco eu vou atualizar os campos do RadioGroupItems}
    RadioGroupItems.Items.Clear;
    RadioGroupItems.Items.Add('Ativos');
    RadioGroupItems.Items.Add('Inativos');
    RadioGroupItems.Items.Add('Todos');
  {aqui termina a atualiza��o dos items do RadioGroupItems}
  GroupBoxPerDias.Caption := 'Per�odo - Dias';*)
  with IBOQuery1  do begin
  Active := false;
    if not IBOTransaction1.InTransaction then IBOTransaction1.StartTransaction;
    SQL.Clear;
    case RadioGroupCategoria.ItemIndex of
      0:begin //caso seja da categoria Produtos
        case CmbRelatorio.ItemIndex of
          0:begin
            //mostra a tela referente ao levantamento de estoque
            AtivaValores;
            AtivaTipoEstoque;
            AtivaOrdenacao;
            AtivaTipo;
            AtivaPeriodo(False);

            // SQL.Add('Select PRODUTOS.COD_BARRAS as C1,');
            SQL.Add('Select PRODUTOS.COD_BARRAS as C1,');
            //IBOQuery2.SQL.Add('Select PRODUTOS.COD_BARRAS as C1,');
            SQL.Add('NOMEPROD.DESCRICAO as C2,PRODUTOS.UNIDADE as C3,');
            //IBOQuery2.SQL.Add('NOMEPROD.DESCRICAO as C2,PRODUTOS.UNIDADE as C3,');
            SQL.Add('E.ESTOQUEATUAL as C4,E.ESTOQUEATUAL * PRODUTOS.PRECOCUSTO as C5,');
            //IBOQuery2.SQL.Add('E.ESTOQUEATUAL as C4,E.ESTOQUEATUAL * PRODUTOS.PRECOCUSTO as C5,');
            SQL.Add('E.ESTOQUEATUAL * PRODUTOS.PDV_PRECOVENDA as C6, PRODUTOS.ESTOQUEMINIMO as C7, ');
            //IBOQuery2.SQL.Add('E.ESTOQUEATUAL * PRODUTOS.PDV_PRECOVENDA as C6, PRODUTOS.ESTOQUEMINIMO as C7,');
            SQL.Add('PRODUTOS.PRECOCUSTO as C8, PRODUTOS.PDV_PRECOVENDA as C9,  PRODUTOS.MARGEM as C10');
            //IBOQuery2.SQL.Add('PRODUTOS.PRECOCUSTO as C8, PRODUTOS.PDV_PRECOVENDA as C9,  PRODUTOS.MARGEM as C10');
            SQL.Add('From PRODUTOS left outer join GRADES on PRODUTOS.CD_PRODUTO = GRADES.CD_PRODUTO');
            //IBOQuery2.SQL.Add('From PRODUTOS left outer join GRADES on PRODUTOS.CD_PRODUTO = GRADES.CD_PRODUTO');
            SQL.Add('left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, GRADES.CD_GRADE, 0) E on 1=1');
            //IBOQuery2.SQL.Add('left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, GRADES.CD_GRADE, 0) E on 1=1');
            SQL.Add('left outer join SP_NOME_PRODUTO(PRODUTOS.CD_PRODUTO, GRADES.CD_GRADE, PRODUTOS.NM_PRODUTO, '''', PRODUTOS.DESCRICAO_ABREV, ''F'') NOMEPROD on 1=1');
            //IBOQuery2.SQL.Add('left outer join SP_NOME_PRODUTO(PRODUTOS.CD_PRODUTO, GRADES.CD_GRADE, PRODUTOS.NM_PRODUTO, '''', PRODUTOS.DESCRICAO_ABREV, ''F'') NOMEPROD on 1=1');
            SQL.Add('WHERE PRODUTOS.CD_PRODUTO > 0');
            //IBOQuery2.SQL.Add('WHERE PRODUTOS.CD_PRODUTO > 0');
            //IBOQuery2.ExecSQL;

            if RadioGroupItems.ItemIndex = 1 then
              SQL.Add(' and PRODUTOS.INATIVO = ''V''');


            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');

              //Remover *
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
          end;//do begin caso o itemindex do ralatorio seja 0
          1:begin
            //mostra a tela de produtos com pre�os alterados
            AtivaValores;
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipo;
            SQL.Add('Select PRODUTOS.COD_BARRAS as C1,NOMEPROD.DESCRICAO as C2,');
            SQL.Add('PRODUTOS.UNIDADE as C3,PRODUTOS.PRECOVENDA as C4,PRODUTOS.PRECOVENDAANTERIOR as C5,');
            SQL.Add('PRODUTOS.PRECOCUSTO as C6,PRODUTOS.PRECOCUSTOANTERIOR as C7, PRODUTOS.MARGEM as C8');
            SQL.Add('From PRODUTOS left outer join GRADES on PRODUTOS.CD_PRODUTO = GRADES.CD_PRODUTO');
            SQL.Add('left outer join SP_NOME_PRODUTO(PRODUTOS.CD_PRODUTO, GRADES.CD_GRADE, PRODUTOS.NM_PRODUTO, '''', PRODUTOS.DESCRICAO_ABREV, ''F'') NOMEPROD on 1=1');
            SQL.Add('WHERE (PRODUTOS.CD_PRODUTO > 0) and (DT_ULTIMOREAJUSTE between :de and :ate)');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
          end;
          2:begin
          //quebra de invent�rio referente ao per�odo ou numero do invent�rio
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipo;
            AtivaLeNumInvent;
            SQL.Add('Select INVENTARIOS_ITEMS.DATA as C1,PRODUTOS.COD_BARRAS as C2,PRODUTOS.NM_PRODUTO as C3,');
            SQL.Add('INVENTARIOS_ITEMS.ESTOQUEATUAL as C4,INVENTARIOS_ITEMS.ESTOQUENOVO as C5,');
            SQL.Add('INVENTARIOS_ITEMS.ESTOQUEATUAL - INVENTARIOS_ITEMS.ESTOQUENOVO as C6,');
            SQL.Add('PRODUTOS.PRECOVENDA as C7,');
            SQL.Add('((INVENTARIOS_ITEMS.ESTOQUEATUAL - INVENTARIOS_ITEMS.ESTOQUENOVO)* PRODUTOS.PRECOVENDA) as C8,');
            SQL.Add('PRODUTOS.PRECOCUSTO as C9,((INVENTARIOS_ITEMS.ESTOQUEATUAL - INVENTARIOS_ITEMS.ESTOQUENOVO)* PRODUTOS.PRECOCUSTO) as C10');
            SQL.Add('from PRODUTOS inner join INVENTARIOS_ITEMS on PRODUTOS.CD_PRODUTO = INVENTARIOS_ITEMS.CD_PRODUTO');
            SQL.Add('where PRODUTOS.CD_PRODUTO > 0');
            if CheckBoxNumInvent.Checked = false then
              SQL.Add('and INVENTARIOS_ITEMS.DATA >= :de and INVENTARIOS_ITEMS.DATA <= :ate')
            else
            if CheckBoxNumInvent.Checked then
              SQL.Add('and INVENTARIOS_ITEMS.NUM_INVENTARIO = :c1');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
            if not prepared then prepare;
            if CheckBoxNumInvent.Checked = false then
            begin
              ParamByName('de').AsDate := DateEditDe.Date;
              ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            end
            else
            if CheckBoxNumInvent.Checked then
              ParamByName('c1').AsInteger := StrToInt(edtNInvent.Text);
          end;
          3:begin
          //produtos para troca
            AtivaOrdenacao;
            AtivaPeriodo(false);
            AtivaTipo;
            ExibePan3(false);
            SQL.Add('Select PRODUTOS.COD_BARRAS as C1,PRODUTOS.NM_PRODUTO as C2,PRODUTOS.UNIDADE as C3,');
            SQL.Add('PRODUTOS.QUANTTROCA as C4, (PRODUTOS.PRECOCUSTO * PRODUTOS.QUANTTROCA) as C5');
            SQL.Add('From PRODUTOS Where PRODUTOS.CD_PRODUTO > 0 and QUANTTROCA > 0');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
          end;
          4: begin
          //tabela de pre�os
            AtivaPeriodo(false);
            AtivaValores;
            AtivaOrdenacao;
            AtivaTipo;
            SQL.Add('select COD_BARRAS  as C1,NM_PRODUTO  as C2,UNIDADE     as C3, coalesce(TP.PRECO, PRODUTOS.PRECOVENDA) as C4,');
            SQL.Add('PRODUTOS.PRECOCUSTO as C5, PRODUTOS.MARGEM as C6, PRODUTOS.PRECO2 as C7,');
            SQL.Add('PRODUTOS.PRECO3 as C8, PRODUTOS.PRECO4 as C9, PRODUTOS.PRECO5 as C10, PRODUTOS.PROM_PRECO as C11');
            SQL.Add('from PRODUTOS left outer join sp_tipopreco(PRODUTOS.CD_PRODUTO,');
            SQL.Add(':C1, PRODUTOS.USAR_CD_VENDA_UNICO, PRODUTOS.CD_VENDA_UNICO) TP on 1=1');
            SQL.Add('where PRODUTOS.CD_PRODUTO > 0');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
          end;
          5: begin
          //tabela de produtos por fornecedor
            AtivaedtValor;
            GroupBoxValor.Caption := 'M�dia de Venda';
            AtivaOrdenacao;
            AtivaTipo;
            AtivaFornecedor;
            SQL.Add('select');
            SQL.Add('PRODUTOS.COD_BARRAS as C1,');
            SQL.Add('PRODFORNEC.COD_PROD_FORNEC as C2,');
            SQL.Add('PRODUTOS.NM_PRODUTO as C3,');
            SQL.Add('min(NF.DT_ENTRADA) as C4,');
            SQL.Add('max(NF.DT_ENTRADA) as C5,');
            SQL.Add('REFPRODUTOS.DT_ULTIMAVENDA as C6,');
            SQL.Add('E.ESTOQUEATUAL as C7,');
            SQL.Add('MV.MEDIADIARIA as C8,');
            SQL.Add('PRODUTOS.QUANTTROCA as C9');
            SQL.Add('from');
            SQL.Add('NF_ITEMS');
            SQL.Add('inner join NF on NF.CD_NOTA = NF_ITEMS.CD_NOTA');
            SQL.Add('left outer join PRODUTOS on PRODUTOS.CD_PRODUTO = NF_ITEMS.CD_PRODUTO');
            SQL.Add('left outer join REFPRODUTOS on REFPRODUTOS.CD_PRODUTO = NF_ITEMS.CD_PRODUTO');
            SQL.Add('left outer join PRODFORNEC on ((PRODFORNEC.CD_PRODUTO = NF_ITEMS.CD_PRODUTO) and (PRODFORNEC.CD_FORNECEDOR = NF.CD_FORNECEDOR))');
            SQL.Add('left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, 0, 0) E on 1=1');
            SQL.Add('left outer join CALC_MEDIAVENDA(NF_ITEMS.CD_PRODUTO, :C1, current_timestamp, NF_ITEMS.CD_ITEM) MV on MV.CHAVE_SAIDA = NF_ITEMS.CD_ITEM');
            SQL.Add('where');
            SQL.Add('PRODUTOS.CD_PRODUTO > 0');
            SQL.Add('and NF.CD_FORNECEDOR = :FORNECEDOR');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            SQL.Add('group by NF_ITEMS.CD_PRODUTO, PRODFORNEC.COD_PROD_FORNEC, PRODUTOS.COD_BARRAS, PRODUTOS.NM_PRODUTO, REFPRODUTOS.DT_ULTIMAVENDA, E.ESTOQUEATUAL, MV.MEDIADIARIA, PRODUTOS.QUANTTROCA');
            CmbTipoOrdem;
            If not Prepared then Prepare;
            ParamByName('fornecedor').AsString := edtFornecedor.Edit1Text;
 //           ParamByName('C1').AsFloat := StrToFloat(edtValor.Text);
          end;
          6: begin //Fornecedores por produto
            AtivaOrdenacao;
            AtivaTipo;
            AtivaProduto;
            SQL.Add('select');
            SQL.Add('FORNECEDORES.CD_FORNECEDOR as C1,');
            SQL.Add('FORNECEDORES.NM_FORNECEDOR as C2,');
            SQL.Add('PRODFORNEC.COD_PROD_FORNEC as C3,');
            SQL.Add('max(NF.DT_ENTRADA) as C4');
            SQL.Add('from NF');
            SQL.Add('inner join NF_ITEMS on NF.CD_NOTA = NF_ITEMS.CD_NOTA');
            SQL.Add('inner join PRODUTOS on PRODUTOS.CD_PRODUTO = NF_ITEMS.CD_PRODUTO');
            SQL.Add('left outer join FORNECEDORES on FORNECEDORES.CD_FORNECEDOR = NF.CD_FORNECEDOR');
            SQL.Add('left outer join PRODFORNEC on ((PRODFORNEC.CD_PRODUTO = NF_ITEMS.CD_PRODUTO) and (PRODFORNEC.CD_FORNECEDOR = NF.CD_FORNECEDOR))');
            SQL.Add('where');
            SQL.Add('PRODUTOS.CD_PRODUTO = :PRODUTO');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            SQL.Add('group by FORNECEDORES.CD_FORNECEDOR, PRODFORNEC.COD_PROD_FORNEC, FORNECEDORES.NM_FORNECEDOR');
            CmbTipoOrdem;
            if not Prepared then Prepare;
            ParamByName('produto').AsString := edtProduto.Edit1Text;
          end;
          7: begin //m�dia de vendas referente a x di
            AtivaOrdenacao;
            AtivaTipo;
            AtivaPerDias;
            AtivaPeriodo(false);
            SQL.Add('select');
            SQL.Add('PRODUTOS.COD_BARRAS as C1,');
            SQL.Add('PRODUTOS.NM_PRODUTO as C2,');
            SQL.Add('PRODUTOS.UNIDADE as C3,');
            SQL.Add('E.ESTOQUEATUAL as C4,');
            SQL.Add('M.QUANTVENDA as C5,');
            SQL.Add('M.MEDIADIARIA as C6,');
            SQL.Add('TEMPO.RESULTADO as C7');
            SQL.Add('from PRODUTOS');
            SQL.Add('left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, 0, 0) E on 1=1');
            SQL.Add('left outer join CALC_MEDIAVENDA(PRODUTOS.CD_PRODUTO, :C1, current_date, PRODUTOS.CD_PRODUTO) M');
            SQL.Add('on PRODUTOS.CD_PRODUTO = M.CHAVE_SAIDA');
            SQL.Add('left outer join DIV_ZERO(E.ESTOQUEATUAL, M.MEDIADIARIA, PRODUTOS.CD_PRODUTO) TEMPO');
            SQL.Add('on PRODUTOS.CD_PRODUTO = TEMPO.CHAVE_SAIDA');
            SQL.Add('where PRODUTOS.CD_PRODUTO > 0');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
            if not Prepared then Prepare;
            try
              ParamByName('C1').AsInteger := StrToInt(edtDias.Text);
            except
              ParamByName('C1').AsInteger := 1;
            end;
          end;//m�dia de vendas referente a x dias
          9://produtos com pre�os nao conciliados para o PDV
          begin
            AtivaValores;
            AtivaBalanca;
            AtivaOrdenacao;
            AtivaTipo;
            AtivaPeriodo(false);
            SQL.Add('select');
            SQL.Add('COD_BARRAS as C1,');
            SQL.Add('BAL_COD_BALANCA as C2,');
            SQL.Add('NM_PRODUTO as C3,');
            SQL.Add('UNIDADE as C4,');
            SQL.Add('PRECOCUSTO as C5,');
            SQL.Add('PRECOVENDA as C6');
            SQL.Add('from PRODUTOS');
            SQL.Add('where');
            SQL.Add('PRODUTOS.CD_PRODUTO > 0');
            SQL.Add('and PDV_PRECOVENDA <> PRECOVENDA');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
          end;//produtos com pre�os nao conciliados para o PDV
          10://Formul�rio para Invent�rio
          begin
            AtivaBalanca;
            AtivaOrdenacao;
            AtivaTipo;
            AtivaPeriodo(false);
            SQL.Add('Select');
            SQL.Add('PRODUTOS.COD_BARRAS as C1,');
            SQL.Add('PRODUTOS.BAL_COD_BALANCA as C2,');
            SQL.Add('PRODUTOS.NM_PRODUTO as C3,');
            SQL.Add('PRODUTOS.UNIDADE as C4,');
            SQL.Add('null as C5');
            SQL.Add('From PRODUTOS');
            SQL.Add('WHERE PRODUTOS.CD_PRODUTO > 0');
            if CheckBoxBal.Checked then
              SQL.Add('and   PRODUTOS.BAL_GERARCODBALANCA = ''V''');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
          end;
          11://Produtos vinculados ao fornecedor
          begin
            AtivaOrdenacao;
            AtivaTipo;
            AtivaFornecedor;
            SQL.Add('Select');
            SQL.Add('PRODUTOS.COD_BARRAS as C1,');
            SQL.Add('PRODUTOS.NM_PRODUTO as C2,');
            SQL.Add('PRODUTOS.UNIDADE as C3,');
            SQL.Add('PRODUTOS.PRECOCUSTO as C4,');
            SQL.Add('E.ESTOQUEATUAL as C5,');
            SQL.Add('REFPRODUTOS.DT_ULTIMACOMPRA  as C6,');
            SQL.Add('REFPRODUTOS.DT_ULTIMAVENDA   as C7');
            SQL.Add('from PRODFORNEC');
            SQL.Add('left outer join PRODUTOS on PRODUTOS.CD_PRODUTO = PRODFORNEC.CD_PRODUTO');
            SQL.Add('left outer join REFPRODUTOS on REFPRODUTOS.CD_PRODUTO = PRODFORNEC.CD_PRODUTO');
            SQL.Add('left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, 0, 0) E on 1=1');
            SQL.Add('Where');
            SQL.Add('PRODFORNEC.CD_FORNECEDOR = :Fornecedor');
            SQL.Add('and PRODUTOS.CD_PRODUTO > 0');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
            if not Prepared then Prepare;
            try
              ParamByName('Fornecedor').AsString := edtFornecedor.Edit1Text;
            except
              ParamByName('Fornecedor').AsString := '1';
            end;
          end;
          12://levantamento de estoque com custo
          begin
            AtivaOrdenacao;
            AtivaTipo;
            AtivaPeriodo(false);
            SQL.Add('Select');
            SQL.Add('PRODUTOS.COD_BARRAS as C1,');
            SQL.Add('PRODUTOS.NM_PRODUTO as C2,');
            SQL.Add('PRODUTOS.UNIDADE as C3,');
            SQL.Add('EST.estoqueatual as C4,');
            SQL.Add('PRODUTOS.PRECOCUSTO as C5,');
            SQL.Add('EST.estoqueatual * PRODUTOS.PRECOCUSTO as C6');
            SQL.Add('From');
            SQL.Add('PRODUTOS left outer join sp_PegaEstoque(produtos.cd_produto,0,0) EST on 1=1');
            SQL.Add('where');
            SQL.Add('PRODUTOS.CD_PRODUTO > 0');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and PRODUTOS.INATIVO = ''F''');
              1: SQL.Add(' and PRODUTOS.INATIVO = ''V''');
              2: SQL.Add(' and (PRODUTOS.INATIVO = ''F'' or PRODUTOS.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
          end;

        end;//do case do cmbRelatorio.itemindex
      end;//do tipo decategoria = 0
      1:begin //da categoria = clientes
        case CmbRelatorio.ItemIndex of
          0:begin //Clientes com contas abertas
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipo;
            SQL.Add('Select  distinct CLIENTES.Cd_Cliente as C1,');
            SQL.Add('CLIENTES.Nm_Cliente as C2,');
            SQL.Add('CLIENTES.endereco as C3,');
            SQL.Add('A.Atraso as C4,S1.Saldo as C5,');
            SQL.Add('J.Valor as C6,S2.Saldo as C7');
            SQL.Add('from CLIENTES');
            SQL.Add('left outer join CONFIG C on 1=1');
            SQL.Add('left outer join sp_saldodadivida(CLIENTES.cd_cliente, :DE, :ATE, C.TIPOMULTAJUROS, C.DIAS_MULTAJUROS) S1 on 1=1');
            SQL.Add('left outer join sp_saldodadivida(CLIENTES.Cd_Cliente, :DE, :ATE, C.TIPOMULTAJUROS, C.DIAS_MULTAJUROS) S2 on 1=1');
            SQL.Add('left outer join sp_total_juros(CLIENTES.cd_cliente, :DE, :ATE, C.TIPOMULTAJUROS, C.DIAS_MULTAJUROS) J  on 1=1');
            SQL.Add('left outer join sp_MaiorAtraso(CLIENTES.Cd_Cliente, :DE, :ATE) A  on 1=1');
            SQL.Add('WHERE S2.Saldo > 0');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//do case relat�rio = C01Clientes com Contas Abertas
          1:begin//Clientes com contas em atraso
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipo;
            SQL.Add('Select distinct CLIENTES.Cd_Cliente as C1,');
            SQL.Add('CLIENTES.Nm_Cliente as C2,');
            SQL.Add('CLIENTES.endereco as C3,');
            SQL.Add('A.Atraso as C4, S1.Saldo as C5,');
            SQL.Add('S2.Saldo as C6,S3.Saldo as C7');
            SQL.Add('from CLIENTES');
            SQL.Add('left outer join CONFIG on 1=1');
            SQL.Add('left outer join sp_saldodadivida(CLIENTES.Cd_Cliente, :DE, :ATE, CONFIG.tipomultajuros, CONFIG.dias_multajuros, -1, -1, ''V'', ''V'') S1 on 1=1');
            SQL.Add('left outer join sp_saldodadivida(CLIENTES.Cd_Cliente, :DE, :ATE, CONFIG.tipomultajuros, CONFIG.dias_multajuros, -1, -1, ''V'', ''A'') S2 on 1=1');
            SQL.Add('left outer join sp_saldodadivida(CLIENTES.Cd_Cliente, :DE, :ATE, CONFIG.tipomultajuros, CONFIG.dias_multajuros, -1, -1, ''V'', ''T'') S3 on (CLIENTES.Cd_Cliente = S3.CHAVE_SAIDA)');
            SQL.Add('left outer join sp_MaiorAtraso(CLIENTES.Cd_Cliente, :DE, :ATE) A on 1=1');
            SQL.Add('where A.Atraso > 0');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//Do case relatorio = C02Clientes com Contas em Atraso
          2:begin //clientes com saldo da div�da acima do limite
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipo;
            SQL.Add('Select distinct CLIENTES.CD_CLIENTE as C1,');
            SQL.Add('CLIENTES.NM_CLIENTE as C2,');
            SQL.Add('CLIENTES.APELIDO as C3,');
            SQL.Add('CLIENTES.TELEFONE as C4,');
            SQL.Add('CLIENTES.limitecredito as C5,');
            SQL.Add('S.Saldo as C6');
            SQL.Add('From');
            SQL.Add('CLIENTES');
            SQL.Add('left outer join CONFIG on 1=1');
            SQL.Add('left outer join sp_SaldoDaDivida(CLIENTES.cd_cliente, :DE, :ATE, CONFIG.tipomultajuros, CONFIG.dias_multajuros) S on 1=1');
            SQL.Add('where S.Saldo > CLIENTES.limitecredito');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//clientes com saldo da div�da acima do limite
          3:begin//clientes bloqueados
            AtivaOrdenacao;
            AtivaTipo;
            AtivaPeriodo(false);
            SQL.Add('Select CLIENTES.CD_CLIENTE as C1,');
            SQL.Add('CLIENTES.NM_CLIENTE as C2,CLIENTES.APELIDO as C3,');
            SQL.Add('CLIENTES.TELEFONE as C4,CLIENTES.ENDERECO as C5');
            SQL.Add('From CLIENTES, REFCLIENTES');
            SQL.Add('Where ');
            SQL.Add('CLIENTES.CD_CLIENTE = REFCLIENTES.CD_CLIENTE and');
            SQL.Add('REFCLIENTES.BLOQUEADO = ''V''');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
          end;
          4:begin//clientes simplificado
            AtivaOrdenacao;
            AtivaTipo;
            AtivaPeriodo(false);
            SQL.Add('select clientes.cd_cliente as c1,');
            SQL.Add('clientes.nm_cliente as c2,');
            SQL.Add('clientes.apelido as c3,clientes.telefone as c4,');
            SQL.Add('clientes.endereco as C5 from clientes');
            SQL.Add('Where 1=1');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
          end;
          5: begin//Saldo da D�vida Maior que o Valor Indicado
            ExibePan4;
            AtivaedtValor;
            AtivaOrdenacao;
            AtivaTipo;
            AtivaPeriodo;
            SQL.Add('select CLIENTES.CD_CLIENTE as C1,');
            SQL.Add('CLIENTES.NM_CLIENTE as C2,');
            SQL.Add('CLIENTES.APELIDO as C3,A.ATRASO as C4,');
            SQL.Add('S.SALDO as C5 From CLIENTES');
            SQL.Add('left outer join CONFIG on 1=1');
            SQL.Add('Left Outer join sp_SaldoDaDivida(CLIENTES.cd_cliente, :DE, :ATE, CONFIG.tipomultajuros, CONFIG.dias_multajuros) S on 1=1');
            SQL.Add('left outer join sp_MaiorAtraso(CLIENTES.cd_cliente, :DE, :ATE) A on 1=1');
            SQL.Add('WHERE S.Saldo > :C1');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            if edtValor.Text <> '' then
              ParamByName('C1').AsCurrency := StrToCurr(edtValor.Text)
            else
            begin
              edtValor.Text := '0.00';
              ParamByName('C1').AsCurrency := 0.00;
            end;
            CmbTipoOrdem;
          end;
          6:begin//clientes aniversariantes por per�odo
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipo;
            SQL.Add('Select CD_CLIENTE as C1,');
            SQL.Add('NM_CLIENTE as C2,');
            SQL.Add('cast(extract(month from DT_NASCIMENTO)|| ''/'' || extract(day from DT_NASCIMENTO) as date) as C3,');
            SQL.Add('extract(year from cast(''now'' as date)) - extract(year from DT_NASCIMENTO) as C4,');
            SQL.Add('BAIRRO as C5,TELEFONE as C6');
            SQL.Add('from CLIENTES WHERE');
            SQL.Add('cast(extract(month from DT_NASCIMENTO)|| ''/'' || extract(day from DT_NASCIMENTO) as date) >= :de');
            SQL.Add('and cast(extract(month from DT_NASCIMENTO)|| ''/'' || extract(day from DT_NASCIMENTO) as date) <= :ate');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//clientes aniversariantes por periodo
          7:begin//extrato do cliente
            AtivaOrdenacao;
            AtivaTipo;
            AtivaCliente;
            SQL.Add('select');
            SQL.Add('ARECEBER.DT_EMISSAO   as C1,');
            SQL.Add('cast(ARECEBER.NUM_DOC_CONTA||coalesce(ARECEBER.PARCELA, '''') as VARCHAR(15))as C2,');
            SQL.Add('ARECEBER.VALORATUAL   as C3,');
            SQL.Add('J.JUROS               as C4,');
            SQL.Add('ARECEBER.VALORATUAL + (J.JUROS - ARECEBER.ABATIDO)  as C5,');
            SQL.Add('(0+0)                 as C6,');
            SQL.Add('T.ABREV               as C7,');
            SQL.Add('ARECEBER.LOGIN        as C8');
            SQL.Add('from ARECEBER');
            SQL.Add('Left Outer Join CONFIG on 1=1');
            SQL.Add('Left Outer Join SP_TIPOPAGAMENTO(ARECEBER.TIPO_PAGAMENTO) T on 1=1');
            SQL.Add('Left Outer Join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('Left outer join sp_jurosdaconta(ARECEBER.CD_CLIENTE, ARECEBER.VALORATUAL, ARECEBER.VENCIMENTOATUAL, ARECEBER.TIPO_PAGAMENTO, current_timestamp, coalesce(ARECEBER.ABATIDO, 0), ARECEBER.CH_STATUS, CONFIG.TIPOMULTAJUROS, CONFIG.DIAS_MULTAJUROS )J on 1=1');
            SQL.Add('WHERE');
            SQL.Add('ARECEBER.CD_CLIENTE = :Cliente');
            SQL.Add('and coalesce(BAIXADO, ''F'') <> ''V''');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            
            SQL.Add('UNION');

            SQL.Add('select');
            SQL.Add('PGTOSDOCLIENTE.Data         as C1,');
            SQL.Add('cast(PGTOSDOCLIENTE.SEQUENCIAL as VARCHAR(15)) as C2,');
            SQL.Add('(0+0)                       as C3,');
            SQL.Add('(0+0)                       as C4,');
            SQL.Add('(0+0)                       as C5,');
            SQL.Add('PGTOSDOCLIENTE.VALOR        as C6,');
            SQL.Add('PGTOSDOCLIENTE.ORIGEM       as C7,');
            SQL.Add('PGTOSDOCLIENTE.LOGIN        as C8');
            SQL.Add('from PGTOSDOCLIENTE');
            SQL.Add('WHERE');
            SQL.Add('PGTOSDOCLIENTE.CD_CLIENTE = :Cliente');
 {           case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;}
            SQL.Add('UNION');

            SQL.Add('select');
            SQL.Add('ARECEBER.DT_EMISSAO        as C1,');
            SQL.Add('cast(ARECEBER.NUM_DOC_CONTA||coalesce(ARECEBER.PARCELA, '''') as VARCHAR(15))as C2,');
            SQL.Add('ARECEBER.VALORORIGINAL     as C3,');
            SQL.Add('ARECEBER.BX_JUROS          as C4,');
            SQL.Add('ARECEBER.VALORORIGINAL + (ARECEBER.BX_JUROS) as C5,');
            SQL.Add('(0+0)                      as C6,');
            SQL.Add('TB.ABREV                   as C7,');
            SQL.Add('ARECEBER.LOGIN             as C8');
            SQL.Add('from ARECEBER');
            SQL.Add('Left Outer Join SP_TIPOPAGAMENTO(ARECEBER.TIPO_PAGAMENTO) TB on 1=1');
            SQL.Add('WHERE');
            SQL.Add('ARECEBER.CD_CLIENTE = :Cliente');
            SQL.Add('and coalesce(BAIXADO, ''F'') = ''V''');
{            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;}
            
            if not prepared then prepare;
            ParamByName('cliente').AsString := edtCliente.Edit1Text;
           // CmbTipoOrdem;
          end;//extrato do cliente
          8:begin//produtos por cliente
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipo;
            AtivaCliente;
            SQL.Add('SELECT');
            SQL.Add('PRODUTOS.COD_BARRAS AS C1,');
            SQL.Add('PRODUTOS.NM_PRODUTO AS C2,');
            SQL.Add('SUM(PEDIDO_ITEM.quantidade) AS C3,');
            SQL.Add('MIN(PEDIDO_ITEM.preco) AS C4,');
            SQL.Add('MAX(PEDIDO_ITEM.preco) AS C5,');
            SQL.Add('AVG(PEDIDO_ITEM.preco) AS C6,');
            SQL.Add('MAX(PEDIDO_ITEM.dt_venda) AS C7');
            SQL.Add('FROM CLIENTES');
            SQL.Add('left outer join PEDIDO on PEDIDO.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('left outer join PEDIDO_ITEM on PEDIDO_ITEM.NUM_DOCUMENTO = PEDIDO.NUM_DOCUMENTO');
            SQL.Add('LEFT OUTER JOIN PRODUTOS ON (PEDIDO_ITEM.CD_PRODUTO = PRODUTOS.CD_PRODUTO)');
            SQL.Add('WHERE');
            SQL.Add('PRODUTOS.CD_PRODUTO IS NOT NULL');
            SQL.Add('and CLIENTES.CD_CLIENTE = :cliente');
            SQL.Add('and PEDIDO.DT_VENDA >= :De');
            SQL.Add('and PEDIDO.DT_VENDA <= :Ate');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            SQL.Add('GROUP BY PEDIDO_ITEM.Cd_Produto, PRODUTOS.COD_BARRAS, PRODUTOS.nm_Produto');
            CmbTipoOrdem;
            if not Prepared then Prepare;
            ParamByName('cliente').AsString := edtCliente.Edit1Text;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
          end;//produtos por cliente
          9:begin//clientes por vendedor
            AtivaOrdenacao;
            AtivaTipo;
            AtivaVendedor;
            AtivaDetalhes;
            if (RadioGroupDetalhes.ItemIndex = 0) then
            begin
              SQL.Add('select');
              SQL.Add('CLIENTES.CD_CLIENTE as C1,');
              SQL.Add('CLIENTES.NM_CLIENTE as C2,');
              SQL.Add('CLIENTES.CONTATO as C3,');
              SQL.Add('CLIENTES.CIDADE as C4,');
              SQL.Add('CLIENTES.BAIRRO as C5,');
              SQL.Add('CLIENTES.ENDERECO as C6,');
              SQL.Add('CLIENTES.TELEFONE as C7');
              SQL.Add('from CLIENTES');
              SQL.Add('where');
              SQL.Add('CLIENTES.CD_VENDEDOR = :vendedor');
            end
            else
            if (RadioGroupDetalhes.ItemIndex = 1) then
            begin
              SQL.Add('select');
              SQL.Add('CLIENTES.CD_CLIENTE as C1,');
              SQL.Add('CLIENTES.NM_CLIENTE as C2,');
              SQL.Add('CLIENTES.APELIDO as C3,');
              SQL.Add('CLIENTES.TELEFONE as C4');
              SQL.Add('from CLIENTES');
              SQL.Add('where');
              SQL.Add('CLIENTES.CD_VENDEDOR = :vendedor');
            end;
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
            if not Prepared then Prepare;
            ParamByName('vendedor').AsString := edtVendedor.Edit1Text;
          end;//clientes por vendedor
          10:begin//M�dia de compras por per�odo
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipo;
            SQL.Add('select');
            SQL.Add('CLIENTES.CD_CLIENTE  as C1,');
            SQL.Add('CLIENTES.NM_CLIENTE  as C2,');
            SQL.Add('coalesce((select sum(PEDIDO.TOTALLIQUIDO) from PEDIDO');
            SQL.Add('where');
            SQL.Add('CLIENTES.CD_CLIENTE = PEDIDO.CD_CLIENTE and');
            SQL.Add('PEDIDO.DT_VENDA >= :DE and PEDIDO.DT_VENDA <= :ATE), 0) as C3,');
            SQL.Add('REFCLIENTES.DT_ULTIMACOMPRA as C4');
            SQL.Add('from CLIENTES');
            SQL.Add('left outer join REFCLIENTES');
            SQL.Add('on REFCLIENTES.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
          end;//m�dia de compras por per�odo
          11:begin//clientes por produto
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipo;
            AtivaProduto;
            SQL.Add('select');
            SQL.Add('coalesce(CLIENTES.CD_CLIENTE, 0) as C1,');
            SQL.Add('coalesce(CLIENTES.NM_CLIENTE, ''CONSUMIDOR FINAL'') as C2,');
            SQL.Add('sum(PEDIDO_ITEM.QUANTIDADE) as C3,');
            SQL.Add('Max(PEDIDO_ITEM.DT_VENDA) as C4');
            SQL.Add('from PEDIDO_ITEM');
            SQL.Add('left outer JOIN PRODUTOS on (PRODUTOS.cd_produto = PEDIDO_ITEM.cd_produto)');
            SQL.Add('left outer JOIN CLIENTES on (PEDIDO_ITEM.CD_CLIENTE = CLIENTES.CD_CLIENTE)');
            SQL.Add('where');
            SQL.Add('PRODUTOS.CD_PRODUTO = :produto and');
            SQL.Add('PEDIDO_ITEM.DT_VENDA >= :De and');
            SQL.Add('PEDIDO_ITEM.DT_VENDA <= :Ate');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and CLIENTES.INATIVO = ''F''');
              1: SQL.Add(' and CLIENTES.INATIVO = ''V''');
              2: SQL.Add(' and (CLIENTES.INATIVO = ''F'' or CLIENTES.INATIVO = ''V'')');
            end;
            SQL.Add('Group by PEDIDO_ITEM.CD_CLIENTE, CLIENTES.CD_CLIENTE, CLIENTES.NM_CLIENTE');
            CmbTipoOrdem;
            if not Prepared then Prepare;
            ParamByName('produto').AsString := edtProduto.Edit1Text;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
          end;//clientes por produto
          12:begin//clientes por pra�a
            AtivaOrdenacao;
            AtivaPraca;
            AtivaTipo;
            SQL.Add('select');
            SQL.Add('CLIENTES.CD_CLIENTE as C1,');
            SQL.Add('CLIENTES.NM_CLIENTE as C2,');
            SQL.Add('CLIENTES.CONTATO as C3,');
            SQL.Add('CLIENTES.CIDADE as C4,');
            SQL.Add('CLIENTES.BAIRRO as C5,');
            SQL.Add('CLIENTES.ENDERECO as C6,');
            SQL.Add('CLIENTES.TELEFONE as C7');
            SQL.Add('from CLIENTES');
            SQL.Add('where');
            SQL.Add('CLIENTES.CD_PRACA = :praca');




          end;//clientes por pra�a
        end;//do case cmbRelatorios
      end;// da categoria = Clientes
      2:begin//da categoria = fornecedores
        case CmbRelatorio.ItemIndex of
          0:begin//valores comprados no per�odo
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipo;
            SQL.Add('select FORNECEDORES.CD_FORNECEDOR   as C1,');
            SQL.Add('FORNECEDORES.NM_FORNECEDOR   as C2,');
            SQL.Add('coalesce((select sum(NF.VALOR_TOTAL_NOTA) from NF');
            SQL.Add('where NF.CD_FORNECEDOR = FORNECEDORES.CD_FORNECEDOR and');
            SQL.Add('NF.DT_EMISSAO >= :DE and NF.DT_EMISSAO <= :ATE), 0) as C3,');
            SQL.Add('FORNECEDORES.DT_ULTIMACOMPRA as C4');
            SQL.Add('from FORNECEDORES');
            SQL.Add('where (coalesce((select sum(NF.VALOR_TOTAL_NOTA) from NF where');
            SQL.Add('NF.CD_FORNECEDOR = FORNECEDORES.CD_FORNECEDOR and');
            SQL.Add('NF.DT_EMISSAO >= :DE and NF.DT_EMISSAO <= :ATE), 0)) > 0');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and FORNECEDORES.INATIVO = ''F''');
              1: SQL.Add(' and FORNECEDORES.INATIVO = ''V''');
              2: SQL.Add(' and (FORNECEDORES.INATIVO = ''F'' or FORNECEDORES.INATIVO = ''V'')');
            end;
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//valores comprados no per�odo
          1:begin//fornecedores simplificada
            AtivaOrdenacao;
            AtivaTipo;
            AtivaPeriodo(false);
            SQL.Add('select FORNECEDORES.CD_FORNECEDOR   as C1,');
            SQL.Add('FORNECEDORES.NM_FORNECEDOR   as C2,');
            SQL.Add('FORNECEDORES.NOMEFANTASIA as C3,');
            SQL.Add('FORNECEDORES.TELEFONE as C4,');
            SQL.Add('FORNECEDORES.CONTATO as C5,');
            SQL.Add('FORNECEDORES.CONT_TELEFONE as C6');
            SQL.Add('from FORNECEDORES');
            SQL.Add('where 1=1');
            case RadioGroupItems.ItemIndex of
              0: SQL.Add(' and FORNECEDORES.INATIVO = ''F''');
              1: SQL.Add(' and FORNECEDORES.INATIVO = ''V''');
              2: SQL.Add(' and (FORNECEDORES.INATIVO = ''F'' or FORNECEDORES.INATIVO = ''V'')');
            end;
            CmbTipoOrdem;
          end;
        end;
      end;
      3:begin//entradas
        case CmbRelatorio.ItemIndex of
          0:begin//entradas de NF no per�odo
            AtivaOrdenacao;
            AtivaPeriodo;
            SQL.Add('select distinct');
            SQL.Add('NF.DT_EMISSAO as C1,');
            SQL.Add('NF.CD_FORNECEDOR as C2,');
            SQL.Add('FORNECEDORES.NM_FORNECEDOR as C3,');
            SQL.Add('NF.NUM_DOCUMENTO as C4,');
            SQL.Add('NF.VR_TOTAL_PROD as C5,');
            SQL.Add('NF.VALOR_TOTAL_NOTA as C6');
            SQL.Add('from NF');
            SQL.Add('left outer JOIN FORNECEDORES');
            SQL.Add('on NF.CD_FORNECEDOR = FORNECEDORES.CD_FORNECEDOR');
            SQL.Add('WHERE');
            SQL.Add('NF.DT_EMISSAO >= :de');
            SQL.Add('and  NF.DT_EMISSAO <= :ate');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//entradas de NF no per�odo
          1:begin//Transfer�ncias (entrada) no Per�odo
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('Select');
            SQL.Add('PRODUTOS.COD_BARRAS       as C1,');
            SQL.Add('PRODUTOS.NM_PRODUTO       as C2,');
            SQL.Add('PRODUTOS.UNIDADE          as C3,');
            SQL.Add('sum(TRANSFERENCIAS_ITEMS.QUANTIDADE) as C4');
            SQL.Add('from TRANSFERENCIAS_ITEMS');
            SQL.Add('left outer join PRODUTOS on (PRODUTOS.CD_PRODUTO = TRANSFERENCIAS_ITEMS.CD_PRODUTO)');
            SQL.Add('left outer join TRANSFERENCIAS on (TRANSFERENCIAS.NUM_DOCUMENTO = TRANSFERENCIAS_ITEMS.NUM_DOCUMENTO)');
            SQL.Add('WHERE');
            SQL.Add('TRANSFERENCIAS.operacao = ''E''');
            SQL.Add('and   TRANSFERENCIAS.DATA >= :de');
            SQL.Add('and   TRANSFERENCIAS.DATA <= :ate');
            SQL.Add('group by PRODUTOS.CD_PRODUTO, PRODUTOS.COD_BARRAS, PRODUTOS.NM_PRODUTO, PRODUTOS.UNIDADE');
            if not Prepared then Prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//Transfer�ncias (entrada) no Per�odo
        end;
      end;//entradas - 3
      4:begin//sa�das
        case CmbRelatorio.ItemIndex of
          0:begin//Sa�da de Produtos em Pedidos no Per�odo...
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipoFatura;
            AtivaCliente;
            AtivaVendedor;
            AtivaDetalhes;
            AtivaTerminal;
            RadioGroupDetalhes.Left := 1;
            CheckBoxTerminalClick(Self);//para iniciar testando se o componente aparece desligado
            CheckBoxVendedorClick(Self);
            CheckBoxClienteClick(Self);
            if (RadioGroupDetalhes.ItemIndex = 0) and (RadioGroupDetalhes.Enabled) then //sa�da de produtos em pedidos no per�odo DETALHADO
            begin
              SQL.Add('Select');
              SQL.Add('PEDIDO.DT_VENDA as C1,');
              SQL.Add('PRODUTOS.COD_BARRAS as C2,');
              SQL.Add('coalesce(PEDIDO_ITEM.DESCRICAO, PRODUTOS.NM_PRODUTO) as C3,');
              SQL.Add('PRODUTOS.UNIDADE as C4,');
              SQL.Add('Q.QUANTIDADE as C5,');
              SQL.Add('PEDIDO_ITEM.PRECO as C6,');
              SQL.Add('PEDIDO_ITEM.ACRES_DESC_VALOR as C7,');
              SQL.Add('PEDIDO_ITEM.SUBTOTAL as C8,');
              SQL.Add('PEDIDO_ITEM.NUM_CAIXA as C9');
              SQL.Add('from PEDIDO');
              SQL.Add('left outer join PEDIDO_ITEM  on (PEDIDO.NUM_DOCUMENTO = PEDIDO_ITEM.NUM_DOCUMENTO)');
              SQL.Add('left outer join PRODUTOS on (PRODUTOS.CD_PRODUTO = PEDIDO_ITEM.CD_PRODUTO)');
              SQL.Add('left outer join SP_QUANTIDADE(PEDIDO_ITEM.QUANTIDADE, PEDIDO_ITEM.DIM_COMPRIMENTO, PEDIDO_ITEM.DIM_LARGURA, PEDIDO_ITEM.DIM_ESPESSURA) Q on 1=1');
              SQL.Add('WHERE');
              SQL.Add('PEDIDO.CANCELADO <> ''V''');
            end
            else
            if (RadioGroupDetalhes.ItemIndex = 1) and (RadioGroupDetalhes.Enabled) then //sa�da de produtos em pedidos no per�odo AGRUPADO
            begin
              SQL.Add('Select');
              SQL.Add('PRODUTOS.COD_BARRAS as C1,');
              SQL.Add('PRODUTOS.NM_PRODUTO as C2,');
              SQL.Add('PRODUTOS.UNIDADE as C3,');
              SQL.Add('sum(Q.QUANTIDADE) as C4,');
              SQL.Add('PRODUTOS.PRECOVENDA as C5,');
              SQL.Add('sum(PEDIDO_ITEM.ACRES_DESC_VALOR) as C6,');
              SQL.Add('sum(PEDIDO_ITEM.SUBTOTAL) as C7');
              SQL.Add('from PEDIDO');
              SQL.Add('left outer join PEDIDO_ITEM on (PEDIDO.NUM_DOCUMENTO = PEDIDO_ITEM.NUM_DOCUMENTO)');
              SQL.Add('left outer join PRODUTOS on (PRODUTOS.CD_PRODUTO = PEDIDO_ITEM.CD_PRODUTO)');
              SQL.Add('left outer join SP_QUANTIDADE(PEDIDO_ITEM.QUANTIDADE, PEDIDO_ITEM.DIM_COMPRIMENTO, PEDIDO_ITEM.DIM_LARGURA, PEDIDO_ITEM.DIM_ESPESSURA) Q on 1=1');
              SQL.Add('WHERE');
              SQL.Add('PEDIDO.CANCELADO <> ''V''');
              SQL.Add('group by PRODUTOS.CD_PRODUTO, PRODUTOS.COD_BARRAS, PRODUTOS.NM_PRODUTO, PRODUTOS.UNIDADE, PRODUTOS.PRECOVENDA');
            end
            else
            if CheckBoxTerminal.Checked then //sa�da de produtos em pedidos no per�odo por PDV
            begin
              SQL.Add('Select');
              SQL.Add('PEDIDO.DT_VENDA as C1,');
              SQL.Add('PRODUTOS.COD_BARRAS as C2,');
              SQL.Add('coalesce(PEDIDO_ITEM.DESCRICAO, PRODUTOS.NM_PRODUTO) as C3,');
              SQL.Add('PRODUTOS.UNIDADE as C4,');
              SQL.Add('Q.QUANTIDADE as C5,');
              SQL.Add('PEDIDO_ITEM.PRECO as C6,');
              SQL.Add('PEDIDO_ITEM.ACRES_DESC_VALOR as C7,');
              SQL.Add('PEDIDO_ITEM.SUBTOTAL as C8');
              SQL.Add('from PEDIDO');
              SQL.Add('left outer join PEDIDO_ITEM on (PEDIDO.NUM_DOCUMENTO = PEDIDO_ITEM.NUM_DOCUMENTO)');
              SQL.Add('left outer join PRODUTOS on (PRODUTOS.CD_PRODUTO = PEDIDO_ITEM.CD_PRODUTO)');
              SQL.Add('left outer join SP_QUANTIDADE(PEDIDO_ITEM.QUANTIDADE, PEDIDO_ITEM.DIM_COMPRIMENTO, PEDIDO_ITEM.DIM_LARGURA, PEDIDO_ITEM.DIM_ESPESSURA) Q on 1=1');
              SQL.Add('WHERE');
              SQL.Add('PEDIDO.CANCELADO <> ''V''');
              SQL.Add('and PEDIDO_ITEM.NUM_CAIXA = :C1');
            end;
            SQLWhere.Add('and PEDIDO.DT_VENDA between :de and :ate');
            case RadioGroupTipoFatura.ItemIndex of
              0: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''V''');
              1: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''P''');
              2: SQLWhere.Add(' and (PEDIDO.PED_ORC_VENDA = ''V'' or PEDIDO.PED_ORC_VENDA = ''P'')');
            end;
            if CheckBoxVendedor.Checked then
              SQLWhere.Add(' and PEDIDO.VENDEDOR = :C2');
            if CheckBoxCliente.Checked then
              SQLWhere.Add(' and PEDIDO.CD_CLIENTE = :C3');
            if not Prepared then Prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            if CheckBoxTerminal.Checked then
            begin
              try
                ParamByName('C1').AsInteger := StrToInt(edtTerminal.Text);
              except
                ParamByName('C1').AsInteger := 1;
              end;
            end;
            if CheckBoxVendedor.Checked then
            try
              ParamByName('C2').AsInteger := StrToInt(edtVendedor.Edit1Text);
            except
              ParamByName('C2').AsInteger := 0;
            end;
            if CheckBoxCliente.Checked then
            try
              ParamByName('C3').AsInteger := StrToInt(edtCliente.Edit1Text);
            except
              ParamByName('C3').AsInteger := 1;
            end;
            CmbTipoOrdem;
          end;//Sa�da de Produtos em Pedidos no Per�odo...
          1:begin//pedidos efetuados no per�odo
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipoFatura;
            AtivaCliente;
            AtivaVendedor;
            AtivaTerminal;
            GroupBoxTerminal.left := 1;
            pan3.Top :=  250;
            SQL.Add('Select distinct');
            SQL.Add('PEDIDO.DT_VENDA as C1,');
            SQL.Add('PEDIDO.NUM_DOCUMENTO as C2,');
            SQL.Add('USUARIOS.NM_USUARIO as C3,');
            SQL.Add('case PEDIDO.CD_CLIENTE');
            SQL.Add(' when -1 then null');
            SQL.Add(' else  PEDIDO.CD_CLIENTE');
            SQL.Add('end as C4,');
            SQL.Add('coalesce(CLIENTES.NM_CLIENTE, ''Consumidor Final'') as C5,');
            SQL.Add('PEDIDO.TOTALBRUTO as C6,');
            SQL.Add('PEDIDO.ACRES_DESC_VALOR as C7,');
            SQL.Add('PEDIDO.TOTALLIQUIDO as C8');
            SQL.Add('From');
            SQL.Add('PEDIDO');
            SQL.Add('left outer join PEDIDO_ITEM on PEDIDO_ITEM.NUM_DOCUMENTO = PEDIDO.NUM_DOCUMENTO');
            SQL.Add('left outer join PRODUTOS     on PEDIDO_ITEM.CD_PRODUTO = PRODUTOS.CD_PRODUTO');
            SQL.Add('left outer join CLIENTES on (PEDIDO.CD_CLIENTE = CLIENTES.CD_CLIENTE)');
            SQL.Add('left outer join USUARIOS on (PEDIDO.VENDEDOR = USUARIOS.CD_USUARIO)');
            SQL.Add('where');
            SQL.Add('PEDIDO.CANCELADO <> ''V''');
            SQL.Add('and PEDIDO.DT_VENDA between :de and :ate');
            if CheckBoxTerminal.Checked then
              SQL.Add('and PEDIDO_ITEM.NUM_CAIXA = :C1');
            if CheckBoxVendedor.Checked then
              SQLWhere.Add(' and PEDIDO.VENDEDOR = :C2');
            if CheckBoxCliente.Checked then
              SQLWhere.Add(' and PEDIDO.CD_CLIENTE = :C3');
            case RadioGroupTipoFatura.ItemIndex of
              0: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''V''');
              1: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''P''');
              2: SQLWhere.Add(' and (PEDIDO.PED_ORC_VENDA = ''V'' or PEDIDO.PED_ORC_VENDA = ''P'')');
            end;
            if not Prepared then Prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            if CheckBoxTerminal.Checked then
            begin
              try
                ParamByName('C1').AsInteger := StrToInt(edtTerminal.Text);
              except
                ParamByName('C1').AsInteger := 1;
              end;
            end;
            if CheckBoxVendedor.Checked then
            try
              ParamByName('C2').AsInteger := StrToInt(edtVendedor.Edit1Text);
            except
              ParamByName('C2').AsInteger := 0;
            end;
            if CheckBoxCliente.Checked then
            try
              ParamByName('C3').AsInteger := StrToInt(edtCliente.Edit1Text);
            except
              ParamByName('C3').AsInteger := 1;
            end;
            CmbTipoOrdem;
          end;//pedidos efetuados no periodo
          2:begin//pedidos com forma de pagamento resumido
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipoFatura;
            AtivaTerminal;
            AtivaVendedor;
            AtivaCliente;
            AtivaTiposPG;
            GroupBoxTerminal.left := 1;
            pan3.Top :=  250;
            SQL.Add('Select distinct');
            SQL.Add('PEDIDO.DT_VENDA as C1,');
            SQL.Add('PEDIDO.NUM_DOCUMENTO as C2,');
            SQL.Add('USUARIOS.NM_USUARIO as C3,');
            SQL.Add('PEDIDO.CD_CLIENTE as C4,');
            SQL.Add('CLIENTES.NM_CLIENTE as C5,');
            SQL.Add('PEDIDO.TOTALBRUTO as C6,');
            SQL.Add('PEDIDO.ACRES_DESC_VALOR as C7,');
            SQL.Add('PEDIDO.TOTALLIQUIDO as C8,');
            case RadioGroupTiposPG.ItemIndex of
              0:SQL.Add('(PEDIDO.pag_dinheiro+PEDIDO.pag_cheque+PEDIDO.pag_ticket+PEDIDO.pag_cartao+PEDIDO.pag_crediario) as C9');
              1:SQL.Add('PEDIDO.PAG_CARTAO as C9');
              2:SQL.Add('PEDIDO.PAG_CHEQUE as C9');
              3:SQL.Add('PEDIDO.PAG_CREDIARIO as C9');
              4:SQL.Add('PEDIDO.PAG_DINHEIRO as C9');
              5:SQL.Add('PEDIDO.PAG_TICKET as C9');
            end;
            SQL.Add('From PEDIDO');
            SQL.Add('left outer join PEDIDO_ITEM on PEDIDO_ITEM.NUM_DOCUMENTO = PEDIDO.NUM_DOCUMENTO');
            SQL.Add('left outer join PRODUTOS on PEDIDO_ITEM.CD_PRODUTO = PRODUTOS.CD_PRODUTO');
            SQL.Add('left outer join CLIENTES on (PEDIDO.CD_CLIENTE = CLIENTES.CD_CLIENTE)');
            SQL.Add('left outer join USUARIOS on (PEDIDO.VENDEDOR = USUARIOS.CD_USUARIO)');
            SQL.Add('WHERE');
            SQL.Add('PEDIDO.CANCELADO <> ''V''');
            case RadioGroupTiposPG.ItemIndex of
              0:SQL.Add('and (PEDIDO.pag_dinheiro+PEDIDO.pag_cheque+PEDIDO.pag_ticket+PEDIDO.pag_cartao+PEDIDO.pag_crediario) > 0');
              1:SQL.Add('and PEDIDO.PAG_CARTAO > 0');
              2:SQL.Add('and PEDIDO.PAG_CHEQUE > 0');
              3:SQL.Add('and PEDIDO.PAG_CREDIARIO > 0');
              4:SQL.Add('and PEDIDO.PAG_DINHEIRO > 0');
              5:SQL.Add('and PEDIDO.PAG_TICKET > 0');
            end;
            SQL.Add('and   PEDIDO.DT_VENDA between :de and :ate');
            if CheckBoxTerminal.Checked then
              SQL.Add('and PEDIDO_ITEM.NUM_CAIXA = :C1');
            if CheckBoxVendedor.Checked then
              SQLWhere.Add(' and PEDIDO.VENDEDOR = :C2');
            if CheckBoxCliente.Checked then
              SQLWhere.Add(' and PEDIDO.CD_CLIENTE = :C3');
            case RadioGroupTipoFatura.ItemIndex of
              0: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''V''');
              1: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''P''');
              2: SQLWhere.Add(' and (PEDIDO.PED_ORC_VENDA = ''V'' or PEDIDO.PED_ORC_VENDA = ''P'')');
            end;
            if not Prepared then Prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            if CheckBoxTerminal.Checked then
            begin
              try
                ParamByName('C1').AsInteger := StrToInt(edtTerminal.Text);
              except
                ParamByName('C1').AsInteger := 1;
              end;
            end;
            if CheckBoxVendedor.Checked then
            try
              ParamByName('C2').AsInteger := StrToInt(edtVendedor.Edit1Text);
            except
              ParamByName('C2').AsInteger := 0;
            end;
            if CheckBoxCliente.Checked then
            try
              ParamByName('C3').AsInteger := StrToInt(edtCliente.Edit1Text);
            except
              ParamByName('C3').AsInteger := 1;
            end;
            CmbTipoOrdem;
          end;//pedidos com forma de pagamento resumido
          3:begin//V04
            AtivaTipoFatura;
            AtivaOrdenacao;
            AtivaPeriodo;
            SQL.Add('select');
            SQL.Add('PEDIDO.Num_Documento as C1,');
            SQL.Add('PEDIDO.dt_venda as C2,');
            SQL.Add('case PEDIDO.cd_cliente when -1 then 0 else PEDIDO.cd_cliente end as C3,');
            SQL.Add('coalesce(CLIENTES.nm_cliente, ''Consumidor Final'') as C4,');
            SQL.Add('PEDIDO.TOTALLIQUIDO as C5,');
            SQL.Add('PEDIDO.DESPESA as C6,');
            SQL.Add('PEDIDO.VALORCUSTO as C7,');
            SQL.Add('(PEDIDO.TOTALLIQUIDO - coalesce(PEDIDO.DESPESA, 0) - PEDIDO.VALORCUSTO) as C8');
            SQL.Add('from PEDIDO');
            SQL.Add('left outer join CLIENTES on PEDIDO.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('WHERE');
            SQL.Add('PEDIDO.CANCELADO <> ''V''');
            SQL.Add('and PEDIDO.DT_VENDA between :de and :ate');
            case RadioGroupTipoFatura.ItemIndex of
              0: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''V''');
              1: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''P''');
              2: SQLWhere.Add(' and (PEDIDO.PED_ORC_VENDA = ''V'' or PEDIDO.PED_ORC_VENDA = ''P'')');
            end;
            SQL.Add('group by');
            SQL.Add('PEDIDO.NUM_DOCUMENTO,');
            SQL.Add('PEDIDO.DT_VENDA,');
            SQL.Add('PEDIDO.CD_CLIENTE,');
            SQL.Add('CLIENTES.NM_CLIENTE,');
            SQL.Add('PEDIDO.TOTALLIQUIDO,');
            SQL.Add('PEDIDO.DESPESA,');
            SQL.Add('PEDIDO.VALORCUSTO');
            if not Prepared then Prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;            
          end;

          4:begin//V05 - Pedidos com lucro detalhado/agrupado - por categorias
            AtivaTipoFatura;
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaDetalhes;
            SQL.Add('Select');
            SQL.Add('max(PEDIDO.DT_VENDA) as C1,');
            SQL.Add('PRODUTOS.COD_BARRAS as C2,');
            SQL.Add('PRODUTOS.NM_PRODUTO as C3,');
            SQL.Add('PRODUTOS.UNIDADE as C4,');
            SQL.Add('cast(Sum(Q.QUANTIDADE) as numeric(18,3)) as C5,');
            SQL.Add('cast(Sum(coalesce(PEDIDO_ITEM.PRECOCUSTO,0) * Q.QUANTIDADE) as numeric(18,2)) as C6,');
            SQL.Add('cast(Sum(PEDIDO_ITEM.SUBTOTAL) as numeric(18,2)) as C7,');
            SQL.Add('cast((Sum(PEDIDO_ITEM.SUBTOTAL) - Sum(coalesce(PEDIDO_ITEM.PRECOCUSTO,0) * Q.QUANTIDADE)) as numeric(18,2)) as C8,');
            SQL.Add('DZERO(((Sum(PEDIDO_ITEM.SUBTOTAL) - Sum(coalesce(PEDIDO_ITEM.PRECOCUSTO,0) * Q.QUANTIDADE))) ,  ((Sum(PEDIDO_ITEM.SUBTOTAL - coalesce(PEDIDO_ITEM.ACRES_DESC_VALOR,0)))/100), 0) as C9');
            SQL.Add('from');
            SQL.Add('PEDIDO');
            SQL.Add('left outer join PEDIDO_ITEM on PEDIDO_ITEM.NUM_DOCUMENTO = PEDIDO.NUM_DOCUMENTO');
            SQL.Add('left outer join PRODUTOS on PRODUTOS.CD_PRODUTO = PEDIDO_ITEM.CD_PRODUTO');
            SQL.Add('left outer join SP_QUANTIDADE(PEDIDO_ITEM.QUANTIDADE, PEDIDO_ITEM.DIM_COMPRIMENTO, PEDIDO_ITEM.DIM_LARGURA, PEDIDO_ITEM.DIM_ESPESSURA) Q on 1=1');
            SQL.Add('WHERE');
            SQL.Add('PEDIDO.CANCELADO <> ''V''');
            SQL.Add('and PEDIDO.DT_VENDA between :de and :ate');
            case RadioGroupTipoFatura.ItemIndex of
              0: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''V''');
              1: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''P''');
              2: SQLWhere.Add(' and (PEDIDO.PED_ORC_VENDA = ''V'' or PEDIDO.PED_ORC_VENDA = ''P'')');
            end;
            SQL.Add('Group by PRODUTOS.COD_BARRAS, PRODUTOS.NM_PRODUTO, PRODUTOS.UNIDADE');
            if not Prepared then Prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end; //V05
          5:begin//V06 tabela de quebra no per�odo
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipoFatura;
            SQL.Add('Select');
            SQL.Add('PRODUTOS.COD_BARRAS as C1,');
            SQL.Add('PRODUTOS.NM_PRODUTO as C2,');
            SQL.Add('sum(PEDIDO_ITEM.PESOSAIDA) as C3,');
            SQL.Add('sum(PEDIDO_ITEM.PESOCHEGADA) as C4,');
            SQL.Add('(sum(PEDIDO_ITEM.PESOSAIDA) - sum(PEDIDO_ITEM.PESOCHEGADA)) as C5,');
            SQL.Add('(((sum(PEDIDO_ITEM.PESOSAIDA) - sum(PEDIDO_ITEM.PESOCHEGADA))*100)/PEDIDO_ITEM.PESOSAIDA) as C6,');
            SQL.Add('((sum(PEDIDO_ITEM.PESOSAIDA) - sum(PEDIDO_ITEM.PESOCHEGADA)) * PRODUTOS.PDV_PRECOVENDA) as C7');
            SQL.Add('from PEDIDO');
            SQL.Add('left outer join PEDIDO_ITEM on (PEDIDO_ITEM.NUM_DOCUMENTO = PEDIDO.NUM_DOCUMENTO)');
            SQL.Add('left outer join PRODUTOS on PEDIDO_ITEM.CD_PRODUTO = PRODUTOS.CD_PRODUTO');
            SQL.Add('left outer join USUARIOS on (PEDIDO.VENDEDOR = USUARIOS.CD_USUARIO)');
            SQL.Add('WHERE');
            SQL.Add('PEDIDO.CANCELADO <> ''V''');
            SQL.Add('and PEDIDO.DT_VENDA between :de and :ate');
            SQL.Add('and PEDIDO_ITEM.PESOSAIDA <> 0');
            case RadioGroupTipoFatura.ItemIndex of
              0: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''V''');
              1: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''P''');
              2: SQLWhere.Add(' and (PEDIDO.PED_ORC_VENDA = ''V'' or PEDIDO.PED_ORC_VENDA = ''P'')');
            end;
            SQL.Add('group by PEDIDO_ITEM.CD_PRODUTO, PRODUTOS.COD_BARRAS, PRODUTOS.NM_PRODUTO, PEDIDO_ITEM.PESOSAIDA, PEDIDO_ITEM.PESOCHEGADA, PRODUTOS.PDV_PRECOVENDA');
            if not Prepared then Prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//V06 tabela de quebra no per�odo
          6:begin//V07 pedidos realizados com tipo de pagamento
            AtivaOrdenacao;
            AtivaPeriodo;
            AtivaTipoFatura;
            AtivaDetalhes;
            case RadioGroupDetalhes.ItemIndex of
              0:begin //detalhado
                SQL.Add('select');
                SQL.Add('PEDIDO.DT_VENDA as C1,');
                SQL.Add('PEDIDO.NUM_DOCUMENTO as C2,');
                SQL.Add('PEDIDO.TOTALLIQUIDO as C3,');
                SQL.Add('PEDIDO.PAG_DINHEIRO as C4,');
                SQL.Add('PEDIDO.PAG_CHEQUE as C5,');
                SQL.Add('PEDIDO.PAG_CARTAO as C6,');
                SQL.Add('PEDIDO.PAG_TICKET as C7,');
                SQL.Add('PEDIDO.PAG_CREDIARIO as C8,');
                SQL.Add('PEDIDO.PAG_CREDCLI as C9');
                SQL.Add('from PEDIDO');
                SQL.Add('WHERE');
                SQL.Add('PEDIDO.CANCELADO <> ''V''');
                SQL.Add('and PEDIDO.DT_VENDA between :de and :ate');
                case RadioGroupTipoFatura.ItemIndex of
                  0: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''V''');
                  1: SQLWhere.Add(' and PEDIDO.PED_ORC_VENDA = ''P''');
                  2: SQLWhere.Add(' and (PEDIDO.PED_ORC_VENDA = ''V'' or PEDIDO.PED_ORC_VENDA = ''P'')');
                end;
              end;//detalhado
              1:begin//agrupado
                SQL.Add('select');
                SQL.Add('cast(PEDIDO.DT_VENDA as DATE) as C1,');
                SQL.Add('sum(PEDIDO.TOTALLIQUIDO)  as C2,');
                SQL.Add('sum(PEDIDO.PAG_DINHEIRO)  as C3,');
                SQL.Add('sum(PEDIDO.PAG_CHEQUEATO) as C4,');
                SQL.Add('sum(PEDIDO.PAG_CHEQUEPRE) as C5,');
                SQL.Add('sum(PEDIDO.PAG_CARTAO)    as C6,');
                SQL.Add('sum(PEDIDO.PAG_TICKET)    as C7,');
                SQL.Add('sum(PEDIDO.PAG_CREDIARIO) as C8,');
                SQL.Add('sum(PEDIDO.PAG_CREDCLI)   as C9');
                SQL.Add('from PEDIDO');
                SQL.Add('WHERE');
                SQL.Add('PEDIDO.CANCELADO <> ''V''');
                SQL.Add('and PEDIDO.DT_VENDA between :de and :ate');
                SQL.Add('group by 1');
              end;//agrupado
            end;
            if not Prepared then Prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//V07 pedidos realizados com tipo de pagamento
          7:begin//V08 Vendas faturadas por Grupo no per�odo
            AtivaOrdenacao;
            AtivaPeriodo;
            SQL.Add('select');
            SQL.Add('GRUPOS_PRODUTOS.DESCRICAO as C1,');
            SQL.Add('SP.QUANTIDADE as C2,');
            SQL.Add('SP.VALORTOTAL as C3,');
            SQL.Add('SP.LUCROVALOR as C4,');
            SQL.Add('SP.LUCROPORC as C5');
            SQL.Add('from GRUPOS_PRODUTOS');
            SQL.Add('left outer join PRODUTOS on PRODUTOS.CD_PRODUTO = GRUPOS_PRODUTOS.CD_GRUPO');
            SQL.Add('left outer join SP_PEDIDOSPORGRUPO(GRUPOS_PRODUTOS.CD_GRUPO, :DE, :ATE) as SP on 1=1');
            SQL.Add('Where 1=1');
            if not Prepared then Prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//V08 Vendas faturadas por Grupo no per�odo
          8:begin//V09 Transfer�ncias no Per�odo
            AtivaOrdenacao;
            AtivaPeriodo;
            SQL.Add('Select');
            SQL.Add('PRODUTOS.COD_BARRAS       as C1,');
            SQL.Add('PRODUTOS.BAL_COD_BALANCA  as C2,');
            SQL.Add('PRODUTOS.NM_PRODUTO       as C3,');
            SQL.Add('PRODUTOS.UNIDADE          as C4,');
            SQL.Add('sum(TRANSFERENCIAS_ITEMS.QUANTIDADE) as C5,');
            SQL.Add('sum(TRANSFERENCIAS_ITEMS.SUBTOTALCUSTO) as C6');
            SQL.Add('from TRANSFERENCIAS as VENDAS');
            SQL.Add('left outer join TRANSFERENCIAS_ITEMS on (PEDIDO.NUM_DOCUMENTO = TRANSFERENCIAS_ITEMS.NUM_DOCUMENTO)');
            SQL.Add('left outer join PRODUTOS on (PRODUTOS.CD_PRODUTO = TRANSFERENCIAS_ITEMS.CD_PRODUTO)');
            SQL.Add('WHERE');
            SQL.Add('PEDIDO.OPERACAO = ''S''');
            SQL.Add('and PEDIDO.DATA between :de and :ate');
            SQL.Add('group by PRODUTOS.CD_PRODUTO, PRODUTOS.COD_BARRAS, PRODUTOS.BAL_COD_BALANCA, PRODUTOS.NM_PRODUTO, PRODUTOS.UNIDADE');
            if not Prepared then Prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//V09 Transfer�ncias no Per�odo
        end;
      end;//sa�das - 4
      5:begin//contas a pagar
        case CmbRelatorio.ItemIndex of
          0:begin//contas a pagar com vencimento no per�odo
            AtivaOrdenacao;
            AtivaPeriodo;
            SQL.Add('select DISTINCT');
            SQL.Add('VENCIMENTO    as C1,VALOR         as C2,');
            SQL.Add('NM_FORNECEDOR as C3,');
            SQL.Add('case TIPOPAGAMENTO when ''C'' then ''CHEQUE''');
            SQL.Add('when ''T'' then ''T�TULO''when ''D'' then ''DEP�SITO'' ');
            SQL.Add('end as C4,HISTORICO as C5');
            SQL.Add('from CONTASAPAGAR');
            SQL.Add('left outer join FORNECEDORES on FORNECEDORES.CD_FORNECEDOR = CONTASAPAGAR.CD_FORNECEDOR');
            SQL.Add('WHERE BAIXADO = ''F''');
            SQL.Add('and   CONTASAPAGAR.VENCIMENTO >= :de');
            SQL.Add('and   CONTASAPAGAR.VENCIMENTO <= :ate');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//contas a pagar com vencimento no periodo
          1:begin//contas pagas no per�odo
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select BX_DATA as C1,');
            SQL.Add('VENCIMENTO    as C2, VALOR         as C3,');
            SQL.Add('BX_VALORPAGO  as C4, NM_FORNECEDOR as C5,');
            SQL.Add('case TIPOPAGAMENTO when ''C'' then ''CHEQUE''');
            SQL.Add('when ''T'' then ''T�TULO''when ''D'' then ''DEP�SITO''');
            SQL.Add('end as C6,HISTORICO as C7');
            SQL.Add('from CONTASAPAGAR left outer join FORNECEDORES');
            SQL.Add('on FORNECEDORES.CD_FORNECEDOR = CONTASAPAGAR.CD_FORNECEDOR');
            SQL.Add('WHERE BAIXADO = ''V''');
            SQL.Add('and   CONTASAPAGAR.BX_DATA >= :de and   CONTASAPAGAR.BX_DATA <= :ate');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;
        end;
      end;

      6:begin//contas a receber
        case CmbRelatorio.ItemIndex of
          0:begin//CR01 Cheques liquidados no per�odo
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select CLIENTES.CD_CLIENTE as C1,');
            SQL.Add('CLIENTES.NM_CLIENTE as C2,ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '''') as C3,');
            SQL.Add('BANCOS.NM_BANCO as C4,ARECEBER.AGENCIA as C5,');
            SQL.Add('ARECEBER.NUM_CHEQUE as C6,ARECEBER.VENCIMENTOORIGINAL as C7,');
            SQL.Add('ARECEBER.VALORORIGINAL as C8 from ARECEBER');
            SQL.Add('left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('left outer join BANCOS on ARECEBER.NUM_BANCO = BANCOS.NM_BANCO');
            SQL.Add('WHERE coalesce(BAIXADO, ''F'') = ''V''');
            SQL.Add('and  ARECEBER.TIPO_PAGAMENTO = 0');
            SQL.Add('and  ARECEBER.BX_DATA >= :de and ARECEBER.BX_DATA <= :ate');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//cheques liquidados no periodo
          1:begin//CR02 cheques com vencimento no periodo
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select CLIENTES.CD_CLIENTE as C1,');
            SQL.Add('CLIENTES.NM_CLIENTE as C2,');
            SQL.Add('ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '''') as C3,');
            SQL.Add('BANCOS.NM_BANCO as C4,');
            SQL.Add('ARECEBER.AGENCIA as C5,');
            SQL.Add('ARECEBER.NUM_CHEQUE as C6,');
            SQL.Add('ARECEBER.VENCIMENTOATUAL as C7,');
            SQL.Add('ARECEBER.VALORATUAL as C8,');
            SQL.Add('ARECEBER.OBS as C9');
            SQL.Add('from ARECEBER');
            SQL.Add('left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('left outer join BANCOS on ARECEBER.NUM_BANCO = BANCOS.NM_BANCO');
            SQL.Add('WHERE ARECEBER.TIPO_PAGAMENTO = 0');
            SQL.Add('and   ARECEBER.VENCIMENTOATUAL >= :de');
            SQL.Add('and   ARECEBER.VENCIMENTOATUAL <= :ate');
            SQL.Add('and coalesce(BAIXADO, ''F'') <> ''V''');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//cheques com vencimento no periodo
          2:begin//CR03 Credi�rios Liquidados no Periodo
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select');
            SQL.Add('ARECEBER.BX_DATA as C1,');
            SQL.Add('ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '''') as C2,');
            SQL.Add('CLIENTES.CD_CLIENTE as C3,');
            SQL.Add('CLIENTES.NM_CLIENTE as C4,');
            SQL.Add('ARECEBER.VENCIMENTOORIGINAL as C5,');
            SQL.Add('ARECEBER.BX_ATRASO as C6,');
            SQL.Add('ARECEBER.BX_JUROS as C7,');
            SQL.Add('ARECEBER.VALORORIGINAL as C8');
            SQL.Add('from ARECEBER');
            SQL.Add('left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('where');
            SQL.Add('coalesce(BAIXADO, ''F'') = ''V''');
            SQL.Add('and ARECEBER.BX_DATA >= :de and ARECEBER.BX_DATA <= :ate');
            SQL.Add('and (ARECEBER.TIPO_PAGAMENTO = 3)');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//Credi�rios Liquidados no Periodo
          3:begin//CR04 Crediarios com vencimento no Per�odo
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select ARECEBER.DT_EMISSAO as C1,');
            SQL.Add('ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '''') as C2,');
            SQL.Add('CLIENTES.CD_CLIENTE as C3,CLIENTES.NM_CLIENTE as C4,');
            SQL.Add('ARECEBER.VENCIMENTOATUAL as C5,');
            SQL.Add('(select VALORATUAL from ARECEBER AR WHERE');
            SQL.Add('AR.SEQUENCIAL = ARECEBER.SEQUENCIAL and AR.TIPO_PAGAMENTO = 3) as C6');
            SQL.Add('from (ARECEBER left outer join CLIENTES');
            SQL.Add('on ARECEBER.CD_CLIENTE = CLIENTES.CD_CLIENTE)');
            SQL.Add('WHERE');
            SQL.Add('ARECEBER.VENCIMENTOATUAL >= :de');
            SQL.Add('and   ARECEBER.VENCIMENTOATUAL <= :ate');
            SQL.Add('and (ARECEBER.TIPO_PAGAMENTO = 3)');
            SQL.Add('and coalesce(ARECEBER.BAIXADO, ''F'') <> ''V''');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//Crediarios com vencimento no Per�odo
          4:begin//CR05 Boletos Liquidados no periodo
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select CLIENTES.CD_CLIENTE as C1,');
            SQL.Add('CLIENTES.NM_CLIENTE as C2,');
            SQL.Add('ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '''') as C3,');
            SQL.Add('BANCOS.NM_BANCO as C4,');
            SQL.Add('ARECEBER.BOL_NOSSONUMERO as C5,');
            SQL.Add('ARECEBER.BX_DATA as C6,');
            SQL.Add('ARECEBER.VALORORIGINAL as C7');
            SQL.Add('from ARECEBER');
            SQL.Add('left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('left outer join BANCOS on ARECEBER.NUM_BANCO = BANCOS.NM_BANCO');
            SQL.Add('where coalesce(BAIXADO, ''F'') = ''V''');
            SQL.Add('and ARECEBER.TIPO_PAGAMENTO = 2');
            SQL.Add('and ARECEBER.BX_DATA >= :de and ARECEBER.BX_DATA <= :ate');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//Boletos Liquidados no periodo
          5:begin//CR06 Boletos com vencimento no per�odo
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select ARECEBER.DT_EMISSAO      as C1,');
            SQL.Add('ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '''') as C2,');
            SQL.Add('ARECEBER.BOL_NOSSONUMERO      as C3,');
            SQL.Add('CLIENTES.CD_CLIENTE      as C4,');
            SQL.Add('CLIENTES.NM_CLIENTE      as C5,');
            SQL.Add('BANCOS.NM_BANCO          as C6,');
            SQL.Add('ARECEBER.AGENCIA         as C7,');
            SQL.Add('ARECEBER.NUM_CONTA       as C8,');
            SQL.Add('ARECEBER.VENCIMENTOATUAL as C9,');
            SQL.Add('ARECEBER.VALORATUAL      as C10');
            SQL.Add('from ARECEBER');
            SQL.Add('left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('left outer join BANCOS on ARECEBER.NUM_BANCO = BANCOS.NUM_BANCO');
            SQL.Add('WHERE ARECEBER.TIPO_PAGAMENTO = 2');
            SQL.Add('and   ARECEBER.DT_EMISSAO >= :de');
            SQL.Add('and   ARECEBER.DT_EMISSAO <= :ate');
            SQL.Add('and coalesce(BAIXADO, ''F'') <> ''V''');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//Boletos com vencimento no per�odo
          6:begin//CR07 recebimentos de contas no periodo
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select PGTOSDOCLIENTE.DATA as C1,');
            SQL.Add('CLIENTES.CD_CLIENTE as C2,');
            SQL.Add('CLIENTES.NM_CLIENTE as C3,');
            SQL.Add('PGTOSDOCLIENTE.VALOR as C4,');
            SQL.Add('PGTOSDOCLIENTE.JUROSPAGOS as C5,');
            SQL.Add('PGTOSDOCLIENTE.REFCONTAS as C6,');
            SQL.Add('(PGTOSDOCLIENTE.REF_CREDIARIO + PGTOSDOCLIENTE.REF_BOLETOS + PGTOSDOCLIENTE.REF_OUTROS) as C7');
            SQL.Add('from PGTOSDOCLIENTE');
            SQL.Add('left outer join CLIENTES on PGTOSDOCLIENTE.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('where');
            SQL.Add('PGTOSDOCLIENTE.DATA >= :de');
            SQL.Add('and PGTOSDOCLIENTE.DATA <= :ate');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//recebimentos de contas no periodo
          7:begin//CR08 contas a receber do cliente
            AtivaPeriodo;
            AtivaOrdenacao;
            AtivaCliente;
            SQL.Add('select ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '''') as C1,');
            SQL.Add('TP.DESCRICAO as C2,');
            SQL.Add('ARECEBER.DT_EMISSAO as C3,');
            SQL.Add('ARECEBER.VENCIMENTOATUAL as C4,');
            SQL.Add('ARECEBER.VALORATUAL as C5,');
            SQL.Add('A.ATRASO as C6, J.JUROS as C7,');
            SQL.Add('Coalesce(ARECEBER.ABATIDO, 0) as C8,');
            SQL.Add('(ARECEBER.VALORATUAL + J.JUROS - Coalesce(ARECEBER.ABATIDO, 0)) as C9');
            SQL.Add('from ARECEBER');
            SQL.Add('left outer join CONFIG on 1=1');
            SQL.Add('left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('left outer join SP_calc_atraso(ARECEBER.VENCIMENTOATUAL, current_date, ARECEBER.TIPO_PAGAMENTO, ARECEBER.CH_STATUS) A on 1=1');
            SQL.Add('left outer join sp_jurosdaconta(ARECEBER.CD_CLIENTE, ARECEBER.VALORATUAL, ARECEBER.VENCIMENTOATUAL, ARECEBER.TIPO_PAGAMENTO, current_date, coalesce(ARECEBER.ABATIDO, 0), ARECEBER.CH_STATUS, CONFIG.tipomultajuros, CONFIG.dias_multajuros) J on 1=1');
            SQL.Add('left outer join SP_TipoPagamento(ARECEBER.TIPO_PAGAMENTO) TP on 1=1');
            SQL.Add('WHERE');
            SQL.Add('ARECEBER.VENCIMENTOATUAL >= :de');
            SQL.Add('and   ARECEBER.VENCIMENTOATUAL <= :ate');
            SQL.Add('and   ARECEBER.CD_CLIENTE = :Cliente');
            SQL.Add('and coalesce(BAIXADO, ''F'') <> ''V''');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            ParamByName('Cliente').AsString :=  edtCliente.Edit1Text;
            CmbTipoOrdem;
          end;//contas a receber do cliente
          8:begin//CR09 contas a receber emitidas no per�odo
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select ARECEBER.DT_EMISSAO       as C1,');
            SQL.Add('ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '''') as C2,');
            SQL.Add('TP.ABREV           as C3,');
            SQL.Add('CLIENTES.CD_CLIENTE       as C4,');
            SQL.Add('CLIENTES.NM_CLIENTE       as C5,');
            SQL.Add('ARECEBER.VENCIMENTOATUAL  as C6,');
            SQL.Add('ARECEBER.VALORATUAL       as C7,');
            SQL.Add('A.ATRASO           as C8,J.JUROS            as C9,');
            SQL.Add('ARECEBER.ABATIDO          as C10,');
            SQL.Add('(coalesce(ARECEBER.VALORATUAL, 0) + coalesce(J.JUROS, 0) - coalesce(ARECEBER.ABATIDO, 0)) as C11');
            SQL.Add('from ARECEBER');
            SQL.Add('left outer join CONFIG on 1=1');
            SQL.Add('left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CLIENTE');
            SQL.Add('left outer join SP_Calc_Atraso(ARECEBER.VENCIMENTOATUAL, :HOJE, ARECEBER.TIPO_PAGAMENTO) A on 1=1');
            SQL.Add('left outer join SP_JurosDaConta(ARECEBER.CD_CLIENTE, ARECEBER.VALORATUAL, ARECEBER.VENCIMENTOATUAL, ARECEBER.TIPO_PAGAMENTO, :HOJE, Coalesce(ARECEBER.ABATIDO, 0), ARECEBER.CH_STATUS, CONFIG.tipomultajuros, CONFIG.dias_multajuros) J on 1=1');
            SQL.Add('left outer join SP_TipoPagamento(ARECEBER.TIPO_PAGAMENTO) TP on 1=1');
            SQL.Add('where');
            SQL.Add('ARECEBER.DT_EMISSAO >= :DE');
            SQL.Add('and ARECEBER.DT_EMISSAO <= :ATE');
            SQL.Add('and coalesce(BAIXADO, ''F'') <> ''V''');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//contas a receber emitidas no per�odo
          9:begin //CR10 cobran�as de titulos vencidos por vendedor
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select');
            SQL.Add('ARECEBER.DT_EMISSAO as C1,');
            SQL.Add('case ARECEBER.TIPO_PAGAMENTO when 2 then ''BOLETO''when 3 then ''CREDI�RIO'' ');
            SQL.Add('when 0 then ''CHEQUE'' end as C2,');
            SQL.Add('ARECEBER.CD_CLIENTE as C3,');
            SQL.Add('CLIENTES.NM_CLIENTE as C4,');
            SQL.Add('case ARECEBER.TIPO_PAGAMENTO');
            SQL.Add('when 2 then cast (ARECEBER.BOL_NOSSONUMERO as VARCHAR(20))');
            SQL.Add('when 3 then cast (ARECEBER.NUM_DOC_CONTA as VARCHAR(20))');
            SQL.Add('when 0 then cast (ARECEBER.NUM_CHEQUE as VARCHAR(20))');
            SQL.Add('else ''''');
            SQL.Add('end as C5,');
            SQL.Add('ARECEBER.VENCIMENTOATUAL as C6,');
            SQL.Add('ARECEBER.VALORATUAL as C7');
            SQL.Add('from ARECEBER');
            SQL.Add('left outer join CLIENTES on ARECEBER.cd_cliente = CLIENTES.cd_cliente');
            SQL.Add('WHERE ARECEBER.VENCIMENTOATUAL < current_date');
            SQL.Add('and   ARECEBER.VENCIMENTOATUAL >= :de and   ARECEBER.VENCIMENTOATUAL <= :ate');
            SQL.Add('and coalesce(ARECEBER.BAIXADO, ''F'') <> ''V''');
            SQL.Add('and coalesce(ARECEBER.INATIVO, ''F'') <> ''V''');
            SQL.Add('and');
            SQL.Add('/* Credi�rio */ (((ARECEBER.TIPO_PAGAMENTO = 3) and ((Select first 1 SD_CREDIARIOS from CONFIG) = ''V'')) or');
            SQL.Add('/* Boleto    */ ((ARECEBER.TIPO_PAGAMENTO = 2) and ((Select first 1 SD_BOLETOS from CONFIG) = ''V'')) or');
            SQL.Add('/* Outros    */ ((ARECEBER.TIPO_PAGAMENTO = 4) and ((Select first 1 SD_OUTROS from CONFIG) = ''V'')) or');
            SQL.Add('/* Qualquer Cheque   */ ((ARECEBER.TIPO_PAGAMENTO = 0) and ((Select first 1 SD_CHEQUES from CONFIG) = ''V'') and ((Select first 1 SD_CHEQUES_TP from CONFIG) = ''T'')) or');
            SQL.Add('/* Cheque Devolvido  */ ((ARECEBER.TIPO_PAGAMENTO = 0) and ((Select first 1 SD_CHEQUES from CONFIG) = ''V'') and ((Select first 1 SD_CHEQUES_TP from CONFIG) = ''D'') and (ARECEBER.CH_STATUS = 4)))');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//cobran�as de titulos vencidos por vendedor
          10:begin//CR11 Cobran�a de T�tulos Abertos por Vendedor
            AtivaPeriodo;
            AtivaOrdenacao;
            SQL.Add('select ARECEBER.DT_EMISSAO as C1,');
            SQL.Add('case ARECEBER.TIPO_PAGAMENTO');
            SQL.Add('when 2 then ''BOLETO'' when 3 then ''CREDI�RIO''');
            SQL.Add('when 0 then ''CHEQUE'' end as C2,');
            SQL.Add('ARECEBER.CD_CLIENTE as C3,');
            SQL.Add('CLIENTES.NM_CLIENTE as C4,');
            SQL.Add('case ARECEBER.TIPO_PAGAMENTO');
            SQL.Add('when 2 then cast (ARECEBER.BOL_NOSSONUMERO as VARCHAR(20))');
            SQL.Add('when 3 then cast (ARECEBER.NUM_DOC_CONTA as VARCHAR(20))');
            SQL.Add('when 0 then cast (ARECEBER.NUM_CHEQUE as VARCHAR(20))');
            SQL.Add('else '''' end as C5,');
            SQL.Add('ARECEBER.VENCIMENTOATUAL as C6,');
            SQL.Add('ARECEBER.VALORATUAL as C7');
            SQL.Add('from ARECEBER');
            SQL.Add('left outer join CLIENTES on ARECEBER.cd_cliente = CLIENTES.cd_cliente');
            SQL.Add('WHERE ARECEBER.VENCIMENTOATUAL >= :de');
            SQL.Add('and   ARECEBER.VENCIMENTOATUAL <= :ate');
            SQL.Add('and coalesce(ARECEBER.BAIXADO, ''F'') <> ''V''');
            SQL.Add('and coalesce(ARECEBER.INATIVO, ''F'') <> ''V''');
            SQL.Add('and /* Credi�rio */(((ARECEBER.TIPO_PAGAMENTO = 3) and ((Select first 1 SD_CREDIARIOS from CONFIG) = ''V'')) or');
            SQL.Add('/* Boleto    */((ARECEBER.TIPO_PAGAMENTO = 2) and ((Select first 1 SD_BOLETOS from CONFIG) = ''V'')) or');
            SQL.Add('/* Outros    */((ARECEBER.TIPO_PAGAMENTO = 4) and ((Select first 1 SD_OUTROS from CONFIG) = ''V'')) or');
            SQL.Add('/* Qualquer Cheque   */ ((ARECEBER.TIPO_PAGAMENTO = 0) and ((Select first 1 SD_CHEQUES from CONFIG) = ''V'') and ((Select first 1 SD_CHEQUES_TP from CONFIG) = ''T'')) or');
            SQL.Add('/* Cheque Devolvido  */ ((ARECEBER.TIPO_PAGAMENTO = 0) and ((Select first 1 SD_CHEQUES from CONFIG) = ''V'') and ((Select first 1 SD_CHEQUES_TP from CONFIG) = ''D'') and (ARECEBER.CH_STATUS = 4)))');
            if not prepared then prepare;
            ParamByName('de').AsDate := DateEditDe.Date;
            ParamByName('ate').AsDate := DataHoraFinal(DateEditAte.Date);
            CmbTipoOrdem;
          end;//Cobran�a de T�tulos Abertos por Vendedor
        end;//do case cmbrelatorio.itemindex
      end;//contas a receber
      //inserir agora tipo de categoria = 3 e subjacentes
    end;//do case das categorias
  end;//fechando a query
//end;
//Verifica problemas...
except
  on E: Exception do

    if (MessageDlg('Ocorreu algum erro inesperado, provavelmente com o bando de dados.'+#13+#10+'  Deseja verificar a mensagem de erro?', mtError, [mbYes, mbNo], 0) = mrYes) then
    begin
      ShowMessage('O erro �: '+#13+#13+E.Message);
    end;
  end;
end;
{----------------------------------------------------------------------------}
//Fim do montaSQL

procedure TfrmPrincipal.CmbTipoOrdem;
begin
  With IBOQuery1 do
  begin
    case RadioGroupCategoria.ItemIndex of
      0:begin//caso a categoria seja de produtos
        if GroupBoxTipoEstoque.Enabled = true then
          case ComboBoxTipoEst.ItemIndex of
            1:  sql.add (' and E.ESTOQUEATUAL < 0');
            2:  sql.add (' and E.ESTOQUEATUAL > 0');
            3:  sql.add (' and E.ESTOQUEATUAL = 0');
            4:  sql.add (' and E.ESTOQUEATUAL <= PRODUTOS.ESTOQUEMINIMO');
            5:  sql.add (' and (E.ESTOQUEATUAL <= PRODUTOS.ESTOQUEMINIMO)and (E.ESTOQUEATUAL > 0)');
            6:  sql.add (' and E.ESTOQUEATUAL > PRODUTOS.ESTOQUEMINIMO');
            7:  sql.add (' and E.ESTOQUEATUAL >= 0');
            8:  sql.add (' and E.ESTOQUEATUAL <= 0');
          end;
        //vou testar os itens da ordem do relat�rio
        case OrdemRelat of
         P01orCustoVendaUnitarios:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c4');
              4: SQL.Add('order by c7');
              5: SQL.Add('order by c8');
              6: SQL.Add('order by c10');
              7: SQL.Add('order by c5');
              8: SQL.Add('order by c9');
              9: SQL.Add('order by c6');
            end;
          P01orCustoUnitario:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c4');
              4: SQL.Add('order by c7');
              5: SQL.Add('order by c8');
              6: SQL.Add('order by c5');
            end;
          P01orVendaUnitaria:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c4');
              4: SQL.Add('order by c7');
              5: SQL.Add('order by c9');
              6: SQL.Add('order by c6');
            end;//do case interno
          P02orProdPrecoAlteradoVenda:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c4');
              4: SQL.Add('order by c5');
            end;
          P02orProdPrecoAlteradoCusto:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c6');
              4: SQL.Add('order by c7');
            end;
          P02orProdPrecoAlteradoCustoVenda:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c7');
              4: SQL.Add('order by c6');
              5: SQL.Add('order by c8');
              6: SQL.Add('order by c5');
              7: SQL.Add('order by c4');
            end;
          P03orQuebraInventario:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c4');
              4: SQL.Add('order by c5');
              5: SQL.Add('order by c6');
              6: SQL.Add('order by c7');
              7: SQL.Add('order by c8');
            end;
          P04orProdutosTroca:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c4');
              4: SQL.Add('order by c5');
            end;
          P05orTabelaPrecoCustoVenda:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c5');
              4: SQL.Add ('order by c4');
              5: SQL.Add ('order by c6');
            end;
          P06orProdutosPorFornecedor:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c4');
              4: SQL.Add('order by c5');
              5: SQL.Add('order by c6');
              6: SQL.Add('order by c7');
              7: SQL.Add('order by c8');
              8: SQL.Add('order by c9');
            end;
          P07orFornecedoresPorProduto:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c4');
            end;
          P08orMediaVendasReferenteP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
          P10orProdPrecoNaoConciliadoPDV:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
            end;
          P10orProdPrecoNaoConciliadoPDVSBal:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c3');
              2: SQL.Add ('order by c4');
              3: SQL.Add ('order by c5');
              4: SQL.Add ('order by c6');
            end;
          P10orProdPrecoNaoConciliadoPDVSemCusto:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c6');
            end;
          P10orProdPrecoNaoConciliadoPDVSemCustoBal:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c3');
              2: SQL.Add ('order by c4');
              3: SQL.Add ('order by c6');
            end;
          P11orFormInventario:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c3');
              2: SQL.Add ('order by c4');
              3: SQL.Add ('order by c5');
            end;
          P11orFormInventarioBal:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
            end;
          P12orProdVinculadosForn:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
          P13orLevantaEstoqueCusto:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
            end;
        end;//do case do tipo de ordena��o
      end;//da categoria = 0, produtos
      1:begin //categoria = clientes
        case OrdemRelat of
          C01orClientesComContasAbertas:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
          C02orClientesComContasemAtraso:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
          C03orClienteSaldoDividaAlto:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
            end;
          C04orClientesBloqueados:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
            end;
          C05orClientesSimp:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
            end;
          C06orSaldoMaior:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
            end;
          C07orAniversariantesP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
            end;
          C08orExtratodeCliente:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
            end;
          C09orProdutosPorCliente:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
          C10orClientesPorVendedorDet:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
          C10orClientesPorVendedorAgr:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add('order by c1');
              1: SQL.Add('order by c2');
              2: SQL.Add('order by c3');
              3: SQL.Add('order by c4');
            end;
          C11orMediadeComprasP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
            end;
          C12orClientesPorProduto:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
            end;
          C13orClientesPorPraCa:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
        end;// do case do ordemrelat
      end;//da categoria = 1, clientes
      2:begin//categoria fornecedores
        case OrdemRelat of
          F01orValoresCompradosP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
            end;
          F02orFornecedoresSimp:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
            end;
        end;//do case ordemrelat
      end;//da categoria = 2, fornecedores
      3:begin //da categoria = entradas
        case OrdemRelat of
          E01orValoresCompradosP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
            end;
          E02orTransferenciasP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
            end;
        end;
      end;//da categoria = 3, entradas
      4:begin//da categoria = sa�das
        case OrdemRelat of
          V01orSaidaProdutosP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
              8: SQL.Add ('order by c9');
            end;
          V01orSaidaProdutosAgP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
          V01orSaidaProdutosPDVP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
            end;
          V02orPedidosEfetuadosP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
            end;
          V03orPedidoscomFormaPg:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
              8: SQL.Add ('order by c9');
            end;
          V04orPedidoscomLucro:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
            end;
          V05orPedidoscomLucroCatDet:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
              8: SQL.Add ('order by c9');
            end;
          V05orPedidoscomLucroCatAgr:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c5');
              4: SQL.Add ('order by c6');
              5: SQL.Add ('order by c7');
              6: SQL.Add ('order by c9');
            end;
          V06orQuebranoPeriodo:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
          V07orSaidaProdTipoPgDet:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
              8: SQL.Add ('order by c9');
            end;
          V07orSaidaProdTipoPgAgr:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
              8: SQL.Add ('order by c9');
            end;
          V08orVendasFatporGrupoP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
            end;
          V09orTransferenciasP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
            end;
        end;
      end;//da categoria = 4, sa�das
      5:begin//categoria contas a pagar
        case OrdemRelat of
          CP01orContasAPagarVP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
            end;
          CP02orContasPagasP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by C6');
              6: SQL.Add ('order by c7');
            end;
        end;//do case ordemrelat
      end;//categoria contas a pagar
      6:begin//categoria contas a receber
        case OrdemRelat of
          CR01orChequesLiquidadosP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by C6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
            end;//do case comboboxordena
          CR02orChequeComVencP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by C6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
              8: SQL.Add ('order by c9');
            end;//do case comboboxordena
          CR03orCrediariosLiquidP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by C6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
            end;//do case comboboxordena
          CR04orCrediariosComVencP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by C6');
            end;
          CR05orBoletosLiquidP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by C6');
              6: SQL.Add ('order by c7');
            end;
          CR06orBoletosComVencP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by C6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
              8: SQL.Add ('order by c9');
              9: SQL.Add ('order by c10');
            end;//do case comboboxordena
          CR07orRecebimentosDeContasP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;//do case comboboxordena
          CR08orContasReceberCliente:
          case ComboBoxOrdena.ItemIndex of
            0: SQL.Add ('order by c1');
            1: SQL.Add ('order by c2');
            2: SQL.Add ('order by c3');
            3: SQL.Add ('order by c4');
            4: SQL.Add ('order by c5');
            5: SQL.Add ('order by C6');
            6: SQL.Add ('order by c7');
            7: SQL.Add ('order by c8');
            8: SQL.Add ('order by c9');
          end;
          CR09orContasReceberEmitP:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
              7: SQL.Add ('order by c8');
              8: SQL.Add ('order by c9');
              9: SQL.Add ('order by c10');
              10: SQL.Add ('order by c11');
            end;
          CR10orCobTitulosVencidosVend:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
          CR11orCobTitulosAbertosVend:
            case ComboBoxOrdena.ItemIndex of
              0: SQL.Add ('order by c1');
              1: SQL.Add ('order by c2');
              2: SQL.Add ('order by c3');
              3: SQL.Add ('order by c4');
              4: SQL.Add ('order by c5');
              5: SQL.Add ('order by c6');
              6: SQL.Add ('order by c7');
            end;
        end;///do case ordemrelat
      end;//categoria contas a receber

    end;//do case do item index da categoria
    if chbDecres.Checked = true then
      SQL.Add(' DESC');
  end;//fechando a query
end;


{p�r pra funcionar}
procedure TFrmPrincipal.EsteRelatorioGetValue(const VarName: String;
  var Value: Variant);
var
  de   : String;
  ate  : String;
begin
  if (varname = 'dataDe') then
  begin
    de := DateEditDe.Text;
    value := de;
  end;
  if (varname = 'dataAte') then
  begin
    ate := DateEditAte.Text;
    value := ate;
  end;
end;

procedure TFrmPrincipal.BtnVisualizarClick(Sender: TObject);
begin
//Agora ireri verificar os erros no pr�prio MontaSQL.
  {try}
  MontaSql;
 { except
  on E: Exception do

    if (MessageDlg('Ocorreu algum erro inesperado, provavelmente com o bando de dados.'+#13+#10+'  Deseja verificar a mensagem de erro?', mtError, [mbYes, mbNo], 0) = mrYes) then
    begin
      ShowMessage('O erro �: '+#13+#13+E.Message);
    end;
  }


  case RadioGroupCategoria.ItemIndex of
    0:begin//categoria produtos
      //testa a sele��o do relat�rio a emitir 0 = P01 - levantamento de estoque
      case CmbRelatorio.ItemIndex of
        0://levantamento de estoque
        begin
          //testa se � para mostrar os valores de custo e de venda, se sim
          if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP01CompletaUnitario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P01_CompletaUnitario.fr3');// se alterar aqui tem que alterar o que abre no formshow
            dmRel.frxP01CompletaUnitario.ShowReport(TRUE);
          end
          else
         { //testa se � para mostrar somente os valores de custo, se sim
          if (CheckBoxCusto.Checked = true) and (CheckBoxVenda.Checked = false) then
          begin
            frxP01CustoUnitario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P01_CustoUnitario.fr3');
            frxP01CustoUnitario.ShowReport(TRUE);
          end
          else}
          //testa se � para mostrar somente os valores de venda, se sim
          if (CheckBoxCusto.Checked = false) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP01VendaUnitario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P01_VendaUnitario.fr3');
            dmRel.frxP01VendaUnitario.ShowReport(TRUE);
          end;
        end;//do case = 0 se � o CmbRelatorio.ItemIndex = 0
        1://produtos com pre�os alterados
        begin
          //testa se � p/ exibir produtos que sofreram altera��o dos pre�os, apresentando o pre�o de venda
          if (CheckBoxCusto.Checked = false) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP02PrecoAlteradoVenda.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P02_PrecoAlteradoVenda.fr3');
            dmRel.frxP02PrecoAlteradoVenda.ShowReport(TRUE);
          end
          else
          //testa se � p/ exibir produtos que sofreram altera��o dos pre�os, apresentando o pre�o de custo
          {if (CheckBoxCusto.Checked = true) and (CheckBoxVenda.Checked = false) then
          begin
            frxP02PrecoAlteradoCusto.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P02_PrecoAlteradoCusto.fr3');
            frxP02PrecoAlteradoCusto.ShowReport(TRUE);
          end
          else }
          //testa se � p/ exibir produtos que sofreram altera��o dos pre�os, apresentando o pre�o de custo e venda
          if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP02PrecoAlteradoCustoVenda.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P02_PrecoAlteradoCustoVenda.fr3');
            dmRel.frxP02PrecoAlteradoCustoVenda.ShowReport(TRUE);
          end;
        end;
        2://quebra do invent�rio referente ao per�odo
        begin
          //dmRel.frxP03QuebraInventario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P03_QuebraInventarioRefP.fr3');
          dmRel.frxP03QuebraInventario.ShowReport(TRUE);
        end;
        3://produtos para troca
        begin
          //dmRel.frxP04ProdutosTroca.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P04_ProdutosTroca.fr3');
          dmRel.frxP04ProdutosTroca.ShowReport(TRUE);
        end;
        4://tabela de pre�os
        begin
          if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP05TabelaPrecoCustoVenda.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P05_TabelaPrecoCustoVenda.fr3');
            dmRel.frxP05TabelaPrecoCustoVenda.ShowReport(TRUE);
          end;
        end;
        5://tabela de produtos por fornecedor
        begin
          dmRel.frxP06ProdutosPorFornecedor.ShowReport(TRUE);
        end;
        6://tabela de fornecedores por produto
        begin
          dmRel.frxP07FornecedoresPorProduto.ShowReport(TRUE);
        end;
        7://m�dia de vendas referente a x dias
        begin
          dmRel.frxP08MediaVendasReferenteP.ShowReport(TRUE);
        end;//m�dia de vendas referente a x dias
        9://produtos com pre�os n�p conciliados para o pdv
        begin
          if (CheckBoxCusto.Checked) and (CheckBoxBal.Checked) then
            dmRel.frxP10ProdPrecoNaoConciliadoPDV.ShowReport(TRUE)
          else
          if (CheckBoxCusto.Checked) and (CheckBoxBal.Checked = false) then
            dmRel.frxP10ProdPrecoNaoConciliadoPDVSBal.ShowReport(true)
          else
          if (CheckBoxCusto.Checked = false) and (CheckBoxBal.Checked) then
            dmRel.frxP10ProdPrecoNaoConciliadoPDVSemCusto.ShowReport(True)
          else
          if (CheckBoxCusto.Checked = false) and (CheckBoxBal.Checked = false) then
            dmRel.frxP10ProdPrecoNaoConciliadoPDVSemCustoBal.ShowReport(True);
        end;//produtos com pre�os n�o conciliados para o pdv
        10://formul�rio para invent�rio
        begin
          if CheckBoxBal.Checked then//mostra o campo balan�a no relat�rio
            dmRel.frxP11FormInventarioBal.ShowReport(TRUE)
          else
            dmRel.frxP11FormInventario.ShowReport(TRUE);
        end;//formul�rio para invent�rio
        11://produtos por fornecedor
        begin
          dmRel.frxP12ProdutosPorFornecedor.ShowReport(TRUE);
        end;//produtos por fornecedor
        12://levantamento de estoque CUSTO
        begin
          dmRel.frxP13LevantamentoEstoqueCusto.ShowReport(TRUE);
        end;

      end;//do case
      SalvaBooleanNoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','ExibeCusto',CheckBoxCusto.Checked);
      {SalvaBooleanNoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','ExibeVenda',CheckBoxVenda.Checked);}
      SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','TipoEstoque',ComboBoxTipoEst.ItemIndex);
    end;//da categoria = produtos
    1:begin//categoria = clientes
      case CmbRelatorio.ItemIndex of
        0://Clientes com Contas Abertas
        begin
          //dmRel.frxC01ClientesComContasAbertas.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C01_ClientesComContasAbertas.fr3');
          dmRel.frxC01ClientesComContasAbertas.ShowReport(TRUE);
        end;
        1:begin
          //dmRel.frxC02ClientesComContasemAtraso.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C02_ClientesComContasemAtraso.fr3');
          dmRel.frxC02ClientesComContasemAtraso.ShowReport(TRUE);
        end;
        2:begin
          //frxC03ClientesComSaldoAcimaLimite.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C03_ClientesComSaldoAcimaLimite.fr3');
          dmRel.frxC03ClientesComSaldoAcimaLimite.ShowReport(TRUE);
        end;
        3:begin
          //dmRel.frxC04ClientesBloqueados.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C04_ClientesBloqueados.fr3');
          dmRel.frxC04ClientesBloqueados.ShowReport(TRUE);
        end;
        4:begin
          //dmRel.frxC05ClientesSimp.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C05_ClientesSimplificados.fr3');
          dmRel.frxC05ClientesSimp.ShowReport(TRUE);
        end;
        5:begin
          //dmRel.frxC06SaldoMaior.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C06_SaldoMaior.fr3');
          dmRel.frxC06SaldoMaior.ShowReport(TRUE);
        end;
        6:begin
          //dmRel.frxC07AniversariantesP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C07_AniversariantesP.fr3');
          dmRel.frxC07AniversariantesP.ShowReport(TRUE);
        end;
        7:begin
          dmRel.frxC08ExtratoCliente.ShowReport(TRUE);
        end;
        8:begin
          dmRel.frxC09ProdutosPorCliente.ShowReport(TRUE);
        end;
        9:begin
          if (RadioGroupDetalhes.ItemIndex = 0) then
            dmRel.frxC10ClientesPorVendedorDet.ShowReport(TRUE)
          else
          if (RadioGroupDetalhes.ItemIndex = 1) then
            dmRel.frxC10ClientesPorVendedorAgr.ShowReport(TRUE);
        end;
        10:begin
          //dmRel.frxC11MediadeComprasP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C11_MediadeComprasP.fr3');
          dmRel.frxC11MediadeComprasP.ShowReport(TRUE);
        end;
        11:begin
          dmRel.frxC12ClientesPorProduto.ShowReport(TRUE);
        end;
        12:begin
          dmRel.frxC13ClientesPorPraca.ShowReport(TRUE);
        end;
      end;
    end;
    2:begin//categoria fornecedores
      case CmbRelatorio.ItemIndex of
        0://Valores comprados no per�odo
        begin
          //dmRel.frxF01ValoresCompradosP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\F01_ValoresCompradosP.fr3');
          dmRel.frxF01ValoresCompradosP.ShowReport(TRUE);
        end;
        1://Fornecedores Simplificado
        begin
          //dmRel.frxF02FornecedoresSimp.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\F02_FornecedoresSimp.fr3');
          dmRel.frxF02FornecedoresSimp.ShowReport(TRUE);
        end;
      end;//do case do cmbRelatorio
    end;//da categoria fornecedores
    3:begin//da categoria entradas
      case CmbRelatorio.ItemIndex of
        0://entradas de NF no Per�odo
        begin
          dmRel.frxE01EntradasNFP.ShowReport(TRUE);
        end;//entradas de NF no Per�odo
        1://transferencias (entrada) no per�odo
        begin
          dmRel.frxE02TransferenciaEntP.ShowReport(TRUE);
        end;
      end;
    end;//da categoria entradas
    4:begin//da categoria sa�das
      case CmbRelatorio.ItemIndex of
        0:begin//saida de produtos em pedidos no per�odo
          if (RadioGroupDetalhes.ItemIndex = 0) and (RadioGroupDetalhes.Enabled) then
            dmRel.frxV01SaidaProdutosDP.ShowReport(TRUE)//DETALHADO
          else
          if (RadioGroupDetalhes.ItemIndex = 1) and (RadioGroupDetalhes.Enabled) then
            dmRel.frxV01SaidaProdutosAgP.ShowReport(True)//AGRUPADO
          else
          if CheckBoxTerminal.Checked then
            dmRel.frxV01SaidaProdutosPdvP.ShowReport(TRUE);//POR TERMINAL
        end;//saida de produtos em pedidos no per�odo
        1:begin//pedidos efetuados por per�odo
          dmRel.frxV02PedidosEfetuadosP.ShowReport(TRUE);
        end;//pedidos efetuados por per�odo
        2:begin//pedidos com forma de pagamento
          dmRel.frxV03PedidoscomFormaPg.ShowReport(TRUE);
        end;//pedidos com forma de pagamento
        3:begin//Pedidos com Lucro
          dmRel.frxV04PedidosComLucro.ShowReport(TRUE);
        end;//Pedidos com Lucro
        4:begin//Pedidos com Lucro por grupo
          if (RadioGroupDetalhes.ItemIndex = 0) then
            dmRel.frxV05PedidosComLucroDet.ShowReport(TRUE)
          else
          if (RadioGroupDetalhes.ItemIndex = 1) then
            dmRel.frxV05PedidosComLucroAgr.ShowReport(TRUE);
        end;//Pedidos com Lucro por grupo
        5:begin//quebra no per�odo V06
          dmRel.frxV06QuebraNoPeriodo.ShowReport(TRUE);
        end;//quebre no periodo V06
        6:begin//pedidos com tipo de pagamento v07
          case RadioGroupDetalhes.ItemIndex of
            0:  dmRel.frxV07PedidosComTipoPgDet.ShowReport(TRUE);
            1:  dmRel.frxV07PedidosComTipoPgAgr.ShowReport(TRUE);
          end;
        end;//pedidos com tipo de pagamento v07
        7:begin//V08Vendas faturadas no Periodo
          dmRel.frxV08VendasFatPeriodo.ShowReport(TRUE);
        end;//V08Vendas faturadas no Periodo
        8:begin//V09 transferencias no periodo
          dmRel.frxV09TransferenciasNoPeriodo.ShowReport(TRUE);
        end;//V09 transferencias no periodo
      end;
    end;//da categoria sa�das = 4
    5:begin//da categoria contas a pagar
      case CmbRelatorio.ItemIndex of
        0://Contas a pagar com vencimento no per�odo
        begin
          //dmRel.frxCP01ContasAPagarVP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CP01_ContasAPagarVP.fr3');
         {
          Grid1.Columns[0].Title.Caption:='C�digo';
          Grid1.Columns[1].Title.Caption:='Descri��o';
          Grid1.Columns[2].Title.Caption:='Und';
          Grid1.Columns[3].Title.Caption:='Estoque';
          Grid1.Columns[4].Title.Caption:='Valor Custo';
          Grid1.Columns[5].Title.Caption:='Margem';
          Grid1.Columns[6].Title.Caption:='V. Estoque';
          Grid1.Columns[7].Title.Caption:='Valor Venda';
          Grid1.Columns[8].Title.Caption:='V. Venda estoque';
          dmRel.frxCP01ContasAPagarVP.ShowReport(TRUE);
          }
        end;
        1://contas pagas no per�odo
        begin
          //dmRel.frxCP02ContasPagasP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CP02_ContasPagasP.fr3');
          dmRel.frxCP02ContasPagasP.ShowReport(TRUE);
        end;
      end;
    end;//da categoria contas a pagar
    6:begin//Contas a receber
      case CmbRelatorio.ItemIndex of
        0://Cheques liquidados no per�odo
        begin
          //dmRel.frxCR01ChequesLiquidadosP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR01_ChequesLiquidadosP.fr3');
          dmRel.frxCR01ChequesLiquidadosP.ShowReport(TRUE);
        end;//cheques liquidados no per�odo
        1://cheques com vencimento no per�odo
        begin
          //dmRel.frxCR02ChequesComVencP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR02_ChequesComVencP.fr3');
          dmRel.frxCR02ChequesComVencP.ShowReport(TRUE);
        end;
        2://credi�rios liquidados no per�odo
        begin
          //dmRel.frxCR03CrediariosLiquidP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR03_CrediariosLiquidP.fr3');
          dmRel.frxCR03CrediariosLiquidP.ShowReport(TRUE);
        end;//credi�rios liquidados no per�odo
        3://crediarios com vencimento no periodo
        begin
          //dmRel.frxCR04CrediariosComVencP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR04_CrediariosComVencP.fr3');
          dmRel.frxCR04CrediariosComVencP.ShowReport(TRUE);
        end;//crediarios com vencimento no periodo
        4://boletos liquidados no periodo
        begin
          //dmRel.frxCR05BoletosLiquidP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR05_BoletosLiquidP.fr3');
          dmRel.frxCR05BoletosLiquidP.ShowReport(TRUE);
        end;//boletos liquidados no periodo
        5://boletos com vencimento no periodo
        begin
          //dmRel.frxCR06BoletosComVencP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR06_BoletosComVencP.fr3');
          dmRel.frxCR06BoletosComVencP.ShowReport(TRUE);
        end;//boletos com vencimento no periodo
        6://recebimentos de contas no per�odo
        begin
          //dmRel.frxCR07RecebimentosDeContasP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR07_RecebimentosDeContasP.fr3');
          dmRel.frxCR07RecebimentosDeContasP.ShowReport(TRUE);
        end;//recebimentos de contas no per�odo
        7://Contas a receber do Cliente
        begin
        end;//Contas a receber do Cliente
        8://contas a receber emitidas no periodo
        begin
          //dmRel.frxCR09ContasReceberEmitP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR09_ContasReceberEmitP.fr3');
          dmRel.frxCR09ContasReceberEmitP.ShowReport(TRUE);
        end;//contas a receber emitidas no periodo
        9://Cobran�a de titulos vencidos por vendedor
        begin
          //dmRel.frxCR10CobTitulosVencidosVend.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR10_CobTitulosVencidosVend.fr3');
          dmRel.frxCR10CobTitulosVencidosVend.ShowReport(TRUE);
        end;//Cobran�a de t�tulos vencidos por vendedor
        10://Cobran�a de titulos abertos por vendedor
        begin
          //dmRel.frxCR11CobTitulosAbertosVend.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR11_CobTitulosAbertosVend.fr3');
          dmRel.frxCR11CobTitulosAbertosVend.ShowReport(TRUE);
        end;//Cobran�a de titulos abertos por vendedor
      end;//do case CmbRelatorio.itemindex
    end;//contas a receber
  end;//do case das categorias
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','Categoria',RadioGroupCategoria.ItemIndex);
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','TipoRelatorio',CmbRelatorio.ItemIndex);
  SalvaDateNoRegistro('Software\Focus\Forms\Relatorios','PeriodoDe',DateEditDe.Date);
  SalvaDateNoRegistro('Software\Focus\Forms\Relatorios','PeriodoAte',DateEditAte.Date);
  SalvaBooleanNoRegistro('Software\Focus\Forms\Relatorios','OrdDecrescente',chbDecres.Checked);
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','Ordenacao',ComboBoxOrdena.ItemIndex);
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','Selecao',RadioGroupItems.ItemIndex);
end;

procedure TFrmPrincipal.bt_VisualizarNoGridClick(Sender: TObject);
begin

  IBOQuery1.Active:= true;
  CDS.Active:= True;
  CDS.Refresh; {try}
  MontaSql;
 { except
  on E: Exception do

    if (MessageDlg('Ocorreu algum erro inesperado, provavelmente com o bando de dados.'+#13+#10+'  Deseja verificar a mensagem de erro?', mtError, [mbYes, mbNo], 0) = mrYes) then
    begin
      ShowMessage('O erro �: '+#13+#13+E.Message);
    end;
  }


  case RadioGroupCategoria.ItemIndex of
    0:begin//categoria produtos
      //testa a sele��o do relat�rio a emitir 0 = P01 - levantamento de estoque
      case CmbRelatorio.ItemIndex of
        0://levantamento de estoque
        begin
          //testa se � para mostrar os valores de custo e de venda, se sim
          Grid1.Columns[0].Title.Caption:='C�digo';
          Grid1.Columns[1].Title.Caption:='Descri��o';
          Grid1.Columns[2].Title.Caption:='Und';
          Grid1.Columns[3].Title.Caption:='Estoque';
          Grid1.Columns[4].Title.Caption:='Valor Custo';
          Grid1.Columns[5].Title.Caption:='Margem';
          Grid1.Columns[6].Title.Caption:='V. Estoque';
          Grid1.Columns[7].Title.Caption:='Valor Venda';
          Grid1.Columns[8].Title.Caption:='V. Venda estoque';
          Grid1.Columns[09].Visible:= False;
          if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP01CompletaUnitario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P01_CompletaUnitario.fr3');// se alterar aqui tem que alterar o que abre no formshow
            dmRel.frxP01CompletaUnitario.PrepareReport;
            Grid1.Update;


          end
          else
          Grid1.Columns[04].Visible:= False;
         { //testa se � para mostrar somente os valores de custo, se sim
          if (CheckBoxCusto.Checked = true) and (CheckBoxVenda.Checked = false) then
          begin
            frxP01CustoUnitario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P01_CustoUnitario.fr3');
            frxP01CustoUnitario.ShowReport(TRUE);
          end
          else}
          //testa se � para mostrar somente os valores de venda, se sim
          if (CheckBoxCusto.Checked = false) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP01VendaUnitario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P01_VendaUnitario.fr3');
            dmRel.frxP01VendaUnitario.PrepareReport;
          end;
        end;//do case = 0 se � o CmbRelatorio.ItemIndex = 0
        1://produtos com pre�os alterados
        begin
          //testa se � p/ exibir produtos que sofreram altera��o dos pre�os, apresentando o pre�o de venda
          if (CheckBoxCusto.Checked = false) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP02PrecoAlteradoVenda.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P02_PrecoAlteradoVenda.fr3');
            dmRel.frxP02PrecoAlteradoVenda.PrepareReport;
          end
          else
          Grid1.Columns[04].Visible:= False;
          //testa se � p/ exibir produtos que sofreram altera��o dos pre�os, apresentando o pre�o de custo
          {if (CheckBoxCusto.Checked = true) and (CheckBoxVenda.Checked = false) then
          begin
            frxP02PrecoAlteradoCusto.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P02_PrecoAlteradoCusto.fr3');
            frxP02PrecoAlteradoCusto.ShowReport(TRUE);
          end
          else }
          //testa se � p/ exibir produtos que sofreram altera��o dos pre�os, apresentando o pre�o de custo e venda
          if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP02PrecoAlteradoCustoVenda.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P02_PrecoAlteradoCustoVenda.fr3');
            dmRel.frxP02PrecoAlteradoCustoVenda.PrepareReport;
          end
          else
          Grid1.Columns[04].Visible:= False;
        end;
        2://quebra do invent�rio referente ao per�odo
        begin
          //dmRel.frxP03QuebraInventario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P03_QuebraInventarioRefP.fr3');
          dmRel.frxP03QuebraInventario.PrepareReport;
        end;
        3://produtos para troca
        begin
          //dmRel.frxP04ProdutosTroca.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P04_ProdutosTroca.fr3');
          dmRel.frxP04ProdutosTroca.PrepareReport;
        end;
        4://tabela de pre�os
        begin
          if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP05TabelaPrecoCustoVenda.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P05_TabelaPrecoCustoVenda.fr3');
            dmRel.frxP05TabelaPrecoCustoVenda.PrepareReport;
          end;
        end;
        5://tabela de produtos por fornecedor
        begin
          dmRel.frxP06ProdutosPorFornecedor.PrepareReport;
        end;
        6://tabela de fornecedores por produto
        begin
          dmRel.frxP07FornecedoresPorProduto.PrepareReport;
        end;
        7://m�dia de vendas referente a x dias
        begin
          dmRel.frxP08MediaVendasReferenteP.PrepareReport;
        end;//m�dia de vendas referente a x dias
        9://produtos com pre�os n�p conciliados para o pdv
        begin
          if (CheckBoxCusto.Checked) and (CheckBoxBal.Checked) then
            dmRel.frxP10ProdPrecoNaoConciliadoPDV.PrepareReport
          else
          if (CheckBoxCusto.Checked) and (CheckBoxBal.Checked = false) then
            dmRel.frxP10ProdPrecoNaoConciliadoPDVSBal.PrepareReport
          else
          if (CheckBoxCusto.Checked = false) and (CheckBoxBal.Checked) then
            dmRel.frxP10ProdPrecoNaoConciliadoPDVSemCusto.PrepareReport
          else
          if (CheckBoxCusto.Checked = false) and (CheckBoxBal.Checked = false) then
            dmRel.frxP10ProdPrecoNaoConciliadoPDVSemCustoBal.PrepareReport;
        end;//produtos com pre�os n�p conciliados para o pdv
        10://formul�rio para invent�rio
        begin
          if CheckBoxBal.Checked then//mostra o campo balan�a no relat�rio
            dmRel.frxP11FormInventarioBal.PrepareReport
          else
            dmRel.frxP11FormInventario.PrepareReport;
        end;//formul�rio para invent�rio
        11://produtos por fornecedor
        begin
          dmRel.frxP12ProdutosPorFornecedor.PrepareReport;
        end;//produtos por fornecedor
        12://levantamento de estoque CUSTO
        begin
          dmRel.frxP13LevantamentoEstoqueCusto.PrepareReport;
        end;

      end;//do case
      SalvaBooleanNoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','ExibeCusto',CheckBoxCusto.Checked);
      {SalvaBooleanNoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','ExibeVenda',CheckBoxVenda.Checked);}
      SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','TipoEstoque',ComboBoxTipoEst.ItemIndex);
    end;//da categoria = produtos
    1:begin//categoria = clientes
      case CmbRelatorio.ItemIndex of
        0://Clientes com Contas Abertas
        begin
          //dmRel.frxC01ClientesComContasAbertas.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C01_ClientesComContasAbertas.fr3');
          dmRel.frxC01ClientesComContasAbertas.PrepareReport;
        end;
        1:begin
          //dmRel.frxC02ClientesComContasemAtraso.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C02_ClientesComContasemAtraso.fr3');
          dmRel.frxC02ClientesComContasemAtraso.PrepareReport;
        end;
        2:begin
          //frxC03ClientesComSaldoAcimaLimite.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C03_ClientesComSaldoAcimaLimite.fr3');
          dmRel.frxC03ClientesComSaldoAcimaLimite.PrepareReport;
        end;
        3:begin
          //dmRel.frxC04ClientesBloqueados.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C04_ClientesBloqueados.fr3');
          dmRel.frxC04ClientesBloqueados.PrepareReport;
        end;
        4:begin
          //dmRel.frxC05ClientesSimp.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C05_ClientesSimplificados.fr3');
          dmRel.frxC05ClientesSimp.PrepareReport;
        end;
        5:begin
          //dmRel.frxC06SaldoMaior.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C06_SaldoMaior.fr3');
          dmRel.frxC06SaldoMaior.PrepareReport;
        end;
        6:begin
          //dmRel.frxC07AniversariantesP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C07_AniversariantesP.fr3');
          dmRel.frxC07AniversariantesP.PrepareReport;
        end;
        7:begin
          dmRel.frxC08ExtratoCliente.PrepareReport;
        end;
        8:begin
          dmRel.frxC09ProdutosPorCliente.PrepareReport;
        end;
        9:begin
          if (RadioGroupDetalhes.ItemIndex = 0) then
            dmRel.frxC10ClientesPorVendedorDet.PrepareReport
          else
          if (RadioGroupDetalhes.ItemIndex = 1) then
            dmRel.frxC10ClientesPorVendedorAgr.PrepareReport;
        end;
        10:begin
          //dmRel.frxC11MediadeComprasP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C11_MediadeComprasP.fr3');
          dmRel.frxC11MediadeComprasP.PrepareReport;
        end;
        11:begin
          dmRel.frxC12ClientesPorProduto.PrepareReport;
        end;
        12:begin
          dmRel.frxC13ClientesPorPraca.PrepareReport;
        end;
      end;
    end;
    2:begin//categoria fornecedores
      case CmbRelatorio.ItemIndex of
        0://Valores comprados no per�odo
        begin
          //dmRel.frxF01ValoresCompradosP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\F01_ValoresCompradosP.fr3');
          dmRel.frxF01ValoresCompradosP.PrepareReport;
        end;
        1://Fornecedores Simplificado
        begin
          //dmRel.frxF02FornecedoresSimp.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\F02_FornecedoresSimp.fr3');
          dmRel.frxF02FornecedoresSimp.PrepareReport;
        end;
      end;//do case do cmbRelatorio
    end;//da categoria fornecedores
    3:begin//da categoria entradas
      case CmbRelatorio.ItemIndex of
        0://entradas de NF no Per�odo
        begin
          dmRel.frxE01EntradasNFP.PrepareReport;
        end;//entradas de NF no Per�odo
        1://transferencias (entrada) no per�odo
        begin
          dmRel.frxE02TransferenciaEntP.PrepareReport;
        end;
      end;
    end;//da categoria entradas
    4:begin//da categoria sa�das
      case CmbRelatorio.ItemIndex of
        0:begin//saida de produtos em pedidos no per�odo
          if (RadioGroupDetalhes.ItemIndex = 0) and (RadioGroupDetalhes.Enabled) then
            dmRel.frxV01SaidaProdutosDP.PrepareReport //DETALHADO
          else
          if (RadioGroupDetalhes.ItemIndex = 1) and (RadioGroupDetalhes.Enabled) then
            dmRel.frxV01SaidaProdutosAgP.PrepareReport//AGRUPADO
          else
          if CheckBoxTerminal.Checked then
            dmRel.frxV01SaidaProdutosPdvP.PrepareReport;//POR TERMINAL
        end;//saida de produtos em pedidos no per�odo
        1:begin//pedidos efetuados por per�odo
          dmRel.frxV02PedidosEfetuadosP.PrepareReport;
        end;//pedidos efetuados por per�odo
        2:begin//pedidos com forma de pagamento
          dmRel.frxV03PedidoscomFormaPg.PrepareReport;
        end;//pedidos com forma de pagamento
        3:begin//Pedidos com Lucro
          dmRel.frxV04PedidosComLucro.PrepareReport;
        end;//Pedidos com Lucro
        4:begin//Pedidos com Lucro por grupo
          if (RadioGroupDetalhes.ItemIndex = 0) then
            dmRel.frxV05PedidosComLucroDet.PrepareReport
          else
          if (RadioGroupDetalhes.ItemIndex = 1) then
            dmRel.frxV05PedidosComLucroAgr.PrepareReport;
        end;//Pedidos com Lucro por grupo
        5:begin//quebra no per�odo V06
          dmRel.frxV06QuebraNoPeriodo.PrepareReport;
        end;//quebre no periodo V06
        6:begin//pedidos com tipo de pagamento v07
          case RadioGroupDetalhes.ItemIndex of
            0:  dmRel.frxV07PedidosComTipoPgDet.PrepareReport;
            1:  dmRel.frxV07PedidosComTipoPgAgr.PrepareReport;
          end;
        end;//pedidos com tipo de pagamento v07
        7:begin//V08Vendas faturadas no Periodo
          dmRel.frxV08VendasFatPeriodo.PrepareReport;
        end;//V08Vendas faturadas no Periodo
        8:begin//V09 transferencias no periodo
          dmRel.frxV09TransferenciasNoPeriodo.PrepareReport;
        end;//V09 transferencias no periodo
      end;
    end;//da categoria sa�das = 4
    5:begin//da categoria contas a pagar
      case CmbRelatorio.ItemIndex of
        0://Contas a pagar com vencimento no per�odo
        begin
          //dmRel.frxCP01ContasAPagarVP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CP01_ContasAPagarVP.fr3');
          dmRel.frxCP01ContasAPagarVP.PrepareReport;
        end;
        1://contas pagas no per�odo
        begin
          //dmRel.frxCP02ContasPagasP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CP02_ContasPagasP.fr3');
          dmRel.frxCP02ContasPagasP.PrepareReport;
        end;
      end;
    end;//da categoria contas a pagar
    6:begin//Contas a receber
      case CmbRelatorio.ItemIndex of
        0://Cheques liquidados no per�odo
        begin
          //dmRel.frxCR01ChequesLiquidadosP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR01_ChequesLiquidadosP.fr3');
          dmRel.frxCR01ChequesLiquidadosP.PrepareReport;

        end;//cheques liquidados no per�odo
        1://cheques com vencimento no per�odo
        begin
          //dmRel.frxCR02ChequesComVencP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR02_ChequesComVencP.fr3');
          dmRel.frxCR02ChequesComVencP.PrepareReport;
        end;
        2://credi�rios liquidados no per�odo
        begin
          //dmRel.frxCR03CrediariosLiquidP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR03_CrediariosLiquidP.fr3');
          dmRel.frxCR03CrediariosLiquidP.PrepareReport;
        end;//credi�rios liquidados no per�odo
        3://crediarios com vencimento no periodo
        begin
          //dmRel.frxCR04CrediariosComVencP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR04_CrediariosComVencP.fr3');
          dmRel.frxCR04CrediariosComVencP.PrepareReport;
        end;//crediarios com vencimento no periodo
        4://boletos liquidados no periodo
        begin
          //dmRel.frxCR05BoletosLiquidP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR05_BoletosLiquidP.fr3');
          dmRel.frxCR05BoletosLiquidP.PrepareReport;
        end;//boletos liquidados no periodo
        5://boletos com vencimento no periodo
        begin
          //dmRel.frxCR06BoletosComVencP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR06_BoletosComVencP.fr3');
          dmRel.frxCR06BoletosComVencP.PrepareReport;
        end;//boletos com vencimento no periodo
        6://recebimentos de contas no per�odo
        begin
          //dmRel.frxCR07RecebimentosDeContasP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR07_RecebimentosDeContasP.fr3');
          dmRel.frxCR07RecebimentosDeContasP.PrepareReport;
        end;//recebimentos de contas no per�odo
        7://Contas a receber do Cliente
        begin
        end;//Contas a receber do Cliente
        8://contas a receber emitidas no periodo
        begin
          //dmRel.frxCR09ContasReceberEmitP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR09_ContasReceberEmitP.fr3');
          dmRel.frxCR09ContasReceberEmitP.PrepareReport;
        end;//contas a receber emitidas no periodo
        9://Cobran�a de titulos vencidos por vendedor
        begin
          //dmRel.frxCR10CobTitulosVencidosVend.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR10_CobTitulosVencidosVend.fr3');
          dmRel.frxCR10CobTitulosVencidosVend.PrepareReport;
        end;//Cobran�a de t�tulos vencidos por vendedor
        10://Cobran�a de titulos abertos por vendedor
        begin
          //dmRel.frxCR11CobTitulosAbertosVend.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR11_CobTitulosAbertosVend.fr3');
          dmRel.frxCR11CobTitulosAbertosVend.PrepareReport;
        end;//Cobran�a de titulos abertos por vendedor
      end;//do case CmbRelatorio.itemindex
    end;//contas a receber
  end;//do case das categorias
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','Categoria',RadioGroupCategoria.ItemIndex);
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','TipoRelatorio',CmbRelatorio.ItemIndex);
  SalvaDateNoRegistro('Software\Focus\Forms\Relatorios','PeriodoDe',DateEditDe.Date);
  SalvaDateNoRegistro('Software\Focus\Forms\Relatorios','PeriodoAte',DateEditAte.Date);
  SalvaBooleanNoRegistro('Software\Focus\Forms\Relatorios','OrdDecrescente',chbDecres.Checked);
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','Ordenacao',ComboBoxOrdena.ItemIndex);
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','Selecao',RadioGroupItems.ItemIndex);

      Grid1.Top:= 481;
      Grid1.Left:= 64;
      CDS.Refresh;
      Grid1.Refresh;


  end;

//Procedimento para editar os campos exibidos para escolha da ordena��o da exibi��o do relat�rio



procedure TFrmPrincipal.BitBtn1Click(Sender: TObject);
begin

  dmRel.frxP02PrecoAlteradoCusto.DesignReport();
end;

procedure TFrmPrincipal.CheckBoxCustoClick(Sender: TObject);
begin
  TipoOrdem;
end;

procedure TFrmPrincipal.BitBtn2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFrmPrincipal.botao_AtualizaClick(Sender: TObject);
begin

  IBOQuery1.Active:= false;
  IBOQuery1.Active:= true;
  CDS.Active:= False;
  CDS.Active:= True;
  CDS.Refresh;
  MontaSql;

  case RadioGroupCategoria.ItemIndex of
    0:begin//categoria produtos
      //testa a sele��o do relat�rio a emitir 0 = P01 - levantamento de estoque
      case CmbRelatorio.ItemIndex of
        0://levantamento de estoque
        begin
          //testa se � para mostrar os valores de custo e de venda, se sim

          {Atribui t�tulo �s colunas do grid}
          Grid1.Columns[0].Title.Caption:='C�digo';
          Grid1.Columns[1].Title.Caption:='Descri��o';
          Grid1.Columns[2].Title.Caption:='Und';
          Grid1.Columns[3].Title.Caption:='Estoque';
          Grid1.Columns[4].Title.Caption:='Valor Custo';
          Grid1.Columns[5].Title.Caption:='Margem';
          Grid1.Columns[6].Title.Caption:='V. Estoque';
          Grid1.Columns[7].Title.Caption:='Valor Venda';
          Grid1.Columns[8].Title.Caption:='V. Venda estoque';
          Grid1.Columns[09].Visible:= False;
          if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP01CompletaUnitario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P01_CompletaUnitario.fr3');// se alterar aqui tem que alterar o que abre no formshow
            dmRel.frxP01CompletaUnitario.PrepareReport;
            Grid1.Update;

          end
          else
          Grid1.Columns[04].Visible:= False;
         { //testa se � para mostrar somente os valores de custo, se sim
          if (CheckBoxCusto.Checked = true) and (CheckBoxVenda.Checked = false) then
          begin
            frxP01CustoUnitario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P01_CustoUnitario.fr3');
            frxP01CustoUnitario.ShowReport(TRUE);
          end
          else}
          //testa se � para mostrar somente os valores de venda, se sim
          if (CheckBoxCusto.Checked = false) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP01VendaUnitario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P01_VendaUnitario.fr3');
            dmRel.frxP01VendaUnitario.PrepareReport;
          end;
        end;//do case = 0 se � o CmbRelatorio.ItemIndex = 0
        1://produtos com pre�os alterados
        begin
          //testa se � p/ exibir produtos que sofreram altera��o dos pre�os, apresentando o pre�o de venda


          Grid1.Columns[5].Visible:= True;
          Grid1.Columns[6].Visible:= True;
          Grid1.Columns[7].Visible:= True;
          Grid1.Columns[0].Title.Caption:='C�digo';
          Grid1.Columns[5].Title.Caption:='Margem';
          Grid1.Columns[6].Title.Caption:='Valor Venda Ant.';
          Grid1.Columns[7].Title.Caption:='Valor Venda Atual';

          Grid1.ReadOnly:= True;

          if  (CheckBoxCusto.Checked) {and (CheckBoxVenda.Checked = true) }then
          begin
         // Grid1.Columns[5].Visible:= False;
         // Grid1.Columns[6].Visible:= False;
        //  Grid1.Columns[7].Visible:= False;
        //  Grid1.Columns[0].Title.Caption:='C�digo';
          Grid1.Columns[1].Title.Caption:='Descri��o';
          Grid1.Columns[2].Title.Caption:='Und';
          Grid1.Columns[3].Title.Caption:='Valor Venda Atual';
          Grid1.Columns[4].Title.Caption:='Valor Venda ANT';

          Grid1.ReadOnly:= True;

          //Grid1.Columns[09].Visible:= False;
            //dmRel.frxP02PrecoAlteradoVenda.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P02_PrecoAlteradoVenda.fr3');
            dmRel.frxP02PrecoAlteradoVenda.PrepareReport;
          end

         { Grid1.Columns[04].Visible:= False; } //***************************
          //testa se � p/ exibir produtos que sofreram altera��o dos pre�os, apresentando o pre�o de custo
          {if (CheckBoxCusto.Checked = true) and (CheckBoxVenda.Checked = false) then
          begin
            frxP02PrecoAlteradoCusto.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P02_PrecoAlteradoCusto.fr3');
            frxP02PrecoAlteradoCusto.ShowReport(TRUE);
          end
          else }
          //testa se � p/ exibir produtos que sofreram altera��o dos pre�os, apresentando o pre�o de custo e venda
          else // if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP02PrecoAlteradoCustoVenda.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P02_PrecoAlteradoCustoVenda.fr3');

            Grid1.Columns[5].Visible:= False;
            Grid1.Columns[6].Visible:= False;
            Grid1.Columns[7].Visible:= False;

            Grid1.Columns[0].Title.Caption:='C�digo';
            Grid1.Columns[1].Title.Caption:='Descri��o';
            Grid1.Columns[2].Title.Caption:='UND';
            Grid1.Columns[3].Title.Caption:='Valor Custo Ant.';
            Grid1.Columns[4].Title.Caption:='Valor Custo Atual';
            Grid1.Columns[5].Title.Caption:='Margem';
            Grid1.Columns[6].Title.Caption:='Valor Venda Ant.';
            Grid1.Columns[7].Title.Caption:='Valor Venda Atual';

            Grid1.ReadOnly:= True;

            //Grid1.Columns[5].Title.Caption:='';

            dmRel.frxP02PrecoAlteradoCustoVenda.PrepareReport;
          end
        {  else
          Grid1.Columns[04].Visible:= False;     }
        end;
        2://quebra do invent�rio referente ao per�odo
        begin

            Grid1.Columns[0].Title.Caption:='Data';
            Grid1.Columns[1].Title.Caption:='C�d.';
            Grid1.Columns[2].Title.Caption:= 'Descri��o';
            Grid1.Columns[3].Title.Caption:= 'Estq. Atual';
            Grid1.Columns[4].Title.Caption:= 'Estq Real';
            Grid1.Columns[5].Title.Caption:= 'Quebra';
            Grid1.Columns[6].Title.Caption:= 'V.Venda';
            Grid1.Columns[7].Title.Caption:= 'Valor Total';
            Grid1.Columns[8].Visible:= False;
            Grid1.Columns[9].Visible:= False;
            Grid1.ReadOnly:= True;

          //dmRel.frxP03QuebraInventario.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P03_QuebraInventarioRefP.fr3');
          dmRel.frxP03QuebraInventario.PrepareReport;
        end;
        3://produtos para troca
        begin
          Grid1.Columns[0].Title.Caption:='C�digo';
          Grid1.Columns[1].Title.Caption:='Descri��o';
          Grid1.Columns[2].Title.Caption:='Und';
          Grid1.Columns[3].Title.Caption:='Quantidade';
          Grid1.Columns[4].Title.Caption:='Valor Total';
          Grid1.ReadOnly:= True;

          //dmRel.frxP04ProdutosTroca.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P04_ProdutosTroca.fr3');
          dmRel.frxP04ProdutosTroca.PrepareReport;
        end;
        4://tabela de pre�os
        begin
          if (CheckBoxCusto.Checked = true) {and (CheckBoxVenda.Checked = true) }then
          begin
            //dmRel.frxP05TabelaPrecoCustoVenda.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\P05_TabelaPrecoCustoVenda.fr3');
            dmRel.frxP05TabelaPrecoCustoVenda.PrepareReport;
          end;
        end;
        5://tabela de produtos por fornecedor
        begin
          dmRel.frxP06ProdutosPorFornecedor.PrepareReport;
        end;
        6://tabela de fornecedores por produto
        begin
          dmRel.frxP07FornecedoresPorProduto.PrepareReport;
        end;
        7://m�dia de vendas referente a x dias
        begin
          dmRel.frxP08MediaVendasReferenteP.PrepareReport;
        end;//m�dia de vendas referente a x dias
        9://produtos com pre�os n�o conciliados para o pdv
        begin
          Grid1.ReadOnly:= True;
          if (CheckBoxCusto.Checked) and (CheckBoxBal.Checked) then
          begin
            Grid1.Columns[0].Title.Caption:='C�digo';
            Grid1.Columns[1].Title.Caption:= 'Balan�a';
            Grid1.Columns[2].Title.Caption:='Descri��o';
            Grid1.Columns[3].Title.Caption:='Und';
            Grid1.Columns[4].Title.Caption:= 'Pre�o Custo';
            Grid1.Columns[5].Title.Caption:='Pre�o Venda';

            dmRel.frxP10ProdPrecoNaoConciliadoPDV.PrepareReport;
          end
          else
          if (CheckBoxCusto.Checked) and (CheckBoxBal.Checked = false) then
          begin
            Grid1.Columns[1].Visible:= False;
            Grid1.Columns[0].Title.Caption:='C�digo';
            Grid1.Columns[1].Title.Caption:= 'Balan�a';
            Grid1.Columns[2].Title.Caption:='Descri��o';
            Grid1.Columns[3].Title.Caption:='Und';
            Grid1.Columns[4].Title.Caption:= 'Pre�o Custo';
            Grid1.Columns[5].Title.Caption:='Pre�o Venda';

            dmRel.frxP10ProdPrecoNaoConciliadoPDVSBal.PrepareReport;
          end
          else
          if (CheckBoxCusto.Checked = false) and (CheckBoxBal.Checked) then
          begin
            Grid1.Columns[4].Visible:= False;
            Grid1.Columns[0].Title.Caption:='C�digo';
            Grid1.Columns[1].Title.Caption:= 'Balan�a';
            Grid1.Columns[2].Title.Caption:='Descri��o';
            Grid1.Columns[3].Title.Caption:='Und';
            Grid1.Columns[4].Title.Caption:= 'Pre�o Custo';
            Grid1.Columns[5].Title.Caption:='Pre�o Venda';

            dmRel.frxP10ProdPrecoNaoConciliadoPDVSemCusto.PrepareReport;
          end
          else
          if (CheckBoxCusto.Checked = false) and (CheckBoxBal.Checked = false) then
          begin
            Grid1.Columns[4].Visible:= False;
            Grid1.Columns[1].Visible:= False;
            Grid1.Columns[0].Title.Caption:='C�digo';
            Grid1.Columns[1].Title.Caption:= 'Balan�a';
            Grid1.Columns[2].Title.Caption:='Descri��o';
            Grid1.Columns[3].Title.Caption:='Und';
            Grid1.Columns[4].Title.Caption:= 'Pre�o Custo';
            Grid1.Columns[5].Title.Caption:='Pre�o Venda';


            dmRel.frxP10ProdPrecoNaoConciliadoPDVSemCustoBal.PrepareReport;
          end;
        end;//produtos com pre�os n�p conciliados para o pdv
        10://formul�rio para invent�rio
        begin
          if CheckBoxBal.Checked then//mostra o campo balan�a no relat�rio
          begin
            Grid1.Columns[0].Title.Caption:= 'C�digo';
            Grid1.Columns[1].Title.Caption:= 'Balan�a';
            Grid1.Columns[2].Title.Caption:= 'Descri��o';
            Grid1.Columns[3].Title.Caption:= 'Und';
            Grid1.Columns[4].Title.Caption:= 'Estoque';

            dmRel.frxP11FormInventarioBal.PrepareReport;
          end
          else
          begin
            Grid1.Columns[1].Visible:= False;
            Grid1.Columns[0].Title.Caption:= 'C�digo';
            Grid1.Columns[1].Title.Caption:= 'Balan�a';
            Grid1.Columns[2].Title.Caption:= 'Descri��o';
            Grid1.Columns[3].Title.Caption:= 'Und';
            Grid1.Columns[4].Title.Caption:= 'Estoque';

            dmRel.frxP11FormInventario.PrepareReport;
          end;
        end;//formul�rio para invent�rio
        11://produtos por fornecedor
        begin
          dmRel.frxP12ProdutosPorFornecedor.PrepareReport;
        end;//produtos por fornecedor
        12://levantamento de estoque CUSTO
        begin
         {*******************************************}
         {*******VERIFICAR SE ESTE EST� CERTO********}
         {*******************************************}

          Grid1.Columns[0].Title.Caption:= 'C�digo';
          Grid1.Columns[1].Title.Caption:= 'Descri��o';
          Grid1.Columns[2].Title.Caption:= 'Und';
          Grid1.Columns[3].Title.Caption:= 'Estoque';
          Grid1.Columns[4].Title.Caption:= 'Valor Custo';
          Grid1.Columns[5].Title.Caption:= 'Valor do Estoque';

          dmRel.frxP13LevantamentoEstoqueCusto.PrepareReport;
        end;

      end;//do case
      SalvaBooleanNoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','ExibeCusto',CheckBoxCusto.Checked);
      {SalvaBooleanNoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','ExibeVenda',CheckBoxVenda.Checked);}
      SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios\Produtos\P01','TipoEstoque',ComboBoxTipoEst.ItemIndex);
    end;//da categoria = produtos
    1:begin//categoria = clientes
      case CmbRelatorio.ItemIndex of
        0://Clientes com Contas Abertas
        begin
          //dmRel.frxC01ClientesComContasAbertas.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C01_ClientesComContasAbertas.fr3');
          dmRel.frxC01ClientesComContasAbertas.PrepareReport;
        end;
        1:begin
          //dmRel.frxC02ClientesComContasemAtraso.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C02_ClientesComContasemAtraso.fr3');
          dmRel.frxC02ClientesComContasemAtraso.PrepareReport;
        end;
        2:begin
          //frxC03ClientesComSaldoAcimaLimite.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C03_ClientesComSaldoAcimaLimite.fr3');
          dmRel.frxC03ClientesComSaldoAcimaLimite.PrepareReport;
        end;
        3:begin
          //dmRel.frxC04ClientesBloqueados.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C04_ClientesBloqueados.fr3');
          dmRel.frxC04ClientesBloqueados.PrepareReport;
        end;
        4:begin
          //dmRel.frxC05ClientesSimp.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C05_ClientesSimplificados.fr3');
          dmRel.frxC05ClientesSimp.PrepareReport;
        end;
        5:begin
          //dmRel.frxC06SaldoMaior.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C06_SaldoMaior.fr3');
          dmRel.frxC06SaldoMaior.PrepareReport;
        end;
        6:begin
          //dmRel.frxC07AniversariantesP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C07_AniversariantesP.fr3');
          dmRel.frxC07AniversariantesP.PrepareReport;
        end;
        7:begin
          dmRel.frxC08ExtratoCliente.PrepareReport;
        end;
        8:begin
          dmRel.frxC09ProdutosPorCliente.PrepareReport;
        end;
        9:begin
          if (RadioGroupDetalhes.ItemIndex = 0) then
            dmRel.frxC10ClientesPorVendedorDet.PrepareReport
          else
          if (RadioGroupDetalhes.ItemIndex = 1) then
            dmRel.frxC10ClientesPorVendedorAgr.PrepareReport;
        end;
        10:begin
          //dmRel.frxC11MediadeComprasP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\C11_MediadeComprasP.fr3');
          dmRel.frxC11MediadeComprasP.PrepareReport;
        end;
        11:begin
          dmRel.frxC12ClientesPorProduto.PrepareReport;
        end;
        12:begin
          dmRel.frxC13ClientesPorPraca.PrepareReport;
        end;
      end;
    end;
    2:begin//categoria fornecedores
      case CmbRelatorio.ItemIndex of
        0://Valores comprados no per�odo
        begin
          //dmRel.frxF01ValoresCompradosP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\F01_ValoresCompradosP.fr3');
          dmRel.frxF01ValoresCompradosP.PrepareReport;
        end;
        1://Fornecedores Simplificado
        begin
          //dmRel.frxF02FornecedoresSimp.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\F02_FornecedoresSimp.fr3');
          dmRel.frxF02FornecedoresSimp.PrepareReport;
        end;
      end;//do case do cmbRelatorio
    end;//da categoria fornecedores
    3:begin//da categoria entradas
      case CmbRelatorio.ItemIndex of
        0://entradas de NF no Per�odo
        begin
          dmRel.frxE01EntradasNFP.PrepareReport;
        end;//entradas de NF no Per�odo
        1://transferencias (entrada) no per�odo
        begin
          dmRel.frxE02TransferenciaEntP.PrepareReport;
        end;
      end;
    end;//da categoria entradas
    4:begin//da categoria sa�das
    {######################################################}
    {###########IREI TRABALHAR AQUI AMANH� ################}
    {######################################################}

      case CmbRelatorio.ItemIndex of
        0:begin//saida de produtos em pedidos no per�odo
          if (RadioGroupDetalhes.ItemIndex = 0) and (RadioGroupDetalhes.Enabled) then
          begin
            Grid1.Columns[0].Title.Caption:='Data';
            Grid1.Columns[1].Title.Caption:= 'C�d.';
            Grid1.Columns[2].Title.Caption:= 'Descri��o';
            Grid1.Columns[3].Title.Caption:= 'Unidade';
            Grid1.Columns[4].Title.Caption:= 'Quantidade';
            Grid1.Columns[5].Title.Caption:= 'Pre�o Unit.';
            Grid1.Columns[6].Title.Caption:= 'Desconto';
            Grid1.Columns[7].Title.Caption:= 'Valor Total';
            Grid1.Columns[8].Title.Caption:= 'PDV';

            dmRel.frxV01SaidaProdutosDP.PrepareReport; //DETALHADO
          end
          else
          if (RadioGroupDetalhes.ItemIndex = 1) and (RadioGroupDetalhes.Enabled) then
            dmRel.frxV01SaidaProdutosAgP.PrepareReport//AGRUPADO
          else
          if CheckBoxTerminal.Checked then
            dmRel.frxV01SaidaProdutosPdvP.PrepareReport;//POR TERMINAL
        end;//saida de produtos em pedidos no per�odo
        1:begin//pedidos efetuados por per�odo
          dmRel.frxV02PedidosEfetuadosP.PrepareReport;
        end;//pedidos efetuados por per�odo
        2:begin//pedidos com forma de pagamento
          dmRel.frxV03PedidoscomFormaPg.PrepareReport;
        end;//pedidos com forma de pagamento
        3:begin//Pedidos com Lucro
          dmRel.frxV04PedidosComLucro.PrepareReport;
        end;//Pedidos com Lucro
        4:begin//Pedidos com Lucro por grupo
          if (RadioGroupDetalhes.ItemIndex = 0) then
            dmRel.frxV05PedidosComLucroDet.PrepareReport
          else
          if (RadioGroupDetalhes.ItemIndex = 1) then
            dmRel.frxV05PedidosComLucroAgr.PrepareReport;
        end;//Pedidos com Lucro por grupo
        5:begin//quebra no per�odo V06
          dmRel.frxV06QuebraNoPeriodo.PrepareReport;
        end;//quebre no periodo V06
        6:begin//pedidos com tipo de pagamento v07
          case RadioGroupDetalhes.ItemIndex of
            0:  dmRel.frxV07PedidosComTipoPgDet.PrepareReport;
            1:  dmRel.frxV07PedidosComTipoPgAgr.PrepareReport;
          end;
        end;//pedidos com tipo de pagamento v07
        7:begin//V08Vendas faturadas no Periodo
          dmRel.frxV08VendasFatPeriodo.PrepareReport;
        end;//V08Vendas faturadas no Periodo
        8:begin//V09 transferencias no periodo
          dmRel.frxV09TransferenciasNoPeriodo.PrepareReport;
        end;//V09 transferencias no periodo
      end;
    end;//da categoria sa�das = 4
    5:begin//da categoria contas a pagar
      case CmbRelatorio.ItemIndex of
        0://Contas a pagar com vencimento no per�odo
        begin
          //dmRel.frxCP01ContasAPagarVP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CP01_ContasAPagarVP.fr3');
          dmRel.frxCP01ContasAPagarVP.PrepareReport;
        end;
        1://contas pagas no per�odo
        begin
          //dmRel.frxCP02ContasPagasP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CP02_ContasPagasP.fr3');
          dmRel.frxCP02ContasPagasP.PrepareReport;
        end;
      end;
    end;//da categoria contas a pagar
    6:begin//Contas a receber
      case CmbRelatorio.ItemIndex of
        0://Cheques liquidados no per�odo
        begin
          //dmRel.frxCR01ChequesLiquidadosP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR01_ChequesLiquidadosP.fr3');
          dmRel.frxCR01ChequesLiquidadosP.PrepareReport;

        end;//cheques liquidados no per�odo
        1://cheques com vencimento no per�odo
        begin
          //dmRel.frxCR02ChequesComVencP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR02_ChequesComVencP.fr3');
          dmRel.frxCR02ChequesComVencP.PrepareReport;
        end;
        2://credi�rios liquidados no per�odo
        begin
          //dmRel.frxCR03CrediariosLiquidP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR03_CrediariosLiquidP.fr3');
          dmRel.frxCR03CrediariosLiquidP.PrepareReport;
        end;//credi�rios liquidados no per�odo
        3://crediarios com vencimento no periodo
        begin
          //dmRel.frxCR04CrediariosComVencP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR04_CrediariosComVencP.fr3');
          dmRel.frxCR04CrediariosComVencP.PrepareReport;
        end;//crediarios com vencimento no periodo
        4://boletos liquidados no periodo
        begin
          //dmRel.frxCR05BoletosLiquidP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR05_BoletosLiquidP.fr3');
          dmRel.frxCR05BoletosLiquidP.PrepareReport;
        end;//boletos liquidados no periodo
        5://boletos com vencimento no periodo
        begin
          //dmRel.frxCR06BoletosComVencP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR06_BoletosComVencP.fr3');
          dmRel.frxCR06BoletosComVencP.PrepareReport;
        end;//boletos com vencimento no periodo
        6://recebimentos de contas no per�odo
        begin
          //dmRel.frxCR07RecebimentosDeContasP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR07_RecebimentosDeContasP.fr3');
          dmRel.frxCR07RecebimentosDeContasP.PrepareReport;
        end;//recebimentos de contas no per�odo
        7://Contas a receber do Cliente
        begin
        end;//Contas a receber do Cliente
        8://contas a receber emitidas no periodo
        begin
          //dmRel.frxCR09ContasReceberEmitP.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR09_ContasReceberEmitP.fr3');
          dmRel.frxCR09ContasReceberEmitP.PrepareReport;
        end;//contas a receber emitidas no periodo
        9://Cobran�a de titulos vencidos por vendedor
        begin
          //dmRel.frxCR10CobTitulosVencidosVend.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR10_CobTitulosVencidosVend.fr3');
          dmRel.frxCR10CobTitulosVencidosVend.PrepareReport;
        end;//Cobran�a de t�tulos vencidos por vendedor
        10://Cobran�a de titulos abertos por vendedor
        begin
          //dmRel.frxCR11CobTitulosAbertosVend.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Relat�rios\CR11_CobTitulosAbertosVend.fr3');
          dmRel.frxCR11CobTitulosAbertosVend.PrepareReport;
        end;//Cobran�a de titulos abertos por vendedor
      end;//do case CmbRelatorio.itemindex
    end;//contas a receber
  end;//do case das categorias
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','Categoria',RadioGroupCategoria.ItemIndex);
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','TipoRelatorio',CmbRelatorio.ItemIndex);
  SalvaDateNoRegistro('Software\Focus\Forms\Relatorios','PeriodoDe',DateEditDe.Date);
  SalvaDateNoRegistro('Software\Focus\Forms\Relatorios','PeriodoAte',DateEditAte.Date);
  SalvaBooleanNoRegistro('Software\Focus\Forms\Relatorios','OrdDecrescente',chbDecres.Checked);
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','Ordenacao',ComboBoxOrdena.ItemIndex);
  SalvaIntegerNoRegistro('Software\Focus\Forms\Relatorios','Selecao',RadioGroupItems.ItemIndex);

  Grid1.Top:= 481;
  Grid1.Left:= 64;
  CDS.Refresh;
  Grid1.Refresh;


end;

procedure TFrmPrincipal.CmbRelatorioChange(Sender: TObject);
var
  ultimo_gerado: integer;
begin
  MontaSQL;
  TipoOrdem;
  ultimo_gerado :=  LeIntegerDoRegistro('Software\Focus\Forms\Relatorios','TipoRelatorio', 0);
  if ultimo_gerado <> CmbRelatorio.ItemIndex then
  begin
    ComboBoxOrdena.ItemIndex := 0;
    chbDecres.Checked := false;
  end;
end;

procedure TFrmPrincipal.CheckBoxDeHojeClick(Sender: TObject);
begin
  if CheckBoxDeHoje.Checked = true then
    DateEditDe.Date := Date;
end;

procedure TFrmPrincipal.CheckBoxAteHojeClick(Sender: TObject);
begin
  if CheckBoxAteHoje.Checked = true then
    DateEditAte.Date := Date;
end;

procedure TFrmPrincipal.DateEditDeChange(Sender: TObject);
begin
  if DateEditDe.Date <> Date then
    CheckBoxDeHoje.Checked := false
  else
    CheckBoxDeHoje.Checked := true;
end;

procedure TFrmPrincipal.DateEditAteChange(Sender: TObject);
begin
  if DateEditAte.Date <> Date then
    CheckBoxAteHoje.Checked := false
  else
    CheckBoxAteHoje.Checked := true;

end;

procedure TFrmPrincipal.RadioGroupCategoriaClick(Sender: TObject);
begin
  if RadioGroupCategoria.ItemIndex <> ItemIndexCategoria then
  begin
    MontaComboRelatorios;
    MontaSql;
    TipoOrdem;
    ComboBoxOrdena.ItemIndex := 0;
  end;


end;



procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin

  Application.CreateForm(TdmRel,dmRel);
  Application.CreateForm(TDataModule1,DataModule1);
  IBOQuery2.Active:= True;



end;

procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmRel.Free;
  DataModule1.Free;
end;

procedure TFrmPrincipal.CheckBoxNumInventClick(Sender: TObject);
begin
  AtivaLeNumInvent;
  if not CheckBoxNumInvent.Checked  then
    AtivaPeriodo;
end;

procedure TFrmPrincipal.RadioGroupDetalhesClick(Sender: TObject);
begin
  TipoOrdem;
end;

procedure TFrmPrincipal.CheckBoxTerminalClick(Sender: TObject);
begin
  if CheckBoxTerminal.Checked then
  begin
    LigaComponente(FrmPrincipal,edtTerminal);
    RadioGroupDetalhes.Enabled := false;
  end
  else
  begin
    RadioGroupDetalhes.Enabled := true;
    DesligaComponente(FrmPrincipal,edtTerminal);
  end;
end;

procedure TFrmPrincipal.CheckBoxVendedorClick(Sender: TObject);
begin
  if CheckBoxVendedor.Checked then
    LigaComponente(FrmPrincipal,edtVendedor)
  else
    DesligaComponente(FrmPrincipal,edtVendedor);
end;

procedure TFrmPrincipal.CheckBoxClienteClick(Sender: TObject);
begin
  if CheckBoxCliente.Checked then
    LigaComponente(FrmPrincipal,edtCliente)
  else
    DesligaComponente(FrmPrincipal,edtCliente);
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
//  Application.CreateForm(TfrmPesquisa,frmPesquisa);
 // frmPesquisa.ShowModal;
 // frmPesquisa.Free;
end;

procedure TFrmPrincipal.SQLVendedor;
begin
{  with frmPesquisa.IBOQuery do
  begin
    Active := false;
    if not frmPesquisa.IBOTransaction.InTransaction then frmPesquisa.IBOTransaction.StartTransaction;
    SQL.Clear;
    SQL.Add('Select cd_usuario as Codigo,');
    SQL.Add('nm_usuario as Nome,');
    SQL.Add('apelido as Apelido,');
    SQL.Add('login as Login');
    SQL.Add('From usuarios');
  end;
  frmPesquisa.IBOQuery.Open;}
end;

procedure TFrmPrincipal.RadioGroupTiposPGClick(Sender: TObject);
begin
  MontaSQL;
end;

procedure TFrmPrincipal.frxUserDataSetDatasGetValue(const VarName: String;
  var Value: Variant);
begin
  //aqui criamos as variaveis datade e dataate que ser�o utilizadas nos formul�rios
  if CompareText(VarName,'DataAte') = 0 then
    Value := DateToStr(DateEditAte.Date);
  if CompareText(VarName,'DataDe') = 0 then
    Value := DateToStr(DateEditDe.Date);
end;

procedure TFrmPrincipal.frxUserDataSetNumGetValue(const VarName: String;
  var Value: Variant);
var
  aux: variant;
begin
  //se estiver tratando de inventarios com numero
  case RadioGroupCategoria.ItemIndex of
    0:begin
      case CmbRelatorio.ItemIndex of
        2: begin
          if CompareText(VarName,'Num') = 0 then
            Value := edtNInvent.Text;
        end;
        5:begin
          if CompareText(VarName,'Cod') = 0 then
            Value := edtFornecedor.Edit1Text;
          if CompareText(VarName,'Nome') = 0 then
            Value := edtFornecedor.Edit2Text;
        end;
        6:begin
          if CompareText(VarName,'Cod') = 0 then
            Value := edtProduto.Edit1Text;
          if CompareText(VarName,'Nome') = 0 then
            Value := edtProduto.Edit2Text;
        end;
        7: begin  //se for relat�rio de per�odos de dias - em quantidade de dias
          if CompareText(VarName,'Num') = 0 then
            Value := edtDias.Text;
        end;
        11: begin //se for relat�rio de produtos por fornecedor
          if CompareText(VarName,'Cod') = 0 then
            Value := edtFornecedor.Edit1Text;
          if CompareText(VarName,'Nome') = 0 then
            Value := edtFornecedor.Edit2Text;
        end;
      end; //do case do cmbrelatorio
    end; // do begin do index =0
    1:begin
      case CmbRelatorio.ItemIndex of
        5: begin
          if CompareText(VarName,'Num') = 0 then
            Value := edtValor.Text;
        end;
        7,8: begin
          if CompareText(VarName,'Cod') = 0 then
            Value := edtCliente.Edit1Text;
          if CompareText(VarName,'Nome') = 0 then
            Value := edtCliente.Edit2Text;
        end;
        9:begin
          if CompareText(VarName,'Cod') = 0 then
            value := edtVendedor.Edit1Text;
          if CompareText(VarName,'Nome') = 0 then
            value := edtVendedor.Edit2Text;
          if (RadioGroupDetalhes.ItemIndex = 0) then
          begin
            if CompareText(VarName,'Detalhe') = 0 then
              Value := 'Detalhado';
          end
          else
          if (RadioGroupDetalhes.ItemIndex = 1) then
          begin
            if CompareText(VarName,'Detalhe') = 0 then
              Value := 'Resumido';
          end;
        end;
        11:begin
          if CompareText(VarName,'Cod') = 0 then
            value := edtProduto.Edit1Text;
          if CompareText(VarName,'Nome') = 0 then
            value := edtProduto.Edit2Text;
        end;
        12: begin
          if CompareText(VarName,'Cod') = 0 then
            Value := edtPraca.Edit1Text;
          if CompareText(VarName,'Nome') = 0 then
            Value := edtPraca.Edit2Text;
        end;
      end;
    end;//do begin do index = 1
    4:begin
      case CmbRelatorio.ItemIndex of
        0: begin
          if CompareText(VarName,'Num') = 0 then
            Value := edtTerminal.Text;
        end;
        1: begin
          if checkboxTerminal.Checked = true then
          begin
            if CompareText(VarName,'Num') = 0 then
              Value := '- Terminal n�.'+ edtTerminal.Text;
          end
          else
            if CompareText(VarName,'Num') = 0 then
              Value := '';
        end;//case 1
        2:begin
          if checkboxTerminal.Checked = true then
          begin
            if CompareText(VarName,'Num') = 0 then
              Value := '- Terminal n�.'+ edtTerminal.Text;
          end
          else
            if CompareText(VarName,'Num') = 0 then
              Value := '';
          case RadioGroupTiposPg.ItemIndex of
            0: aux := '';
            1: aux := 'no Cart�o';              
            2: aux := 'em Cheque';   
            3: aux := 'no Credi�rio';
            4: aux := 'em Dinheiro';
            5: aux := 'em Ticket';
          end;
          if CompareText(VarName,'TipoPG') = 0 then
            Value := aux;
        end;//case2
        6:begin
          if (RadioGroupDetalhes.ItemIndex = 0) then
          begin
            if CompareText(VarName,'Detalhe') = 0 then
              Value := 'Detalhado';
          end
          else
          if (RadioGroupDetalhes.ItemIndex = 1) then
          begin
            if CompareText(VarName,'Detalhe') = 0 then
              Value := 'Resumido';
          end;
        end;
      end;
    end;//do begin do index = 4
  end;//do case
end;


procedure TFrmPrincipal.frxUserDataSetSituacaoGetValue(
  const VarName: String; var Value: Variant);
begin
  case RadioGroupCategoria.ItemIndex of
    0,1,2,3,5,6: begin
      if CompareText(VarName,'tipo') = 0 then
      begin
        if RadioGroupItems.ItemIndex = 0 then
          Value := 'Ativos'
        else
        if RadioGroupItems.ItemIndex = 1 then
          Value := 'Inativos'
        else
          Value := '';
      end;
    end;
    4:begin
      if CompareText(VarName,'tipo') = 0 then
      begin
        if RadioGroupTipoFatura.ItemIndex = 0 then
          Value := 'Faturados'
        else
        if RadioGroupTipoFatura.ItemIndex = 1 then
          Value := 'Abertos'
        else
          Value := '';
      end;
    end;
  end;
end;

end.

