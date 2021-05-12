unit POODelphi.Model.PessoaJuridica;

interface

uses
  POODelphi.Model.Pessoa.Interfaces;

type
  TModelPessoaJuridica = class(TInterfacedObject, iPessoa)
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

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

function TModelPessoaJuridica.Display(Value: TEvDisplay): iPessoa;
begin
  REsult := Self;
  FDisplay := Value;
end;

class function TModelPessoaJuridica.New: iPessoa;
begin
  REsult := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: string): iPessoa;
begin
  REsult := Self;
  FNome := Value;
end;

function TModelPessoaJuridica.NomeCompleto: iPessoa;
begin
  REsult := Self;
  FDisplay(FNome + ' ' + FSobrenome + ' LTDA.');
end;

function TModelPessoaJuridica.Sobrenome(Value: string): iPessoa;
begin
  REsult := Self;
  FSobrenome := Value;
end;

end.
