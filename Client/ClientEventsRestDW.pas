unit ClientEventsRestDW;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDWAbout,
  uRESTDWPoolerDB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData;

type
  TForm2 = class(TForm)
    RESTDWDataBase1: TRESTDWDataBase;
    RESTDWClientSQL1: TRESTDWClientSQL;
    DBGrid1: TDBGrid;
    btBuscar: TButton;
    DataSource1: TDataSource;
    btInserir: TButton;
    brAtualizar: TButton;
    btDelete: TButton;
    procedure btBuscarClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure brAtualizarClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure RESTDWClientSQL1AfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ApplyUpdate(aDataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ApplyUpdate(aDataSet: TDataSet);
var
vError: string;
begin
  if not RESTDWClientSQL1.ApplyUpdates(vError) then
    raise Exception.Create(vError);
end;

procedure TForm2.brAtualizarClick(Sender: TObject);
begin
  RESTDWClientSQL1.Edit;
  RESTDWClientSQL1.FieldByName('ID').AsString := '200';
  RESTDWClientSQL1.Post;

end;

procedure TForm2.btBuscarClick(Sender: TObject);
begin
  RESTDWClientSQL1.Close;
  RESTDWClientSQL1.SQL.Clear;
  RESTDWClientSQL1.SQL.Add('SELECT * FROM NOME');
  RESTDWClientSQL1.Open;
end;

procedure TForm2.btDeleteClick(Sender: TObject);
begin
  RESTDWClientSQL1.Delete;
end;

procedure TForm2.btInserirClick(Sender: TObject);
var
  vError: string;
begin
  // Utilizando RAID:
//  RESTDWClientSQL1.Append;
//  RESTDWClientSQL1.FieldByName('ID').AsString := '32165';
//  RESTDWClientSQL1.Post;
// Utilizando queries SQL:
  RESTDWClientSQL1.SQL.Clear;
  RESTDWClientSQL1.SQL.Add('INSERT INTO NOME (ID, POSICAO, MENINO_W ) VALUES (:ID, :POSICAO, :MENINO_W)');

  RESTDWClientSQL1.ParamByName('ID').Value := '201';
  RESTDWClientSQL1.ParamByName('POSICAO').Value := '201';
  RESTDWClientSQL1.ParamByName('MENINO_W').Value := 'Lindson';

  if not RESTDWClientSQL1.ExecSQL(vError) then
    raise Exception.Create(vError);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  RESTDWClientSQL1.AfterPost := ApplyUpdate;
    RESTDWClientSQL1.AfterDelete := ApplyUpdate;
end;

procedure TForm2.RESTDWClientSQL1AfterDelete(DataSet: TDataSet);
var
  vError: string;
begin
  if not RESTDWClientSQL1.ApplyUpdates(vError) then
    raise Exception.Create(vError);
end;
end.

