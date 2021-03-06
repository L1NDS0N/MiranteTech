unit DelphiToHero.View.Pages.Form.Template;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Router4D.Interfaces,
  Vcl.StdCtrls,
  System.ImageList,
    Vcl.ImgList,
     Vcl.Buttons,
      cxGraphics,

  cxLookAndFeels,
   cxLookAndFeelPainters,
    Vcl.Menus, cxButtons,
  Bind4D, Bind4D.Types, Bind4D.Attributes, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DelphiToHero.View.Styles.Color, RESTRequest4D, Vcl.WinXPanels,
  DelphiToHero.Model.DAO.Interfaces, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type

  TTypeOperation = (toNull, toPost, toPut);

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

    [AdjustResponsive]
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
    pnlPaginate: TPanel;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    lblPagina: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    private
      FTypeOperation: TTypeOperation;
      FEndPoint: String;
      FPK: String;
      FTitle: String;
      FOrder: String;
      FSort: String;
      FDAO: iDAOInterface;
      FPage: Integer;
      { Private declarations }
      procedure ApplyStyle;
      function Render: TForm;
      procedure Unrender;
      procedure GetEndPoint;
      procedure AlterListForm;
      procedure FormatList;
      procedure restOperationPut;
      procedure restOperationPost;
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

procedure TFormTemplate.cxButton10Click(Sender: TObject);
begin
if FDAO.Page > 1 then
  begin
  FPage := FDAO.Page - 1;
  GetEndPoint;
  end;
end;

procedure TFormTemplate.cxButton4Click(Sender: TObject);
begin
GetEndPoint;
end;

procedure TFormTemplate.cxButton5Click(Sender: TObject);
begin
FTypeOperation := toPost;
TBind4D.New.Form(Self).ClearFieldForm;
AlterListForm;
end;

procedure TFormTemplate.cxButton6Click(Sender: TObject);
begin
FDAO.Delete;
GetEndPoint;
AlterListForm;
FTypeOperation := toNull;
end;

procedure TFormTemplate.cxButton7Click(Sender: TObject);
begin
AlterListForm;
FTypeOperation := toNull;
end;

procedure TFormTemplate.cxButton8Click(Sender: TObject);
begin
case FTypeOperation of
  toNull:
    ;
  toPost:
    restOperationPost;
  toPut:
    restOperationPut;
end;

end;

procedure TFormTemplate.cxButton9Click(Sender: TObject);
begin
if FDAO.Page < FDAO.Pages then
  begin
  FPage := FDAO.Page + 1;
  GetEndPoint;
  end;
end;

procedure TFormTemplate.DBGrid1DblClick(Sender: TObject);
begin
FTypeOperation := toPut;
TBind4D.New.Form(Self).BindDataSetToForm(FDAO.DataSet);
pnlMainBodyDataForm.Visible := true;
end;

procedure TFormTemplate.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #$D then
  begin
  FTypeOperation := toPut;
  TBind4D.New.Form(Self).BindDataSetToForm(FDAO.DataSet);
  AlterListForm;
  end;
end;

procedure TFormTemplate.DBGrid1TitleClick(Column: TColumn);
begin
FDAO.AddParam('sort', Column.Field.FullName).AddParam('order', FOrder).Page(1).Get;
if FOrder = 'asc' then
  FOrder := 'desc'
else
  FOrder := 'asc';
end;

procedure TFormTemplate.edtSearchKeyPress(Sender: TObject; var Key: Char);
var
  fieldtosearch: string;
begin
fieldtosearch := StringReplace(TBind4D.New.Form(Self).GetFieldsByType(fbGet), 'guuid,', '', [rfReplaceAll]);

if Key = #$D then
  begin
  Key := #$0;
  FDAO.AddParam('sort', FSort).AddParam('order', FOrder).AddParam('searchfields', fieldtosearch)
    .AddParam('searchvalue', edtSearch.Text).Page(1).Get;
  DBGrid1.SetFocus;
  FormatList;
  end;
end;

procedure TFormTemplate.FormCreate(Sender: TObject);
begin
FPage := 1;
FTypeOperation := toNull;
FDAO := TDAOREST.New(Self).DataSource(DataSource1);
TBind4D.New.Form(Self).SetStyleComponents;
TBind4D.New.Form(Self).BindFormDefault(FTitle).BindFormRest(FEndPoint, FPK, FSort, FOrder).SetStyleComponents;
ApplyStyle;
GetEndPoint;
end;

procedure TFormTemplate.GetEndPoint;
begin
FDAO.AddParam('sort', FSort).AddParam('order', FOrder).Page(FPage).Get;
FormatList;
end;

procedure TFormTemplate.AlterListForm;
begin
pnlMainBodyDataForm.Visible := not pnlMainBodyDataForm.Visible;
end;

procedure TFormTemplate.FormatList;
begin

TBind4D.New.Form(Self).BindFormatListDataSet(FDAO.DataSet, DBGrid1).ResponsiveAdjustment;
lblPagina.Caption := 'P?gina ' + FDAO.Page.ToString + ' de ' + FDAO.Pages.ToString;
end;

function TFormTemplate.Render: TForm;
begin
Result := Self;
end;

procedure TFormTemplate.restOperationPost;
begin
FDAO.Post;
GetEndPoint;
AlterListForm;
FTypeOperation := toNull;
end;

procedure TFormTemplate.restOperationPut;
begin
FDAO.Put;
GetEndPoint;
AlterListForm;
FTypeOperation := toNull;
end;

procedure TFormTemplate.Unrender;
begin

end;

end.
