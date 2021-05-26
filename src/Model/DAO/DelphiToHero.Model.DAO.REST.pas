unit DelphiToHero.Model.DAO.REST;

interface

uses
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Stan.StorageBin,



  DelphiToHero.Model.DAO.Interfaces,
  RESTRequest4D,
  Bind4D,
   Vcl.Forms;

type
  TDAOREST = class(TInterfacedObject, iDAOInterface)
    private
      FDMemTable: TFDMemTable;
      FBaseURL: String;
      FForm : TForm;
      FEndPoint, FPK, FOrder, FSort: String;
    public
      constructor Create(aForm: TForm);
      destructor Destroy; override;
      class function New(aForm: TForm): iDAOInterface;
      function Get: iDAOInterface;
      function Post: iDAOInterface;
      function Put: iDAOInterface;
      function Delete: iDAOInterface;
      function DataSource(aValue: TDataSource): iDAOInterface;
      function DataSet: TDataSet;

  end;

implementation


{ TDAOREST }

constructor TDAOREST.Create(aForm: TForm);
begin
FDMemTable := TFDMemTable.Create(nil);
FBaseURL := 'http://localhost:9000';
FForm := aForm;

TBind4D.New.Form(FForm).BindFormRest(FEndPoint, FPK, FOrder, FSort);
end;

function TDAOREST.DataSet: TDataSet;
begin
Result := FDMemTable;
end;

function TDAOREST.DataSource(aValue: TDataSource): iDAOInterface;
begin
Result := Self;
aValue.DataSet := FDMemTable;
end;

function TDAOREST.Delete: iDAOInterface;
begin

end;

destructor TDAOREST.Destroy;
begin
FDMemTable.Free;
inherited;
end;

function TDAOREST.Get: iDAOInterface;
begin
TRequest
  .New
    .BaseURL(FBaseURL + FEndPoint)
      .Accept('application/json')
    .DataSetAdapter(FDMemTable)
.Get;
end;

class function TDAOREST.New(aForm: TForm): iDAOInterface;
begin
Result := Self.Create(aForm);

end;

function TDAOREST.Post: iDAOInterface;
begin

end;

function TDAOREST.Put: iDAOInterface;
begin

end;

end.
