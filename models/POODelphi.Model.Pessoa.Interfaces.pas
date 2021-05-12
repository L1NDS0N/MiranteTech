unit POODelphi.Model.Pessoa.Interfaces;

interface

type
  iPessoa = interface
    ['{0B449DC4-A046-404E-B1AC-72B6D06FE9E1}']
    function Nome(Value: String): iPessoa;
    function Sobrenome(Value: String): iPessoa;
    function NomeCompleto: string;
  end;

  iPessoaFactory = interface
    ['{95D48165-D4D1-41B9-A6B9-391AE874342B}']
    function PessoaFisica: iPessoa;
    function PessoaJuridica: iPessoa;

  end;

implementation

end.
