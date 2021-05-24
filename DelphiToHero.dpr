program DelphiToHero;

uses
  Vcl.Forms,
  DelphiToHero.View.Main in 'src\View\DelphiToHero.View.Main.pas' {formPrincipal},
  DelphiToHero.View.Styles.Color in 'src\View\Styles\DelphiToHero.View.Styles.Color.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.Run;
end.
