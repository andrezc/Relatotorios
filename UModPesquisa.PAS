unit UModPesquisa;

interface

uses
  SysUtils, Classes, Dialogs, Windows, Controls, Forms, DB, StdCtrls, Graphics,
  ExtCtrls, UComum;

type
  TmPesq = class(TDataModule)
  private
  public
    function  PesquisaDireto(var pdkey:Char; pdPesquisarOQue:TPesquisarOQue; pdRecursos: TSetModos; pdFoco:TObject=nil; pdValorEntrada:String=''; pdFiltro:String=''; pdModoConsulta:boolean=false; pdVinculo:Integer=CodigoVazio; pdMostraInativos:boolean=false):TItemEscolhido;
    function  Pesquisa(pqPesquisarOQue: TPesquisarOQue; pqRecursos: TSetModos; pqFoco:TObject=nil; pqValorEntrada:String=''; pqFiltro:String=''; pqModoConsulta:boolean=false; pqVinculo:Integer=CodigoVazio; pqMostraInativos:boolean=false; pqAbreGrade:boolean=true):TItemEscolhido;
  end;

var
  mPesq: TmPesq;

implementation

uses UPesqProduto, UPesquisa;


{$R *.dfm}

function TmPesq.PesquisaDireto(var pdkey:Char; pdPesquisarOQue:TPesquisarOQue; pdRecursos: TSetModos; pdFoco:TObject=nil; pdValorEntrada:String=''; pdFiltro:String=''; pdModoConsulta:boolean=false; pdVinculo:Integer=CodigoVazio; pdMostraInativos:boolean=false):TItemEscolhido;
begin
  result.CodInt := CodigoVazio;
  if pdkey in SetSoNumeros then Exit;

  if pdkey in SetLetras then
    result := mPesq.Pesquisa(pdPesquisarOQue, [mdInclusao, mdAlteracao], pdFoco, pdkey+'�', pdFiltro, pdModoConsulta, pdVinculo, pdMostraInativos);
  pdKey := #0;
end;

function TmPesq.Pesquisa(pqPesquisarOQue:TPesquisarOQue; pqRecursos:TSetModos; pqFoco:TObject=nil; pqValorEntrada:String=''; pqFiltro:String=''; pqModoConsulta:boolean=false; pqVinculo:Integer=CodigoVazio; pqMostraInativos:boolean=false; pqAbreGrade:boolean=true):TItemEscolhido;
begin
  Screen.Cursor := crHourGlass;
//  CM.AbreAviso('Carregando Registros');
  if pqPesquisarOQue = pqProdutos then
  begin
    Application.CreateForm(TfPesqProduto, fPesqProduto);
    fPesqProduto.PesquisarOQue := pqPesquisarOQue;
    fPesqProduto.ModoConsulta := pqModoConsulta;
    fPesqProduto.Vinculo := pqVinculo;
    fPesqProduto.ValorEntrada := pqValorEntrada;
    fPesqProduto.FiltroExterno := pqFiltro;
    fPesqProduto.btAlterar.Visible := mdAlteracao in pqRecursos;
    fPesqProduto.btCadastrar.Visible := mdInclusao in pqRecursos;
    fPesqProduto.MostraInativos   := pqMostraInativos;
    fPesqProduto.MostraPrecoCusto := pqMostraInativos;
    fPesqProduto.PodeAbrirGrade   := pqAbreGrade;
    fPesqProduto.ShowModal;
    result := fPesqProduto.ItemEscolhido;

    if fPesqProduto.ItemEscolhido.CodInt <> CodigoVazio then
    begin
      CM.PegaDadosDoProduto(fPesqProduto.ItemEscolhido.CodInt, fPesqProduto.ItemEscolhido.SubCod);
      if RegProduto.Grade.CD_Grade > 0 then RegProduto.TipoBusca := buGrade
                                       else RegProduto.TipoBusca := buCodBarras;

      if pqFoco <> nil then
      begin
        try (pqFoco as TEdit).Text := RegProduto.Cod_Barras; except end;
        try (pqFoco as TEdit).SetFocus;        except end;
        try (pqFoco as TEdit).OnChange(self);  except end;
        try (pqFoco as TEdit).OnExit(self);    except end;
        try (pqFoco as TEdit).SelectAll;       except end;
      end;
    end;
    fPesqProduto.free;
    fPesqProduto := nil;
  end
  else begin
    Application.CreateForm(TfPesquisa, fPesquisa);
    fPesquisa.PesquisarOQue := pqPesquisarOQue;
    fPesquisa.ModoConsulta := pqModoConsulta;
    fPesquisa.Vinculo := pqVinculo;
    fPesquisa.ValorEntrada := pqValorEntrada;
    fPesquisa.FiltroExterno := pqFiltro;
    fPesquisa.btAlterar.Visible := mdAlteracao in pqRecursos;
    fPesquisa.btCadastrar.Visible := mdInclusao in pqRecursos;
    fPesquisa.MostraInativos := pqMostraInativos;

    fPesquisa.ShowModal;
    result := fPesquisa.ItemEscolhido;
    if fPesquisa.ItemEscolhido.CodInt <> CodigoVazio then
    begin
      if pqFoco <> nil then
      begin
        try (pqFoco as TEdit).Text := result.CodExt; except end;
        try (pqFoco as TEdit).SetFocus;        except end;
        try (pqFoco as TEdit).OnChange(self);  except end;
        try (pqFoco as TEdit).OnExit(self);    except end;
        try (pqFoco as TEdit).SelectAll;       except end;
      end;
    end;
    fPesquisa.free;
    fPesquisa := nil;
  end;
end;

end.


