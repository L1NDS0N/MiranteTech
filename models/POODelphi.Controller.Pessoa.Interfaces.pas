unit POODelphi.Controller.Pessoa.Interfaces;

interface

uses
  POODelphi.Model.Pessoa.Interfaces;

type
  TTypePessoa = (tpFisica, tpJuridica);

  iControllerPessoa = interface
    ['{9DB0ADFE-DCE6-4660-8EB6-327976EA8568}']
    function Pessoa(Value: TTypePessoa): iPessoa;
  end;

implementation

end.
