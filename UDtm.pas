unit UDtm;

interface

uses
  SysUtils, Classes, IB_Components, IBODataset, DB, IB_Access;

type
  TDataModule1 = class(TDataModule)
    IBODatabase1: TIBODatabase;
    IBOTable1: TIBOTable;
    IBOTransaction1: TIBOTransaction;
    IBOTransaction2: TIBOTransaction;
    IBOTable2: TIBOTable;
  private                        
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
