unit DelphiToHero.View.Pages.Form.Template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Router4D.Interfaces,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  Bind4D, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Stan.StorageBin, FireDAC.Comp.BatchMove,
  FireDAC.Comp.BatchMove.JSON;

type
  TFormTemplate = class(TForm, iRouter4DComponent)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    ImageList1: TImageList;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Panel5: TPanel;
    Panel6: TPanel;
    linhaSeparadora: TPanel;
    Panel7: TPanel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Panel8: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    procedure FormCreate(Sender: TObject);
    private
      FEndPoint: String;
      FPK: String;
      FTitle: String;
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
Label1.Caption := FTitle;
Panel1.Color := COLOR_BACKGROUND;
Panel2.Color := COLOR_C1;
Panel3.Color := COLOR_BACKGROUND;
Panel4.Color := COLOR_C1;
Panel5.Color := COLOR_BACKGROUND;
Panel6.Color := COLOR_BACKGROUND;
linhaSeparadora.Color := COLOR_C2;
Panel8.Color := COLOR_BACKGROUND;
Panel9.Color := COLOR_BACKGROUND_TOP;
Panel10.Color := COLOR_BACKGROUND;
Panel11.Color := COLOR_BACKGROUND;
Panel11.Visible := false;


Label2.Font.Size := FONT_H5;
Label2.Font.Color := FONT_COLOR3;
Edit1.Font.Color := COLOR_BACKGROUND_TOP;
Edit1.Font.Size := FONT_H5;
Edit1.Color := COLOR_BACKGROUND;

Label1.Font.Size := FONT_H5;
Label1.Font.Color := FONT_COLOR3;
Label1.Font.Name := FONT_NAME;

DBGrid1.Font.Size := FONT_H5;
DBGrid1.Font.Color := FONT_COLOR4;
DBGrid1.Font.Name := 'Fira Code Retina';
DBGrid1.TitleFont.Size := FONT_H5;
DBGrid1.TitleFont.Name := 'Fira Code Bold';
DBGrid1.TitleFont.Color := FONT_COLOR4;

end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
TBindFormJson.New.BindClassToForm(Self, FEndPoint, FPK, FTitle);
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
