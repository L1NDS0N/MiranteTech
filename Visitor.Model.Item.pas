unit Visitor.Model.Item;

interface

uses
  Visitor.Model.Interfaces;

type
  TModelItem = class(TInterfacedObject, iItem, iItemRegras)
    private
      FPrecoUnitario: Currency;

    public
      function SetPrecoUnitario(Value: Currency): iItem;
      function PrecoVenda: Currency;
      function PrecoPromocao: Currency;
      constructor Create;
      destructor Destroy; override;
      class function New: iItem;
  end;

implementation

{ TModelItem }

constructor TModelItem.Create;
begin

end;

destructor TModelItem.Destroy;
begin

inherited;
end;

class function TModelItem.New: iItem;
begin

end;

function TModelItem.PrecoPromocao: Currency;
begin
Result := 0;
end;

function TModelItem.PrecoVenda: Currency;
begin
Result := 0;
end;

function TModelItem.SetPrecoUnitario(Value: Currency): iItem;
begin
FPrecoUnitario := Value;
end;

end.
