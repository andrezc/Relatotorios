unit UDatMos;

interface

uses
  SysUtils, Classes, frxClass, frxDBSet, DB, IB_Components, IBODataset;

type
  Ta = class(TDataModule)
    IBODatabase1: TIBODatabase;
    frxDBDatasetEmpresa: TfrxDBDataset;
    IBOQueryEmpresa: TIBOQuery;
    QueryF1: TIBOQuery;
    DSetF1: TfrxDBDataset;
    QueryE1: TIBOQuery;
    DSetE1: TfrxDBDataset;
    QueryE2: TIBOQuery;
    DSetE2: TfrxDBDataset;
    QueryV1: TIBOQuery;
    DSetV1: TfrxDBDataset;
    QueryV2: TIBOQuery;
    DSetV2: TfrxDBDataset;
    QueryV3: TIBOQuery;
    DSetV3: TfrxDBDataset;
    QueryV4: TIBOQuery;
    DSetV4: TfrxDBDataset;
    QueryV5: TIBOQuery;
    DSetV5: TfrxDBDataset;
    QueryV6: TIBOQuery;
    DSetV6: TfrxDBDataset;
    QueryV7: TIBOQuery;
    DSetV7: TfrxDBDataset;
    QueryV8: TIBOQuery;
    DSetV8: TfrxDBDataset;
    QueryV9: TIBOQuery;
    DSetV9: TfrxDBDataset;
    QueryV10: TIBOQuery;
    DSetV10: TfrxDBDataset;
    QueryV11: TIBOQuery;
    DSetV11: TfrxDBDataset;
    QueryV12: TIBOQuery;
    DSetV12: TfrxDBDataset;
    QueryV13: TIBOQuery;
    DSetV13: TfrxDBDataset;
    QueryV14: TIBOQuery;
    DSetV14: TfrxDBDataset;
    QueryV15: TIBOQuery;
    DSetV15: TfrxDBDataset;
    QueryV16: TIBOQuery;
    DSetV16: TfrxDBDataset;
    QueryV17: TIBOQuery;
    DSetV17: TfrxDBDataset;
    QueryV18: TIBOQuery;
    DSetV18: TfrxDBDataset;
    QueryV19: TIBOQuery;
    DSetV19: TfrxDBDataset;
    QueryV20: TIBOQuery;
    DSetV20: TfrxDBDataset;
    QueryV21: TIBOQuery;
    DSetV21: TfrxDBDataset;
    QueryV22: TIBOQuery;
    DSetV22: TfrxDBDataset;
    QueryCP1: TIBOQuery;
    DSetCP1: TfrxDBDataset;
    QueryCP2: TIBOQuery;
    DSetCP2: TfrxDBDataset;
    QueryCR1: TIBOQuery;
    DSetCR1: TfrxDBDataset;
    QueryCR2: TIBOQuery;
    DSetCR2: TfrxDBDataset;
    QueryCR3: TIBOQuery;
    DSetCR3: TfrxDBDataset;
    QueryCR4: TIBOQuery;
    DSetCR4: TfrxDBDataset;
    QueryCR5: TIBOQuery;
    DSetCR5: TfrxDBDataset;
    QueryCR6: TIBOQuery;
    DSetCR6: TfrxDBDataset;
    QueryCR7: TIBOQuery;
    DSetCR7: TfrxDBDataset;
    QueryCR8: TIBOQuery;
    DSetCR8: TfrxDBDataset;
    QueryCR9: TIBOQuery;
    DSetCR9: TfrxDBDataset;
    QueryCR10: TIBOQuery;
    DSetCR10: TfrxDBDataset;
    DSetFechaCaixa: TfrxDBDataset;
    QueryFechamento: TIBOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  a: Ta;

implementation

{$R *.dfm}

end.
