program EventsServerRDW;

uses
  Vcl.Forms,
  U_EventsServer in 'U_EventsServer.pas' {Form1},
  Unit1 in 'Unit1.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
