unit Cargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmCargos = class(TForm)
    Label1: TLabel;
    edtNomeCargo: TEdit;
    grdCargos: TDBGrid;
    btNovoCargo: TSpeedButton;
    btnSalvarCargo: TSpeedButton;
    btnEditarCargo: TSpeedButton;
    btnExcluirCargo: TSpeedButton;
    procedure btNovoCargoClick(Sender: TObject);
    procedure associarCampos;
    procedure btnSalvarCargoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure listar;
    procedure grdCargosCellClick(Column: TColumn);
    procedure btnEditarCargoClick(Sender: TObject);
    procedure btnExcluirCargoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCargos: TfrmCargos;
  id: string;

implementation

uses
  Modulo;

{$R *.dfm}

procedure TfrmCargos.associarCampos;
begin
  dm.table_cargos.FieldByName('cargo').Value := edtNomeCargo.Text;
end;

procedure TfrmCargos.btnEditarCargoClick(Sender: TObject);
var
  cargo: string;
begin
  if (edtNomeCargo.Text) = '' then
  begin
    MessageDlg('Preencha o campo de cargo', mtWarning, mbOKCancel, 0);
    edtNomeCargo.SetFocus;
    exit;
  end;

  // need to verify the role if exists in database
  dm.query_cargos.Close;
  dm.query_cargos.SQL.Clear;
  dm.query_cargos.SQL.Add('select * from cargos where cargo =' +
    QuotedStr(Trim(edtNomeCargo.Text)));
  dm.query_cargos.Open;
  if not dm.query_cargos.IsEmpty then
  begin
    cargo := dm.query_cargos['cargo'];
    MessageDlg('O cargo ' + cargo + ' já existe!', mtError, mbOKCancel, 0);
    edtNomeCargo.Text := '';
    edtNomeCargo.SetFocus;
    exit;
  end;

  associarCampos;
  dm.query_cargos.Close;
  dm.query_cargos.SQL.Clear;
  dm.query_cargos.SQL.Add('UPDATE cargos set cargo = :cargo where id = :id');
  dm.query_cargos.ParamByName('cargo').Value := edtNomeCargo.Text;
  dm.query_cargos.ParamByName('id').Value := id;
  dm.query_cargos.ExecSQL;

  listar;
  MessageDlg('Editado com sucesso', mtInformation, mbOKCancel, 0);
  btnEditarCargo.Enabled := false;
  btnExcluirCargo.Enabled := false;
  edtNomeCargo.Text := '';
end;

procedure TfrmCargos.btnExcluirCargoClick(Sender: TObject);
begin
  if MessageDlg('Tem certeza que deseja excluir o registro?', mtConfirmation,
    mbYesNo, 0) = mrYes then
  begin
    dm.table_cargos.Delete;
    listar;
    MessageDlg('Deletado com sucesso', mtInformation, mbOKCancel, 0);
    btnEditarCargo.Enabled := false;
    btnExcluirCargo.Enabled := false;
    edtNomeCargo.Text := '';
  end;
end;

procedure TfrmCargos.btNovoCargoClick(Sender: TObject);
begin
  edtNomeCargo.Enabled := True;
  btnSalvarCargo.Enabled := True;
  edtNomeCargo.Text := '';
  edtNomeCargo.SetFocus;

  dm.table_cargos.Insert;
end;

procedure TfrmCargos.btnSalvarCargoClick(Sender: TObject);
var
  cargo: string;
begin
  if (edtNomeCargo.Text) = '' then
  begin
    MessageDlg('Preencha o campo de cargo', mtWarning, mbOKCancel, 0);
    edtNomeCargo.SetFocus;
    exit;
  end;

  // need to verify the role if exists in database
  dm.query_cargos.Close;
  dm.query_cargos.SQL.Clear;
  dm.query_cargos.SQL.Add('select * from cargos where cargo =' +
    QuotedStr(Trim(edtNomeCargo.Text)));
  dm.query_cargos.Open;
  if not dm.query_cargos.IsEmpty then
  begin
    cargo := dm.query_cargos['cargo'];
    MessageDlg('O cargo ' + cargo + ' já existe!', mtError, mbOKCancel, 0);
    edtNomeCargo.Text := '';
    edtNomeCargo.SetFocus;
    exit;
  end;

  associarCampos;
  dm.table_cargos.Post;
  MessageDlg('Salvo com sucesso', mtInformation, mbOKCancel, 0);
  edtNomeCargo.Text := '';
  edtNomeCargo.Enabled := false;
  btnSalvarCargo.Enabled := false;
  listar;
end;

procedure TfrmCargos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.table_cargos.Active := not dm.table_cargos.Active;
end;

procedure TfrmCargos.FormShow(Sender: TObject);
begin
  dm.table_cargos.Active := not dm.table_cargos.Active;
  listar;
end;

procedure TfrmCargos.grdCargosCellClick(Column: TColumn);
begin
  edtNomeCargo.Enabled := True;
  btnEditarCargo.Enabled := True;
  btnExcluirCargo.Enabled := True;

  dm.table_cargos.Edit;

  if dm.query_cargos.FieldByName('cargo').Value <> null then
    edtNomeCargo.Text := dm.query_cargos.FieldByName('cargo').Value;
  id := dm.query_cargos.FieldByName('id').Value;

end;

procedure TfrmCargos.listar;
begin
  dm.query_cargos.Close;
  dm.query_cargos.SQL.Clear;
  dm.query_cargos.SQL.Add('select * from cargos order by cargo asc');
  dm.query_cargos.Open;
end;

end.
