unit POOApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, POODelphi.Model.Pessoa.Interfaces;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPessoa: iPessoa;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  POODelphi.Model.Pessoa.Factory;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(FPessoa.Nome(Edit1.Text).Sobrenome(Edit2.Text).NomeCompleto);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FPessoa := TModelPessoaFactory.New.PessoaFisica;
end;

end.
