unit U_SimpleORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client, SimpleDAO,
  SimpleInterface, Entidade.Pedido, SimpleQueryFiredac;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    btBuscar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    DAOPedido: iSimpleDAO<TPEDIDO>;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btBuscarClick(Sender: TObject);
begin
  DAOPedido.Find;
end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  Edit1.Text := DataSource1.DataSet.FieldByName('ID').AsString;
  Edit2.Text := DataSource1.DataSet.FieldByName('NOME').AsString;
  Edit3.Text := DataSource1.DataSet.FieldByName('DATA').AsString;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  Conn: iSimpleQuery;
begin
  Conn := TSimpleQueryFiredac.New(FDConnection1);
  DAOPedido := TSimpleDAO<TPEDIDO>.New(Conn).DataSource(DataSource1).BindForm(Self);
end;

end.

