unit UFocusForms;

interface

uses
  SysUtils, Classes, Dialogs, Windows, DUtilit, Gauges, Controls, Forms, DB,
  StdCtrls, Graphics, ExtCtrls, UComum, IB_StoredProc, IB_Components;

type
  TFF = class(TDataModule)
  private
  public
    function  PegaGrade(pgCdProduto: Integer): boolean;
    procedure InfoSplash(isMensagem: String);
    function  RegistraVenda(rvRegPed: TRegPedido; rvEstadoDaVenda:TEstadoDaVenda; rvGauge:TGauge): Boolean;
    procedure MostraResultadoPromocao(mrForm:TForm; mrNumLabel:word; mrRegPromocao:TRegPromocao);
    procedure AjustaTelaPDV(QualForm: TForm);
    procedure MostraItems(miNumDocumento:Integer; miTipoDocumento:char);
  end;

var
  FF: TFF;

implementation

uses UPesquisa, UPesqProduto, UCaixaLivre, UModPesquisa, UPDV, Wwdbgrid, JvLabel,
     MMJPanel, UMostraItensDaConta, IB_Session, UDataMod, UTroco, UCupom,
     UValidacao, USplash, USelecGrade, UAguarde;


{$R *.dfm}

procedure TFF.MostraItems(miNumDocumento:Integer; miTipoDocumento:char);
begin
  try
    if fMostraItensDaConta <> nil then
    begin
      fMostraItensDaConta.Release;
      fMostraItensDaConta := nil;
      Exit;
    end;
  except
  end;

  if miNumDocumento > 0 then
  begin
    Application.CreateForm(TfMostraItensDaConta, fMostraItensDaConta);
    fMostraItensDaConta.Num_Documento := miNumDocumento;
    case miTipoDocumento of
      'P' : fMostraItensDaConta.Chamada := chPedidos;
      'O' : fMostraItensDaConta.Chamada := chOrcamentos;
      'V' : fMostraItensDaConta.Chamada := chVendasFechadas;
    end;
    fMostraItensDaConta.ShowModal;
    fMostraItensDaConta.Release;
    fMostraItensDaConta := nil;
  end;
end;

procedure TFF.AjustaTelaPDV(QualForm:TForm);
var
  i : integer;
  EstaTabela : TIB_Query;
  EstaTransacao : TIB_Transaction;
begin
  if (Modulo <> moPDV) or (fPDV = nil) then exit;
  try
    EstaTabela := TIB_Query.Create(self);
    EstaTransacao := TIB_Transaction.Create(self);
    EstaTabela.IB_Connection := CM.IBTabela.IB_Connection;
    EstaTransacao.IB_Connection := CM.IBTabela.IB_Connection;
    EstaTabela.IB_Transaction := EstaTransacao;

    EstaTabela.Active := false;
    EstaTabela.SQL.Clear;
    EstaTabela.SQL.Add('Select * from CONFTELAPDV');
    if not EstaTabela.Prepared then EstaTabela.Prepare;
    EstaTabela.Active := true;

    with QualForm do
    begin
      for i := 0 to ComponentCount-1 do
      begin
        if (Components[i] is TjvLabel) and ((Components[i] as TControl).Tag = 90) then
          TjvLabel(Components[i]).Font.Color := EstaTabela.FieldByName('PDV_CORLETRA').AsInteger;

        if (Components[i].InheritsFrom(TCustomEdit)) and ((Components[i] as TControl).Tag = 90) then
        begin
          TEdit(Components[i]).Font.Color := EstaTabela.FieldByName('PDV_COREDITLETRA').AsInteger;
          TEdit(Components[i]).Color := EstaTabela.FieldByName('PDV_COREDITFUNDO').AsInteger;
        end;

        if (Components[i] is TwwDBGrid) and ((Components[i] as TControl).Tag = 90) then
        begin
          case StrToChar(EstaTabela.FieldByName('PDV_ESTILOBASE').AsString, 'I') of
            'I' : begin
                    TwwDBGrid(Components[i]).TitleColor := clWhite;
                    TwwDBGrid(Components[i]).PaintOptions.BackgroundBitmap.Bitmap.LoadFromStream(EstaTabela.CreateBlobStream(EstaTabela.FieldByName('PDV_IMGBASE'), bsmRead));
                  end;
            'S' : TwwDBGrid(Components[i]).TitleColor := EstaTabela.FieldByname('PDV_CORBASE').AsInteger;
            'D' : TwwDBGrid(Components[i]).TitleColor := EstaTabela.FieldByname('PDV_CORBASEDEGDE').AsInteger;
          end;
        end;

        if (Components[i] is TMMJPanel) then
        begin
          if (Components[i] as TControl).Tag in [90..99] then
          begin
            TMMJPanel(Components[i]).Background.Picture.BitMap.LoadFromStream(EstaTabela.CreateBlobStream(EstaTabela.FieldByName('PDV_IMGBASE'), bsmRead));
            TMMJPanel(Components[i]).Color := EstaTabela.FieldByname('PDV_CORBASE').AsInteger;
            TMMJPanel(Components[i]).Background.StartColor := EstaTabela.FieldByname('PDV_CORBASEDEGDE').AsInteger;
            TMMJPanel(Components[i]).Background.EndColor   := EstaTabela.FieldByname('PDV_CORBASEDEGPARA').AsInteger;
            case StrToChar(EstaTabela.FieldByname('PDV_ESTILOBASE').AsString, 'I') of
              'I' : TMMJPanel(Components[i]).Background.BackgroundType := btPicture;
              'S' : TMMJPanel(Components[i]).Background.BackgroundType := btDefault;
              'D' : TMMJPanel(Components[i]).Background.BackgroundType := btFill;
            end;
            if(Components[i] as TControl).Tag < 91 then
              if EstaTabela.FieldByname('PDV_BASECANTOSARRED').AsString = 'V' then
                TMMJPanel(Components[i]).Silhuette.Shape.ShapeType := stRoundRectangle
              else
                TMMJPanel(Components[i]).Silhuette.Shape.ShapeType := stRectangle;
          end;

          if(Components[i] as TControl).Tag in [100..109] then
          begin
            TMMJPanel(Components[i]).Background.Picture.BitMap.LoadFromStream(EstaTabela.CreateBlobStream(EstaTabela.FieldByName('PDV_IMGFUNDO'), bsmRead));
            TMMJPanel(Components[i]).Color := EstaTabela.FieldByname('PDV_CORFUNDO').AsInteger;
            TMMJPanel(Components[i]).Background.StartColor := EstaTabela.FieldByname('PDV_CORFUNDODEGDE').AsInteger;
            TMMJPanel(Components[i]).Background.EndColor   := EstaTabela.FieldByname('PDV_CORFUNDODEGPARA').AsInteger;
            case StrToChar(EstaTabela.FieldByname('PDV_ESTILOFUNDO').AsString, 'I') of
              'I'  : TMMJPanel(Components[i]).Background.BackgroundType := btPicture;
              'S'  : TMMJPanel(Components[i]).Background.BackgroundType := btDefault;
              'D'  : TMMJPanel(Components[i]).Background.BackgroundType := btFill;
            end;
          end;

        end; //if
      end; //for
    end; //with
  finally
    CM.FechaTT(EstaTabela);
    EstaTabela.Free;
    EstaTransacao.Free;
  end;
