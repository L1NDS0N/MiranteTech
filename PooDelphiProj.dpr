program PooDelphiProj;

uses
  Vcl.Forms,
  POOApp in 'POOApp.pas' {frmPrincipal},
  POODelphi.Model.Pessoa.Interfaces in 'models\POODelphi.Model.Pessoa.Interfaces.pas',
  POODelphi.Model.PessoaFisica in 'models\POODelphi.Model.PessoaFisica.pas',
  POODelphi.Model.PessoaJuridica in 'models\POODelphi.Model.PessoaJuridica.pas',
  POODelphi.Model.Pessoa.Factory in 'models\POODelphi.Model.Pessoa.Factory.pas',
  POODelphi.Controller.Pessoa in 'models\POODelphi.Controller.Pessoa.pas',
  POODelphi.Controller.Pessoa.Interfaces in 'models\POODelphi.Controller.Pessoa.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
