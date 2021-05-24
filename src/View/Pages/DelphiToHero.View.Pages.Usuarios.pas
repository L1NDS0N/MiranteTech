unit DelphiToHero.View.Pages.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Router4D.Interfaces;

type
  TPageUsuarios = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
      function Render: TForm;
      procedure UnRender;
  end;

var
  PageUsuarios: TPageUsuarios;

implementation

uses
  DelphiToHero.View.Styles.Color;

{$R *.dfm}
{ TPageUsuarios }

procedure TPageUsuarios.FormCreate(Sender: TObject);
begin
 Panel1.Color := COLOR_BACKGROUND;
end;

function TPageUsuarios.Render: TForm;
begin
Result := Self;
end;

procedure TPageUsuarios.UnRender;
begin

end;

end.
