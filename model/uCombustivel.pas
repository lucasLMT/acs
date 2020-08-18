unit uCombustivel;

interface

uses
  System.SysUtils, uAtributos;

type

  [TTabela('COMBUSTIVEL')]
  TCombustivel = class
  private
    FID: Integer;
    FNome: String;
    FPreco: Double;
  published
    [TCampo('ID', 0, true)]
    //[TChavePrimaria('ID')]
    property Id: integer read FID write FID;
    [TCampo('NOME', 30)]
    property Nome: string read FNome write FNome;
    [TCampo('PRECO')]
    property Preco: Double read FPreco write FPreco;
  end;

implementation

end.