end;

procedure TFF.MostraResultadoPromocao(mrForm:TForm; mrNumLabel:word; mrRegPromocao:TRegPromocao);
var
  S : String;
begin
  if (mrNumLabel <= 5) and (mrRegPromocao.Pontos > 0) then
  begin
    S := '';
    if mrRegPromocao.MostraValor then
      case mrRegPromocao.Unidade of
        'U' : S := FormatCurr(' = qtde. #', mrRegPromocao.ValorTotalPromocao);
        'R' : S := FormatCurr(' = R$ ,0.00', mrRegPromocao.ValorTotalPromocao);
      end;

    S := mrRegPromocao.NomePromocao+S+' = '+FormatCurr('00', mrRegPromocao.Pontos) + ' Pontos';

    TjvLabel(mrForm.FindComponent('lbNomePromocao'+IntToStr(mrNumLabel))).Caption := S;
    TjvLabel(mrForm.FindComponent('lbNomePromocao'+IntToStr(mrNumLabel))).Visible := true;
  end;
end;

function TFF.RegistraVenda(rvRegPed:TRegPedido; rvEstadoDaVenda:TEstadoDaVenda; rvGauge:TGauge):Boolean;
var
  AgoraMesmo : TDateTime;
  DeuErro    : boolean;
  ConferidoEEntregue  : char;
  i : integer;
  S : String;
  DevNum      : Integer;
  DevValor    : Currency;
  DevCliente  : Integer;
  Tentativas  : word;
  TentaDeNovo : boolean;
  TentaDeNovoComOk : Boolean;
  MovimentaCaixa: boolean;
  Origem : String[3];

  TabelaGeral         : TIB_Query;
  TransacaoGeral      : TIB_Transaction;
  TabelaItemsLocal    : TIB_Query;
  TransacaoItemsLocal : TIB_Transaction;
  TABELAVENDA         : TIB_Query;
  TRANSACAOVENDA      : TIB_Transaction;
