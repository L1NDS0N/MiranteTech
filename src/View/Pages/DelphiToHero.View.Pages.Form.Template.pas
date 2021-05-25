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
  FireDAC.Comp.Client, FireDAC.Stan.StorageBin,
  DelphiToHero.View.Styles.Color;

type
  TFormTemplate = class(TForm, iRouter4DComponent)
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlPrincipal: TPanel;

    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlTop: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMain: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBody: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyTop: TPanel;

    [ComponentBindStyle(COLOR_C2, FONT_H5, FONT_COLOR3, FONT_NAME)]
    linhaSeparadora: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainTopBodyMenu: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainTopSearch: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND_TOP, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainTopSearchLine: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyData: TPanel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlMainBodyDataForm: TPanel;

    [ComponentBindStyle(COLOR_C1, FONT_H5, FONT_COLOR3, FONT_NAME)]
    pnlTopBody: TPanel;

    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    procedure FormCreate(Sender: TObject);
    private
      FEndPoint: String;
      FPK: String;
      FTitle: String;
      FOrder: String;
      FSort: String;
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

{$R *.dfm}
{ TFormTemplate }

procedure TFormTemplate.ApplyStyle;
begin
Label1.Caption := FTitle;

pnlMainBodyDataForm.Visible := false;

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
TBind4D.New.Form(Self).BindFormDefault(FTitle).BindFormRest(FEndPoint, FPK, FSort, FOrder).SetStyleComponents;
// TBindFormJson.New.BindClassToForm(Self, FEndPoint, FPK, FTitle);
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
