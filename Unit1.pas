unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    RichEdit1: TRichEdit;
    FooterStatusBar: TPanel;
    procedure Button8Click(Sender: TObject);
    procedure RichEdit1Enter(Sender: TObject);
    procedure RichEdit1SelectionChange(Sender: TObject);


  private
    { Private declarations }
  public
  Filename: String;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Button8Click(Sender: TObject);

var
selectedText: string;
foundPos, posIni: Integer;


begin
selectedText := RichEdit1.SelText;
posIni := 0;

foundPos := RichEdit1.FindText(selectedText, posIni, Length(RichEdit1.Text), []);

//ShowMessage('Posi��o selecionada: '+ IntToStr(foundPos)+ 'Tamanho total: '+IntToStr(RichEdit1.SelLength));

if foundPos <> -1 then
    begin
        RichEdit1.SelStart  := foundPos;
        RichEdit1.SelLength := Length(selectedText);
        RichEdit1.SelAttributes.style := [fsItalic];
        RichEdit1.SetFocus;
    end;

end;

procedure TForm1.RichEdit1Enter(Sender: TObject);
begin
//  RichEdit1.SelStart  := 0;
//  RichEdit1.SelLength := length(RichEdit1.Text);
//  RichEdit1.SelAttributes.color := clBlack;
//  RichEdit1.SelAttributes.style := [];
//  RichEdit1.SelAttributes.Size  := 8;
//  RichEdit1.SelAttributes.color := clRed;
//  RichEdit1.SelAttributes.Size  := RichEdit1.SelAttributes.Size + 16;
end;

procedure TForm1.RichEdit1SelectionChange(Sender: TObject);
var
selectedText: string;
begin
  selectedText:= IntToStr(Length(RichEdit1.SelText));
  FooterStatusBar.Caption := ('Sele��o: '+selectedText);
end;

end.



