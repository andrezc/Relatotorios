unit UCadastroPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, ComCtrls,
  DB, IBSQL, IBCustomDataSet, UComp, IBUpdateSQL, IBODataSet, IBDatabase,
  UDiverso, DUtilit, UComum, wwdbedit, IBStoredProc, Wwdbspin, DBIboSuperCombo,
  IB_Components, Gradpan, JvExControls, JvComponent, JvSpeedButton, JvExStdCtrls,
  JvEdit, JvLabel;

const
  psCodigo = 0;
  psNome   = 1;

type
  TCadastro = (cadProdutos, cadClientes, cadFornecedores, cadBancos,
               cadEmpresas, cadFormasPagamento, cadCodVenda, cadSimilares, cadDepositos,
               cadUsuarios, cadTerminais, cadBoletos, cadEtiquetas, cadNF, cadContasBancarias,
               cadPracas, cadPromocoes, cadCartoes, cadFaixaComissao, cadRepresentantes, cadCFOP,
               cadTransportadoras, CadCaixas, cadFormaPgtoXCodVenda );

  TCamposOrdenados = record
    FieldName : String;
    Caption   : String;
  end;

  TCampo = record
    Pesquisa    : String;
    CodigoInt   : String;
    CodigoStr   : String;
    Descricao   : String;
    Caption     : String;
  end;

  TfCadastroPadrao = class(TForm)
    Panel1: TPanel;
    Bt_Incluir: TBitBtn;
    Bt_Excluir: TBitBtn;
    Bt_Alterar: TBitBtn;
    Bt_Gravar: TBitBtn;
    Bt_Cancelar: TBitBtn;
    Bt_Sair: TBitBtn;
    Bt_Pesquisar: TBitBtn;
    DataSource1: TDataSource;
    TrCadastro: TIBOTransaction;
    IBCadastro: TIBOQuery;
    PanelDireita: TPanel;
    PanelPesquisa: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    PanelDatas: TPanel;
    Label34: TLabel;
    Label41: TLabel;
    DBEdit24: TDBEdit;
    DBEdit32: TDBEdit;
    PanelCampos: TPanel;
    Panel4: TGradPan;
    PanelQuantidade: TPanel;
    Label43: TLabel;
    Panel2: TPanel;
    Edit1: TJvEdit;
    SpeedButton1: TJvSpeedButton;
    JvLabel1: TJvLabel;
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Bt_SairClick(Sender: TObject);
    procedure Bt_IncluirClick(Sender: TObject);
    procedure Bt_ExcluirClick(Sender: TObject);
    procedure Bt_AlterarClick(Sender: TObject);
    procedure Bt_GravarClick(Sender: TObject);
    procedure Bt_CancelarClick(Sender: TObject);
    procedure Bt_PesquisarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    PesqComposta     : boolean;
    PesqIncremental  : boolean;
    VetCampOrd       : array of TCamposOrdenados;  // Vetor de campos usados na pesquisa e ordena��o
    RegExclusao      : Integer;     // Exclus�o de que?  exProdutos, exClientes, exFornecedores...
    PodeBuscarTexto  : boolean;     // Se pode executar a busca de texto
    MudouCampoAuto   : boolean;
    EsteAbreCad      : TRegAbreCadastro;
    TaAbrindoForm    : boolean;

    function  Pode(pdOperacao:char):boolean;
    procedure GeraCodigosSQL;
    procedure MostraQuantidadeDeRegistros;
    procedure EntIncAltBotoes;
    procedure ExecutaBuscaTexto;
    procedure SelecionaEsteRegistro;
    procedure DetectaTipoPesquisa;
    function  TemDependencias: String;
  public
    NovoRegistro     : Integer;
    EsteCadastro     : TCadastro;   // Cadastro de que? (produtos, Clientes, Usuarios...)
    CadObjeto        : String;      // Descri��o do Cadastro de que �
    NomeDaTabela     : String;      // Nome da dita cuja tabela
    EstaTabela       : TIBOQuery;   // Tabela onde est�o os dados
    Select           : String;
    Filtro           : String;
    EstaChave        : String;      // Chave de registro resumida (Ex: \CadProdutos)
    ChaveDoRegistro  : String;      // Chave de registro Completa composta da RegChave + EstaChave
    Campo            : TCampo;      // Dados dos Campos mais usados (CD_; NM_; etc)
    Modo             : TModos;      // Modos Inclus�o, Altera��o, Navega��o...
    NCampoOrdenado   : Integer;     // �ndice do campo ordenado em vetCampoOrd
    BotaoPressionado : TBotaoPressionado;
    DeuErro          : boolean;
    procedure LimpaCamposOrdenados;
    procedure IncluiCampoOrdenado(icFieldName, icCaption: String);
    procedure FormataCampos; virtual;
    procedure IniciaValores; virtual;
    procedure OrdenaCampo; virtual;
    procedure AlteraModo(mdModo: TModos); virtual;
    function  TemErroNaGravacao: boolean; virtual;
  end;

