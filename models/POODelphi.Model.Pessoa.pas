unit POODelphi.Model.Pessoa;

interface

uses
  POODelphi.Model.Pessoa.Interfaces;

type
  TModelPessoa = class(TInterfacedObject, iPessoa)
  private
    FNome: string;
    FSobrenome: string;
    function Nome(Value: string): iPessoa;
    function Sobrenome(Value: string): iPessoa;
    function NomeCompleto: string;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iPessoa;
  end;

implementation

{ TModelPessoa }

constructor TModelPessoa.Create;
begin

end;

destructor TModelPessoa.Destroy;
begin

  inherited;
end;

class function TModelPessoa.New: iPessoa;
begin
  REsult := Self.Create;
end;

function TModelPessoa.Nome(Value: string): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoa.NomeCompleto: string;
begin
  Result := FNome + ' ' + FSobrenome;
end;

function TModelPessoa.Sobrenome(Value: string): iPessoa;
begin
  Result := Self;
  FSobrenome := Value;
end;

end.

