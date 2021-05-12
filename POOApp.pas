unit POOApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  POODelphi.Model.Pessoa;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(TModelPessoa.New.Nome(Edit1.Text).Sobrenome(Edit2.Text).NomeCompleto);
end;

end.

