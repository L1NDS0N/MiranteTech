unit SimplePed.Model.Entity.PedidoItens;

interface

uses
  SimpleAttributes;

type
  TPedidoItens = class
  private
    FID_PRODUTO: Integer;
    FID_PEDIDO: Integer;
    FVALORUNITARIO: Currency;
    FID: Integer;
    FVALORTOTAL: Currency;
    FQUANTIDADE: Currency;
    procedure SetID(const Value: Integer);
    procedure SetID_PEDIDO(const Value: Integer);
    procedure SetID_PRODUTO(const Value: Integer);
    procedure SetQUANTIDADE(const Value: Currency);
    procedure SetVALORTOTAL(const Value: Currency);
    procedure SetVALORUNITARIO(const Value: Currency);
  published
    [PK,
    AutoInc]
    property ID: Integer read FID write SetID;
    property ID_PEDIDO: Integer read FID_PEDIDO write SetID_PEDIDO;
    property ID_PRODUTO: Integer read FID_PRODUTO write SetID_PRODUTO;
    property VALORUNITARIO: Currency read FVALORUNITARIO write SetVALORUNITARIO;
    property QUANTIDADE: Currency read FQUANTIDADE write SetQUANTIDADE;
    property VALORTOTAL: Currency read FVALORTOTAL write SetVALORTOTAL;
  end;

implementation

{ TPedidoItens }

procedure TPedidoItens.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TPedidoItens.SetID_PEDIDO(const Value: Integer);
begin
  FID_PEDIDO := Value;
end;

procedure TPedidoItens.SetID_PRODUTO(const Value: Integer);
begin
  FID_PRODUTO := Value;
end;

procedure TPedidoItens.SetQUANTIDADE(const Value: Currency);
begin
  FQUANTIDADE := Value;
end;

procedure TPedidoItens.SetVALORTOTAL(const Value: Currency);
begin
  FVALORTOTAL := Value;
end;

procedure TPedidoItens.SetVALORUNITARIO(const Value: Currency);
begin
  FVALORUNITARIO := Value;
end;

end.


