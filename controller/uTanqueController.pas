unit uTanqueController;

interface

uses uTanqueModel, DBClient;

type

  TTanqueController = class
  public
    function Inserir(oTanque: TTanque; var sError: string): Boolean;
    function Atualizar(oTanque: TTanque; var sError: string): Boolean;
    function Excluir(oTanque: TTanque; var sError: string): Boolean;
    function Consultar(oTanque: TTanque; pFiltro: string; var sError: string): TClientDataSet;
    procedure ConsultarId(oTanque: TTanque; pFiltro: string; var sError: string);
    function CarregaCombo(pObjeto: TObject; pCampo: string): TClientDataSet;
  end;

implementation

uses uPersistencia, SysUtils;

{ TTanqueController }

function TTanqueController.Atualizar(oTanque: TTanque;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Atualizar(oTanque, sError);
end;

function TTanqueController.CarregaCombo(pObjeto: TObject; pCampo: string): TClientDataSet;
var
  cds: TClientDataSet;
begin
  Result := TPersistencia.CarregaLookupChaveEstrangeira(pObjeto, pCampo);
end;

function TTanqueController.Consultar(oTanque: TTanque; pFiltro: string;
  var sError: string): TClientDataSet;
begin
  Result := TPersistencia.Consultar(oTanque, 'NOME', pFiltro, sError);
end;

procedure TTanqueController.ConsultarId(oTanque: TTanque; pFiltro: string;
  var sError: string);
var
  ds: TClientDataSet;
begin
  ds := TPersistencia.Consultar(oTanque, 'ID', pFiltro, sError);
  oTanque.Nome := ds.FieldByName('NOME').AsString;
  oTanque.Combustivel := ds.FieldByName('COMBUSTIVEL').AsInteger;
end;

function TTanqueController.Excluir(oTanque: TTanque;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Excluir(oTanque, sError);
end;

function TTanqueController.Inserir(oTanque: TTanque;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Inserir(oTanque, sError);
end;

end.
