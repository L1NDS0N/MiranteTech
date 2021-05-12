unit POODelphi.Model.PessoaFisica;

interface

uses
  POODelphi.Model.Pessoa.Interfaces;

type
  TModelPessoaFisica = class(TInterfacedObject, iPessoa)
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

constructor TModelPessoaFisica.Create;
begin

end;

destructor TModelPessoaFisica.Destroy;
begin

  inherited;
end;

class function TModelPessoaFisica.New: iPessoa;
begin
  REsult := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: string): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaFisica.NomeCompleto: string;
begin
  Result := FNome + ' ' + FSobrenome;
end;

function TModelPessoaFisica.Sobrenome(Value: string): iPessoa;
begin
  Result := Self;
  FSobrenome := Value;
end;

end.

