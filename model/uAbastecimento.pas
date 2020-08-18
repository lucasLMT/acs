unit uAbastecimento;

interface

uses
  System.SysUtils, uAtributos;

type

  [TTabela('ABASTECIMENTO')]
  TAbastecimento = class
  private
    FID: Integer;
    FBomba: Integer;
    FQuantidade: double;
    FData: String;
    FHora: String;
    FTotal: double;
    FValorImposto: double;
  published
    [TCampo('ID', 0, true)]
    //[TChavePrimaria('ID')]
    property Id: integer read FID write FID;
    [TCampo('BOMBA')]
    property Bomba: integer read FBomba write FBomba;
    [TCampo('QUANTIDADE')]
    property Quantidade: double read FQuantidade write FQuantidade;
    [TCampo('DATA')]
    property Data: String read FData write FData;
    [TCampo('HORA')]
    property Hora: String read FHora write FHora;
    [TCampo('TOTAL')]
    property Total: double read FTotal write FTotal;
    [TCampo('VALORIMPOSTO')]
    property ValorImposto: double read FValorImposto write FValorImposto;
  end;

implementation

end.
