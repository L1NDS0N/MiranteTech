unit SimplePed.Model.Produto.Interfaces;

interface

uses
  SimplePed.Model.Entity.Produto, SimpleInterface, Data.DB;

type
  iModelProduto = interface
    ['{882F51AE-F07E-44A3-8B51-DB05AF66C257}']
    function Entidade: TPRODUTO;
    function DAO: iSimpleDAO<TPRODUTO>;
    function DataSource(aDataSource : TDataSource) : iModelProduto;
  end;

implementation

end.
