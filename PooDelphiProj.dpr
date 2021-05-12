program PooDelphiProj;

uses
  Vcl.Forms,
  POOApp in 'POOApp.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
