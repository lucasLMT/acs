unit datamodulecadastros;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Moni.Base, FireDAC.Moni.Custom, uTanqueModel;

type
  TDataModule2 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQueryCombustivel: TFDQuery;
    DataSourceCombustivel: TDataSource;
    FDMoniCustomClientLink1: TFDMoniCustomClientLink;
    DataSourceTanque: TDataSource;
    FDQueryTanque: TFDQuery;
    DataSourceImposto: TDataSource;
    FDQueryImposto: TFDQuery;
    FDQueryBomba: TFDQuery;
    DataSourceBomba: TDataSource;
  private
    { Private declarations }
    procedure PesquisarTanque(Nome: string);
    function CarregarDadosTanque(oTanque: TTanque; id: string): Boolean;
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}


{ TDataModule2 }

function TDataModule2.CarregarDadosTanque(oTanque: TTanque; id: string): Boolean;
begin
  if FDQueryTanque.Active then
    FDQueryTanque.Close;

  FDQueryTanque.SQL.Add('select * from tanque where (id = :id)');
  FDQueryTanque.ParamByName('id').AsString := id;
  FDQueryTanque.Open;

  oTanque.id := FDQueryTanque.FieldByName('id').AsInteger;
  oTanque.nome := FDQueryTanque.FieldByName('nome').AsString;
  oTanque.combustivel := FDQueryTanque.FieldByName('combustivel').AsInteger;

end;

procedure TDataModule2.PesquisarTanque(Nome: string);
begin
  if FDQueryTanque.Active then
    FDQueryTanque.Close;

  FDQueryTanque.SQL.Add('select * from tanque where (nome like :nome)');
  FDQueryTanque.ParamByName('nome').AsString := Nome;
  FDQueryTanque.Open();
  FDQueryTanque.First;
end;


end.
