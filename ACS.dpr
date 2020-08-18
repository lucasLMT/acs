program ACS;

uses
  Vcl.Forms,
  mainForm in 'mainForm.pas' {Form1},
  datamodulecadastros in 'datamodulecadastros.pas' {DataModule2: TDataModule},
  uTanqueModel in 'model\uTanqueModel.pas',
  uTanqueController in 'controller\uTanqueController.pas',
  uAtributos in 'model\uAtributos.pas',
  uCombustivel in 'model\uCombustivel.pas',
  uBomba in 'model\uBomba.pas',
  uImposto in 'model\uImposto.pas',
  uPersistencia in 'data\uPersistencia.pas',
  uBombaController in 'controller\uBombaController.pas',
  uCombustivelController in 'controller\uCombustivelController.pas',
  uImpostoController in 'controller\uImpostoController.pas',
  uAbastecimento in 'model\uAbastecimento.pas',
  uAbastecimentoController in 'controller\uAbastecimentoController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
