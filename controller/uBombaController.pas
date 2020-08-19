unit uBombaController;

interface

uses uBomba, DBClient;

type

  TBombaController = class
  public
    function Inserir(oBomba: TBomba; var sError: string): Boolean;
    function Atualizar(oBomba: TBomba; var sError: string): Boolean;
    function Excluir(oBomba: TBomba; var sError: string): Boolean;
    function Consultar(oBomba: TBomba; pFiltro: string; var sError: string): TClientDataSet;
    procedure ConsultarId(oBomba: TBomba; pFiltro: string; var sError: string);
    function CarregaCombo(pObjeto: TObject; pCampo: string): TClientDataSet;
  end;

implementation

uses uPersistencia, SysUtils;

{ TBombaController }

function TBombaController.Atualizar(oBomba: TBomba;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Atualizar(oBomba, sError);
end;

function TBombaController.CarregaCombo(pObjeto: TObject; pCampo: string): TClientDataSet;
begin
  Result := TPersistencia.CarregaLookupChaveEstrangeira(pObjeto, pCampo);
end;

function TBombaController.Consultar(oBomba: TBomba; pFiltro: string;
  var sError: string): TClientDataSet;
begin
  Result := TPersistencia.Consultar(oBomba, 'NOME', pFiltro, sError);
end;

procedure TBombaController.ConsultarId(oBomba: TBomba; pFiltro: string;
  var sError: string);
var
  ds: TClientDataSet;
begin
  ds := TPersistencia.Consultar(oBomba, 'ID', pFiltro, sError);
  oBomba.Nome := ds.FieldByName('NOME').AsString;
  oBomba.Tanque := ds.FieldByName('TANQUE').AsInteger;
end;

function TBombaController.Excluir(oBomba: TBomba; var sError: string): Boolean;
begin
  Result := TPersistencia.Excluir(oBomba, sError);
end;

function TBombaController.Inserir(oBomba: TBomba; var sError: string): Boolean;
begin
  Result := TPersistencia.Inserir(oBomba, sError);
end;

end.
