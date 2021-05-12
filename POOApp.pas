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
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
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
  POODelphi.Controller.Pessoa, POODelphi.Controller.Pessoa.Interfaces;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  Memo1.Lines.Add(FPessoa.Nome(Edit1.Text).Sobrenome(Edit2.Text).NomeCompleto);
end;

procedure TfrmPrincipal.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
      FPessoa := TControllerPessoa.New.Pessoa(tpFisica);
    1:
      FPessoa := TControllerPessoa.New.Pessoa(tpJuridica);
  end;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  SpeedButton1.AllowAllUp := not SpeedButton1.AllowAllUp;
  // SpeedButton1.Down := not SpeedButton1.Down;

  if SpeedButton1.AllowAllUp then
  begin
    SpeedButton1.Caption := 'Pessoa Tipo: &Jurídica';
    SpeedButton1.Hint := 'Clique para alterar para pessoa física';
    FPessoa := TControllerPessoa.New.Pessoa(tpJuridica);
  end
  else
  begin
    SpeedButton1.Caption := 'Pessoa Tipo: &Física';
    SpeedButton1.Hint := 'Clique para alterar para pessoa jurídica';
    FPessoa := TControllerPessoa.New.Pessoa(tpFisica);
  end;
end;

end.
