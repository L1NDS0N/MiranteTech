unit Modulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  Tdm = class(TDataModule)
    mySqlDriver: TFDPhysMySQLDriverLink;
    fd: TFDConnection;
    query_cargos: TFDQuery;
    table_cargos: TFDTable;
    query_cargosid: TFDAutoIncField;
    query_cargoscargo: TStringField;
    ds_cargos: TDataSource;
    procedure fdBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses
  Vcl.Forms, Vcl.Dialogs;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  fd.Connected := true;
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
  fd.Connected := false;
end;

procedure Tdm.fdBeforeConnect(Sender: TObject);
begin
  mySqlDriver.VendorLib := ExtractFilePath(Application.ExeName) +
    'libmysql.dll';
end;

end.
