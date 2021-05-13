unit Funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Data.DB,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFuncionarios = class(TForm)
    edtBuscarNome: TEdit;
    rbCPF: TRadioButton;
    rbNome: TRadioButton;
    meCPFBuscar: TMaskEdit;
    lblBuscar: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cbCargo: TComboBox;
    meTelefone: TMaskEdit;
    meCPFListar: TMaskEdit;
    DBGrid1: TDBGrid;
    btNovoFuncionario: TSpeedButton;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarios: TfrmFuncionarios;

implementation

{$R *.dfm}

end.