var
  fCadastroPadrao: TfCadastroPadrao;

implementation

uses UProcCampo, UTabela, UValidacao, UFocusForms;

{$R *.dfm}

procedure TfCadastroPadrao.GeraCodigosSQL;
var
  ListaCampos : TStrings;
  i : word;
begin
  EstaTabela.EditSQL.Clear;
  EstaTabela.InsertSQL.Clear;
  EstaTabela.DeleteSQL.Clear;
  ListaCampos := TStringList.Create;
  CM.PegaCampos(NomeDaTabela, ListaCampos);

  // Faz o Update
  EstaTabela.EditSQL.Add('Update '+NomeDaTabela+' set');
  EstaTabela.EditSQL.Add(ListaCampos[0] +' = :'+ ListaCampos[0]);
  for i := 1 to ListaCampos.Count-1 do
    EstaTabela.EditSQL.Add(', '+ListaCampos[i] +' = :'+ ListaCampos[i]);
  EstaTabela.EditSQL.Add('where '+Campo.CodigoInt+' = :OLD_'+Campo.CodigoInt);

  // Faz o Insert
  EstaTabela.InsertSQL.Add('Insert into '+NomeDaTabela+' (');
  EstaTabela.InsertSQL.Add(ListaCampos[0]);
  for i := 1 to ListaCampos.Count-1 do
    EstaTabela.InsertSQL.Add(', '+ListaCampos[i]);
  EstaTabela.InsertSQL.Add(') Values (');
  EstaTabela.InsertSQL.Add(':'+ListaCampos[0]);
  for i := 1 to ListaCampos.Count-1 do
    EstaTabela.InsertSQL.Add(', :'+ListaCampos[i]);
  EstaTabela.InsertSQL.Add(')');

  // Faz o Delete
  EstaTabela.DeleteSQL.Add('Delete from '+NomeDaTabela);
  EstaTabela.DeleteSQL.Add('where '+Campo.CodigoInt+' = :OLD_'+Campo.CodigoInt);

  ListaCampos.Free;
end;

procedure TfCadastroPadrao.DetectaTipoPesquisa;
begin
  if not PodeBuscarTexto then Exit;
  if not ConfGeral.AutoDetectaCampoPesquisa then exit;

  MudouCampoAuto := true;
  if not Vazio(Edit1.Text) then
  begin
    if (NCampoOrdenado = psNome) and (ENumero(Edit1.Text)) then
    begin
      NCampoOrdenado := psCodigo;
      OrdenaCampo;
    end;
    if (NCampoOrdenado = psCodigo) and (PorcentNumero(Edit1.Text)< 30) then
    begin
      NCampoOrdenado := psNome;
      OrdenaCampo;
    end;
  end;
  MudouCampoAuto := false;
end;