begin
  TentaDeNovoComOk := false;
  case Modulo of
    moRetaguarda : Origem := 'GER';
    moPDV        : Origem := 'PDV';
  end;

  try
    DeuErro := false;
    if rvGauge <> nil then rvGauge.Progress := 0;
    ConferidoEEntregue := BooleanToChar(not (rvRegPed.Ped_Orc_Venda in ['V']));

    TRANSACAOVENDA := TIB_Transaction.Create(self);          // Tabela e Transação Principal
    TRANSACAOVENDA.IB_Connection := CM.IBTabela.IB_Connection;  // responsável em registrar a venda
    TABELAVENDA := TIB_Query.Create(self);
    TABELAVENDA.IB_Connection := CM.IBTabela.IB_Connection;
    TABELAVENDA.IB_Transaction := TRANSACAOVENDA;

    TransacaoItemsLocal := TIB_Transaction.Create(self);    // Tabela e Transação dos items locais
    TransacaoItemsLocal.IB_Connection := CM.IBTabelaLocal.IB_Connection;
    TabelaItemsLocal := TIB_Query.Create(self);
    TabelaItemsLocal.IB_Connection := CM.IBTabelaLocal.IB_Connection;
    TabelaItemsLocal.IB_Transaction := TransacaoItemsLocal;

    TransacaoGeral := TIB_Transaction.Create(self);         // Tabela e Transação para uso aleatóreo
    TransacaoGeral.IB_Connection := CM.IBTabela.IB_Connection;
    TabelaGeral := TIB_Query.Create(self);
    TabelaGeral.IB_Connection := CM.IBTabela.IB_Connection;
    TabelaGeral.IB_Transaction := TransacaoGeral;

    AgoraMesmo := CM.NowDoServidor;
    Tentativas := 1;
    repeat
      TentaDeNovo := false;
      try
        if not TRANSACAOVENDA.InTransaction then TRANSACAOVENDA.StartTransaction;  // Inicia a transação

        case Modulo of
          moPDV :
          begin
            case rvEstadoDaVenda  of
              evNovoPedOrcVenda :
              begin
                CM.ApagaPedOrcVenda(rvRegPed.Num_Documento, exVenda, 'Sobreposição');
                //Joga informações da compra para VENDAS na retaguarda
                if not CM.InsereVenda(TABELAVENDA, TRANSACAOVENDA,
                     {NUM_DOCUMENTO}         rvRegPed.Num_Documento,
                     {SEQDIARIO}             rvRegPed.SeqDiario,
                     {NUM_FISCAL}            rvRegPed.Num_Fiscal,
                     {CD_VENDA}              CodVenda.CodigoDaVenda,
                     {DT_VENDA}              AgoraMesmo,
                     {NUM_PEDIDO}            rvRegPed.Num_Pedido,
                     {VENDAPEDIDOORCAM}      rvRegPed.Ped_Orc_Venda,
                     {CD_CLIENTE}            rvRegPed.Cliente.Cd_Cliente,
                     {NM_CLIENTE}            rvRegPed.Cliente.Nm_Cliente,
                     {CPF}                   rvRegPed.Cliente.CPF,
                     {VENDEDOR}              rvRegPed.Vendedor,
                     {TOTALLIQUIDO}          rvRegPed.TotalLiquido,
                     {TOTALBRUTO}            rvRegPed.TotalBruto,
                     {VALORCUSTO}            rvRegPed.TotalCusto,
                     {DESCONTO}              rvRegPed.DescontoValor,
                     {DESCONTOPORC}          rvRegPed.DescontoPorc,
                     {TIPO_DESCONTO}         rvRegPed.TipoDesconto,
                     {DESCONTOINDIV}         rvRegPed.DescontoIndiv,
                     {ACRESCIMO}             rvRegPed.AcrescimoValor,
                     {PAG_DINHEIRO}          rvRegPed.Pagamento.Pag_Dinheiro,
                     {PAG_DINHEIROCOMTROCO}  rvRegPed.Pagamento.Pag_DinheiroComTroco,
                     {PAG_CHEQUEPRE}         rvRegPed.Pagamento.Pag_ChequePre,
                     {PAG_CHEQUEATO}         rvRegPed.Pagamento.Pag_ChequeAto,
                     {PAG_CREDCLI}           rvRegPed.Pagamento.Pag_CredCli,
                     {PAG_TICKET}            rvRegPed.Pagamento.Pag_Ticket,
                     {PAG_CREDIARIO}         rvRegPed.Pagamento.Pag_Crediario,
                     {PAG_CARTAO}            rvRegPed.Pagamento.Pag_Cartao,
                     {QTDEPARCCRED}          rvRegPed.Pagamento.QtdeParcCred,
                     {QTDECHEQUES}           rvRegPed.Pagamento.QtdeCheques,
                     {TROCO}                 rvRegPed.Pagamento.Troco,
                     {PESOTOTAL}             rvRegPed.TotalPeso,
                     {QUANTITEMS}            rvRegPed.QuantItems,
                     {DT_ENTREGA}            AgoraMesmo,
                     {DESPESA}               rvRegPed.Despesa,
                     {DESPESA_DESCR}         rvRegPed.DescDespesa,
                     {FRETE}                 rvRegPed.Frete,
                     {FRETE_DESCR}           rvRegPed.DescFrete,
                     {ENTREGUE}              ConferidoEEntregue,
                     {ORDEM}                 0,
                     {CONFERIDO}             ConferidoEEntregue,
                     {OBS}                   rvRegPed.Obs,
                     {ORIGEM}                Origem,
                     {CATEGORIA}             0
                                     ) then Raise Exception.Create(UltimoErro);

              end;
              evReabreOrcPedido, evBaixaOrcPedido :
              begin
                if rvEstadoDaVenda = evReabreOrcPedido then
                begin
                  // Apaga VENDAS_ITEMS na retaguarda para recadastrá-las
                  TABELAVENDA.Active := false;
                  TABELAVENDA.SQL.Clear;
                  TABELAVENDA.SQL.Add('update VENDAS set ALTERAESTOQUE = '+QuotedStr('V'));
                  TABELAVENDA.SQL.Add('where NUM_DOCUMENTO = :NUM_DOCUMENTO');
                  if not TABELAVENDA.Prepared then TABELAVENDA.Prepare;
                  TABELAVENDA.ParamByName('NUM_DOCUMENTO').AsInteger := rvRegPed.Num_Documento;
                  TABELAVENDA.ExecSQL;

                  TABELAVENDA.Active := false;
                  TABELAVENDA.SQL.Clear;
                  TABELAVENDA.SQL.Add('delete from VENDAS_ITEMS');
                  TABELAVENDA.SQL.Add('where NUM_DOCUMENTO = :NUM_DOCUMENTO');
                  if not TABELAVENDA.Prepared then TABELAVENDA.Prepare;
                  TABELAVENDA.ParamByName('NUM_DOCUMENTO').AsInteger := rvRegPed.Num_Documento;
                  TABELAVENDA.ExecSQL;
                end;

                TABELAVENDA.Active := false;
                TABELAVENDA.SQL.Clear;                     // Atualiza informações da Tabela VENDAS...
                TABELAVENDA.SQL.Add('Update VENDAS set');
                TABELAVENDA.SQL.Add('CD_CLIENTE       = :CD_CLIENTE,');
                TABELAVENDA.SQL.Add('NM_CLIENTE       = :NM_CLIENTE,');
                TABELAVENDA.SQL.Add('CPF              = :CPF,');
                TABELAVENDA.SQL.Add('ULTIMOLOGIN      = :ULTIMOLOGIN,');
                TABELAVENDA.SQL.Add('ULTIMONUM_CAIXA  = :ULTIMONUM_CAIXA,');
                TABELAVENDA.SQL.Add('DESCONTO         = :DESCONTO,');
                TABELAVENDA.SQL.Add('DESCONTOPORC     = :DESCONTOPORC,');
                TABELAVENDA.SQL.Add('ACRESCIMO        = :ACRESCIMO,');
                TABELAVENDA.SQL.Add('ACRESCIMOPORC    = :ACRESCIMOPORC,');
                TABELAVENDA.SQL.Add('DESCONTOINDIV    = :DESCONTOINDIV,');
                TABELAVENDA.SQL.Add('TIPO_DESCONTO    = :TIPO_DESCONTO,');
                TABELAVENDA.SQL.Add('CD_VENDA         = :CD_VENDA,');
                TABELAVENDA.SQL.Add('TOTALLIQUIDO     = :TOTALLIQUIDO,');
                TABELAVENDA.SQL.Add('TOTALBRUTO       = :TOTALBRUTO,');
                TABELAVENDA.SQL.Add('VALORCUSTO       = :VALORCUSTO,');
                TABELAVENDA.SQL.Add('PESOTOTAL        = :PESOTOTAL,');
                TABELAVENDA.SQL.Add('QUANTITEMS       = :QUANTITEMS,');
                TABELAVENDA.SQL.Add('OBS              = :OBS,');
                TABELAVENDA.SQL.Add('ALTERAESTOQUE    = :ALTERAESTOQUE,');
                TABELAVENDA.SQL.Add('PED_ORC_VENDA    = :PED_ORC_VENDA,');
                TABELAVENDA.SQL.Add('NUM_FISCAL       = :NUM_FISCAL,');
                TABELAVENDA.SQL.Add('COO_ECF          = :COO_ECF,');
                TABELAVENDA.SQL.Add('PAG_DINHEIRO     = :PAG_DINHEIRO,');
                TABELAVENDA.SQL.Add('PAG_DINHEIROCOMTROCO = :PAG_DINHEIROCOMTROCO,');
                TABELAVENDA.SQL.Add('PAG_CHEQUE       = :PAG_CHEQUE,');
                TABELAVENDA.SQL.Add('PAG_CHEQUEPRE    = :PAG_CHEQUEPRE,');
                TABELAVENDA.SQL.Add('PAG_CHEQUEATO    = :PAG_CHEQUEATO,');
                TABELAVENDA.SQL.Add('PAG_CREDCLI      = :PAG_CREDCLI,');
                TABELAVENDA.SQL.Add('PAG_TICKET       = :PAG_TICKET,');
                TABELAVENDA.SQL.Add('PAG_CREDIARIO    = :PAG_CREDIARIO,');
                TABELAVENDA.SQL.Add('PAG_CARTAO       = :PAG_CARTAO,');
                TABELAVENDA.SQL.Add('QTDEPARCCRED     = :QTDEPARCCRED,');
                TABELAVENDA.SQL.Add('QTDECHEQUES      = :QTDECHEQUES,');
                TABELAVENDA.SQL.Add('TROCO            = :TROCO');
                TABELAVENDA.SQL.Add('where NUM_DOCUMENTO = :NUM_DOCUMENTO');

                if not TABELAVENDA.Prepared then TABELAVENDA.Prepare;
                TABELAVENDA.ParamByName('NUM_DOCUMENTO').AsInteger := rvRegPed.Num_Documento;
                TABELAVENDA.ParamByName('CD_CLIENTE').AsInteger      := rvRegPed.Cliente.Cd_Cliente;
                TABELAVENDA.ParamByName('NM_CLIENTE').AsString       := rvRegPed.Cliente.Nm_Cliente;
                TABELAVENDA.ParamByName('CPF').AsString              := rvRegPed.Cliente.CPF;
                TABELAVENDA.ParamByName('ULTIMOLOGIN').AsString      := RegUsuario.Login;
                TABELAVENDA.ParamByName('ULTIMONUM_CAIXA').AsInteger := RegTerm.IDNumTerminal;
                TABELAVENDA.ParamByName('DESCONTO').AsCurrency       := rvRegPed.DescontoValor;
                TABELAVENDA.ParamByName('DESCONTOPORC').AsCurrency   := rvRegPed.DescontoPorc;
                TABELAVENDA.ParamByName('ACRESCIMO').AsCurrency      := rvRegPed.AcrescimoValor;
                TABELAVENDA.ParamByName('ACRESCIMOPORC').AsCurrency  := rvRegPed.AcrescimoPorc;
                TABELAVENDA.ParamByName('TIPO_DESCONTO').AsString    := rvRegPed.TipoDesconto;
                TABELAVENDA.ParamByName('DESCONTOINDIV').AsCurrency  := rvRegPed.DescontoIndiv;
                TABELAVENDA.ParamByName('CD_VENDA').AsCurrency       := CodVenda.CodigoDaVenda;
                TABELAVENDA.ParamByName('TOTALLIQUIDO').AsCurrency     := rvRegPed.TotalLiquido;
                TABELAVENDA.ParamByName('TOTALBRUTO').AsCurrency       := rvRegPed.TotalBruto;
                TABELAVENDA.ParamByName('VALORCUSTO').AsCurrency       := rvRegPed.TotalCusto;
                TABELAVENDA.ParamByName('PESOTOTAL').AsCurrency        := rvRegPed.TotalPeso;
                TABELAVENDA.ParamByName('QUANTITEMS').AsInteger        := rvRegPed.QuantItems;
                TABELAVENDA.ParamByName('OBS').AsString                := rvRegPed.Obs;
                TABELAVENDA.ParamByName('ALTERAESTOQUE').AsString      := 'V';
                TABELAVENDA.ParamByName('PED_ORC_VENDA').AsString      := rvRegPed.Ped_Orc_Venda;
                TABELAVENDA.ParamByName('NUM_FISCAL').AsString         := rvRegPed.Num_Fiscal;
                TABELAVENDA.ParamByName('COO_ECF').AsString            := rvRegPed.Num_COO;
                TABELAVENDA.ParamByName('PAG_DINHEIRO').AsCurrency     := rvRegPed.Pagamento.Pag_Dinheiro;
                TABELAVENDA.ParamByName('PAG_DINHEIROCOMTROCO').AsCurrency := rvRegPed.Pagamento.Pag_DinheiroComTroco;
                TABELAVENDA.ParamByName('PAG_CHEQUE').AsCurrency       := rvRegPed.Pagamento.Pag_Cheque;
                TABELAVENDA.ParamByName('PAG_CHEQUEPRE').AsCurrency    := rvRegPed.Pagamento.Pag_ChequePre;
                TABELAVENDA.ParamByName('PAG_CHEQUEATO').AsCurrency    := rvRegPed.Pagamento.Pag_ChequeAto;
                TABELAVENDA.ParamByName('PAG_CREDCLI').AsCurrency      := rvRegPed.Pagamento.Pag_CredCli;
                TABELAVENDA.ParamByName('PAG_TICKET').AsCurrency       := rvRegPed.Pagamento.Pag_Ticket;
                TABELAVENDA.ParamByName('PAG_CREDIARIO').AsCurrency    := rvRegPed.Pagamento.Pag_Crediario;
                TABELAVENDA.ParamByName('PAG_CARTAO').AsCurrency       := rvRegPed.Pagamento.Pag_Cartao;
                TABELAVENDA.ParamByName('TROCO').AsCurrency            := rvRegPed.Pagamento.Troco;
                TABELAVENDA.ParamByName('QTDEPARCCRED').AsInteger      := rvRegPed.Pagamento.QtdeParcCred;
                TABELAVENDA.ParamByName('QTDECHEQUES').AsInteger       := rvRegPed.Pagamento.QtdeCheques;
                TABELAVENDA.ExecSQL;
              end;
            end;

            if rvEstadoDaVenda <> evBaixaOrcPedido then
            begin
              // Joga cada venda para VENDAS_ITEMS na retaguarda
              TabelaItemsLocal.Active := false;
              TabelaItemsLocal.SQL.Clear;
              TabelaItemsLocal.SQL.Add('Select *                             ');
              TabelaItemsLocal.SQL.Add('from VENDAATUAL                      ');
              TabelaItemsLocal.SQL.Add('where NUM_DOCUMENTO = :NUM_DOCUMENTO ');
              TabelaItemsLocal.SQL.Add('and CANCELADO <> ''V''               ');
              if not TabelaItemsLocal.Prepared then TabelaItemsLocal.Prepare;
              TabelaItemsLocal.ParamByName('NUM_DOCUMENTO').AsInteger := rvRegPed.Num_Documento;
              TabelaItemsLocal.IB_Transaction.Commit;
              TabelaItemsLocal.Active := true;

              if rvGauge <> nil then rvGauge.MaxValue := TabelaItemsLocal.RecordCount;
              TabelaItemsLocal.First;
              while not TabelaItemsLocal.eof do
              begin
                if rvGauge <> nil then
                begin
                  rvGauge.Visible := true;
                  rvGauge.AddProgress(1);
                end;
                Application.ProcessMessages;

                S := '';
                if TabelaItemsLocal.FieldByName('ALTEROUDESCRICAO').AsString = 'V' then
                  S := TabelaItemsLocal.FieldByName('NM_PRODUTO').AsString;

                if not CM.InsereItemDeVenda(TABELAVENDA, TRANSACAOVENDA,
                           {SEQUENCIAL}      0,
                           {NUM_DOCUMENTO}   rvRegPed.Num_Documento,
                           {NUM_FISCAL}      rvRegPed.Num_Fiscal,
                           {CD_PRODUTO}      TabelaItemsLocal.FieldByName('CD_PRODUTO').AsInteger,
                           {DESCRICAO}       S,
                           {QUANTIDADE}      TabelaItemsLocal.FieldByName('QUANTIDADE').AsCurrency,
                           {PRECOTABELA}     TabelaItemsLocal.FieldByName('PRECOTABELA').AsCurrency,
                           {PRECO}           TabelaItemsLocal.FieldByName('PRECO').AsCurrency,
                           {PRECOCUSTO}      TabelaItemsLocal.FieldByName('PRECOCUSTO').AsCurrency,
                           {SUBTOTAL}        TabelaItemsLocal.FieldByName('SUBTOTAL').AsCurrency,
                           {DESCONTO}        TabelaItemsLocal.FieldByName('DESCONTO').AsCurrency,
                           {DESCONTOPORC}    TabelaItemsLocal.FieldByName('DESCONTOPORC').AsCurrency,
                           {TIPODESCONTO}    StrToChar(TabelaItemsLocal.FieldByName('TIPO_DESCONTO').AsString, '$'),
                           {PESOSAIDA}       TabelaItemsLocal.FieldByName('PESOSAIDA').AsCurrency,
                           {PESOCHEGADA}     TabelaItemsLocal.FieldByName('PESOSAIDA').AsCurrency,
                           {CD_CLIENTE}      rvRegPed.Cliente.CD_Cliente,
                           {VENDEDOR}        rvRegPed.Vendedor,
                           {EMLOTE}          'V',
                           {CONFERIDO}       ConferidoEEntregue,
                           {NUMSERIE}        TabelaItemsLocal.FieldByName('NUMSERIE').AsString,
                           {GRADE}           TabelaItemsLocal.FieldByName('CD_GRADE').AsInteger,
                           {DIM_COMPRIMENTO} TabelaItemsLocal.FieldByName('DIM_COMPRIMENTO').AsCurrency,
                           {DIM_LARGURA}     TabelaItemsLocal.FieldByName('DIM_LARGURA').AsCurrency,
                           {DIM_ESPESSURA}   TabelaItemsLocal.FieldByName('DIM_ESPESSURA').AsCurrency
                                           ) then Raise Exception.Create('Não foi possível inserir este Item de Venda. Produto = '+TabelaItemsLocal.FieldByName('CD_PRODUTO').AsString + UltimoErro);

                // Devoluções
                S := TabelaItemsLocal.FieldByName('OBS').AsString;
                if (not vazio(S)) and (ExistePalavra(S, 'DEV', false)) then
                begin
                  DevNum := StrToIntZ(DeixaNumeros(S), 0);
                  DevCliente := 0;
                  DevValor   := 0;
                  TabelaGeral.Active := false;
                  TabelaGeral.SQL.Clear;
                  TabelaGeral.SQL.Add('Select CD_CLIENTE, VALORDEVOLUCAO from DEVOLUCOES');
                  TabelaGeral.SQL.Add('where NUM_DOCUMENTO = :NUM_DOCUMENTO');
                  if not TabelaGeral.Prepared then TabelaGeral.Prepare;
                  TabelaGeral.ParamByName('NUM_DOCUMENTO').AsInteger := DevNum;
                  TabelaGeral.Active := true;
                  DevCliente := TabelaGeral.FieldByName('CD_CLIENTE').AsInteger;
                  DevValor   := TabelaGeral.FieldByName('VALORDEVOLUCAO').AsCurrency;
                  TabelaGeral.IB_Transaction.Commit;
                  TabelaGeral.Active := false;

                  if not TabelaGeral.IB_Transaction.InTransaction then TabelaGeral.IB_Transaction.StartTransaction;
                  try
                    TabelaGeral.Active := false;
                    TabelaGeral.SQL.Clear;
                    TabelaGeral.SQL.Add('Update DEVOLUCOES set SITUACAO = :SITUACAO');
                    TabelaGeral.SQL.Add('where NUM_DOCUMENTO = :NUM_DOCUMENTO');
                    if not TabelaGeral.Prepared then TabelaGeral.Prepare;
                    TabelaGeral.ParamByName('SITUACAO').AsString := 'T';
                    TabelaGeral.ParamByName('NUM_DOCUMENTO').AsInteger := DevNum;
                    TabelaGeral.ExecSQL;

                    TabelaGeral.Active := false;
                    TabelaGeral.SQL.Clear;
                    TabelaGeral.SQL.Add('Update CLIENTES set CREDITO = CREDITO - :VALOR');
                    TabelaGeral.SQL.Add('where CD_CLIENTE = :CD_CLIENTE');
                    if not TabelaGeral.Prepared then TabelaGeral.Prepare;
                    TabelaGeral.ParamByName('VALOR').AsCurrency := DevValor;
                    TabelaGeral.ParamByName('CD_CLIENTE').AsInteger := DevCliente;
                    TabelaGeral.ExecSQL;
                    TabelaGeral.IB_Transaction.Commit;
                  except
                    TabelaGeral.IB_Transaction.Rollback;
                  end;
                end;

                TabelaItemsLocal.Next;
              end; //while
            end;
          end;

          moRetaguarda:  //RETAGUARDA
          begin
            // Simplesmente Atualiza informações da Tabela VENDAS...
            TABELAVENDA.Active := false;
            TABELAVENDA.SQL.Clear;
            TABELAVENDA.SQL.Add('Update VENDAS set');
            TABELAVENDA.SQL.Add('CD_CLIENTE       = :CD_CLIENTE,');
            TABELAVENDA.SQL.Add('NM_CLIENTE       = :NM_CLIENTE,');
            TABELAVENDA.SQL.Add('CPF              = :CPF,');
            TABELAVENDA.SQL.Add('ULTIMOLOGIN      = :ULTIMOLOGIN,');
            TABELAVENDA.SQL.Add('ULTIMONUM_CAIXA  = :ULTIMONUM_CAIXA,');
            TABELAVENDA.SQL.Add('DESCONTO         = :DESCONTO,');
            TABELAVENDA.SQL.Add('DESCONTOPORC     = :DESCONTOPORC,');
            TABELAVENDA.SQL.Add('ACRESCIMO        = :ACRESCIMO,');
            TABELAVENDA.SQL.Add('ACRESCIMOPORC    = :ACRESCIMOPORC,');
            TABELAVENDA.SQL.Add('DESCONTOINDIV    = :DESCONTOINDIV,');
            TABELAVENDA.SQL.Add('TIPO_DESCONTO    = :TIPO_DESCONTO,');
            TABELAVENDA.SQL.Add('CD_VENDA         = :CD_VENDA,');
            TABELAVENDA.SQL.Add('TOTALLIQUIDO     = :TOTALLIQUIDO,');
            TABELAVENDA.SQL.Add('TOTALBRUTO       = :TOTALBRUTO,');
            TABELAVENDA.SQL.Add('VALORCUSTO       = :VALORCUSTO,');
            TABELAVENDA.SQL.Add('PESOTOTAL        = :PESOTOTAL,');
            TABELAVENDA.SQL.Add('QUANTITEMS       = :QUANTITEMS,');
            TABELAVENDA.SQL.Add('OBS              = :OBS,');
            TABELAVENDA.SQL.Add('ALTERAESTOQUE    = :ALTERAESTOQUE,');

            TABELAVENDA.SQL.Add('PED_ORC_VENDA    = :PED_ORC_VENDA,');
            TABELAVENDA.SQL.Add('NUM_FISCAL       = :NUM_FISCAL,');
            TABELAVENDA.SQL.Add('COO_ECF          = :COO_ECF,');
            TABELAVENDA.SQL.Add('PAG_DINHEIRO     = :PAG_DINHEIRO,');
            TABELAVENDA.SQL.Add('PAG_DINHEIROCOMTROCO = :PAG_DINHEIROCOMTROCO,');
            TABELAVENDA.SQL.Add('PAG_CHEQUE       = :PAG_CHEQUE,');
            TABELAVENDA.SQL.Add('PAG_CHEQUEPRE    = :PAG_CHEQUEPRE,');
            TABELAVENDA.SQL.Add('PAG_CHEQUEATO    = :PAG_CHEQUEATO,');
            TABELAVENDA.SQL.Add('PAG_CREDCLI      = :PAG_CREDCLI,');
            TABELAVENDA.SQL.Add('PAG_TICKET       = :PAG_TICKET,');
            TABELAVENDA.SQL.Add('PAG_CREDIARIO    = :PAG_CREDIARIO,');
            TABELAVENDA.SQL.Add('PAG_CARTAO       = :PAG_CARTAO,');
            TABELAVENDA.SQL.Add('QTDEPARCCRED     = :QTDEPARCCRED,');
            TABELAVENDA.SQL.Add('QTDECHEQUES      = :QTDECHEQUES,');
            TABELAVENDA.SQL.Add('TROCO            = :TROCO');
            TABELAVENDA.SQL.Add('where NUM_DOCUMENTO = :NUM_DOCUMENTO');

            if not TABELAVENDA.Prepared then TABELAVENDA.Prepare;
            TABELAVENDA.ParamByName('NUM_DOCUMENTO').AsInteger := rvRegPed.Num_Documento;
            TABELAVENDA.ParamByName('CD_CLIENTE').AsInteger      := rvRegPed.Cliente.Cd_Cliente;
            TABELAVENDA.ParamByName('NM_CLIENTE').AsString       := rvRegPed.Cliente.Nm_Cliente;
            TABELAVENDA.ParamByName('CPF').AsString              := rvRegPed.Cliente.CPF;
            TABELAVENDA.ParamByName('ULTIMOLOGIN').AsString      := RegUsuario.Login;
            TABELAVENDA.ParamByName('ULTIMONUM_CAIXA').AsInteger := RegTerm.IDNumTerminal;
            TABELAVENDA.ParamByName('DESCONTO').AsCurrency       := rvRegPed.DescontoValor;
            TABELAVENDA.ParamByName('DESCONTOPORC').AsCurrency   := rvRegPed.DescontoPorc;
            TABELAVENDA.ParamByName('ACRESCIMO').AsCurrency      := rvRegPed.AcrescimoValor;
            TABELAVENDA.ParamByName('ACRESCIMOPORC').AsCurrency  := rvRegPed.AcrescimoPorc;
            TABELAVENDA.ParamByName('TIPO_DESCONTO').AsString    := rvRegPed.TipoDesconto;
            TABELAVENDA.ParamByName('DESCONTOINDIV').AsCurrency  := rvRegPed.DescontoIndiv;
            TABELAVENDA.ParamByName('CD_VENDA').AsCurrency       := CodVenda.CodigoDaVenda;
            TABELAVENDA.ParamByName('TOTALLIQUIDO').AsCurrency     := rvRegPed.TotalLiquido;
            TABELAVENDA.ParamByName('TOTALBRUTO').AsCurrency       := rvRegPed.TotalBruto;
            TABELAVENDA.ParamByName('VALORCUSTO').AsCurrency       := rvRegPed.TotalCusto;
            TABELAVENDA.ParamByName('PESOTOTAL').AsCurrency        := rvRegPed.TotalPeso;
            TABELAVENDA.ParamByName('QUANTITEMS').AsInteger        := rvRegPed.QuantItems;
            TABELAVENDA.ParamByName('OBS').AsString                := rvRegPed.Obs;
            TABELAVENDA.ParamByName('ALTERAESTOQUE').AsString      := 'V';
            TABELAVENDA.ParamByName('PED_ORC_VENDA').AsString      := rvRegPed.Ped_Orc_Venda;
            TABELAVENDA.ParamByName('NUM_FISCAL').AsString         := rvRegPed.Num_Fiscal;
            TABELAVENDA.ParamByName('COO_ECF').AsString            := rvRegPed.Num_COO;
            TABELAVENDA.ParamByName('PAG_DINHEIRO').AsCurrency     := rvRegPed.Pagamento.Pag_Dinheiro;
            TABELAVENDA.ParamByName('PAG_DINHEIROCOMTROCO').AsCurrency := rvRegPed.Pagamento.Pag_DinheiroComTroco;
            TABELAVENDA.ParamByName('PAG_CHEQUE').AsCurrency       := rvRegPed.Pagamento.Pag_Cheque;
            TABELAVENDA.ParamByName('PAG_CHEQUEPRE').AsCurrency    := rvRegPed.Pagamento.Pag_ChequePre;
            TABELAVENDA.ParamByName('PAG_CHEQUEATO').AsCurrency    := rvRegPed.Pagamento.Pag_ChequeAto;
            TABELAVENDA.ParamByName('PAG_CREDCLI').AsCurrency      := rvRegPed.Pagamento.Pag_CredCli;
            TABELAVENDA.ParamByName('PAG_TICKET').AsCurrency       := rvRegPed.Pagamento.Pag_Ticket;
            TABELAVENDA.ParamByName('PAG_CREDIARIO').AsCurrency    := rvRegPed.Pagamento.Pag_Crediario;
            TABELAVENDA.ParamByName('PAG_CARTAO').AsCurrency       := rvRegPed.Pagamento.Pag_Cartao;
            TABELAVENDA.ParamByName('TROCO').AsCurrency            := rvRegPed.Pagamento.Troco;
            TABELAVENDA.ParamByName('QTDEPARCCRED').AsInteger      := rvRegPed.Pagamento.QtdeParcCred;
            TABELAVENDA.ParamByName('QTDECHEQUES').AsInteger       := rvRegPed.Pagamento.QtdeCheques;
            TABELAVENDA.ExecSQL;
          end;
        end; //case

        // Registra os Pagamentos:
        CM.RegistraPagamentosDoPedido(TABELAVENDA, TRANSACAOVENDA, rvRegPed);

        TRANSACAOVENDA.Commit;
        DeuErro := false;
        if TentaDeNovoComOk then CM.MensagemDeInformacao('OK.'+PL+'O problema foi solucionado.'+PL+'Esta Venda foi Registrada Corretamente.');
      except
        on E: exception do begin
          inc(Tentativas);
          DeuErro := true;
          TRANSACAOVENDA.Rollback;
          UltimoErro := E.Message;
          CM.LogDeErros(E.Message);
          CM.IBTabela.IB_Connection.Disconnect;
          CM.IBTabela.IB_Connection.Connect;
          CM.IBTabela.IB_Connection.CloseTransactions;

          if Tentativas < 5 then
          begin
            sleep(1000);
            CM.IBTabela.IB_Connection.Connected := true;
            TentaDeNovo := true;
          end;
          if not TentaDeNovo then
          begin
            CM.LogErroVenda(rvRegPed, E.Message);
            CM.MensagemDeAtencao('ATENÇÃO!!!'+PL+
                                              PL+
                                    'Devido a uma instabilidade na rede, não foi possível registrar esta venda neste exato momento.'+PL+
                                    'Mas o problema pode ser corrigido com uma nova tentativa.'+PL+
                                     PL+
                                    'Informe o MOTIVO descrito abaixo ao responsável pelo sistema '+PL+PL+'Motivo:'+PL+ UltimoErro);
            if CM.MensagemDeConfirmacao('Deseja tentar registrar esta venda novamente?', 'Registrar Venda') = mrYes then
              TentaDeNovo := true
            else begin
              CM.MensagemDeInformacao('Autorização requerida para o cancelamento de registro de venda');
              if mVAL.PermissaoVerificada(sgDesbloquear, 'X', false) then
              begin
                TentaDeNovo := false;
                CM.MensagemDeAtencao('ATENÇÃO!!!'+PL+
                                                  PL+
                                     'ESTA VENDA NÃO FOI REGISTRADA!!!'+PL+PL+'Documento: '+IntToStr(rvRegPed.Num_Documento)+PL+'Valor: '+FormatCurr(',0.00', rvRegPed.TotalLiquido));
              end
              else begin
                TentaDeNovo := true;
                CM.MensagemDeAtencao('Pressione Ok para tentar novamente.');
                DtM.IBDatabaseRet.Disconnect;
                DtM.IBDatabaseRet.Connect;
                TentaDeNovoComOk := true;
              end;
            end;
          end;
        end;
      end;
    until not TentaDeNovo;

  finally
    TABELAVENDA.Free;
    TRANSACAOVENDA.Free;
    CM.FechaTT(TabelaItemsLocal);
    CM.FechaTT(TabelaGeral);
    TabelaItemsLocal.Free;
    TransacaoItemsLocal.Free;
    TabelaGeral.Free;
    TransacaoGeral.Free;
  end;

  result := not DeuErro;
  if (not DeuErro) and (rvRegPed.Pagamento.TotalPago > 0) then
  begin
    if rvRegPed.Ped_Orc_Venda = 'V' then
    begin
      CM.RegistraCredCheqCart(rvRegPed);
      CM.RegistraEstaVendaEmCaixa(rvRegPed);
    end;
  end;

  if rvGauge <> nil then
  begin
    rvGauge.Progress := rvGauge.MaxValue;
    rvGauge.Visible := false;
  end;
end;

procedure TFF.InfoSplash(isMensagem: String);
begin
  try
    fSplash.lbInfo.Caption := isMensagem;
    Application.ProcessMessages;
  except
  end;
end;

function TFF.PegaGrade(pgCdProduto:Integer):boolean;
begin
  RegProduto.Grade.CD_Grade := CodigoVazio;
  RegProduto.Grade.CodBarras := '';
  RegProduto.Grade.Descricao := '';
  result := false;
  if CM.TemGrades(pgCdProduto) then
  begin
    try
      Application.CreateForm(TfSelecionaGrade, fSelecionaGrade);
      fSelecionaGrade.CD_PRODUTO := pgCdProduto;
      fSelecionaGrade.ShowModal;
      if fSelecionaGrade.BotaoPressionado <> bpOk then Exit;

      RegProduto.Grade.CD_Grade  := fSelecionaGrade.CD_GRADE;
      RegProduto.Grade.CodBarras := fSelecionaGrade.COD_BARRAS;
      RegProduto.Grade.Descricao := fSelecionaGrade.NM_GRADE;
      result := true;
    finally
      fSelecionaGrade.Free;
    end;
  end
  else result := true;
end;


end.


