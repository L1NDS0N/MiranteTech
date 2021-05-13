unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    imgFundo: TImage;
    pnlLogin: TPanel;
    imgLoginTemplate: TImage;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    btnEntrar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure Login;
    procedure btnEntrarClick(Sender: TObject);
  private

    procedure centralizarPainel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.btnEntrarClick(Sender: TObject);
begin
  if Trim(edtUsuario.Text) = '' then
  begin
    MessageDlg('Preencha o campo de usuário', mtError, mbOKCancel, 0);
    edtUsuario.SetFocus;
    exit;
  end;
      Login;
//    é necessário testar se a função Trim vai apagar espaços de senhas com espaço.
     if Trim(edtSenha.Text) = '' then
  begin
    MessageDlg('Preencha o campo de Senha', mtError, mbOKCancel, 0);
    edtSenha.SetFocus;
    exit;
  end;
end;

procedure TFrmLogin.centralizarPainel;
begin
  pnlLogin.Top := (Self.Height div 2) - (pnlLogin.Height div 2);
  pnlLogin.Left := (Self.Width div 2) - (pnlLogin.Width div 2);
end;

procedure TFrmLogin.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  centralizarPainel;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  // Alinhar ao centro =>
  centralizarPainel;

end;

procedure TFrmLogin.Login;
begin
  // login code
end;

end.