procedure TfCadastroPadrao.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case key of
    vk_Down  : if (Shift = []) and (EstaTabela.Active) then EstaTabela.Next;
    vk_Up    : if (Shift = []) and (EstaTabela.Active) then EstaTabela.Prior;
    vk_Next  : if (Shift = []) and (EstaTabela.Active) then EstaTabela.MoveBy(+10);
    vk_Prior : if (Shift = []) and (EstaTabela.Active) then EstaTabela.MoveBy(-10);
    vk_End   : if (Shift = [ssCtrl]) and (EstaTabela.Active) then EstaTabela.Last;
    vk_Home  : if (Shift = [ssCtrl]) and (EstaTabela.Active) then EstaTabela.First;
    vk_F12   : begin
                 if (Shift = []) then
                 begin
                   Screen.Cursor  := crHourGlass;
                   NCampoOrdenado := NCampoOrdenado + 1;
                   if NCampoOrdenado > length(VetCampOrd)-1 then NCampoOrdenado := 0;
                   OrdenaCampo;
                 end;
               end;
    vk_F11   : begin
                 if (Shift = []) then
                 begin
                   Screen.Cursor  := crHourGlass;
                   NCampoOrdenado := NCampoOrdenado - 1;
                   if (NCampoOrdenado < 0) or (NCampoOrdenado > 1000) then NCampoOrdenado := length(VetCampOrd)-1;
                   OrdenaCampo;
                   Screen.Cursor  := crDefault;
                 end;
               end;
    vk_Return: begin
                 if NOT PesqIncremental then
                 begin
                   ExecutaBuscaTexto;
                   Edit1.SelectAll;
                 end
               end;
  end;
end;

procedure TfCadastroPadrao.AlteraModo(mdModo: TModos);
begin
  Modo := mdModo;
  case Modo of
    mdInclusao:
      begin
        bt_Incluir.Enabled   := false;
        bt_Excluir.Enabled   := false;
        bt_Alterar.Enabled   := false;
        bt_Gravar.Enabled    := true;
        bt_Cancelar.Enabled  := true;
        DBNavigator1.Enabled := false;
        DesligaComponente(self, DBGrid1);
        DesligaComponente(self, Edit1);
        SpeedButton1.Enabled := false;
        try
          TDBText(FindComponent('DBText1')).Visible := false;
        except end;
      end;
    mdAlteracao:
      begin
        bt_Incluir.Enabled   := false;
        bt_Excluir.Enabled   := false;
        bt_Alterar.Enabled   := false;
        bt_Gravar.Enabled    := true;
        bt_Cancelar.Enabled  := true;
        DBNavigator1.Enabled := false;
        DesligaComponente(self, DBGrid1);
        DesligaComponente(self, Edit1);
        SpeedButton1.Enabled := false;
        try
          TDBText(FindComponent('DBText1')).Visible := true;
        except end;
      end;
    mdNavegacao:
      begin
        bt_Incluir.Enabled   := true;
        bt_Excluir.Enabled   := true;
        bt_Alterar.Enabled   := true;
        bt_Gravar.Enabled    := false;
        bt_Cancelar.Enabled  := false;
        DBNavigator1.Enabled := true;
        LigaComponente(self, DBGrid1);
        LigaComponente(self, Edit1);
        DBGrid1.Color := clInfoBk;
        Edit1.Color := clInfoBk;
        SpeedButton1.Enabled := true;
        try
          TDBText(FindComponent('DBText1')).Visible := true;
        except end;
      end;
  end;
  if EstaTabela.IsEmpty then
  begin
    bt_Excluir.Enabled   := false;
    bt_Alterar.Enabled   := false;
  end;
end;

procedure TfCadastroPadrao.MostraQuantidadeDeRegistros;
begin
  Panel2.Caption := IntToStr(CM.QuantidadeDeRegistros(NomeDaTabela, Filtro));
end;

procedure TfCadastroPadrao.Bt_SairClick(Sender: TObject);
begin
  if Modo = mdNavegacao then Close
  else begin
    case MessageDlg('Deseja salvar este registro antes de sair?', mtConfirmation, [mbYes,mbNo,mbCancel], 0) of
       mrYes    : begin
                    Bt_Gravar.Click;
                    if DeuErro then exit;
                    Close;
                  end;
       mrNo     : begin
                    Bt_Cancelar.Click;
                    Close;
                  end;
       mrCancel : exit;
    end;
    try
      EstaTabela.IB_Transaction.Commit;
    except
      on E: exception do begin
        CM.LogDeErros(E.Message);
        EstaTabela.IB_Transaction.RollBack;
      end;
    end;
    Close;
  end;
end;

procedure TfCadastroPadrao.Bt_IncluirClick(Sender: TObject);
begin
  if not Pode('I') then Exit;
  try
    if not EstaTabela.IB_Transaction.InTransaction then EstaTabela.IB_Transaction.StartTransaction;
    EstaTabela.insert;
    IniciaValores;
  finally
    AlteraModo(mdInclusao);
  end;
end;

