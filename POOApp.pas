unit POOApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, POODelphi.Model.Pessoa.Interfaces, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
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

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  SpeedButton1.AllowAllUp := not SpeedButton1.AllowAllUp;
//  SpeedButton1.Down := not SpeedButton1.Down;

  if SpeedButton1.AllowAllUp then
  begin
    SpeedButton1.Caption := 'Pessoa Tipo: &Jurídica';
    FPessoa := TModelPessoaFactory.New.PessoaJuridica;
  end
  else
  begin
    SpeedButton1.Caption := 'Pessoa Tipo: &Física';
    FPessoa := TModelPessoaFactory.New.PessoaFisica;
  end;
end;

end.
