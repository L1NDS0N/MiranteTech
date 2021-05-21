unit State.Model.Interfaces;

interface

type
  iState<T> = interface;
  iItemOperacoes = interface;

  iItem = interface
    ['{8A06C456-2CB6-4886-A4E2-02A7D13B8502}']
    function State: iState<iItemOperacoes>;
    function Operacoes : iItemOperacoes;
  end;

  iItemOperacoes = interface
    ['{4868BE11-729A-45DF-B21C-43E6068D92B8}']
    function Vender: iItemOperacoes;
    function Cancelar: iItemOperacoes;
    function Desconto: iItemOperacoes;
    function Devolver: iItemOperacoes;
  end;

  iState<T> = interface
    function SetState(Value: T): T;
  end;

implementation

end.
