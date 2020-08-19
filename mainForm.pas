unit mainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Stan.Def,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper, FireDAC.Phys.IBBase,
  FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.FBDef, FireDAC.Phys.FB,
  frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    Menu: TMainMenu;
    mnCadastros: TMenuItem;
    mnCadTanque: TMenuItem;
    mnCadCombustivel: TMenuItem;
    mnCadBomba: TMenuItem;
    mnCadImpostos: TMenuItem;
    mnOperacoes: TMenuItem;
    mnAbastecer: TMenuItem;
    StatusBar1: TStatusBar;
    mnConfiguracoes: TMenuItem;
    mnRelatorios: TMenuItem;
    mnConfigBanco: TMenuItem;
    OpenDialog1: TOpenDialog;
    mnConfigBackup: TMenuItem;
    FileOpenDialog1: TFileOpenDialog;
    FDIBackup: TFDIBBackup;
    FDIBRestore: TFDIBRestore;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    pgPrincipal: TPageControl;
    tsTanque: TTabSheet;
    DBGridTanque: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnTanqueNovo: TButton;
    btnTanqueEditar: TButton;
    btnTanqueSalvar: TButton;
    btnTanqueDeletar: TButton;
    teTanqueNomeConsulta: TEdit;
    btnConsultarTanque: TButton;
    cbTanqueCombustivel: TComboBox;
    teTanqueNome: TEdit;
    tsCombustivel: TTabSheet;
    DBGridCombustivel: TDBGrid;
    Panel3: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    btnCombustivelNovo: TButton;
    btnCombustivelEditar: TButton;
    btnCombustivelSalvar: TButton;
    btnCombustivelDeletar: TButton;
    teCombustivelConsulta: TEdit;
    btnCombustivelConsulta: TButton;
    teCombustivelNome: TEdit;
    teCombustivelPreco: TEdit;
    tsImposto: TTabSheet;
    DBGridImposto: TDBGrid;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    btnImpostoNovo: TButton;
    btnImpostoEditar: TButton;
    btnImpostoSalvar: TButton;
    btnImpostoDeletar: TButton;
    teImpostoConsulta: TEdit;
    btnImpostoConsulta: TButton;
    teImpostoNome: TEdit;
    teImpostoAliquota: TEdit;
    tsBomba: TTabSheet;
    DBGridBomba: TDBGrid;
    Panel4: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    btnBombaNovo: TButton;
    btnBombaEditar: TButton;
    btnBombaSalvar: TButton;
    btnBombaDeletar: TButton;
    teBombaConsulta: TEdit;
    btnBombaConsulta: TButton;
    teBombaNome: TEdit;
    cbBombaTanque: TComboBox;
    tsBanco: TTabSheet;
    Panel: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    tePath: TEdit;
    btnAbrirDiretorio: TButton;
    teUsuario: TEdit;
    teSenha: TEdit;
    btnTesteConexao: TButton;
    btnGravarArquivoBanco: TButton;
    tsBackup: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    tePathDirectory: TEdit;
    btnOpenDialogBackup: TButton;
    btnBackup: TButton;
    btnOpenDialogRestore: TButton;
    tePathRestoreFile: TEdit;
    btnRestore: TButton;
    tsVenda: TTabSheet;
    Label5: TLabel;
    cbVendaBomba: TComboBox;
    Label18: TLabel;
    teVendaPreco: TEdit;
    Label24: TLabel;
    teVendaQuantidade: TEdit;
    btnVendaNovo: TButton;
    btnVendaSalvar: TButton;
    Label25: TLabel;
    teVendaTotal: TEdit;
    Label26: TLabel;
    cbVendaCombustivel: TComboBox;
    mnRelVendas: TMenuItem;
    tsRelVendas: TTabSheet;
    Label27: TLabel;
    cbRelVendaBomba: TComboBox;
    dtRelVendaDataInicial: TDateTimePicker;
    Label28: TLabel;
    Label29: TLabel;
    dtRelVendaDataFinal: TDateTimePicker;
    btnRelVendaGerar: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    mePrompt: TMemo;
    procedure tsBombaShow(Sender: TObject);
    procedure tsCombustivelShow(Sender: TObject);
    procedure tsImpostoShow(Sender: TObject);
    procedure tsTanqueShow(Sender: TObject);
    procedure btnAbrirDiretorioClick(Sender: TObject);
    procedure btnTesteConexaoClick(Sender: TObject);
    procedure btnGravarArquivoBancoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnConfigBancoClick(Sender: TObject);
    procedure btnOpenDialogBackupClick(Sender: TObject);
    procedure btnBackupClick(Sender: TObject);
    procedure btnOpenDialogRestoreClick(Sender: TObject);
    procedure btnRestoreClick(Sender: TObject);
    procedure FDIBackupProgress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure FDIBRestoreProgress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure btnConsultarTanqueClick(Sender: TObject);
    procedure btnTanqueNovoClick(Sender: TObject);
    procedure btnTanqueEditarClick(Sender: TObject);
    procedure btnTanqueSalvarClick(Sender: TObject);
    procedure btnTanqueDeletarClick(Sender: TObject);
    procedure btnCombustivelConsultaClick(Sender: TObject);
    procedure btnCombustivelNovoClick(Sender: TObject);
    procedure btnCombustivelEditarClick(Sender: TObject);
    procedure btnCombustivelSalvarClick(Sender: TObject);
    procedure btnCombustivelDeletarClick(Sender: TObject);
    procedure btnImpostoSalvarClick(Sender: TObject);
    procedure btnBombaSalvarClick(Sender: TObject);
    procedure btnBombaNovoClick(Sender: TObject);
    procedure btnBombaEditarClick(Sender: TObject);
    procedure btnBombaDeletarClick(Sender: TObject);
    procedure btnBombaConsultaClick(Sender: TObject);
    procedure btnImpostoNovoClick(Sender: TObject);
    procedure btnImpostoEditarClick(Sender: TObject);
    procedure btnImpostoDeletarClick(Sender: TObject);
    procedure btnImpostoConsultaClick(Sender: TObject);
    procedure btnVendaNovoClick(Sender: TObject);
    procedure btnVendaSalvarClick(Sender: TObject);
    procedure tsVendaShow(Sender: TObject);
    procedure cbVendaBombaChange(Sender: TObject);
    procedure teVendaTotalChange(Sender: TObject);
    procedure mnCadTanqueClick(Sender: TObject);
    procedure mnCadCombustivelClick(Sender: TObject);
    procedure mnCadBombaClick(Sender: TObject);
    procedure mnCadImpostosClick(Sender: TObject);
    procedure mnConfigBackupClick(Sender: TObject);
    procedure mnAbastecerClick(Sender: TObject);
    procedure tsRelVendasShow(Sender: TObject);
    procedure btnRelVendaGerarClick(Sender: TObject);
    procedure mnRelVendasClick(Sender: TObject);
    procedure tsBackupShow(Sender: TObject);
    procedure tsRelVendasContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
    { Private declarations }
    procedure AfterScrollTanqueHandler(ADataSet : TDataSet);
    procedure AfterScrollCombustivelHandler(ADataSet : TDataSet);
    procedure AfterScrollImpostoHandler(ADataSet : TDataSet);
    procedure AfterScrollBombaHandler(ADataSet : TDataSet);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses datamodulecadastros, FireDAC.Comp.Client, inifiles, IOUtils, uTanqueModel,
  uPersistencia, uTanqueController, uCombustivel, DBClient,
  uCombustivelController, uImposto, uImpostoController, uBomba,
  uBombaController, uAbastecimento, uAbastecimentoController, System.UITypes,
  FireDAC.Stan.Param;

