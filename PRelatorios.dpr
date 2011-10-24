program PRelatorios;

uses
  ExceptionLog,
  Forms,
  UPrincipal in 'UPrincipal.pas' {FrmPrincipal},
  UDtm in 'UDtm.pas' {DataModule1: TDataModule},
  DUtilit in 'C:\Arquivos de programas\Borland\Delphi7\Lib\Componentes\DUtilit\DUtilit.pas',
  UDtmRel in 'UDtmRel.pas' {dmRel: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
