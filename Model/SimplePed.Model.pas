unit SimplePed.Model;

interface

uses
  SimplePed.Model.Produto.Interfaces, SimplePed.Model.Interfaces;

type
  TModel = class(TInterfacedObject, iModel)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModel;
    function Produto: iModelProduto;
  end;

implementation

uses
  SimplePed.Model.Produto;

{ TModel }

constructor TModel.Create;
begin

end;

destructor TModel.Destroy;
begin

  inherited;
end;

class function TModel.New: iModel;
begin

end;

function TModel.Produto: iModelproduto;
begin
  Result := TModelProduto.New;
end;

end.

