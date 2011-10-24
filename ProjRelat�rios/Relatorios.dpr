program Relatorios;

uses
  Forms,
  UTela1 in 'UTela1.pas' {Form1},
  UDatMos in 'UDatMos.pas' {a: TDataModule},
  DMProv in 'DMProv.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Ta, a);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
