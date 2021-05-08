unit SimplePed.Model.Connection.RestDW;

interface

uses
  System.SysUtils, System.Classes, uDWAbout, uRESTDWPoolerDB;

type
  TModelConnection = class(TDataModule)
    RESTDWDataBase1: TRESTDWDataBase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelConnection: TModelConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
