unit Visitor.Model.Item.Regra.Atacado;

interface

uses
  Visitor.Model.Interfaces;

type
  TModelItemRegraAtacado = class(TInterfacedObject, iItemRegras, iVisitor)
    private
      FVisit: iItem;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iItemRegras;
      function PrecoVenda: Currency;
      function PrecoPromocao: Currency;
      function Visit(Value: iItem): iItemRegras;
      function Visitor: iVisitor;
  end;

implementation

{ TModelItemRegraAtacado }

constructor TModelItemRegraAtacado.Create;
begin

end;

destructor TModelItemRegraAtacado.Destroy;
begin

inherited;
end;

class function TModelItemRegraAtacado.New: iItemRegras;
begin

end;

function TModelItemRegraAtacado.PrecoPromocao: Currency;
begin
Result := (FVisit.PrecoUnitario * 0.6);
end;

function TModelItemRegraAtacado.PrecoVenda: Currency;
begin
Result := (FVisit.PrecoUnitario * 0.2);
end;

function TModelItemRegraAtacado.Visit(Value: iItem): iItemRegras;
begin
FVisit := Value;
Result := Self;
end;

function TModelItemRegraAtacado.Visitor: iVisitor;
begin
Result := Self;
end;

end.
