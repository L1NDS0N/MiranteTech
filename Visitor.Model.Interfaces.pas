unit Visitor.Model.Interfaces;

interface

type

  iVisitor = interface;
  iVisitable = interface;

  iItem = interface
    ['{8C391D67-9C26-4D70-9999-D7E8CFE12C61}']
    function SetPrecoUnitario(Value: Currency): iItem;
    function PrecoUnitario: Currency;
    function Regras: iVisitable;
  end;

  iItemRegras = interface
    ['{49875506-5ED0-4C0C-B490-A7F5BF2C463A}']
    function PrecoVenda: Currency;
    function PrecoPromocao: Currency;
    function Visitor: iVisitor;

  end;

  iVisitor = interface
    ['{6A01CCAF-9B0D-4CFF-9CB2-75EDCF94A804}']
    function Visit(Value: iItem): iItemRegras;
  end;

  iVisitable = interface
    ['{F0446B4C-8ECF-4331-AC40-869017AA93FD}']
    function Accept(Value: iVisitor): iItemRegras;
  end;

implementation

end.
