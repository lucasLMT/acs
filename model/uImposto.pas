unit uImposto;

interface

uses
  System.SysUtils, uAtributos;

type

  [TTabela('IMPOSTO')]
  TImposto = class
  private
    FID: Integer;
    FNome: String;
    FAliquota: real;
  public
    [TCampo('ID', 0, true)]
    //[TChavePrimaria('ID')]
    property Id: integer read FID write FID;
    [TCampo('NOME', 30)]
    property Nome: string read FNome write FNome;
    [TCampo('ALIQUOTA')]
    property Aliquota: real read FAliquota write FAliquota;
  end;

implementation

end.
