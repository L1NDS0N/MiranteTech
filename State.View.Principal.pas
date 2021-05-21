unit State.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, State.Model.Interfaces;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    private
      { Private declarations }
      FItem: iItem;
    public
      { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  State.Model.Item, State.Model.Item.Ativo, State.Model.Item.Vendido,
  State.Model.Item.Inativo;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FItem.State.SetState(TModelItemAtivo.New);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FItem.State.SetState(TModelItemVendido.New);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FItem.State.SetState(TModelItemInativo.New);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   FItem.Operacoes.Vender;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   FItem.Operacoes.Cancelar;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
   FItem.Operacoes.Desconto;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
   FItem.Operacoes.Devolver;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
FItem := TModelItem.New;
end;

end.
