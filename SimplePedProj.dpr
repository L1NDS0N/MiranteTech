program SimplePedProj;

uses
  Vcl.Forms,
  SimplePed.View.Principal in 'View\SimplePed.View.Principal.pas' {ViewPrincipal},
  SimplePed.Model.Entity.Pedido in 'Model\Entity\SimplePed.Model.Entity.Pedido.pas',
  SimplePed.Model.Entity.PedidoItens in 'Model\Entity\SimplePed.Model.Entity.PedidoItens.pas',
  SimplePed.Model.Entity.Produto in 'Model\Entity\SimplePed.Model.Entity.Produto.pas',
  SimplePed.Model.Connection.RestDW in 'Model\Connection\SimplePed.Model.Connection.RestDW.pas' {ModelConnection: TDataModule},
  SimplePed.Model.Produto in 'Model\Produto\SimplePed.Model.Produto.pas',
  SimplePed.Model.Produto.Interfaces in 'Model\Produto\SimplePed.Model.Produto.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TModelConnection, ModelConnection);
  Application.Run;
end.
