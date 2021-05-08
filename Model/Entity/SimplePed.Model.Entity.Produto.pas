unit SimplePed.Model.Entity.Produto;

interface

uses
  SimpleAttributes;

type
  TPRODUTO = class
  private
    FDESCRICAO: string;
    FVALORUNITARIO: Currency;
    FID: Integer;
    procedure SetDESCRICAO(const Value: string);
    procedure SetID(const Value: Integer);
    procedure SetVALORUNITARIO(const Value: Currency);
  published
    [PK,
    AutoInc]
    property ID: Integer read FID write SetID;
    property DESCRICAO: string read FDESCRICAO write SetDESCRICAO;
    property VALORUNITARIO: Currency read FVALORUNITARIO write SetVALORUNITARIO;
  end;

implementation

{ TPRODUTO }

procedure TPRODUTO.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO := Value;
end;

procedure TPRODUTO.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TPRODUTO.SetVALORUNITARIO(const Value: Currency);
begin
  FVALORUNITARIO := Value;
end;

end.