procedure TForm1.mnConfigBackupClick(Sender: TObject);
begin
  pgPrincipal.ActivePageIndex := 5;
end;

procedure TForm1.mnConfigBancoClick(Sender: TObject);
begin
  pgPrincipal.ActivePageIndex := 4;
end;

procedure TForm1.mnRelVendasClick(Sender: TObject);
begin
  pgPrincipal.ActivePageIndex := 7;
end;

{$Region 'Banco de dados'}

procedure TForm1.btnGravarArquivoBancoClick(Sender: TObject);
var
  iniFile: TIniFile;
begin
  if not TDirectory.Exists(ExtractFileDir(ParamStr(0)) + '\config') then
    TDirectory.CreateDirectory(ExtractFileDir(ParamStr(0)) + '\config');

  iniFile := TIniFile.Create(ExtractFileDir(ParamStr(0)) + '\config\database.ini');
  try
    iniFile.WriteString('DATABASE', 'PATH', tePath.Text);
    iniFile.WriteString('DATABASE', 'USER', teUsuario.Text);
    iniFile.WriteString('DATABASE', 'PASSWORD', teSenha.Text);
    ShowMessage('Configurações do banco gravadas com sucesso.');
  finally
    FreeAndNil(iniFile);
  end;
end;

procedure TForm1.btnTesteConexaoClick(Sender: TObject);
var
  conexao: TFDConnection;
begin
  conexao := datamodulecadastros.DataModule2.FDConnection1;
  if conexao.Connected then
    conexao.Close;

  conexao.DriverName := 'FB';
  conexao.Params.Database := tePath.Text;
  conexao.Params.UserName := teUsuario.Text;
  conexao.Params.Password := teSenha.Text;
  conexao.Open;

  if conexao.Connected then
    ShowMessage('Banco conectado com sucesso!')
  else
    ShowMessage('Falha ao conectar com o banco.');
end;