function TfCadastroPadrao.TemDependencias: String;
var
  EsteRegistro : Integer;
begin
  result := '';
  CM.AbreAviso('Verificando Depend�ncias...', 0, 0, 0, 0);
  try
    with CM do
    begin
      case EsteCadastro of
        cadClientes :
        begin
          EsteRegistro := EstaTabela.FieldByName('CD_CLIENTE').AsInteger;
          VerificaDependencia('ARECEBER',       'CD_CLIENTE', 'Contas a Receber      ', EsteRegistro, result);
          VerificaDependencia('PGTOSDOCLIENTE', 'CD_CLIENTE', 'Pagamentos do Cliente ', EsteRegistro, result);
          VerificaDependencia('VENDAS',         'CD_CLIENTE', 'Vendas/Pedidos/Or�am. ', EsteRegistro, result);
          VerificaDependencia('DEVOLUCOES',     'CD_CLIENTE', 'Devolu��es            ', EsteRegistro, result);
        end;
        cadProdutos :
        begin
          EsteRegistro := EstaTabela.FieldByName('CD_PRODUTO').AsInteger;
          VerificaDependencia('VENDAS_ITEMS',         'CD_PRODUTO', 'Items de Venda/Or�amentos', EsteRegistro, result);
          VerificaDependencia('NF_ITEMS',             'CD_PRODUTO', 'Entrada de Notas         ', EsteRegistro, result);
          VerificaDependencia('TRANSFERENCIAS_ITEMS', 'CD_PRODUTO', 'Transfer�ncias           ', EsteRegistro, result);
          VerificaDependencia('PEDIDOSDECOMPRA_ITEMS','CD_PRODUTO', 'Pedidos de Compra        ', EsteRegistro, result);
          VerificaDependencia('INVENTARIOS_ITEMS',    'CD_PRODUTO', 'Invent�rios              ', EsteRegistro, result);
          VerificaDependencia('DEVOLUCOES_ITEMS',     'CD_PRODUTO', 'Devolu��es               ', EsteRegistro, result);
        end;
        cadCodVenda :
        begin
          EsteRegistro := EstaTabela.FieldByName('CD_VENDA').AsInteger;
          VerificaDependencia('VENDAS',     'CD_VENDA', 'Vendas/Pedidos/Or�amentos', EsteRegistro, result);
        end;
        cadFornecedores :
        begin
          EsteRegistro := EstaTabela.FieldByName('CD_FORNECEDOR').AsInteger;
          VerificaDependencia('NF',             'CD_FORNECEDOR', 'Entradas de Notas ', EsteRegistro, result);
          VerificaDependencia('PEDIDOSDECOMPRA','CD_FORNECEDOR', 'Pedidos de Compra ', EsteRegistro, result);
          VerificaDependencia('CONTASAPAGAR',   'CD_FORNECEDOR', 'Contas a Pagar    ', EsteRegistro, result);
        end;
        cadUsuarios :
        begin
          EsteRegistro := EstaTabela.FieldByName('CD_USUARIO').AsInteger;
          VerificaDependencia('PEDIDOSDECOMPRA',  'CD_USUARIO',     'Pedidos de Compra        ', EsteRegistro, result);
          VerificaDependencia('ARECEBER',         'VENDEDOR',       'Contas a Receber         ', EsteRegistro, result);
          VerificaDependencia('VENDAS',           'VENDEDOR',       'Vendas/Pedidos/Or�amentos', EsteRegistro, result);
        end;
        cadPracas :
        begin
          EsteRegistro := EstaTabela.FieldByName('CD_PRACA').AsInteger;
          VerificaDependencia('CLIENTES',   'CD_PRACA', 'Clientes          ', EsteRegistro, result);
        end;
      end;
    end;
    if not Vazio(result) then
      result := 'DEPENDENTES   (Por n� de incid�ncias)'+#13+#10+
                '---------------------------------------------------------------------'+#13+#10+ result;
  finally
    CM.FechaAviso;
  end;
end;

