unit Prototype.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Generics.Collections, Prototype.Model.Interfaces;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure ExibeItens;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    private
      { Private declarations }
      FLista: TList<iItens>;
    public
      { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Prototype.Model.Itens;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Item: iItens;
begin
Item := TItens.New;
Item.Codigo := StrToInt(Edit1.Text);
Item.Descricao := Edit2.Text;
FLista.Add(Item);
ExibeItens;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
FLista.Add(FLista[Pred(FLista.Count)].Prototype.Clone);
ExibeItens;
end;

procedure TForm1.ExibeItens;
var
  I: Integer;
begin
Memo1.Lines.Clear;
for I := 0 to Pred(FLista.Count) do
  Memo1.Lines.Add(FLista[I].Codigo.ToString + ' - ' + FLista[I].Descricao + FormatCurr(' R$ #,##0.00',
      FLista[I].PrecoVenda));

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
FLista := TList<iItens>.Create;
end;

end.
