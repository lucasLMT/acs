object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ACS'
  ClientHeight = 486
  ClientWidth = 791
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 464
    Width = 791
    Height = 22
    Panels = <>
  end
  object pgPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 791
    Height = 464
    ActivePage = tsBanco
    Align = alClient
    TabOrder = 1
    object tsTanque: TTabSheet
      Caption = 'Tanque'
      OnShow = tsTanqueShow
      object DBGridTanque: TDBGrid
        Left = 3
        Top = 3
        Width = 320
        Height = 430
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 332
        Top = 6
        Width = 451
        Height = 430
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 123
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label2: TLabel
          Left = 8
          Top = 168
          Width = 62
          Height = 13
          Caption = 'Combust'#237'vel:'
        end
        object Label3: TLabel
          Left = 8
          Top = 0
          Width = 67
          Height = 19
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 30
          Width = 38
          Height = 16
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnTanqueNovo: TButton
          Left = 8
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Insert'
          Caption = '&Novo'
          ImageIndex = 4
          TabOrder = 0
          OnClick = btnTanqueNovoClick
        end
        object btnTanqueEditar: TButton
          Left = 89
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Edit'
          Caption = '&Editar'
          ImageIndex = 6
          TabOrder = 1
          OnClick = btnTanqueEditarClick
        end
        object btnTanqueSalvar: TButton
          Left = 170
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Post'
          Caption = '&Salvar'
          ImageIndex = 7
          TabOrder = 2
          OnClick = btnTanqueSalvarClick
        end
        object btnTanqueDeletar: TButton
          Left = 251
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Delete'
          Caption = '&Deletar'
          ImageIndex = 5
          TabOrder = 3
          OnClick = btnTanqueDeletarClick
        end
        object teTanqueNomeConsulta: TEdit
          Left = 50
          Top = 25
          Width = 249
          Height = 21
          TabOrder = 4
        end
        object btnConsultarTanque: TButton
          Left = 305
          Top = 23
          Width = 75
          Height = 23
          Caption = 'Buscar'
          TabOrder = 5
          OnClick = btnConsultarTanqueClick
        end
        object cbTanqueCombustivel: TComboBox
          Left = 8
          Top = 186
          Width = 289
          Height = 21
          TabOrder = 6
        end
        object teTanqueNome: TEdit
          Left = 8
          Top = 142
          Width = 289
          Height = 21
          TabOrder = 7
        end
      end
    end
    object tsCombustivel: TTabSheet
      Caption = 'Combust'#237'vel'
      ImageIndex = 1
      OnShow = tsCombustivelShow
      object DBGridCombustivel: TDBGrid
        Left = 3
        Top = 3
        Width = 320
        Height = 430
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel3: TPanel
        Left = 332
        Top = 6
        Width = 451
        Height = 430
        TabOrder = 1
        object Label10: TLabel
          Left = 8
          Top = 123
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label11: TLabel
          Left = 8
          Top = 168
          Width = 31
          Height = 13
          Caption = 'Pre'#231'o:'
        end
        object Label12: TLabel
          Left = 8
          Top = 0
          Width = 67
          Height = 19
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 8
          Top = 30
          Width = 38
          Height = 16
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnCombustivelNovo: TButton
          Left = 8
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Insert'
          Caption = '&Novo'
          ImageIndex = 4
          TabOrder = 0
          OnClick = btnCombustivelNovoClick
        end
        object btnCombustivelEditar: TButton
          Left = 89
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Edit'
          Caption = '&Editar'
          ImageIndex = 6
          TabOrder = 1
          OnClick = btnCombustivelEditarClick
        end
        object btnCombustivelSalvar: TButton
          Left = 170
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Post'
          Caption = '&Salvar'
          ImageIndex = 7
          TabOrder = 2
          OnClick = btnCombustivelSalvarClick
        end
        object btnCombustivelDeletar: TButton
          Left = 251
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Delete'
          Caption = '&Deletar'
          ImageIndex = 5
          TabOrder = 3
          OnClick = btnCombustivelDeletarClick
        end
        object teCombustivelConsulta: TEdit
          Left = 50
          Top = 25
          Width = 249
          Height = 21
          TabOrder = 4
        end
        object btnCombustivelConsulta: TButton
          Left = 305
          Top = 23
          Width = 75
          Height = 23
          Caption = 'Buscar'
          TabOrder = 5
          OnClick = btnCombustivelConsultaClick
        end
        object teCombustivelNome: TEdit
          Left = 8
          Top = 142
          Width = 289
          Height = 21
          TabOrder = 6
        end
        object teCombustivelPreco: TEdit
          Left = 8
          Top = 186
          Width = 289
          Height = 21
          TabOrder = 7
        end
      end
    end
    object tsImposto: TTabSheet
      Caption = 'Imposto'
      ImageIndex = 2
      OnShow = tsImpostoShow
      object DBGridImposto: TDBGrid
        Left = 3
        Top = 3
        Width = 320
        Height = 430
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel2: TPanel
        Left = 332
        Top = 6
        Width = 451
        Height = 430
        TabOrder = 1
        object Label6: TLabel
          Left = 8
          Top = 123
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label7: TLabel
          Left = 8
          Top = 168
          Width = 43
          Height = 13
          Caption = 'Al'#237'quota:'
        end
        object Label8: TLabel
          Left = 8
          Top = 0
          Width = 67
          Height = 19
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 30
          Width = 38
          Height = 16
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnImpostoNovo: TButton
          Left = 8
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Insert'
          Caption = '&Novo'
          ImageIndex = 4
          TabOrder = 0
          OnClick = btnImpostoNovoClick
        end
        object btnImpostoEditar: TButton
          Left = 89
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Edit'
          Caption = '&Editar'
          ImageIndex = 6
          TabOrder = 1
          OnClick = btnImpostoEditarClick
        end
        object btnImpostoSalvar: TButton
          Left = 170
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Post'
          Caption = '&Salvar'
          ImageIndex = 7
          TabOrder = 2
          OnClick = btnImpostoSalvarClick
        end
        object btnImpostoDeletar: TButton
          Left = 251
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Delete'
          Caption = '&Deletar'
          ImageIndex = 5
          TabOrder = 3
          OnClick = btnImpostoDeletarClick
        end
        object teImpostoConsulta: TEdit
          Left = 50
          Top = 25
          Width = 249
          Height = 21
          TabOrder = 4
        end
        object btnImpostoConsulta: TButton
          Left = 305
          Top = 23
          Width = 75
          Height = 23
          Caption = 'Buscar'
          TabOrder = 5
          OnClick = btnImpostoConsultaClick
        end
        object teImpostoNome: TEdit
          Left = 8
          Top = 142
          Width = 289
          Height = 21
          TabOrder = 6
        end
        object teImpostoAliquota: TEdit
          Left = 8
          Top = 186
          Width = 289
          Height = 21
          TabOrder = 7
        end
      end
    end
    object tsBomba: TTabSheet
      Caption = 'Bomba'
      ImageIndex = 3
      OnShow = tsBombaShow
      object DBGridBomba: TDBGrid
        Left = 3
        Top = 3
        Width = 320
        Height = 430
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel4: TPanel
        Left = 332
        Top = 6
        Width = 451
        Height = 430
        TabOrder = 1
        object Label14: TLabel
          Left = 8
          Top = 123
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object Label15: TLabel
          Left = 8
          Top = 168
          Width = 40
          Height = 13
          Caption = 'Tanque:'
        end
        object Label16: TLabel
          Left = 8
          Top = 0
          Width = 67
          Height = 19
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 8
          Top = 30
          Width = 38
          Height = 16
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btnBombaNovo: TButton
          Left = 8
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Insert'
          Caption = '&Novo'
          ImageIndex = 4
          TabOrder = 0
          OnClick = btnBombaNovoClick
        end
        object btnBombaEditar: TButton
          Left = 89
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Edit'
          Caption = '&Editar'
          ImageIndex = 6
          TabOrder = 1
          OnClick = btnBombaEditarClick
        end
        object btnBombaSalvar: TButton
          Left = 170
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Post'
          Caption = '&Salvar'
          ImageIndex = 7
          TabOrder = 2
          OnClick = btnBombaSalvarClick
        end
        object btnBombaDeletar: TButton
          Left = 251
          Top = 213
          Width = 75
          Height = 25
          Hint = 'Delete'
          Caption = '&Deletar'
          ImageIndex = 5
          TabOrder = 3
          OnClick = btnBombaDeletarClick
        end
        object teBombaConsulta: TEdit
          Left = 50
          Top = 25
          Width = 249
          Height = 21
          TabOrder = 4
        end
        object btnBombaConsulta: TButton
          Left = 305
          Top = 23
          Width = 75
          Height = 23
          Caption = 'Buscar'
          TabOrder = 5
          OnClick = btnBombaConsultaClick
        end
        object teBombaNome: TEdit
          Left = 8
          Top = 142
          Width = 289
          Height = 21
          TabOrder = 6
        end
        object cbBombaTanque: TComboBox
          Left = 8
          Top = 186
          Width = 289
          Height = 21
          TabOrder = 7
        end
      end
    end
    object tsBanco: TTabSheet
      Caption = 'Banco de dados'
      ImageIndex = 4
      object Panel: TPanel
        Left = 0
        Top = 0
        Width = 783
        Height = 436
        Align = alClient
        TabOrder = 0
        object Label19: TLabel
          Left = 8
          Top = 8
          Width = 88
          Height = 13
          Caption = 'Diret'#243'rio do Banco'
        end
        object Label20: TLabel
          Left = 8
          Top = 54
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
        end
        object Label21: TLabel
          Left = 8
          Top = 100
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object tePath: TEdit
          Left = 8
          Top = 27
          Width = 353
          Height = 21
          TabOrder = 0
        end
        object btnAbrirDiretorio: TButton
          Left = 367
          Top = 25
          Width = 75
          Height = 25
          Caption = 'Abrir'
          TabOrder = 1
          OnClick = btnAbrirDiretorioClick
        end
        object teUsuario: TEdit
          Left = 8
          Top = 73
          Width = 353
          Height = 21
          TabOrder = 2
        end
        object teSenha: TEdit
          Left = 8
          Top = 119
          Width = 353
          Height = 21
          TabOrder = 3
        end
        object btnTesteConexao: TButton
          Left = 8
          Top = 146
          Width = 169
          Height = 25
          Caption = 'Verifica Conex'#227'o'
          TabOrder = 4
          OnClick = btnTesteConexaoClick
        end
        object btnGravarArquivoBanco: TButton
          Left = 183
          Top = 146
          Width = 178
          Height = 25
          Caption = 'Gravar'
          TabOrder = 5
          OnClick = btnGravarArquivoBancoClick
        end
      end
    end
    object tsBackup: TTabSheet
      Caption = 'Backup'
      ImageIndex = 5
      object Label22: TLabel
        Left = 16
        Top = 16
        Width = 93
        Height = 13
        Caption = 'Diret'#243'rio do backup'
      end
      object Label23: TLabel
        Left = 16
        Top = 96
        Width = 181
        Height = 13
        Caption = 'Diret'#243'rio do arquivo para restaura'#231#227'o'
      end
      object tePathDirectory: TEdit
        Left = 16
        Top = 35
        Width = 353
        Height = 21
        TabOrder = 0
      end
      object btnOpenDialogBackup: TButton
        Left = 375
        Top = 33
        Width = 75
        Height = 25
        Caption = 'Abrir'
        TabOrder = 1
        OnClick = btnOpenDialogBackupClick
      end
      object btnBackup: TButton
        Left = 16
        Top = 62
        Width = 129
        Height = 25
        Caption = 'Criar backup'
        TabOrder = 2
        OnClick = btnBackupClick
      end
      object btnOpenDialogRestore: TButton
        Left = 375
        Top = 113
        Width = 75
        Height = 25
        Caption = 'Abrir'
        TabOrder = 3
        OnClick = btnOpenDialogRestoreClick
      end
      object tePathRestoreFile: TEdit
        Left = 16
        Top = 115
        Width = 353
        Height = 21
        TabOrder = 4
      end
      object btnRestore: TButton
        Left = 16
        Top = 142
        Width = 129
        Height = 25
        Caption = 'Restaurar backup'
        TabOrder = 5
        OnClick = btnRestoreClick
      end
      object mePrompt: TMemo
        Left = 16
        Top = 173
        Width = 434
        Height = 260
        Lines.Strings = (
          'mePrompt')
        TabOrder = 6
      end
    end
    object tsVenda: TTabSheet
      Caption = 'Venda'
      ImageIndex = 6
      OnShow = tsVendaShow
      object Label5: TLabel
        Left = 3
        Top = 3
        Width = 49
        Height = 19
        Caption = 'Bomba'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 3
        Top = 105
        Width = 39
        Height = 19
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 3
        Top = 209
        Width = 39
        Height = 19
        Caption = 'Litros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 3
        Top = 157
        Width = 36
        Height = 19
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 3
        Top = 55
        Width = 87
        Height = 19
        Caption = 'Combust'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbVendaBomba: TComboBox
        Left = 3
        Top = 28
        Width = 190
        Height = 21
        TabOrder = 0
        OnChange = cbVendaBombaChange
      end
      object teVendaPreco: TEdit
        Left = 3
        Top = 130
        Width = 190
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object teVendaQuantidade: TEdit
        Left = 3
        Top = 234
        Width = 190
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
      object btnVendaNovo: TButton
        Left = 3
        Top = 261
        Width = 90
        Height = 25
        Caption = 'Novo'
        TabOrder = 3
        OnClick = btnVendaNovoClick
      end
      object btnVendaSalvar: TButton
        Left = 103
        Top = 261
        Width = 90
        Height = 25
        Caption = 'Salvar'
        TabOrder = 4
        OnClick = btnVendaSalvarClick
      end
      object teVendaTotal: TEdit
        Left = 3
        Top = 182
        Width = 190
        Height = 21
        TabOrder = 5
        OnChange = teVendaTotalChange
      end
      object cbVendaCombustivel: TComboBox
        Left = 3
        Top = 80
        Width = 190
        Height = 21
        Enabled = False
        TabOrder = 6
      end
    end
    object tsRelVendas: TTabSheet
      Caption = 'Relat'#243'rio de Vendas'
      ImageIndex = 7
      OnShow = tsRelVendasShow
      object Label27: TLabel
        Left = 3
        Top = 3
        Width = 32
        Height = 13
        Caption = 'Bomba'
      end
      object Label28: TLabel
        Left = 3
        Top = 48
        Width = 53
        Height = 13
        Caption = 'Data Inicial'
      end
      object Label29: TLabel
        Left = 3
        Top = 93
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object cbRelVendaBomba: TComboBox
        Left = 3
        Top = 22
        Width = 190
        Height = 21
        TabOrder = 0
      end
      object dtRelVendaDataInicial: TDateTimePicker
        Left = 3
        Top = 65
        Width = 190
        Height = 21
        Date = 44061.000000000000000000
        Time = 0.538024108798708800
        TabOrder = 1
      end
      object dtRelVendaDataFinal: TDateTimePicker
        Left = 3
        Top = 110
        Width = 190
        Height = 21
        Date = 44061.000000000000000000
        Time = 0.538024108798708800
        TabOrder = 2
      end
      object btnRelVendaGerar: TButton
        Left = 3
        Top = 137
        Width = 190
        Height = 25
        Caption = 'Gerar Relat'#243'rio'
        TabOrder = 3
        OnClick = btnRelVendaGerarClick
      end
    end
  end
  object Menu: TMainMenu
    Left = 744
    Top = 8
    object mnCadastros: TMenuItem
      Caption = 'Cadastros'
      object mnCadTanque: TMenuItem
        Caption = 'Tanque'
        OnClick = mnCadTanqueClick
      end
      object mnCadCombustivel: TMenuItem
        Caption = 'Combust'#237'vel'
        OnClick = mnCadCombustivelClick
      end
      object mnCadBomba: TMenuItem
        Caption = 'Bomba'
        OnClick = mnCadBombaClick
      end
      object mnCadImpostos: TMenuItem
        Caption = 'Impostos'
        OnClick = mnCadImpostosClick
      end
    end
    object mnOperacoes: TMenuItem
      Caption = 'Opera'#231#245'es'
      object mnAbastecer: TMenuItem
        Caption = 'Abastecer'
        OnClick = mnAbastecerClick
      end
    end
    object mnRelatorios: TMenuItem
      Caption = 'Relat'#243'rios'
      object mnRelVendas: TMenuItem
        Caption = 'Vendas'
      end
    end
    object mnConfiguracoes: TMenuItem
      Caption = 'Configura'#231#245'es'
      object mnConfigBanco: TMenuItem
        Caption = 'Banco de dados'
        OnClick = mnConfigBancoClick
      end
      object mnConfigBackup: TMenuItem
        Caption = 'Backup'
        OnClick = mnConfigBackupClick
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 744
    Top = 64
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 748
    Top = 112
  end
  object FDIBackup: TFDIBBackup
    OnProgress = FDIBackupProgress
    Verbose = True
    Left = 748
    Top = 160
  end
  object FDIBRestore: TFDIBRestore
    OnProgress = FDIBRestoreProgress
    Verbose = True
    Left = 748
    Top = 208
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 748
    Top = 256
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44061.900997870400000000
    ReportOptions.LastChange = 44061.921146724540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 744
    Top = 312
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Vendas: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vendas')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 92.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QUANTIDADE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 205.385900000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 302.283550000000000000
          Width = 112.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALORIMPOSTO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 2.314780000000000000
          Width = 78.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'HORA')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."NOME"'
        object Memo7: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'NOME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NOME"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."DATA"'
        object Memo8: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'DATA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."DATA"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = -1.779530000000000000
          Width = 92.000000000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.4f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."QUANTIDADE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 205.385900000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."TOTAL"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 302.283550000000000000
          Top = -1.779530000000000000
          Width = 112.000000000000000000
          Height = 18.897650000000000000
          DataField = 'VALORIMPOSTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."VALORIMPOSTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 2.314780000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'HORA'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."HORA"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 313.700990000000000000
        Width = 718.110700000000000000
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 291.023810000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATA=DATA'
      'HORA=HORA'
      'NOME=NOME'
      'QUANTIDADE=QUANTIDADE'
      'TOTAL=TOTAL'
      'VALORIMPOSTO=VALORIMPOSTO')
    DataSet = DataModule2.QueryRelatorioVenda
    BCDToCurrency = False
    Left = 744
    Top = 368
  end
end