function TfCadastroPadrao.Pode(pdOperacao:char):boolean;
begin
  case EsteCadastro of
    cadProdutos:        result := mVAL.TemAcessoPermissao(sgCadProdutos, pdOperacao);
    cadClientes:        result := mVAL.TemAcessoPermissao(sgCadClientes, pdOperacao);
    cadFornecedores:    result := mVAL.TemAcessoPermissao(sgCadFornecedores, pdOperacao);
    cadBancos:          result := mVAL.TemAcessoPermissao(sgCadBancos, pdOperacao);
    cadEmpresas:        result := mVAL.TemAcessoPermissao(sgCadEmpresas, pdOperacao);
    cadFormasPagamento: result := mVAL.TemAcessoPermissao(sgCadFormaPgto, pdOperacao);
    cadCodVenda:        result := mVAL.TemAcessoPermissao(sgCadCodVenda, pdOperacao);
    cadDepositos:       result := mVAL.TemAcessoPermissao(sgCadDepositos, pdOperacao);
    cadUsuarios:        result := mVAL.TemAcessoPermissao(sgCadUsuarios, pdOperacao);
    cadTerminais:       result := mVAL.TemAcessoPermissao(sgCadTerminais, pdOperacao);
    cadBoletos:         result := mVAL.TemAcessoPermissao(sgCadFormBoletos, pdOperacao);
    cadEtiquetas:       result := mVAL.TemAcessoPermissao(sgCadFormEtiquetas, pdOperacao);
    cadNF:              result := mVAL.TemAcessoPermissao(sgCadFormNF, pdOperacao);
    cadContasBancarias: result := mVAL.TemAcessoPermissao(sgCadContaBancaria, pdOperacao);
    cadPracas:          result := mVAL.TemAcessoPermissao(sgCadPracas, pdOperacao);
    cadPromocoes:       result := mVAL.TemAcessoPermissao(sgCadPromocoes, pdOperacao);
    cadCartoes:         result := mVAL.TemAcessoPermissao(sgCadCartao, pdOperacao);
    cadFaixaComissao:   result := mVAL.TemAcessoPermissao(sgCadFaixaComissao, pdOperacao);
    cadRepresentantes:  result := mVAL.TemAcessoPermissao(sgCadFornecedores, pdOperacao);
    cadCFOP:            result := mVAL.TemAcessoPermissao(sgCadCFOP, pdOperacao);
    cadTransportadoras: result := mVAL.TemAcessoPermissao(sgCadTransportadoras, pdOperacao);
    else result := true;
  end;
end;

procedure TfCadastroPadrao.Bt_ExcluirClick(Sender: TObject);
var
  EsteRegistro: String;
  Dependencias : String;
  ValorDaChavePrimaria : variant;
begin
  if not Pode('E') then Exit;

  EsteRegistro := EstaTabela.FieldByName(Campo.CodigoStr).AsString + ' - ' + EstaTabela.FieldByName(Campo.Descricao).AsString;
  ValorDaChavePrimaria := EstaTabela.FieldByName(Campo.CodigoInt).AsVariant;
  try
    if MessageDlg('Confirma exclus�o do(a) '+ CadObjeto +': '+EsteRegistro+'?', mtConfirmation, [mbYes,mbNo], 0) <>  mrYes then
      Exit;

    Dependencias := TemDependencias;
    if not Vazio(Dependencias) then
    begin
      if MessageDlg('Este '+CadObjeto+' faz refer�ncias a outros registros conforme descrito abaixo.'+PL+'Deseja realmente exclu�-lo?'+PL+PL+Dependencias, mtWarning, [mbYes, mbNo], 0) <> mrYes then Exit;
      if MessageDlg('Esta opera��o � irrevers�vel.'+PL+'Tem certeza que deseja eliminar este '+CadObjeto+'?', mtWarning, [mbYes, mbNo], 0) <> mrYes then Exit;
    end;

    CM.AbreAviso('Apagando Registro...');
    with CM do
    begin
      if not IBTabela.IB_Transaction.InTransaction then IBTabela.IB_Transaction.StartTransaction;
      try
        IBTabela.Active := false;
        IBTabela.SQL.Clear;
        IBTabela.SQL.Add('Delete from '+NomeDaTabela);
        IBTabela.SQL.Add('where '+Campo.CodigoInt+' = :'+Campo.CodigoInt);
        if not IBTabela.Prepared then IBTabela.Prepare;
        IBTabela.ParamByName(Campo.CodigoInt).Value := ValorDaChavePrimaria;
        IBTabela.ExecSQL;

        IBTabela.IB_Transaction.Commit;
        CM.IncluiEmExclusoes(RegExclusao, EsteRegistro);
      except
        on E: exception do begin
          CM.LogDeErros(E.Message);
          IBTabela.IB_Transaction.Rollback;
          CM.MensagemDeErro('O Registro est� sendo alterado por outro usu�rio. ');
        end;
      end;
    end;
  finally
    EstaTabela.Refresh;
    Edit1.setfocus;
    AlteraModo(mdNavegacao);
    MostraQuantidadeDeRegistros;
    CM.FechaAviso;
  end;
