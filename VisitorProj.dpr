program VisitorProj;

uses
  Vcl.Forms,
  Visitor.View.Principal in 'Visitor.View.Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
