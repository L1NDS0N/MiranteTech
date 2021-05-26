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
  Vcl.DBGrids, Vcl.WinXPanels, DelphiToHero.View.Styles.Color, Vcl.ComCtrls;

type

  [FormRest('/users', 'guuid', 'name', 'asc')]
  [FormDefault('Cadastro de usuários')]
  TPageUsuarios = class(TFormTemplate)
    StackPanel1: TStackPanel;
    StackPanel2: TStackPanel;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label1: TLabel;

    [FieldJsonBind('guuid'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('guuid', ftString, false, 0, 'Código')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    edtCodigo: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label2: TLabel;

    [FieldJsonBind('name'), FbIgnorePost, FbIgnorePut]
    [FieldDataSetBind('name', ftString, true, 0, 'Nome')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    edtName: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label3: TLabel;

    [FieldJsonBind('phone'), FbIgnorePost, FbIgnorePut]
     [FieldDataSetBind('phone', ftString, True, 0, 'Telefone', '!\(##\) #####-####;0;_')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCell)]
    edtTelefone: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label4: TLabel;

    [FieldJsonBind('occupation'), FbIgnorePost, FbIgnorePut]
     [FieldDataSetBind('occupation', ftString, True, 0, 'Profissão')]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    edtOcupacao: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label5: TLabel;

    [FieldJsonBind('balance'), FbIgnorePost, FbIgnorePut]
     [FieldDataSetBind('balance', ftCurrency, True, 0, 'Saldo', 'R$ ###,###,##0.00', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCoin)]
    edtSaldo: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label6: TLabel;

    [FieldJsonBind('birthdate'), FbIgnorePost, FbIgnorePut]
     [FieldDataSetBind('birthdate', ftDate, True, 0, 'Nascimento', '##/##/####;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    dateBirth: TDateTimePicker;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label7: TLabel;

    [FieldJsonBind('lasttransaction'), FbIgnorePost, FbIgnorePut]
     [FieldDataSetBind('lasttransaction', ftTime, True, 0, 'Últ. transação', '##:##:##;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME)]
    TimeTrans: TDateTimePicker;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label8: TLabel;

    [FieldJsonBind('cpf'), FbIgnorePost, FbIgnorePut]
     [FieldDataSetBind('cpf', ftString, True, 0, 'CPF', '###.###.###-##;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCPF)]
    edtCPF: TEdit;

    [ComponentBindStyle(clBtnFace, FONT_H5, FONT_COLOR3, FONT_NAME)]
    Label9: TLabel;

    [FieldJsonBind('cnpj'), FbIgnorePost, FbIgnorePut]
     [FieldDataSetBind('cnpj', ftString, True, 0, 'CNPJ', '##.###.###/####-##;0;_', taLeftJustify)]
    [ComponentBindStyle(COLOR_BACKGROUND, FONT_H5, FONT_COLOR3, FONT_NAME, teCNPJ)]
    edtCNPJ: TEdit;

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
