unit State.Model.Item.Vendido;

interface

uses
  State.Model.Interfaces;

type
  TModelItemVendido = class(TInterfacedObject, iItemOperacoes)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iItemOperacoes;
      function Vender: iItemOperacoes;
      function Cancelar: iItemOperacoes;
      function Desconto: iItemOperacoes;
      function Devolver: iItemOperacoes;
  end;

implementation

uses
  System.SysUtils;

{ TModelItemVendido }

function TModelItemVendido.Cancelar: iItemOperacoes;
begin
Result := Self;
end;

constructor TModelItemVendido.Create;
begin

end;

function TModelItemVendido.Desconto: iItemOperacoes;
begin
Result := Self;
end;

destructor TModelItemVendido.Destroy;
begin

inherited;
end;

function TModelItemVendido.Devolver: iItemOperacoes;
begin
Result := Self;
end;

class function TModelItemVendido.New: iItemOperacoes;
begin
Result := Self.Create;
end;

function TModelItemVendido.Vender: iItemOperacoes;
begin
Result := Self;
raise Exception.Create('Este item já foi vendido');
end;

end.
