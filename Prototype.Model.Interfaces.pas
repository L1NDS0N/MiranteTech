unit Prototype.Model.Interfaces;

interface

Type
  iPrototype<T> = interface
    ['{E6D4D28E-512A-48F1-B5AC-ED8C0BE53739}']
    function Clone: T;
  end;

  iItens = interface
    ['{C4EFBF98-B9AC-47F8-B9D5-BA9BD95FD3D1}']
    procedure SetCodigo(const Value: Integer);
    procedure SetDescricao(const Value: String);
    function GetCodigo: Integer;
    function GetDescricao: String;
    property Codigo: Integer read GetCodigo write SetCodigo;
    property Descricao: String read GetDescricao write SetDescricao;
    function GetPrecoUnitario: Currency;
    procedure SetPrecoUnitario(const Value: Currency);
    property PrecoUnitario: Currency read GetPrecoUnitario write SetPrecoUnitario;
    function Prototype: iPrototype<iItens>;
    function PrecoVenda: Currency;

  end;

implementation

end.
