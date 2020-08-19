unit uTanqueModel;

interface

uses
  System.SysUtils, uAtributos;

type

  [TTabela('TANQUE')]
  TTanque = class
  private
    FID: Integer;
    FNome: String;
    FCombustivel: integer;
    procedure SetNome(const Value: string);
  public
    [TCampo('ID', 0, true)]
    //[TChavePrimaria('ID')]
    property Id: integer read FID write FID;
    [TCampo('NOME', 30)]
    property Nome: string read FNome write SetNome;
    [TCampo('COMBUSTIVEL')]
    [TChaveEstrangeira('COMBUSTIVEL', 'ID')]
    property Combustivel: integer read FCombustivel write FCombustivel;
  end;

implementation

{TTanque}

procedure TTanque.setNome(const Value: string);
begin
  if Value = EmptyStr then
    raise Exception.Create('O campo nome é obrigatório');

  FNome := Value;
end;

end.
