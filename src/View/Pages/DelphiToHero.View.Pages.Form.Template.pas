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

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    lblTItle: TLabel;
    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME)]
    lblSearch: TLabel;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H6, COLOR_BACKGROUND_TOP, FONT_NAME)]
    edtSearch: TEdit;

    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H6, FONT_COLOR4, FONT_NAME2)]
    DBGrid1: TDBGrid;

    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME3)]
    cxButton1: TcxButton;
    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME3)]
    cxButton2: TcxButton;
    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME3)]
    cxButton3: TcxButton;
    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME3)]
    cxButton4: TcxButton;
    [ComponentBindStyle(clBtnFace, FONT_H7, FONT_COLOR3, FONT_NAME3)]
    cxButton5: TcxButton;

    ImageList1: TImageList;
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

pnlMainBodyDataForm.Visible := false;
lblTItle.Caption := FTitle;

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
