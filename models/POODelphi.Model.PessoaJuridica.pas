unit POODelphi.Model.PessoaJuridica;

interface

uses
  POODelphi.Model.Pessoa.Interfaces;

type
  TModelPessoaJuridica = class(TInterfacedObject, iPessoa)
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

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

class function TModelPessoaJuridica.New: iPessoa;
begin
  REsult := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: string): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaJuridica.NomeCompleto: string;
begin
  Result := FNome + ' ' + FSobrenome + ' LTDA.';
end;

function TModelPessoaJuridica.Sobrenome(Value: string): iPessoa;
begin
  Result := Self;
  FSobrenome := Value;
end;

end.

