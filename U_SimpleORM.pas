unit U_SimpleORM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.Client, SimpleDAO,
  SimpleInterface, Entidade.Pedido, SimpleQueryFiredac, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  SimpleAttributes, System.Generics.Collections, uDWAbout, uRESTDWPoolerDB, SimpleQueryRestDW;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btBuscar: TButton;
//    [Bind('ID')]
    Edit1: TEdit;
//    [Bind('NOME')]
    Edit2: TEdit;
//    [Bind('DATA')]
    Edit3: TEdit;
    Memo1: TMemo;
    btInserir: TButton;
    btAtualizar: TButton;
    btDelete: TButton;
    RESTDWDataBase1: TRESTDWDataBase;
    procedure FormCreate(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure btInserirClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
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

procedure TForm1.btAtualizarClick(Sender: TObject);
var
  Pedido: TPEDIDO;
begin
  Pedido := TPEDIDO.Create;
  try
    Pedido.ID := StrToInt(Edit1.Text);
    Pedido.NOME := Edit2.Text;
    Pedido.DATA := now;
    DAOPedido.Update(Pedido);
  finally
    Pedido.Free;
    btBuscarClick(nil);
  end;

end;

procedure TForm1.btBuscarClick(Sender: TObject);
var
//  Pedidos: TObjectList<TPEDIDO>;
  Pedido: TPEDIDO;
begin
  DAOPedido.Find;
//  Pedidos := TObjectList<TPEDIDO>.Create;
////  try
////    for Pedido in Pedidos do
////    begin
////
////      Memo1.Lines.Add(Pedido.NOME + DateToStr(Pedido.DATA));
////    end;
////  finally
////    Pedidos.Free;
////  end;

end;

procedure TForm1.btDeleteClick(Sender: TObject);
var
  Pedido: TPEDIDO;
begin
  Pedido := TPEDIDO.Create;
  try
    Pedido.ID := StrToInt(Edit1.Text);
    DAOPedido.Delete(Pedido);
  finally
    Pedido.Free;
    btBuscarClick(nil);
  end;

end;

procedure TForm1.btInserirClick(Sender: TObject);
var
  Pedido: TPEDIDO;
begin
  Pedido := TPEDIDO.Create;
  try
    Pedido.NOME := Edit2.Text;
    Pedido.DATA := now;
    DAOPedido.Insert(Pedido);
  finally
    Pedido.Free;
    btBuscarClick(nil);
  end;
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
  Conn := TSimpleQueryRestDW<TPEDIDO>.New(RESTDWDataBase1);
  DAOPedido := TSimpleDAO<TPEDIDO>.New(Conn).DataSource(DataSource1).BindForm(Self);
end;

end.

