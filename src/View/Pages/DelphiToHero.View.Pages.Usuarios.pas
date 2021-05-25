unit DelphiToHero.View.Pages.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DelphiToHero.View.Pages.Form.Template,
  Vcl.ExtCtrls, Vcl.StdCtrls, Bind4D, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, System.ImageList, Vcl.ImgList, cxButtons;

type
  [ClassToBind('/users', 'id', 'Cadastro de usuários')]
  TPageUsuarios = class(TFormTemplate)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageUsuarios: TPageUsuarios;

implementation

{$R *.dfm}

end.
