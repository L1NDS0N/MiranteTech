unit DelphiToHero.View.Pages.Form.Template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Router4D.Interfaces,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons;

type
  TFormTemplate = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ApplyStyle;
    function Render: TForm;
    procedure Unrender;
  public
    { Public declarations }
  end;

var
  FormTemplate: TFormTemplate;

implementation

uses
  DelphiToHero.View.Styles.Color;

{$R *.dfm}
{ TFormTemplate }

procedure TFormTemplate.ApplyStyle;
begin
  Panel1.Color := COLOR_BACKGROUND;
  Panel2.Color := COLOR_C1;
  Panel3.Color := COLOR_BACKGROUND;
  Panel4.Color := COLOR_C1;

  Label1.Font.Size := FONT_H5;
  Label1.Font.Color := FONT_COLOR3;
  Label1.Font.Name := FONT_NAME;

end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
  ApplyStyle;
end;

function TFormTemplate.Render: TForm;
begin
  Result := Self;
end;

procedure TFormTemplate.Unrender;
begin

end;

end.