end;

procedure TfCadastroPadrao.Bt_AlterarClick(Sender: TObject);
begin
//  EstaTabela.Refresh;
  if not Pode('A') then Exit;
  if not EstaTabela.IB_Transaction.InTransaction then EstaTabela.IB_Transaction.StartTransaction;
  EstaTabela.EDIT;
  IniciaValores;
  AlteraModo(mdAlteracao);
end;

function TfCadastroPadrao.TemErroNaGravacao: boolean;
begin
end;

procedure TfCadastroPadrao.Bt_GravarClick(Sender: TObject);
begin
  try
    CM.AbreAviso('Gravando Registro');
    BotaoPressionado := bpOk;
    if TemErroNaGravacao then
    begin
      DeuErro := true;
      Exit;
    end;

    try
      NovoRegistro := EstaTabela.FieldByName(Campo.CodigoInt).AsInteger;
    except
    end;

    if EstaTabela.state in dsEditModes then
      EstaTabela.Post;
    try
      EstaTabela.IB_Transaction.CommitRetaining;
    except
      on E: exception do begin
        CM.LogDeErros(E.Message);
        EstaTabela.IB_Transaction.RollbackRetaining;
      end;
    end;

    AlteraModo(mdNavegacao);
    EstaTabela.Refresh;
    MostraQuantidadeDeRegistros;
    Edit1.SetFocus;
  finally
    CM.FechaAviso;
    if (not DeuErro) and ((EsteAbreCad.EntraNaInclusao) or (EsteAbreCad.EntraNaAlteracao > 0)) then
      Close;
  end;
end;

procedure TfCadastroPadrao.Bt_CancelarClick(Sender: TObject);
begin
  BotaoPressionado := bpCancelado;
  try EstaTabela.cancel; except end;
  EstaTabela.IB_Transaction.RollbackRetaining;
  if (EsteAbreCad.EntraNaInclusao) or (EsteAbreCad.EntraNaAlteracao > 0) then
    Close
  else
    AlteraModo(mdNavegacao);
end;

procedure TfCadastroPadrao.EntIncAltBotoes;
begin
  if (EsteAbreCad.EntraNaInclusao) or (EsteAbreCad.EntraNaAlteracao > 0) then
  begin
    Bt_Alterar.Enabled   := false;
    Bt_Excluir.Enabled   := false;
    Bt_Incluir.Enabled   := false;
    Bt_Pesquisar.Enabled := false;
    Bt_Sair.Enabled      := false;
    Bt_Gravar.Enabled    := true;
    Bt_Cancelar.Enabled  := true;
  end;
end;

procedure TfCadastroPadrao.FormShow(Sender: TObject);
var
  S : String;
