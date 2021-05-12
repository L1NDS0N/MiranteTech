unit POODelphi.Controller.Pessoa;

interface

uses
  POODelphi.Controller.Pessoa.Interfaces, POODelphi.Model.Pessoa.Interfaces;

type
  TControllerPessoa = class(TInterfacedObject, iControllerPessoa)

  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerPessoa;
    function Pessoa(Value: TTypePessoa): iPessoa;
  end;

implementation

uses
  POODelphi.Model.Pessoa.Factory;

{ TControllerPessoa }

constructor TControllerPessoa.Create;
begin

end;

destructor TControllerPessoa.Destroy;
begin

  inherited;
end;

class function TControllerPessoa.New: iControllerPessoa;
begin
  Result := Self.Create;
end;

function TControllerPessoa.Pessoa(Value: TTypePessoa): iPessoa;
begin
  case Value of
    tpFisica:
      Result := TModelPessoaFactory.New.PessoaFisica;
    tpJuridica:
      Result := TModelPessoaFactory.New.PessoaJuridica;
  end;
end;

end.
