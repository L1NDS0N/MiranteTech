program StrategyProj;

uses
  Vcl.Forms,
  Prototype.View.Principal in 'Prototype.View.Principal.pas' {Form1},
  Prototype.Model.Strategy in 'Prototype.Model.Strategy.pas',
  Prototype.Model.Itens in 'Prototype.Model.Itens.pas',
  Prototype.Model.Interfaces in 'Prototype.Model.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
