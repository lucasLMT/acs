unit uBomba;

interface

uses
  System.SysUtils, uAtributos;

type

  [TTabela('BOMBA')]
  TBomba = class
  private
    FID: Integer;
    FNome: String;
    FTanque: integer;
  published
    [TCampo('ID', 0, true)]
    //[TChavePrimaria('ID')]
    property Id: integer read FID write FID;
    [TCampo('NOME', 30)]
    property Nome: string read FNome write FNome;
    [TCampo('TANQUE')]
    property Tanque: integer read FTanque write FTanque;
  end;

implementation

end.