procedure TForm1.btnVendaNovoClick(Sender: TObject);
begin
  teVendaPreco.Text := EmptyStr;
  teVendaQuantidade.Text := EmptyStr;
  teVendaTotal.Text := EmptyStr;
  cbVendaBomba.ItemIndex := -1;
  cbVendaCombustivel.ItemIndex := -1;
end;

procedure TForm1.btnVendaSalvarClick(Sender: TObject);
var
  abastecimento: TAbastecimento;
  abastecimentoController: TAbastecimentoController;
  imposto: TImposto;
  impostoController: TImpostoController;
  impostos: TClientDataSet;
  sError: string;
begin
  abastecimento := TAbastecimento.Create;
  abastecimentoController := TAbastecimentoController.Create;
  abastecimento.Bomba := Integer(cbVendaBomba.Items.Objects[cbVendaBomba.ItemIndex]);
  abastecimento.Quantidade := StrToFloat(teVendaQuantidade.Text);
  abastecimento.Data := FormatDateTime('mm/dd/yyyy', Date());
  abastecimento.Hora := FormatDateTime('hh:mm:ss', Time());
  abastecimento.Total := StrToFloat(teVendaTotal.Text);
  abastecimento.ValorImposto := 0;

  imposto := TImposto.Create;
  impostoController := TImpostoController.Create;

  impostos := impostoController.Consultar(imposto, '', sError);
  impostos.First;
  while not impostos.Eof do
  begin
    abastecimento.ValorImposto := abastecimento.ValorImposto + StrToFloat(teVendaTotal.Text) * impostos.FieldByName('ALIQUOTA').AsFloat / 100;
    impostos.Next;
  end;

  abastecimentoController.Inserir(abastecimento, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
    ShowMessage('Venda gravada com sucesso!');
end;

procedure TForm1.cbVendaBombaChange(Sender: TObject);
var
  bomba: TBomba;
  bombaController: TBombaController;
  tanque: Ttanque;
  tanqueController: TTanqueController;
  combustivel: TCombustivel;
  combustivelController: TCombustivelController;
  idBomba: Integer;
  sError: string;
begin
  bombaController := TBombaController.Create;
  tanqueController := TTanqueController.Create;
  combustivelController := TCombustivelController.Create;

  idBomba := Integer((Sender as TComboBox).Items.Objects[(Sender as TComboBox).ItemIndex]);
  bomba := TBomba.Create;
  bombaController.ConsultarId(bomba, IntToStr(idBomba), sError);

  tanque := TTanque.Create;
  tanqueController.ConsultarId(tanque, IntToStr(bomba.Tanque), sError);
  cbVendaCombustivel.ItemIndex := cbVendaCombustivel.Items.IndexOfObject(TObject(tanque.Combustivel));

  combustivel := TCombustivel.Create;
  combustivelController.ConsultarId(combustivel, IntToStr(tanque.Combustivel), sError);

  teVendaPreco.Text := FloatToStr(combustivel.Preco);
end;

procedure TForm1.mnCadCombustivelClick(Sender: TObject);
begin
  pgPrincipal.ActivePageIndex := 1;
end;

procedure TForm1.mnAbastecerClick(Sender: TObject);
begin
  pgPrincipal.ActivePageIndex := 6;
end;

procedure TForm1.mnCadTanqueClick(Sender: TObject);
begin
  pgPrincipal.ActivePageIndex := 0;
end;

procedure TForm1.AfterScrollBombaHandler(ADataSet: TDataSet);
begin
  teBombaNome.Text := ADataSet.FieldByName('NOME').AsString;
  cbBombaTanque.ItemIndex := cbBombaTanque.Items.IndexOfObject(TObject(ADataSet.FieldByName('TANQUE').AsInteger));
end;

procedure TForm1.AfterScrollCombustivelHandler(ADataSet: TDataSet);
begin
  teCombustivelNome.Text := ADataSet.FieldByName('NOME').AsString;
  teCombustivelPreco.Text := ADataSet.FieldByName('PRECO').AsString;
end;

procedure TForm1.AfterScrollImpostoHandler(ADataSet: TDataSet);
begin
  teImpostoNome.Text := ADataSet.FieldByName('NOME').AsString;
  teImpostoAliquota.Text := ADataSet.FieldByName('ALIQUOTA').AsString;
end;

procedure TForm1.AfterScrollTanqueHandler(ADataSet: TDataSet);
begin
  teTanqueNome.Text := ADataSet.FieldByName('NOME').AsString;
  cbTanqueCombustivel.ItemIndex := cbTanqueCombustivel.Items.IndexOfObject(TObject(ADataSet.FieldByName('COMBUSTIVEL').AsInteger));
end;

procedure TForm1.mnCadBombaClick(Sender: TObject);
begin
  pgPrincipal.ActivePageIndex := 3;
end;

procedure TForm1.btnAbrirDiretorioClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    tePath.Text := OpenDialog1.FileName;
end;

{$EndRegion}

{$Region 'Backup'}

procedure TForm1.btnOpenDialogBackupClick(Sender: TObject);
begin
  FileOpenDialog1.Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem];
  if FileOpenDialog1.Execute then
    tePathDirectory.Text := FileOpenDialog1.FileName;
