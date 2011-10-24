unit UDtmRel;

interface

uses
  SysUtils, Classes, frxClass;

type
  TdmRel = class(TDataModule)
    frxP01CompletaUnitario: TfrxReport;
    frxP01CustoUnitario: TfrxReport;
    frxP01VendaUnitario: TfrxReport;
    frxP02PrecoAlteradoVenda: TfrxReport;
    frxP02PrecoAlteradoCusto: TfrxReport;
    frxP02PrecoAlteradoCustoVenda: TfrxReport;
    frxP03QuebraInventario: TfrxReport;
    frxP04ProdutosTroca: TfrxReport;
    frxP05TabelaPrecoCustoVenda: TfrxReport;
    frxP05TabelaPrecoVenda: TfrxReport;
    frxC01ClientesComContasAbertas: TfrxReport;
    frxC02ClientesComContasemAtraso: TfrxReport;
    frxC03ClientesComSaldoAcimaLimite: TfrxReport;
    frxC04ClientesBloqueados: TfrxReport;
    frxC05ClientesSimp: TfrxReport;
    frxC06SaldoMaior: TfrxReport;
    frxC07AniversariantesP: TfrxReport;
    frxF01ValoresCompradosP: TfrxReport;
    frxCP01ContasAPagarVP: TfrxReport;
    frxCP02ContasPagasP: TfrxReport;
    frxCR01ChequesLiquidadosP: TfrxReport;
    frxCR02ChequesComVencP: TfrxReport;
    frxCR03CrediariosLiquidP: TfrxReport;
    frxCR04CrediariosComVencP: TfrxReport;
    frxCR05BoletosLiquidP: TfrxReport;
    frxCR06BoletosComVencP: TfrxReport;
    frxCR07RecebimentosDeContasP: TfrxReport;
    frxCR08ContasReceberCliente: TfrxReport;
    frxCR09ContasReceberEmitP: TfrxReport;
    frxCR10CobTitulosVencidosVend: TfrxReport;
    frxCR11CobTitulosAbertosVend: TfrxReport;
    frxF02FornecedoresSimp: TfrxReport;
    frxC11MediadeComprasP: TfrxReport;
    frxP08MediaVendasReferenteP: TfrxReport;
    frxP10ProdPrecoNaoConciliadoPDV: TfrxReport;
    frxP10ProdPrecoNaoConciliadoPDVSemCusto: TfrxReport;
    frxP10ProdPrecoNaoConciliadoPDVSBal: TfrxReport;
    frxP10ProdPrecoNaoConciliadoPDVSemCustoBal: TfrxReport;
    frxP11FormInventario: TfrxReport;
    frxP11FormInventarioBal: TfrxReport;
    frxP13LevantamentoEstoqueCusto: TfrxReport;
    frxE01EntradasNFP: TfrxReport;
    frxV01SaidaProdutosDP: TfrxReport;
    frxV01SaidaProdutosAgP: TfrxReport;
    frxV01SaidaProdutosPdvP: TfrxReport;
    frxV02PedidosEfetuadosP: TfrxReport;
    frxV03PedidoscomFormaPg: TfrxReport;
    frxP03: TfrxReport;
    frxP06ProdutosPorFornecedor: TfrxReport;
    frxP07FornecedoresPorProduto: TfrxReport;
    frxP12ProdutosPorFornecedor: TfrxReport;
    frxC08ExtratoCliente: TfrxReport;
    frxC09ProdutosPorCliente: TfrxReport;
    frxC10ClientesPorVendedorDet: TfrxReport;
    frxC10ClientesPorVendedorAgr: TfrxReport;
    frxC12ClientesPorProduto: TfrxReport;
    frxC13ClientesPorPraca: TfrxReport;
    frxE02TransferenciaEntP: TfrxReport;
    frxV04PedidosComLucro: TfrxReport;
    frxV05PedidosComLucroDet: TfrxReport;
    frxV05PedidosComLucroAgr: TfrxReport;
    frxV06QuebraNoPeriodo: TfrxReport;
    frxV07PedidosComTipoPgDet: TfrxReport;
    frxV08VendasFatPeriodo: TfrxReport;
    frxV09TransferenciasNoPeriodo: TfrxReport;
    frxV07PedidosComTipoPgAgr: TfrxReport;
    procedure frxP02PrecoAlteradoCustoVendaGetValue(const VarName: String;
      var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRel: TdmRel;

implementation

uses UPrincipal;

{$R *.dfm}

procedure TdmRel.frxP02PrecoAlteradoCustoVendaGetValue(
  const VarName: String; var Value: Variant);
var
  datade, dataate: string;
begin
  datade := DateToStr(FrmPrincipal.DateEditDe.Date);
  dataate := DateToStr(FrmPrincipal.DateEditAte.Date);
end;

end.
