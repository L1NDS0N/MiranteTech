unit State.Model.Item;

interface

uses
  State.Model.Interfaces;

type
  TModelItem = class(TInterfacedObject, iItem, iItemOperacoes, iState<iItemOperacoes>)
    private
      FState: iItemOperacoes;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iItem;

      function Vender: iItemOperacoes;
      function Cancelar: iItemOperacoes;
      function Desconto: iItemOperacoes;
      function Devolver: iItemOperacoes;
      function SetState(Value: iItemOperacoes): iItemOperacoes;
      function State: iState<iItemOperacoes>;
      function Operacoes: iItemOperacoes;
  end;

implementation

uses
  State.Model.Item.Ativo, State.Model.Item.Vendido;

{ TModelItem }

function TModelItem.Cancelar: iItemOperacoes;
begin
FState.Cancelar;
// Implementa o código de cancelamento
FState := TModelItemAtivo.New;
Result := Self;
end;

constructor TModelItem.Create;
begin
FState := TModelItemAtivo.New;
end;

function TModelItem.Desconto: iItemOperacoes;
begin
FState.Desconto;
// Implementa o código
Result := Self;
end;

destructor TModelItem.Destroy;
begin

inherited;
end;

function TModelItem.Devolver: iItemOperacoes;
begin
FState.Devolver;
// Implementa o código
FState := TModelItemAtivo.New;
Result := Self;
end;

class function TModelItem.New: iItem;
begin
Result := Self.Create;
end;

function TModelItem.Operacoes: iItemOperacoes;
begin
Result := Self;
end;

function TModelItem.SetState(Value: iItemOperacoes): iItemOperacoes;
begin
Result := Self;
// Implementa o código
FState := Value;
end;

function TModelItem.State: iState<iItemOperacoes>;
begin
Result := Self;
end;

function TModelItem.Vender: iItemOperacoes;
begin
FState.Vender;
// Implementa o código
FState := TModelItemVendido.New;
Result := Self;
end;

end.