end;

procedure TForm1.btnOpenDialogRestoreClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    tePathRestoreFile.Text := OpenDialog1.FileName;
end;

procedure TForm1.btnRelVendaGerarClick(Sender: TObject);
var
  bombaId: Integer;
  dataInicial, dataFinal: string;
begin
  bombaId := -1;
  if cbRelVendaBomba.ItemIndex <> -1 then
    bombaId := Integer(cbRelVendaBomba.Items.Objects[cbRelVendaBomba.ItemIndex]);

  dataInicial := FormatDateTime('mm/dd/yyyy', dtRelVendaDataInicial.DateTime);
  dataFinal := FormatDateTime('mm/dd/yyyy', dtRelVendaDataFinal.DateTime);

  with datamodulecadastros.DataModule2.QueryRelatorioVenda do
  begin
    Close;
    Params.ClearValues();
    if bombaId <> -1 then
      ParamByName('BOMBA').AsInteger := bombaId;

    ParamByName('DATAINICIAL').AsString := dataInicial;
    ParamByName('DATAFINAL').AsString := dataFinal;
    Open();
  end;

  frxReport1.ShowReport;

end;

procedure TForm1.btnRestoreClick(Sender: TObject);
var
  conexao: TFDConnection;
begin
  mePrompt.Clear;
  conexao := datamodulecadastros.DataModule2.FDConnection1;

  if conexao.Connected then
    conexao.Close;

  FDPhysFBDriverLink1.DriverID := 'FB';
  FDPhysFBDriverLink1.VendorLib := 'fbclient.dll';

  FDIBRestore.DriverLink := FDPhysFBDriverLink1;
  FDIBRestore.UserName := conexao.Params.UserName;
  FDIBRestore.Password := conexao.Params.Password;
  FDIBRestore.Database := conexao.Params.Database;
  FDIBRestore.Protocol := ipLocal;
  FDIBRestore.Verbose := true;
  FDIBRestore.Host := 'localhost';
  FDIBRestore.BackupFiles.Clear;
  FDIBRestore.BackupFiles.Add(tePathRestoreFile.Text);

  if not TDirectory.Exists(ExtractFileDir(ParamStr(0)) + '\database') then
    TDirectory.CreateDirectory(ExtractFileDir(ParamStr(0)) + '\database');

  FDIBRestore.Database := ExtractFileDir(ParamStr(0)) + '\database\posto.fdb';
  FDIBRestore.Restore;

  MessageDlg('Restauração realizada com sucesso!' + #13 +
             'Path: ' + FDIBRestore.Database, mtInformation, [mbOK], 0);
end;

procedure TForm1.btnBackupClick(Sender: TObject);
var
  conexao: TFDConnection;
begin
  mePrompt.Clear;
  conexao := datamodulecadastros.DataModule2.FDConnection1;

  if conexao.Connected then
    conexao.Close;

  FDPhysFBDriverLink1.DriverID := 'FB';
  FDPhysFBDriverLink1.VendorLib := 'fbclient.dll';

  FDIBackup.DriverLink := FDPhysFBDriverLink1;
  FDIBackup.UserName := conexao.Params.UserName;
  FDIBackup.Password := conexao.Params.Password;
  FDIBackup.Database := conexao.Params.Database;
  FDIBackup.Protocol := ipLocal;
  FDIBackup.Verbose := true;
  FDIBackup.Host := 'localhost';
  FDIBackup.BackupFiles.Clear;
  FDIBackup.BackupFiles.Add(tePathDirectory.Text + '\database.fbk');
  FDIBackup.Backup;

  MessageDlg('Backup realizado com sucesso!', mtInformation, [mbOK], 0);
end;

procedure TForm1.FDIBackupProgress(ASender: TFDPhysDriverService;
  const AMessage: string);
begin
  mePrompt.Lines.Add(AMessage);
end;

procedure TForm1.FDIBRestoreProgress(ASender: TFDPhysDriverService;
  const AMessage: string);
begin
  mePrompt.Lines.Add(AMessage);
end;

{$EndRegion}

{$Region 'Botões Cadastro'}

{$Region 'Bomba'}

procedure TForm1.btnBombaConsultaClick(Sender: TObject);
var
  bomba: TBomba;
  source: TDataSource;
  bombaController: TBombaController;
  sError: string;
