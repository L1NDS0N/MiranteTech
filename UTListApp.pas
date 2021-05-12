unit UTListApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections;

type
  TfrmPrincipal = class(TForm)
    edtTexto: TEdit;
    btnAdd: TButton;
    btnRemover: TButton;
    btnListar: TButton;
    btnCapacity: TButton;
    btnCount: TButton;
    btnNotify: TButton;
    mmTexto: TMemo;
    procedure btnAddClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnCapacityClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnNotifyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    ListaStr: TList<String>;
    procedure Notificacao(Sender: TObject;
      const Item, Action: TCollectionNotification);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnAddClick(Sender: TObject);
begin
  ListaStr.Add(edtTexto.Text);
end;

procedure TfrmPrincipal.btnCapacityClick(Sender: TObject);
begin
  mmTexto.Lines.Clear;
  mmTexto.Lines.Add(ListaStr.Capacity.ToString);
end;

procedure TfrmPrincipal.btnCountClick(Sender: TObject);
begin
  mmTexto.Lines.Clear;
  mmTexto.Lines.Add(ListaStr.Count.ToString);
end;

procedure TfrmPrincipal.btnListarClick(Sender: TObject);
var
  I: Integer;
begin
  mmTexto.Lines.Clear;
  for I := 0 to Pred(ListaStr.Count) do
    mmTexto.Lines.Add(ListaStr[I]);
end;

procedure TfrmPrincipal.btnNotifyClick(Sender: TObject);
begin
//  ListaStr.OnNotify := Notificacao;
end;

procedure TfrmPrincipal.btnRemoverClick(Sender: TObject);
begin
  ListaStr.Delete(Pred(ListaStr.Count));
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  ListaStr := TList<String>.Create;
end;

procedure TfrmPrincipal.Notificacao(Sender: TObject; const Item,
  Action: TCollectionNotification);
begin
     case Action of
       cnAdding: ;
       cnAdded: ;
       cnExtracting: ;
       cnExtracted: ;
       cnDeleting: ;
       cnRemoved: ;
     end;
end;

end.
