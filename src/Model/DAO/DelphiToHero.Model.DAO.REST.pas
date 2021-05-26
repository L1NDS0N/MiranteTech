unit DelphiToHero.Model.DAO.REST;

interface

uses
  Data.DB,
  Vcl.Forms,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Stan.StorageBin,
  RESTRequest4D,
  DelphiToHero.Model.DAO.Interfaces,
  Bind4D, FireDAC.Comp.Client, System.Generics.Collections;

type
  TDAOREST = class(TInterfacedObject, iDAOInterface)
    private
      FDMemTable: TFDMemTable;
      FBaseURL: String;
      FForm: TForm;
      FEndPoint, FPK, FOrder, FSort: String;
      FParamList: TDictionary<String, String>;

      function PrepareGuuid(aValue: String): String;

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
      function AddParam(aKey: String; aValue: String): iDAOInterface;

  end;

implementation

uses
  System.SysUtils, System.JSON;

{ TDAOREST }

function TDAOREST.AddParam(aKey, aValue: String): iDAOInterface;
begin
Result := Self;
FParamList.Add(aKey, aValue);
end;

constructor TDAOREST.Create(aForm: TForm);
begin
FParamList := TDictionary<String, String>.Create;
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
Result := Self;
TRequest.New.BaseURL(FBaseURL + FEndPoint + '/' + PrepareGuuid(FDMemTable.FieldByName(FPK).AsString))
  .Accept('application/json').Delete;
end;

destructor TDAOREST.Destroy;
begin
FDMemTable.Free;
FParamList.Free;
inherited;
end;

function TDAOREST.Get: iDAOInterface;
var
  aURL: String;
begin
aURL := FBaseURL + FEndPoint + '?';
if FParamList.Count > 0 then
  begin
  for var Param in FParamList do
    begin
    aURL := aURL + Param.Key + '=' + Param.Value + '&';
    end;

  end;
TRequest.New.BaseURL(FBaseURL + FEndPoint).Accept('application/json').DataSetAdapter(FDMemTable).Get;
end;

class function TDAOREST.New(aForm: TForm): iDAOInterface;
begin
Result := Self.Create(aForm);

end;

function TDAOREST.Post: iDAOInterface;
var
  aJson: TJsonObject;
begin
Result := Self;
aJson := TBind4D.New.Form(FForm).FormToJson(fbPost);
try
  TRequest.New.BaseURL(FBaseURL + FEndPoint).Accept('application/json').AddBody(aJson.ToString).Post;
finally
  aJson.Free;
end;

end;

function TDAOREST.PrepareGuuid(aValue: String): String;
begin
Result := StringReplace(aValue, '{', '', [rfReplaceAll]);
Result := StringReplace(Result, '}', '', [rfReplaceAll]);
end;

function TDAOREST.Put: iDAOInterface;
var
  aJson: TJsonObject;
begin
Result := Self;
aJson := TBind4D.New.Form(FForm).FormToJson(fbPut);

try
  TRequest.New.BaseURL(FBaseURL + FEndPoint + '/' + PrepareGuuid(FDMemTable.FieldByName(FPK).AsString))
    .Accept('application/json').AddBody(aJson.ToString).Put;
finally
  aJson.Free;
end;
end;

end.
