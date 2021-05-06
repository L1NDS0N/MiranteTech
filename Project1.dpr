program Project1;

uses
  Vcl.Forms,
  U_SimpleORM in 'U_SimpleORM.pas' {Form1},
  Entidade.Pedido in 'Entidades\Entidade.Pedido.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
