unit Visitor.Model.Item;

interface

uses
  Visitor.Model.Interfaces;

type
  TModelItem = class(TInterfacedObject, iItem, iItemRegras, iVisitable)
    private
      FPrecoUnitario: Currency;
      FVisitor: iVisitor;

    public
      function SetPrecoUnitario(Value: Currency): iItem;
      function PrecoVenda: Currency;
      function PrecoPromocao: Currency;
      function Accept(Value: iVisitor): iItemRegras;
      function PrecoUnitario: Currency;
      function Visitor: iVisitor;
      function Regras: iVisitable;

      constructor Create;
      destructor Destroy; override;
      class function New: iItem;
  end;

implementation

uses
  Visitor.Model.Item.Regra.Varejo;

{ TModelItem }

function TModelItem.Accept(Value: iVisitor): iItemRegras;
begin
FVisitor := Value;
Result := FVisitor.Visit(Self);
end;

constructor TModelItem.Create;
begin
FVisitor := TModelItemRegraVarejo.New.Visitor;
end;

destructor TModelItem.Destroy;
begin

inherited;
end;

class function TModelItem.New: iItem;
begin
Result := Self.Create;
end;

function TModelItem.PrecoPromocao: Currency;
begin
Result := FVisitor.Visit(Self).PrecoPromocao;
end;

function TModelItem.PrecoUnitario: Currency;
begin
Result := FPrecoUnitario;
end;

function TModelItem.PrecoVenda: Currency;
begin
Result := FVisitor.Visit(Self).PrecoVenda;
end;

function TModelItem.Regras: iVisitable;
begin
Result := Self;
end;

function TModelItem.SetPrecoUnitario(Value: Currency): iItem;
begin
Result := Self;
FPrecoUnitario := Value;
end;

function TModelItem.Visitor: iVisitor;
begin
Result := FVisitor;
end;

end.
