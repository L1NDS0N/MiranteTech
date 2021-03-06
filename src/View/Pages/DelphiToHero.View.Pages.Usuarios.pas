unit DelphiToHero.View.Pages.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DelphiToHero.View.Pages.Form.Template,
  Vcl.ExtCtrls, Vcl.StdCtrls, Bind4D, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, System.ImageList, Vcl.ImgList, cxButtons,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.WinXPanels, DelphiToHero.View.Styles.Color, Vcl.ComCtrls, Bind4D.Types, Bind4D.Attributes,
  Bind4D.Utils;

type

  [FormRest('/users', 'guuid', 'name', 'asc')]
  [FormDefault('Cadastro de usu?rios')]
  TPageUsuarios = class(TFormTemplate)
    StackPanel1: TStackPanel;
    StackPanel2: TStackPanel;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]

    [FieldJsonBind('guuid'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('guuid', ftString, false, 0, 'C?digo')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    edtCodigo: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label2: TLabel;

    [FieldJsonBind('name')]
    [FieldDataSetBind('name', ftString, true, 30, 'Nome')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    edtName: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label3: TLabel;

    [FieldJsonBind('phone')]
    [FieldDataSetBind('phone', ftString, true, 12, 'Telefone', '!\(##\) #####-####;0;_', taLeftJustify, 700)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    edtTelefone: TEdit;

    [FieldDataSetBind('idoccupation', ftString, false, 0, 'id da profiss?o')]
    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label4: TLabel;

    [FieldJsonBind('occupation')]
    [FieldDataSetBind('occupation', ftString, true, 10, 'Profiss?o', '', taLeftJustify, 1000)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    edtOcupacao: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label5: TLabel;

    [FieldJsonBind('balance')]
    [FieldDataSetBind('balance', ftCurrency, true, 10, 'Saldo', 'R$ ###,###,##0.00', taLeftJustify, 500)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCoin)]
    edtSaldo: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label6: TLabel;

    [FieldJsonBind('birthdate')]
    [FieldDataSetBind('birthdate', ftDate, true, 8, 'Nascimento', '##/##/####;0;_', taLeftJustify, 1150)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    dateBirth: TDateTimePicker;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label7: TLabel;

    [FieldJsonBind('lasttransaction')]
    [FieldDataSetBind('lasttransaction', ftTime, true, 8, '?lt. transa??o', '##:##:##;0;_', taLeftJustify, 1250)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    TimeTrans: TDateTimePicker;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label8: TLabel;

    [FieldJsonBind('cpf')]
    [FieldDataSetBind('cpf', ftString, true, 10, 'CPF', '###.###.###-##;0;_', taLeftJustify, 800)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCPF)]
    edtCPF: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label9: TLabel;

    [FieldJsonBind('cnpj')]
    [FieldDataSetBind('cnpj', ftString, true, 14, 'CNPJ', '##.###.###/####-##;0;_', taLeftJustify, 1400)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCNPJ)]
    edtCNPJ: TEdit;

    [FieldJsonBind('picture')]
    [FieldDataSetBind('picture', ftString, false)]
    //[S3Storage('jpg', 'image/jpeg')]
    [ImageAttribute('img_genericuser')]
    Image1: TImage;
    Label1: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);

    private
    protected

      { Private declarations }
    public
      { Public declarations }
  end;

var
  PageUsuarios: TPageUsuarios;

implementation

{$R *.dfm}

procedure TPageUsuarios.FormCreate(Sender: TObject);
begin
inherited;
TBind4D.New.Form(Self).SetStyleComponents.SetImageComponents;

end;

procedure TPageUsuarios.Image1DblClick(Sender: TObject);
begin
  inherited;
  with TOpenDialog.Create(Self) do
  try
    Caption := 'Escolha uma imagem de perfil';
    Options := [ofPathMustExist, ofFileMustExist];
    if Execute then
      Image1.Picture.LoadFromFile(FileName);
  finally
    Free;
  end;
end;

end.