begin
  EsteAbreCad.EntraNaAlteracao := AbreCad.EntraNaAlteracao;
  EsteAbreCad.EntraNaInclusao  := AbreCad.EntraNaInclusao;
  NCampoOrdenado := LeIntegerDoRegistro(ChaveDoRegistro, 'CampoOrdenado', 1);
  if not EInteiro(NCampoOrdenado) then NCampoOrdenado := 1;
  PesqIncremental := LeBooleanDoRegistro(ChaveDoRegistro, 'PesquisaIncremental', true);
  PesqComposta    := LeBooleanDoRegistro(ChaveDoRegistro, 'PesquisaComposta', true);
  if (NCampoOrdenado < 0) or (NCampoOrdenado > length(VetCampOrd)-1) then NCampoOrdenado := 0;
  GeraCodigosSQL;
  MostraQuantidadeDeRegistros;
  PodeBuscarTexto := true;
  if EsteAbreCad.EntraNaInclusao then
  begin
    OrdenaCampo;
    CM.BuscaTexto(EstaTabela, '', Select, Campo.Pesquisa, NomeDaTabela, Filtro, Campo.Pesquisa, false);
    EstaTabela.Active := true;
    Bt_Incluir.Click;
  end
  else begin
    if EsteAbreCad.EntraNaAlteracao > 0 then
    begin
      CM.AbreAviso('Buscando '+CadObjeto);
      OrdenaCampo;
      CM.BuscaTexto(EstaTabela, IntToStr(EsteAbreCad.EntraNaAlteracao), Select, Campo.CodigoInt, NomeDaTabela, Filtro, Campo.CodigoInt, false);
      Bt_Alterar.Click;
      CM.FechaAviso;
    end
    else begin
      AlteraModo(mdNavegacao);
      Edit1.SetFocus;
      OrdenaCampo;

      Edit1.Text := LeStringDoRegistro(ChaveDoRegistro, 'UltimoPesquisado', '');
      Edit1.SelectAll;
      S := LeStringDoRegistro(ChaveDoRegistro, 'UltimoSelecionado', '');
      try EstaTabela.Locate(Campo.Pesquisa, S, [loCaseInsensitive]); except end;
    end;
  end;
  EntIncAltBotoes;

  CM.FechaAviso;
  TaAbrindoForm := false;
  Screen.Cursor := crDefault;
end;

procedure TfCadastroPadrao.Edit1Change(Sender: TObject);
begin
  if PesqIncremental then    // SE FOR INCREMENTAL...
  begin
    DetectaTipoPesquisa;
    ExecutaBuscaTexto;
  end
end;

procedure TfCadastroPadrao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case key of
    vk_F2    : if (Shift = []) and (Bt_Incluir.Enabled) then Bt_Incluir.Click;
    vk_F3    : begin
                 if (Shift = [ssShift]) then SpeedButton1.Click
                 else if Shift = []     then Bt_Pesquisar.Click;
               end;
    vk_F4    : if (Shift = []) and (Bt_Excluir.Enabled) then Bt_Excluir.Click;
    vk_F5    : if (Shift = []) and (Bt_Alterar.Enabled) then Bt_Alterar.Click;
    vk_F10   : if (Shift = []) and (Bt_Gravar.Enabled)  then Bt_Gravar.Click;

    vk_Escape: begin
                 if (Modo = mdInclusao) or (Modo = mdAlteracao) then
                 begin
                   if Bt_Cancelar.Enabled then Bt_Cancelar.Click;
                 end
                 else Bt_Sair.Click;
               end;
  end;
end;

procedure TfCadastroPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (not Edit1.Focused)then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
end;

procedure TfCadastroPadrao.Bt_PesquisarClick(Sender: TObject);
begin
  if Modo = mdNavegacao then Edit1.SetFocus;
end;

procedure TfCadastroPadrao.Edit1Enter(Sender: TObject);
begin
  Edit1.Color := clInfoBk;
  Panel3.Color := clBlue;
  Edit1.SelectAll;
end;

procedure TfCadastroPadrao.OrdenaCampo;
var
  Busca : boolean;
begin
  CM.AbreAviso('Carregando registros');
  Campo.Pesquisa := VetCampOrd[NCampoOrdenado].FieldName;
  Campo.Caption  := VetCampOrd[NCampoOrdenado].Caption;
  try
    MostraQuantidadeDeRegistros;
    DBGrid1.Columns.Items[0].Title.Caption := Campo.Caption;
    DBGrid1.Columns.Items[0].FieldName     := Campo.Pesquisa;
    DBGrid1.Columns.Items[0].Width         := DBGrid1.Width - 35;
    Busca := PodeBuscarTexto;
    PodeBuscarTexto := false;
    if not MudouCampoAuto then Edit1.Clear;
    PodeBuscarTexto := Busca;
  finally
    ExecutaBuscaTexto;
    if not TaAbrindoForm then CM.FechaAviso;
    AlteraModo(mdNavegacao);
    Screen.Cursor := crDefault;
  end;
end;

procedure TfCadastroPadrao.SpeedButton1Click(Sender: TObject);
var
  i : word;
