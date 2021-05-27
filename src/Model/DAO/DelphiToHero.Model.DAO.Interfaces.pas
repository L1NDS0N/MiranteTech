unit DelphiToHero.Model.DAO.Interfaces;

interface

uses
  Data.DB;

type
  iDAOInterface = interface
    ['{A39C9A74-B5A2-49A9-AD8E-635FCED43A84}']

    function Get: iDAOInterface;
    function Post: iDAOInterface;
    function Put: iDAOInterface;
    function Delete: iDAOInterface;
    function DataSource(aValue: TDataSource): iDAOInterface;
    function DataSet: TDataSet;
    function AddParam(aKey: String; aValue: String): iDAOInterface;

    function Page: Integer; overload;
    function Page(aValue: Integer): iDAOInterface; overload;
    function Limit: Integer; overload;
    function Limit(aValue: Integer): iDAOInterface; overload;
    function Total: Integer; overload;
    function Total(aValue: Integer): iDAOInterface; overload;
    function Pages: Integer; overload;
    function Pages(aValue: Integer): iDAOInterface; overload;
  end;

implementation

end.