begin
  bomba := TBomba.Create;
  bombaController := TBombaController.Create;
  if Assigned(DBGridBomba.DataSource) then
    source := DBGridBomba.DataSource
  else
    source := TDataSource.Create(nil);

  source.DataSet := bombaController.Consultar(bomba, teBombaConsulta.Text, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    source.DataSet.Active := true;
    source.DataSet.AfterScroll := AfterScrollBombaHandler;

    DBGridBomba.DataSource := source;
    DBGridBomba.DataSource.DataSet.First;
  end;
end;

procedure TForm1.btnBombaDeletarClick(Sender: TObject);
var
  bomba: TBomba;
  bombaController: TBombaController;
  sError: string;
begin
  bomba := TBomba.Create;
  bombaController := TBombaController.Create;

  bomba.Id := DBGridBomba.DataSource.DataSet.FieldByName('ID').AsInteger;

  bombaController.Excluir(bomba, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
    DBGridBomba.DataSource.DataSet.Delete;
end;

procedure TForm1.btnBombaEditarClick(Sender: TObject);
var
  bomba: TBomba;
  bombaController: TBombaController;
  sError: string;
begin
  bomba := TBomba.Create;
  bombaController := TBombaController.Create;

  bomba.Id := DBGridBomba.DataSource.DataSet.FieldByName('ID').AsInteger;
  bomba.Nome := teTanqueNome.Text;
  bomba.Tanque := Integer(cbBombaTanque.Items.Objects[cbBombaTanque.ItemIndex]);

  bombaController.Atualizar(bomba, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    with DBGridBomba.DataSource.DataSet do
    begin
      Edit;
      FieldByName('NOME').AsString := bomba.Nome;
      FieldByName('TANQUE').AsInteger := bomba.Tanque;
      Post;
    end;
  end;
end;

procedure TForm1.btnBombaNovoClick(Sender: TObject);
begin
  teBombaNome.Text := EmptyStr;
  if Assigned(DBGridBomba.DataSource) then
    DBGridBomba.DataSource.DataSet.Append;

  cbBombaTanque.ItemIndex := -1;
  btnBombaEditar.Enabled := False;
  btnBombaDeletar.Enabled := False;
  DBGridBomba.ReadOnly := True;
end;

procedure TForm1.btnBombaSalvarClick(Sender: TObject);
var
  bomba: TBomba;
  bombaController: TBombaController;
  sError: string;
begin
  bomba := TBomba.Create;
  bombaController := TBombaController.Create;
  bomba.Nome := teBombaNome.Text;
  bomba.Tanque := Integer(cbBombaTanque.Items.Objects[cbBombaTanque.ItemIndex]);

  bombaController.Inserir(bomba, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    if Assigned(DBGridBomba.DataSource) then
    begin
      with DBGridBomba.DataSource.DataSet do
      begin
        FieldByName('NOME').AsString := bomba.Nome;
        FieldByName('TANQUE').AsInteger := bomba.Tanque;
        Post;
      end;
    end;
  end;

  btnBombaEditar.Enabled := True;
  btnBombaDeletar.Enabled := True;
  DBGridBomba.ReadOnly := False;
end;

{$EndRegion}

{$Region 'Imposto'}

procedure TForm1.btnImpostoConsultaClick(Sender: TObject);
var
  imposto: TImposto;
  source: TDataSource;
  impostoController: TImpostoController;
  sError: string;
begin
  imposto := TImposto.Create;
  impostoController := TImpostoController.Create;
  if Assigned(DBGridImposto.DataSource) then
    source := DBGridImposto.DataSource
  else
    source := TDataSource.Create(nil);

  source.DataSet := impostoController.Consultar(imposto, teImpostoConsulta.Text, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    source.DataSet.Active := true;
    source.DataSet.AfterScroll := AfterScrollImpostoHandler;

    DBGridImposto.DataSource := source;
    DBGridImposto.DataSource.DataSet.First;
  end;
end;

procedure TForm1.btnImpostoDeletarClick(Sender: TObject);
var
  imposto: TImposto;
  impostoController: TImpostoController;
  sError: string;
begin
  imposto := TImposto.Create;
  impostoController := TImpostoController.Create;

  imposto.Id := DBGridImposto.DataSource.DataSet.FieldByName('ID').AsInteger;

  impostoController.Excluir(imposto, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
    DBGridImposto.DataSource.DataSet.Delete;
end;

procedure TForm1.btnImpostoEditarClick(Sender: TObject);
var
  imposto: TImposto;
  impostoController: TImpostoController;
  sError: string;
begin
  imposto := TImposto.Create;
  impostoController := TImpostoController.Create;

  imposto.Id := DBGridImposto.DataSource.DataSet.FieldByName('ID').AsInteger;
  imposto.Nome := teImpostoNome.Text;
  imposto.Aliquota := StrToFloat(teImpostoAliquota.Text);

  impostoController.Atualizar(imposto, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    with DBGridImposto.DataSource.DataSet do
    begin
      Edit;
      FieldByName('NOME').AsString := imposto.Nome;
      FieldByName('ALIQUOTA').AsFloat := imposto.Aliquota;
      Post;
    end;
  end;
end;

procedure TForm1.btnImpostoNovoClick(Sender: TObject);
begin
  teImpostoNome.Text := EmptyStr;
  teImpostoAliquota.Text := EmptyStr;

  if Assigned(DBGridImposto.DataSource) then
    DBGridImposto.DataSource.DataSet.Append;

  btnImpostoEditar.Enabled := False;
  btnImpostoDeletar.Enabled := False;
  DBGridImposto.ReadOnly := True;
end;

procedure TForm1.btnImpostoSalvarClick(Sender: TObject);
var
  imposto: TImposto;
  impostoController: TImpostoController;
  sError: string;
begin
  imposto := TImposto.Create;
  impostoController := TImpostoController.Create;

  imposto.Id := DBGridImposto.DataSource.DataSet.FieldByName('ID').AsInteger;
  imposto.Nome := teImpostoNome.Text;
  imposto.Aliquota := StrToFloat(teImpostoAliquota.Text);

  impostoController.Inserir(imposto, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    if Assigned(DBGridImposto.DataSource) then
    begin
      with DBGridImposto.DataSource.DataSet do
      begin
        FieldByName('NOME').AsString := imposto.Nome;
        FieldByName('ALIQUOTA').AsFloat := imposto.Aliquota;
        Post;
      end;
    end;
  end;

  btnImpostoEditar.Enabled := True;
  btnImpostoDeletar.Enabled := True;
  DBGridImposto.ReadOnly := False;
end;

{$EndRegion}

{$Region 'Combustivel'}

procedure TForm1.btnCombustivelConsultaClick(Sender: TObject);
var
  combustivel: TCombustivel;
  source: TDataSource;
  combustivelController: TCombustivelController;
  sError: string;
begin
  combustivel := TCombustivel.Create;
  combustivelController := TCombustivelController.Create;
  if Assigned(DBGridCombustivel.DataSource) then
    source := DBGridCombustivel.DataSource
  else
    source := TDataSource.Create(nil);

  source.DataSet := combustivelController.Consultar(combustivel, teCombustivelConsulta.Text, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    source.DataSet.Active := true;
    source.DataSet.AfterScroll := AfterScrollCombustivelHandler;

    DBGridCombustivel.DataSource := source;
    DBGridCombustivel.DataSource.DataSet.First;
  end;
end;

procedure TForm1.btnCombustivelDeletarClick(Sender: TObject);
var
  combustivel: TCombustivel;
  combustivelController: TCombustivelController;
  sError: string;
begin
  combustivel := TCombustivel.Create;
  combustivelController := TCombustivelController.Create;

  combustivel.Id := DBGridCombustivel.DataSource.DataSet.FieldByName('ID').AsInteger;

  combustivelController.Excluir(combustivel, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
    DBGridCombustivel.DataSource.DataSet.Delete;
end;

procedure TForm1.btnCombustivelEditarClick(Sender: TObject);
var
  combustivel: TCombustivel;
  combustivelController: TCombustivelController;
  sError: string;
begin
  combustivel := TCombustivel.Create;
  combustivelController := TCombustivelController.Create;

  combustivel.Id := DBGridCombustivel.DataSource.DataSet.FieldByName('ID').AsInteger;
  combustivel.Nome := teCombustivelNome.Text;
  combustivel.Preco := StrToFloat(teCombustivelPreco.Text);

  combustivelController.Atualizar(combustivel, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    with DBGridCombustivel.DataSource.DataSet do
    begin
      Edit;
      FieldByName('NOME').AsString := combustivel.Nome;
      FieldByName('PRECO').AsFloat := combustivel.Preco;
      Post;
    end;
  end;
end;

procedure TForm1.btnCombustivelNovoClick(Sender: TObject);
begin
  teCombustivelNome.Text := EmptyStr;
  teCombustivelPreco.Text := EmptyStr;

  if Assigned(DBGridCombustivel.DataSource) then
    DBGridCombustivel.DataSource.DataSet.Append;

  btnCombustivelEditar.Enabled := False;
  btnCombustivelDeletar.Enabled := False;
  DBGridCombustivel.ReadOnly := True;
end;

procedure TForm1.btnCombustivelSalvarClick(Sender: TObject);
var
  combustivel: TCombustivel;
  combustivelController: TCombustivelController;
  sError: string;
begin
  combustivel := TCombustivel.Create;
  combustivelController := TCombustivelController.Create;

  combustivel.Id := DBGridCombustivel.DataSource.DataSet.FieldByName('ID').AsInteger;
  combustivel.Nome := teCombustivelNome.Text;
  combustivel.Preco := StrToFloat(teCombustivelPreco.Text);

  combustivelController.Inserir(combustivel, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    if Assigned(DBGridCombustivel.DataSource) then
    begin
      with DBGridCombustivel.DataSource.DataSet do
      begin
        FieldByName('NOME').AsString := combustivel.Nome;
        FieldByName('PRECO').AsFloat := combustivel.Preco;
        Post;
      end;
    end;
  end;

  btnCombustivelEditar.Enabled := True;
  btnCombustivelDeletar.Enabled := True;
  DBGridCombustivel.ReadOnly := False;
end;

{$EndRegion}

{$Region 'Tanque'}

procedure TForm1.btnTanqueDeletarClick(Sender: TObject);
var
  tanque: TTanque;
  tanqueController: TTanqueController;
  sError: string;
begin
  tanque := TTanque.Create;
  tanqueController := TTanqueController.Create;

  tanque.Id := DBGridTanque.DataSource.DataSet.FieldByName('ID').AsInteger;

  tanqueController.Excluir(tanque, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
    DBGridTanque.DataSource.DataSet.Delete;
end;

procedure TForm1.btnTanqueEditarClick(Sender: TObject);
var
  tanque: TTanque;
  tanqueController: TTanqueController;
  sError: string;
begin
  tanque := TTanque.Create;
  tanqueController := TTanqueController.Create;

  tanque.Id := DBGridTanque.DataSource.DataSet.FieldByName('ID').AsInteger;
  tanque.Nome := teTanqueNome.Text;
  tanque.Combustivel := Integer(cbTanqueCombustivel.Items.Objects[cbTanqueCombustivel.ItemIndex]);

  tanqueController.Atualizar(tanque, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    with DBGridTanque.DataSource.DataSet do
    begin
      Edit;
      FieldByName('NOME').AsString := tanque.Nome;
      FieldByName('COMBUSTIVEL').AsInteger := tanque.Combustivel;
      Post;
    end;
  end;

end;

procedure TForm1.btnTanqueNovoClick(Sender: TObject);
begin
  teTanqueNome.Text := EmptyStr;
  if Assigned(DBGridTanque.DataSource) then
    DBGridTanque.DataSource.DataSet.Append;

  cbTanqueCombustivel.ItemIndex := -1;
  btnTanqueEditar.Enabled := False;
  btnTanqueDeletar.Enabled := False;
  DBGridTanque.ReadOnly := True;
end;

procedure TForm1.btnTanqueSalvarClick(Sender: TObject);
var
  tanque: TTanque;
  tanqueController: TTanqueController;
  sError: string;
begin
  tanque := TTanque.Create;
  tanqueController := TTanqueController.Create;
  tanque.Nome := teTanqueNome.Text;
  tanque.Combustivel := Integer(cbTanqueCombustivel.Items.Objects[cbTanqueCombustivel.ItemIndex]);

  tanqueController.Inserir(tanque, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    if Assigned(DBGridTanque.DataSource) then
    begin
      with DBGridTanque.DataSource.DataSet do
      begin
        FieldByName('NOME').AsString := tanque.Nome;
        FieldByName('COMBUSTIVEL').AsInteger := tanque.Combustivel;
        Post;
      end;
    end;
  end;

  btnTanqueEditar.Enabled := True;
  btnTanqueDeletar.Enabled := True;
  DBGridTanque.ReadOnly := False;
end;

procedure TForm1.btnConsultarTanqueClick(Sender: TObject);
var
  tanque: TTanque;
  source: TDataSource;
  tanqueController: TTanqueController;
  sError: string;
begin
  tanque := TTanque.Create;
  tanqueController := TTanqueController.Create;
  if Assigned(DBGridTanque.DataSource) then
    source := DBGridTanque.DataSource
  else
    source := TDataSource.Create(nil);

  source.DataSet := tanqueController.Consultar(tanque, teTanqueNomeConsulta.Text, sError);
  if sError <> EmptyStr then
    ShowMessage(sError)
  else
  begin
    source.DataSet.Active := true;
    source.DataSet.AfterScroll := AfterScrollTanqueHandler;

    DBGridTanque.DataSource := source;
    DBGridTanque.DataSource.DataSet.First;
  end;
end;

{$EndREgion}

{$EndRegion}

{$Region 'SetUp'}
procedure TForm1.FormShow(Sender: TObject);
var
  iniFile: TIniFile;
  conexao: TFDConnection;
  i: Integer;
begin
  for i := 0 to pgPrincipal.PageCount - 1 do
    pgPrincipal.Pages[i].TabVisible := false;

  if FileExists(ExtractFileDir(ParamStr(0)) + '\config\database.ini') then
  begin
    iniFile := TIniFile.Create(ExtractFileDir(ParamStr(0)) + '\config\database.ini');
    conexao := datamodulecadastros.DataModule2.FDConnection1;
    try
      if conexao.Connected then
        conexao.Close;

      conexao.DriverName := 'FB';
      conexao.Params.Database := iniFile.ReadString('DATABASE', 'PATH', '');
      conexao.Params.UserName := iniFile.ReadString('DATABASE', 'USER', '');
      conexao.Params.Password := iniFile.ReadString('DATABASE', 'PASSWORD', '');
      conexao.Open;

      if not conexao.Connected then
      begin
        ShowMessage('Falha ao conectar com o banco de dados.');
        Menu.Items.Find('Configurações').Find('Banco de dados').OnClick(Sender);
      end;

    finally
      FreeAndNil(iniFile);
    end;
  end
  else
  begin
    pgPrincipal.ActivePageIndex := 4;
    ShowMessage('O Banco de dados deve ser configurado.');
  end;
end;
procedure TForm1.mnCadImpostosClick(Sender: TObject);
begin
  pgPrincipal.ActivePageIndex := 2;
end;

{$EndRegion}

procedure TForm1.teVendaTotalChange(Sender: TObject);
var
  total: string;
begin
  total := (Sender as TEdit).Text;
  if (teVendaPreco.Text <> EmptyStr) and ( total <> EmptyStr) then
    teVendaQuantidade.Text := FloatToStrF(StrToFloat(total) / StrToFloat(teVendaPreco.Text), ffFixed, 16, 4);
end;

procedure TForm1.tsBackupShow(Sender: TObject);
begin
  mePrompt.Lines.Clear;
end;

procedure TForm1.tsBombaShow(Sender: TObject);
var
  bombaController: TBombaController;
  tanque: TTanque;
  itens: TClientDataSet;
begin
  Form1.FormShow(Self);

  bombaController := TBombaController.Create;
  tanque := TTanque.Create;
  itens := bombaController.CarregaCombo(tanque, 'NOME');

  itens.First;
  cbBombaTanque.Items.Clear;
  while not itens.Eof do
  begin
    cbBombaTanque.AddItem(itens.FieldByName('NOME').AsString, TObject(itens.FieldByName('ID').AsInteger));
    itens.Next;
  end;
end;

procedure TForm1.tsCombustivelShow(Sender: TObject);
begin
  Form1.FormShow(Self);
end;

procedure TForm1.tsImpostoShow(Sender: TObject);
begin
  Form1.FormShow(Self);
end;

procedure TForm1.tsRelVendasContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Form1.FormShow(Self);
end;

procedure TForm1.tsRelVendasShow(Sender: TObject);
var
  bomba: TBomba;
  bombaController: TBombaController;
  itens: TClientDataSet;
begin
  Form1.FormShow(Self);

  bomba := TBomba.Create;
  bombaController := TBombaController.Create;
  itens := bombaController.CarregaCombo(bomba, 'NOME');

  itens.First;
  cbVendaBomba.Items.Clear;
  while not itens.Eof do
  begin
    cbRelVendaBomba.AddItem(itens.FieldByName('NOME').AsString, TObject(itens.FieldByName('ID').AsInteger));
    itens.Next;
  end;
end;

procedure TForm1.tsTanqueShow(Sender: TObject);
var
  tanqueController: TTanqueController;
  combustivel: TCombustivel;
  itens: TClientDataSet;
begin
  Form1.FormShow(Self);

  tanqueController := TTanqueController.Create;
  combustivel := TCombustivel.Create;
  itens := tanqueController.CarregaCombo(combustivel, 'NOME');

  itens.First;
  cbTanqueCombustivel.Items.Clear;
  while not itens.Eof do
  begin
    cbTanqueCombustivel.AddItem(itens.FieldByName('NOME').AsString, TObject(itens.FieldByName('ID').AsInteger));
    itens.Next;
  end;

end;

procedure TForm1.tsVendaShow(Sender: TObject);
var
  bomba: TBomba;
  combustivel: TCombustivel;
  bombaController: TBombaController;
  itens: TClientDataSet;
begin
  Form1.FormShow(Self);

  bomba := TBomba.Create;
  bombaController := TBombaController.Create;
  itens := bombaController.CarregaCombo(bomba, 'NOME');

  itens.First;
  cbVendaBomba.Items.Clear;
  while not itens.Eof do
  begin
    cbVendaBomba.AddItem(itens.FieldByName('NOME').AsString, TObject(itens.FieldByName('ID').AsInteger));
    itens.Next;
  end;

  combustivel := TCombustivel.Create;
  itens := bombaController.CarregaCombo(combustivel, 'NOME');

  itens.First;
  cbVendaCombustivel.Items.Clear;
  while not itens.Eof do
  begin
    cbVendaCombustivel.AddItem(itens.FieldByName('NOME').AsString, TObject(itens.FieldByName('ID').AsInteger));
    itens.Next;
  end;
end;

end.
