unit Visitor.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, dximctrl, cxButtons,
  Visitor.Model.Interfaces;

type
  TForm1 = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Edit: TEdit;
    ComboBox: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    private
      { Private declarations }
      FItem: iItem;
      function TabelaPreco: iVisitor;
    public
      { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Visitor.Model.Item, Visitor.Model.Item.Regra.Varejo,
  Visitor.Model.Item.Regra.Atacado;

{$R *.dfm}

procedure TForm1.cxButton1Click(Sender: TObject);
begin
ShowMessage(FormatCurr('R$ #,##0.00', FItem.SetPrecoUnitario(StrToCurr(Edit.Text)).Regras.Accept(TabelaPreco)
      .PrecoVenda));
end;

procedure TForm1.cxButton2Click(Sender: TObject);
begin
ShowMessage(FormatCurr('R$ #,##0.00', FItem.SetPrecoUnitario(StrToCurr(Edit.Text)).Regras.Accept(TabelaPreco)
      .PrecoPromocao));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
FItem := TModelItem.New;
end;

function TForm1.TabelaPreco: iVisitor;
begin
case ComboBox.ItemIndex of
  0:
    Result := TModelItemRegraVarejo.New.Visitor;
  1:
    Result := TModelItemRegraAtacado.New.Visitor;
end;
end;

end.
