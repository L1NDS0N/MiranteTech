unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Fornecedores1: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Usurios1: TMenuItem;
    Funcionrios1: TMenuItem;
    Cargos1: TMenuItem;
    procedure Usurios1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses Usuarios, Funcionarios, Cargos;

procedure TfrmMenu.Cargos1Click(Sender: TObject);
begin
  frmCargos := TfrmCargos.Create(Self);
  frmCargos.ShowModal;
end;

procedure TfrmMenu.Funcionrios1Click(Sender: TObject);
begin
  frmFuncionarios := TfrmFuncionarios.Create(Self);
  frmFuncionarios.ShowModal;
end;

procedure TfrmMenu.Usurios1Click(Sender: TObject);
begin
  frmUsuarios := TfrmUsuarios.Create(Self);
  frmUsuarios.ShowModal;
end;

end.