begin
  Application.CreateForm(TfProcCampo, fProcCampo);

  for i := 0 to Length(VetCampOrd)-1 do
    fProcCampo.RadioGroup1.Items.Add(VetCampOrd[i].Caption);
  fProcCampo.RadioGroup1.ItemIndex := NCampoOrdenado;
  fProcCampo.CheckBoxComposta.Checked := PesqComposta;
  fProcCampo.CheckBoxIncremental.Checked := PesqIncremental;

  fProcCampo.ShowModal;
  if fProcCampo.Ok then
  begin
    Screen.Cursor := crHourGlass;
    NCampoOrdenado := fProcCampo.RadioGroup1.ItemIndex;
    PesqComposta    := fProcCampo.CheckBoxComposta.Checked;
    PesqIncremental := fProcCampo.CheckBoxIncremental.Checked;
    OrdenaCampo;
  end;
  fProcCampo.Free;
  Screen.Cursor := crDefault;
end;

procedure TfCadastroPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if EstaTabela.Active then SelecionaEsteRegistro;
  SalvaIntegerNoRegistro(ChaveDoRegistro, 'CampoOrdenado', NCampoOrdenado);
  SalvaBooleanNoRegistro(ChaveDoRegistro, 'PesquisaIncremental', PesqIncremental);
  SalvaBooleanNoRegistro(ChaveDoRegistro, 'PesquisaComposta',    PesqComposta);
  SalvaStringNoRegistro(ChaveDoRegistro,  'UltimoPesquisado', Edit1.Text);
  SalvaStringNoRegistro(ChaveDoRegistro,  'UltimoSelecionado', EstaTabela.FieldByName(Campo.Pesquisa).AsString);

  CM.FechaTT(EstaTabela);
  Action := caFree;
end;

procedure TfCadastroPadrao.SelecionaEsteRegistro;
begin
  try ItemEsc.CodInt := EstaTabela.FieldByName(Campo.CodigoInt).AsInteger; except end;
  try ItemEsc.CodExt := EstaTabela.FieldByName(Campo.CodigoStr).AsString; except end;
end;

procedure TfCadastroPadrao.FormCreate(Sender: TObject);
begin
  TaAbrindoForm := true;
  CM.AbreAviso('Carregando Registros');
  PodeBuscarTexto := false;
  MudouCampoAuto := false;
  ChaveDoRegistro := RegChaveForms+EstaChave;
  BotaoPressionado := bpCancelado;
end;

procedure TfCadastroPadrao.Edit1Exit(Sender: TObject);
begin
  Edit1.Color := clBtnFace;
  Panel3.Color := clBtnFace;
end;

procedure TfCadastroPadrao.LimpaCamposOrdenados;
begin
  SetLength(VetCampOrd, 0);
end;

procedure TfCadastroPadrao.IncluiCampoOrdenado(icFieldName, icCaption: String);
var
  T : word;
begin
  T :=  Length(VetCampOrd);
  SetLength(VetCampOrd, T+1);
  VetCampOrd[T].FieldName := icFieldName;
  VetCampOrd[T].Caption   := icCaption;
end;

procedure TfCadastroPadrao.ExecutaBuscaTexto;
begin
  if not PodeBuscarTexto then Exit;
  Campo.Pesquisa := VetCampOrd[NCampoOrdenado].FieldName;
  CM.BuscaTexto(EstaTabela, Edit1.Text, Select, Campo.Pesquisa, NomeDaTabela, Filtro, Campo.Pesquisa, PesqComposta);
  FormataCampos;
end;

procedure TfCadastroPadrao.FormataCampos;
begin
  CM.FormataCampo(TipoTimeStamp, EstaTabela.FieldByName('ULTIMAALTERACAO'), 'dd/mm/yyyy hh:mm:ss', taCenter);
  CM.FormataCampo(TipoTimeStamp, EstaTabela.FieldByName('DT_CADASTRO'),     'dd/mm/yyyy hh:mm:ss', taCenter);
end;

procedure TfCadastroPadrao.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if Modo = mdNavegacao then
  begin
    if EstaTabela.IsEmpty then
    begin
      bt_Excluir.Enabled   := false;
      bt_Alterar.Enabled   := false;
    end
    else begin
      bt_Excluir.Enabled   := true;
      bt_Alterar.Enabled   := true;
    end;
  end;
end;

procedure TfCadastroPadrao.IniciaValores;
begin
end;

end.


