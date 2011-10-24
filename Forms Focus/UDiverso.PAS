unit UDiverso;

interface

uses
  Dialogs, Controls, Forms, Graphics, Classes, SysUtils, dbTables, RDprint, UComum;

Const
// Valores Principais
  ChaveConfigDoGrid  = 'Software\Focus\Grids';
  ArquivoIni         = 'Focus.INI';
  NomeDaEmpresa      = 'Focus';
  NomeDoSistema      = 'Focus - Sistema de Automação Comercial';

//Relatórios
  qlProdutos       = 0;
  qlClientes       = 1;
  qlFornecedores   = 2;
  qlEntradas       = 3;
  qlVendas         = 4;
  qlContasAPagar   = 5;
  qlContasAReceber = 6;

//Relatórios Agrupamento
  agNENHUM         = 0;
  agProdutos       = 1;
  agClientes       = 2;
  agVendedores     = 3;
  agFornecedores   = 4;
  agGrupos         = 5;
  agFormasPgto     = 7;
  agEstoque        = 8;
  agPracas         = 9;

//Relatórios Look For
  lfProdutos       = 0;
  lfClientes       = 1;
  lfFornecedores   = 2;
  lfVendedores     = 3;

type
  RegEtiquetas = record
    Cod       : String[4];
    Descricao : String[100];
    Categoria : char;
  end;

var
// Variáveis Gerais
  ChaveDoModulo: String;
  CategoriaRelatEscolhido : Word;
  TabelaAgrupamento       : word;

  CodigoDoFornecedor : String;
  CodigoDaMercadoria : String;
  FornecedorVinculado: Integer;
  VetEtiquetas : Array of RegEtiquetas;

implementation

uses UDataMod;

procedure IncluiModeloEtiqueta(ieCod:String; ieDescricao:String; ieCategoria:char);
begin
  SetLength(VetEtiquetas, length(VetEtiquetas)+1);
  VetEtiquetas[length(VetEtiquetas)-1].Cod := ieCod;
  VetEtiquetas[length(VetEtiquetas)-1].Descricao := ieDescricao;
  VetEtiquetas[length(VetEtiquetas)-1].categoria := ieCategoria;
end;

begin
  SetLength(VetEtiquetas, 0);
  IncluiModeloEtiqueta('PG01', 'PG01 - Etiquetas de Gôndola 1 (Com rodapé)', 'P');
  IncluiModeloEtiqueta('PG02', 'PG02 - Etiquetas de Gôndola 2 (Sem rodapé)', 'P');
  IncluiModeloEtiqueta('PE01', 'PE01 - Etiquetas Pimaco A4249 / A4349 1,5 x 2,6', 'P');
  IncluiModeloEtiqueta('PE02', 'PE02 - Etiquetas Pimaco A4251 / A4351 2,12 x 3,82', 'P');
  IncluiModeloEtiqueta('PE91', 'PE91 - Etiquetas de Código de Barras 1,5 x 2,7 (Contínuo)', 'P');
  IncluiModeloEtiqueta('PE92', 'PE92 - Etiquetas de Código de Barras 1,5 x 5,1 (Contínuo)', 'P');
end.

