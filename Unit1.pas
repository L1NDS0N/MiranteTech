unit Unit1;

interface

uses
  System.SysUtils, System.Classes, uDWDatamodule, uDWAbout, uRESTDWServerEvents,
  uDWJSONObject;

type
  TDataModule2 = class(TServerMethodDataModule)
    DWServerEvents1: TDWServerEvents;
    procedure DWServerEvents1EventstesteReplyEvent(var Params: TDWParams;
      var Result: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.DWServerEvents1EventstesteReplyEvent(
  var Params: TDWParams; var Result: string);
begin
 Params.ItemsString['result'].AsString := 'Lindson França';
end;

end.
