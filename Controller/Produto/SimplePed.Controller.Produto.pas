unit SimplePed.Controller.Produto;

interface

uses
  SimplePed.Model.Entity.Produto, Data.DB,
  SimplePed.Controller.Produto.Interfaces, SimplePed.Model.Produto.Interfaces,
  System.Generics.Collections;

type
  TControllerProduto = class(TInterfacedObject, iControllerProduto)
  private
    FModel: iModelProduto;
    FDataSource: TDataSource;
    FList: TObjectList<TPRODUTO>;
    FEntidade: TPRODUTO;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iControllerProduto;
    function DataSource(aDataSource: TDataSource): iControllerProduto;
    function Buscar: iControllerProduto; overload;
    function Buscar(aId: Integer): iControllerProduto; overload;
    function Buscar(aDescricao: string): iControllerProduto; overload;
    function Insert: iControllerProduto;
    function Delete: iControllerProduto;
    function Update: iControllerProduto;
    function Entidade: TPRODUTO;
  end;

implementation

uses
  SimplePed.Model, System.SysUtils;

{ TControllerProduto }

function TControllerProduto.Buscar: iControllerProduto;
begin
  Result := Self;

  if Assigned(FList) then
    FList.Free;

  FList := FModel.DAO.Find;
end;

function TControllerProduto.Buscar(aId: Integer): iControllerProduto;
begin
  Result := Self;

  if Assigned(FEntidade) then
    FEntidade.Free;

  FEntidade := FModel.DAO.Find(aId);
end;

function TControllerProduto.Buscar(aDescricao: string): iControllerProduto;
begin
  Result := Self;

  if Assigned(FList) then
    FList.Free;

  FList := FModel.DAO.SQL().Where('DESCRICAO = ' + QuotedStr(aDescricao)).&END.Find;
end;

constructor TControllerProduto.Create;
begin
  FModel := TModel.New.Produto;
end;

function TControllerProduto.DataSource(aDataSource: TDataSource): iControllerProduto;
begin
  Result := Self;
  FDataSource := aDataSource;
  FModel.DataSource(FDataSource);
end;

function TControllerProduto.Delete: iControllerProduto;
begin
  Result := Self;
  FModel.DAO.Delete(FModel.Entidade);
end;

destructor TControllerProduto.Destroy;
begin
  if Assigned(FList) then
    FList.Free;

  if Assigned(FEntidade) then
    FEntidade.Free;
  inherited;
end;

function TControllerProduto.Entidade: TPRODUTO;
begin
  Result := FModel.Entidade;

end;

function TControllerProduto.Insert: iControllerProduto;
begin
  Result := Self;
  FModel.DAO.Insert(FModel.Entidade);
end;

class function TControllerProduto.New: iControllerProduto;
begin
  Result := Self.Create;
end;

function TControllerProduto.Update: iControllerProduto;
begin
  Result := Self;
  FModel.DAO.Update(FModel.Entidade);
end;

end.

