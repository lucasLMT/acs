unit uImpostoController;

interface

uses uImposto, DBClient;

type

  TImpostoController = class
  public
    function Inserir(oImposto: TImposto; var sError: string): Boolean;
    function Atualizar(oImposto: TImposto; var sError: string): Boolean;
    function Excluir(oImposto: TImposto; var sError: string): Boolean;
    function Consultar(oImposto: TImposto; pFiltro: string; var sError: string): TClientDataSet;
    procedure ConsultarId(oImposto: TImposto; pFiltro: string; var sError: string);
    function CarregaCombo(pObjeto: TObject; pCampo: string): TClientDataSet;
  end;

implementation

uses uPersistencia, SysUtils;

{ TImpostoController }

function TImpostoController.Atualizar(oImposto: TImposto;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Atualizar(oImposto, sError);
end;

function TImpostoController.CarregaCombo(pObjeto: TObject; pCampo: string): TClientDataSet;
begin
  Result := TPersistencia.CarregaLookupChaveEstrangeira(pObjeto, pCampo);
end;

function TImpostoController.Consultar(oImposto: TImposto; pFiltro: string;
  var sError: string): TClientDataSet;
begin
  Result := TPersistencia.Consultar(oImposto, 'NOME', pFiltro, sError);
end;

procedure TImpostoController.ConsultarId(oImposto: TImposto; pFiltro: string;
  var sError: string);
var
  ds: TClientDataSet;
begin
  ds := TPersistencia.Consultar(oImposto, 'ID', pFiltro, sError);
  oImposto.Nome := ds.FieldByName('NOME').AsString;
  oImposto.Aliquota := ds.FieldByName('ALIQUOTA').AsInteger;
end;

function TImpostoController.Excluir(oImposto: TImposto;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Excluir(oImposto, sError);
end;

function TImpostoController.Inserir(oImposto: TImposto;
  var sError: string): Boolean;
begin
  Result := TPersistencia.Inserir(oImposto, sError);
end;

end.
