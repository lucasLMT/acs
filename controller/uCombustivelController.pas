unit uCombustivelController;

interface

uses uCombustivel, DBClient;

type

  TCombustivelController = class
  public
    function Inserir(oCombustivel: TCombustivel; var sError: string): Boolean;
    function Atualizar(oCombustivel: TCombustivel; var sError: string): Boolean;
    function Excluir(oCombustivel: TCombustivel; var sError: string): Boolean;
    function Consultar(oCombustivel: TCombustivel; pFiltro: string; var sError: string): TClientDataSet;
    procedure ConsultarId(oCombustivel: TCombustivel; pFiltro: string; var sError: string);
    function CarregaCombo(pObjeto: TObject; pCampo: string): TClientDataSet;
  end;

implementation

uses uPersistencia, SysUtils;

{ TCombustivelController }

function TCombustivelController.Atualizar(oCombustivel: TCombustivel;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Atualizar(oCombustivel, sError);
end;

function TCombustivelController.CarregaCombo(pObjeto: TObject; pCampo: string): TClientDataSet;
var
  cds: TClientDataSet;
begin
  Result := TPersistencia.CarregaLookupChaveEstrangeira(pObjeto, pCampo);
end;

function TCombustivelController.Consultar(oCombustivel: TCombustivel; pFiltro: string;
  var sError: string): TClientDataSet;
begin
  Result := TPersistencia.Consultar(oCombustivel, 'NOME', pFiltro, sError);
end;

procedure TCombustivelController.ConsultarId(oCombustivel: TCombustivel;
  pFiltro: string; var sError: string);
var
  ds: TClientDataSet;
begin
  ds := TPersistencia.Consultar(oCombustivel, 'ID', pFiltro, sError);
  oCombustivel.Nome := ds.FieldByName('NOME').AsString;
  oCombustivel.Preco := ds.FieldByName('PRECO').AsFloat;
end;

function TCombustivelController.Excluir(oCombustivel: TCombustivel;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Excluir(oCombustivel, sError);
end;

function TCombustivelController.Inserir(oCombustivel: TCombustivel;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Inserir(oCombustivel, sError);
end;

end.
