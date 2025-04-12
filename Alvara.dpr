program Alvara;

uses
  Forms,
  Alvara2005 in 'Alvara2005.pas' {Form1},
  USelecionar in 'USelecionar.pas' {frmSelecionar},
  udm in 'udm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Alvara2005/V-2006';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmSelecionar, frmSelecionar);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
