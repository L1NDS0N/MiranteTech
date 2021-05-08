unit SimplePed.Controller.Interfaces;

interface

uses
  SimplePed.Controller.Produto.Interfaces;

type
  iController = interface
    ['{0C260984-6EA3-4CCE-A1ED-B4F6844F60EC}']
    function Produto: iControllerProduto;
  end;

implementation

end.

