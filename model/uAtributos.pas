unit uAtributos;

interface

type

  TTabela = class(TCustomAttribute)
  private
    FNome: String;
  public
    constructor Create(pNome: String);
    property nome: String read FNome write FNome;
  end;

  TCampo = class(TCustomAttribute)
  private
    FNome: String;
    FChavePrimaria: Boolean;
    FTamanho: Integer;
  public
    constructor Create(pNome: String; pTamanho: integer = 0; pChavePrimaria: Boolean = false);
    property nome: String read FNome write FNome;
    property tamanho: Integer read FTamanho write FTamanho;
    property ChavePrimaria: Boolean read FChavePrimaria write FChavePrimaria;
  end;
  {
  TChavePrimaria = class(TCustomAttribute)
  private
    FNome: String;
  public
    constructor Create(pNome: String);
    property nome: String read FNome write FNome;
  end;
  }
  TChaveEstrangeira = class(TCustomAttribute)
  private
    FTabela: String;
    FCampo: String;
  public
    constructor Create(pTabela: String; pCampo: String);
    property tabela: String read FTabela write FTabela;
    property campo: String read FCampo write FCampo;
  end;

implementation

{ TTabela }
constructor TTabela.Create(pNome: String);
begin
  Nome := pNome;
end;


{ TCampo }

constructor TCampo.Create(pNome: String; pTamanho: integer = 0; pChavePrimaria: Boolean = false);
begin
  Nome := pNome;
  Tamanho := pTamanho;
  ChavePrimaria := pChavePrimaria;
end;

{ TChavePrimaria }
{
constructor TChavePrimaria.Create(pNome: String);
begin
  Nome := pNome;
end;
}

{ TChaveEstrangeira }

constructor TChaveEstrangeira.Create(pTabela, pCampo: String);
begin
  FTabela := pTabela;
  FCampo := pCampo;
end;

end.
