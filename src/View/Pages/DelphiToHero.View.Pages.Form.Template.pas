unit DelphiToHero.View.Pages.Form.Template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Router4D.Interfaces,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  Bind4D, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DelphiToHero.View.Styles.Color, RESTRequest4D, Vcl.WinXPanels,
  DelphiToHero.Model.DAO.Interfaces;

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
    pnlMainCadastroButton: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;

    procedure FormCreate(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    private
      FEndPoint: String;
      FPK: String;
      FTitle: String;
      FOrder: String;
      FSort: String;
      FDAO: iDAOInterface;
      { Private declarations }
      procedure ApplyStyle;
      function Render: TForm;
      procedure Unrender;
      procedure GetEndPoint;
      procedure AlterListForm;
      procedure FormatList;
    public
      { Public declarations }
  end;

var
  FormTemplate: TFormTemplate;

implementation

uses
  System.JSON, DelphiToHero.Model.DAO.REST;

{$R *.dfm}
{ TFormTemplate }

procedure TFormTemplate.ApplyStyle;
begin

pnlMainBodyDataForm.Visible := false;
lblTItle.Caption := FTitle;

DBGrid1.TitleFont.Size := FONT_H5;
DBGrid1.TitleFont.Name := 'Fira Code Bold';
DBGrid1.TitleFont.Color := FONT_COLOR3;

end;

procedure TFormTemplate.cxButton5Click(Sender: TObject);
begin
TBind4D.New.Form(Self).ClearFieldForm;
AlterListForm;
end;

procedure TFormTemplate.cxButton7Click(Sender: TObject);
begin
AlterListForm;
end;

procedure TFormTemplate.cxButton8Click(Sender: TObject);
var
  aJson: TJsonObject;
begin
aJson := TBind4D.New.Form(Self).FormToJson(fbPost);
try
  TRequest.New.BaseURL('http://localhost:9000' + FEndPoint).Accept('application/json').AddBody(aJson.ToString).Post;
finally
  aJson.Free;
end;

AlterListForm;
GetEndPoint;
end;

procedure TFormTemplate.DBGrid1DblClick(Sender: TObject);
begin
TBind4D.New.Form(Self).BindDataSetToForm(FDAO.DataSet);
pnlMainBodyDataForm.Visible := true;
end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
FDAO := TDAOREST.New(Self).DataSource(DataSource1);
TBind4D.New.Form(Self).BindFormDefault(FTitle).BindFormRest(FEndPoint, FPK, FSort, FOrder).SetStyleComponents;
ApplyStyle;
end;

procedure TFormTemplate.FormResize(Sender: TObject);
begin
GetEndPoint;
end;

procedure TFormTemplate.GetEndPoint;
begin
FDAO.Get;
FormatList;
end;

procedure TFormTemplate.AlterListForm;
begin
pnlMainBodyDataForm.Visible := not pnlMainBodyDataForm.Visible;
end;

procedure TFormTemplate.FormatList;
begin
TBind4D.New.Form(Self).BindFormatListDataSet(FDAO.DataSet, DBGrid1);
end;

function TFormTemplate.Render: TForm;
begin
Result := Self;
end;

procedure TFormTemplate.Unrender;
begin

end;

end.
