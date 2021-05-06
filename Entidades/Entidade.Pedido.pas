unit Entidade.Pedido;

interface

uses
  SimpleAttributes;

type
  [Tabela('PEDIDO')]
  TPEDIDO = class
  private
    FID: Integer;
    FNOME: string;
    FDATA: TDateTime;
    procedure SETID(const Value: Integer);
    procedure SETNOME(const Value: string);
    procedure SETDATA(const Value: TDateTime);
  public
    constructor Create;
    destructor Destroy; override;
  published
    [PK,
    AutoInc]
    [Campo('ID'),
    Pk,
    AutoInc]
    property ID: Integer read FID write SetID;
    [Campo('NOME')]
    property CLIENTE: string read FNOME write SetNOME;
    [Campo('DATA')]
    property DATA: TDatetime read FDATA write SetDATA;
  end;

implementation

{ TPEDIDO }

constructor TPEDIDO.Create;
begin

end;

destructor TPEDIDO.Destroy;
begin

  inherited;
end;

procedure TPEDIDO.SETDATA(const Value: TDateTime);
begin

end;

procedure TPEDIDO.SETID(const Value: Integer);
begin

end;

procedure TPEDIDO.SETNOME(const Value: string);
begin

end;

end.

