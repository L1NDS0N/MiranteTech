﻿unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
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
    procedure RichEdit1SelectionChange(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);


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



procedure TForm1.Button2Click(Sender: TObject);
begin
if RichEdit1.Paragraph.FirstIndent <> 10 then
begin
    RichEdit1.Paragraph.FirstIndent := 10;
    RichEdit1.SetFocus;
end else
  begin
    RichEdit1.Paragraph.FirstIndent := 0;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  RichEdit1.Paragraph.Alignment := taCenter;
  RichEdit1.SetFocus;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  RichEdit1.Paragraph.Alignment := taRightJustify;
  RichEdit1.SetFocus;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    RichEdit1.Paragraph.Alignment := taLeftJustify;
    RichEdit1.SetFocus;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
selectedText: string;
foundPos: Integer;

begin
selectedText := RichEdit1.SelText;

foundPos := RichEdit1.FindText(selectedText, 0, Length(RichEdit1.Text), []);

if foundPos <> -1 then
    begin
        RichEdit1.SelStart  := foundPos;
        RichEdit1.SelLength := Length(selectedText);
        RichEdit1.SelAttributes.style := ( RichEdit1.SelAttributes.Style +[fsUnderline]);
        RichEdit1.SetFocus;
    end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
selectedText: string;
foundPos: Integer;

begin
selectedText := RichEdit1.SelText;

foundPos := RichEdit1.FindText(selectedText, 0, Length(RichEdit1.Text), []);

if foundPos <> -1 then
    begin
        RichEdit1.SelStart  := foundPos;
        RichEdit1.SelLength := Length(selectedText);
        RichEdit1.SelAttributes.style := (RichEdit1.SelAttributes.Style + [fsBold]);
        RichEdit1.SetFocus;
    end;
end;

procedure TForm1.Button8Click(Sender: TObject);

var
selectedText: string;
foundPos: Integer;

begin
selectedText := RichEdit1.SelText;
foundPos := RichEdit1.FindText(selectedText, 0, Length(RichEdit1.Text), []);

// Precisa fazer a validação para remover a propriedade do SelAttributes.Style
if RichEdit1.SelAttributes.Style = [fsItalic] then
begin
  ShowMessage('Its Italic!!!');
  RichEdit1.SelAttributes.style := (RichEdit1.SelAttributes.Style - [fsItalic]);
end;


if foundPos <> -1 then
    begin
        RichEdit1.SelStart  := foundPos;
        RichEdit1.SelLength := Length(selectedText);
        RichEdit1.SelAttributes.style := (RichEdit1.SelAttributes.Style + [fsItalic]);
        RichEdit1.SetFocus;
    end;
end;

procedure TForm1.RichEdit1Change(Sender: TObject);
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
  FooterStatusBar.Caption := ('Seleção: '+selectedText+' - início da seleção: '+IntToStr(RichEdit1.SelStart));

if StrToInt(selectedText) = Length(RichEdit1.Text) then
  begin
    FooterStatusBar.Caption := (FooterStatusBar.Caption+(' - Caracteres: '+IntToStr(Length(RichEdit1.Text))));
  end;

end;
end.



