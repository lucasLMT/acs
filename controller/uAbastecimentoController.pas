unit uAbastecimentoController;

interface

uses uAbastecimento, DBClient;

type

  TAbastecimentoController = class
  public
    function Inserir(oAbastecimento: TAbastecimento; var sError: string): Boolean;
    function Atualizar(oAbastecimento: TAbastecimento; var sError: string): Boolean;
    function Excluir(oAbastecimento: TAbastecimento; var sError: string): Boolean;
    function Consultar(oAbastecimento: TAbastecimento; pFiltro: string; var sError: string): TClientDataSet;
    function ConsultarComWhere(oAbastecimento: TAbastecimento; pBomba: Integer;
                               pDataInicial, pDataFinal: string; var sError: string): TClientDataSet;
    function CarregaCombo(pObjeto: TObject; pCampo: string): TClientDataSet;
  end;

implementation

uses uPersistencia, SysUtils;

{ TAbastecimentoController }

function TAbastecimentoController.Atualizar(oAbastecimento: TAbastecimento;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Atualizar(oAbastecimento, sError);
end;

function TAbastecimentoController.CarregaCombo(pObjeto: TObject; pCampo: string): TClientDataSet;
var
  cds: TClientDataSet;
begin
  Result := TPersistencia.CarregaLookupChaveEstrangeira(pObjeto, pCampo);
end;

function TAbastecimentoController.Consultar(oAbastecimento: TAbastecimento; pFiltro: string;
  var sError: string): TClientDataSet;
begin
  Result := TPersistencia.Consultar(oAbastecimento, 'NOME', pFiltro, sError);
end;

function TAbastecimentoController.ConsultarComWhere(
  oAbastecimento: TAbastecimento; pBomba: Integer; pDataInicial,
  pDataFinal: string; var sError: string): TClientDataSet;
var
  where: string;
begin
  where := '';

  if IntToStr(pBomba) <> EmptyStr then
    where := 'BOMBA = ' + IntToStr(pBomba);
  if (pDataInicial <> EmptyStr) and (pDataFinal <> EmptyStr) then
  begin
    if IntToStr(pBomba) <> EmptyStr then
      where := where + ' AND DATA BETEWEEN ' + pDataInicial + ' AND ' + pDataFinal
    else
      where := where + ' DATA BETEWEEN ' + pDataInicial + ' AND ' + pDataFinal;
  end;
  Result := TPersistencia.ConsultarWhere(oAbastecimento, where, sError);
end;

function TAbastecimentoController.Excluir(oAbastecimento: TAbastecimento;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Excluir(oAbastecimento, sError);
end;

function TAbastecimentoController.Inserir(oAbastecimento: TAbastecimento;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Inserir(oAbastecimento, sError);
end;

end.
