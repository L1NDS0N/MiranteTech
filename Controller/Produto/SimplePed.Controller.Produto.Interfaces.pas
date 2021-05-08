unit SimplePed.Controller.Produto.Interfaces;

interface

uses
  Data.DB, SimplePed.Model.Entity.Produto;

type
  iControllerProduto = interface
    ['{1620330C-0F72-4070-A16F-3D2B636EAE99}']
    function DataSource(aDataSource: TDataSource): iControllerProduto;
    function Buscar: iControllerProduto; overload;
    function Buscar(aId: Integer): iControllerProduto; overload;
    function Buscar(aDescricao: string): iControllerProduto; overload;
    function Insert: iControllerProduto;
    function Delete: iControllerProduto;
    function Update: iControllerProduto;
    function Entidade: TPRODUTO;
  end;

implementation

end.

