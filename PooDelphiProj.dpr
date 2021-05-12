program PooDelphiProj;

uses
  Vcl.Forms,
  POOApp in 'POOApp.pas' {frmPrincipal},
  POODelphi.Model.Pessoa.Interfaces in 'models\POODelphi.Model.Pessoa.Interfaces.pas',
  POODelphi.Model.Pessoa in 'models\POODelphi.Model.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
