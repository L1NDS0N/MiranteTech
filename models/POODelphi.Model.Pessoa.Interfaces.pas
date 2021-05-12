unit POODelphi.Model.Pessoa.Interfaces;

interface

type
  iPessoa = interface
    ['{0B449DC4-A046-404E-B1AC-72B6D06FE9E1}']
    function Nome (Value: String): iPessoa;
    function Sobrenome (Value : String) : iPessoa;
    function NomeCompleto : string;
  end;


implementation

end.

