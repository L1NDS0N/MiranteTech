unit SimplePed.Model.Interfaces;

interface

uses
  SimplePed.Model.Produto.Interfaces;

type
  iModel = interface
    ['{05525272-395D-4B22-A4ED-0BDF870A60E1}']
    function Produto: iModelProduto;
  end;

implementation

end.

