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
    ActivePage = tsRelVendas
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
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
end
