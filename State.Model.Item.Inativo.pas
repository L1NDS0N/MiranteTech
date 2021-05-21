unit State.Model.Item.Inativo;

interface

uses
  State.Model.Interfaces;

type
  TModelItemInativo = class(TInterfacedObject, iItemOperacoes)
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

{ TModelItemInativo }

function TModelItemInativo.Cancelar: iItemOperacoes;
begin
Result := Self;
raise Exception.Create('Este item ainda n�o pode ser cancelado porque est� inativo');
end;

constructor TModelItemInativo.Create;
begin

end;

function TModelItemInativo.Desconto: iItemOperacoes;
begin
Result := Self;
raise Exception.Create('Este item ainda n�o pode ser descontado porque est� inativo');
end;

destructor TModelItemInativo.Destroy;
begin

inherited;
end;

function TModelItemInativo.Devolver: iItemOperacoes;
begin
Result := Self;
raise Exception.Create('Este item ainda n�o pode ser devolvido porque est� inativo');
end;

class function TModelItemInativo.New: iItemOperacoes;
begin
Result := Self.Create;
end;

function TModelItemInativo.Vender: iItemOperacoes;
begin
Result := Self;
raise Exception.Create('Este item ainda n�o pode ser vendido porque est� inativo');
end;

end.
