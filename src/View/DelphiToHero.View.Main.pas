unit DelphiToHero.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Bind4D,
  Bind4D.Attributes,
  Bind4D.Types;

type
  TformPrincipal = class(TForm)
    pnlMain: TPanel;
    pnlMenu: TPanel;
    pnlFull: TPanel;
    pnlTop: TPanel;
    pnlPrincipal: TPanel;
    pnlLogo: TPanel;
    [ImageAttribute('ico_menu')]
    btnPrincipal: TSpeedButton;
    [ImageAttribute('ico_usuario')]
    btnUsuarios: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnUsuariosClick(Sender: TObject);
    procedure btnPrincipalClick(Sender: TObject);

    private
      procedure ApplyStyle;
      { Private declarations }
    public
      { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

uses
  Router4D,
  DelphiToHero.View.Styles.Color, DelphiToHero.View.Pages.Principal;

{$R *.dfm}

procedure TformPrincipal.btnPrincipalClick(Sender: TObject);
begin
TRouter4D.Link.&To('Principal');
end;

procedure TformPrincipal.btnUsuariosClick(Sender: TObject);
begin
TRouter4D.Link.&To('Usuarios');
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
ApplyStyle;
TRouter4D.Render<TPagePrincipal>.SetElement(pnlPrincipal, pnlMain);
TBind4D.New.Form(Self).SetImageComponents.SetStyleComponents;
end;

procedure TformPrincipal.ApplyStyle;
begin
pnlPrincipal.Color := COLOR_BACKGROUND;
pnlTop.Color := COLOR_BACKGROUND_TOP;
pnlLogo.Color := COLOR_BACKGROUND_DESTAK;
pnlMenu.Color := COLOR_BACKGROUND_MENU;
Self.Font.Color := FONT_COLOR;
Self.Font.Size := FONT_H6;
Self.Font.Name := FONT_NAME;
end;

end.
