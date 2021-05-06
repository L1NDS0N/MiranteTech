unit Unit1;

interface

uses
  System.SysUtils, System.Classes, uDWDatamodule, uDWAbout, uRESTDWServerEvents,
  uDWJSONObject, System.Json, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  uRESTDWPoolerDB, uRestDWDriverFD, FireDAC.Phys.IBBase, FireDAC.Comp.UI;

type
  TDataModule2 = class(TServerMethodDataModule)
    DWServerEvents1: TDWServerEvents;
    con1: TFDConnection;
    RESTDWPoolerDB1: TRESTDWPoolerDB;
    RESTDWDriverFD1: TRESTDWDriverFD;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DWServerEvents1EventstesteReplyEvent(var Params: TDWParams; var Result: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.DWServerEvents1EventstesteReplyEvent(var Params: TDWParams; var Result: string);
var
  Json: TJsonObject;
begin
  Json := TJSONObject.Create;
  try
    Json.AddPair('Nome', 'Lindson França');
    Json.AddPair('Nome', 'Lindson França');
    Json.AddPair('Nome', 'Lindson França');
    Result := Json.ToJSON;
  finally
    FreeAndNil(Json);
  end;

end;

end.

