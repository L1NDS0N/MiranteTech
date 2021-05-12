unit POODelphi.Model.PessoaFisica;

interface

uses
  POODelphi.Model.Pessoa.Interfaces;

type
  TModelPessoaFisica = class(TInterfacedObject, iPessoa)
  private
    FNome: string;
    FSobrenome: string;
    FDisplay: TEvDisplay;
    function Nome(Value: string): iPessoa;
    function Sobrenome(Value: string): iPessoa;
    function NomeCompleto: iPessoa;
    function Display(Value: TEvDisplay): iPessoa;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iPessoa;
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

function TModelPessoaFisica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

class function TModelPessoaFisica.New: iPessoa;
begin
  REsult := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: string): iPessoa;
begin
  REsult := Self;
  FNome := Value;
end;

function TModelPessoaFisica.NomeCompleto: iPessoa;
begin
  REsult := Self;
  FDisplay(FNome + ' ' + FSobrenome);
end;

function TModelPessoaFisica.Sobrenome(Value: string): iPessoa;
begin
  REsult := Self;
  FSobrenome := Value;
end;

end.
