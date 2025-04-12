object frmSelecionar: TfrmSelecionar
  Left = 193
  Top = 126
  Width = 577
  Height = 372
  AutoSize = True
  BorderIcons = []
  Caption = 'Sele'#231#227'o de Empresa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 0
    Width = 569
    Height = 345
    Shape = bsFrame
  end
  object Bevel1: TBevel
    Left = 10
    Top = 35
    Width = 550
    Height = 9
    Shape = bsBottomLine
    Style = bsRaised
  end
  object Bevel3: TBevel
    Left = 10
    Top = 289
    Width = 550
    Height = 9
    Shape = bsBottomLine
    Style = bsRaised
  end
  object Bevel4: TBevel
    Left = 368
    Top = 301
    Width = 191
    Height = 38
  end
  object Panel1: TPanel
    Left = 8
    Top = 5
    Width = 550
    Height = 33
    Caption = '>> Sele'#231#227'o de Empresa <<'
    Color = clBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 550
    Height = 241
    Color = clInfoBk
    DataSource = DM.DSEmpregado
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODEMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Color = clNavy
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEEMPRESA'
        Title.Alignment = taCenter
        Title.Caption = 'Raz'#227'o Social'
        Title.Color = clNavy
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 473
        Visible = True
      end>
  end
  object btnEdit: TBitBtn
    Left = 373
    Top = 304
    Width = 89
    Height = 33
    Cursor = crHandPoint
    Caption = '&Inserir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 2
    TabStop = False
    OnClick = btnEditClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333FF33333333FF333993333333300033377F3333333777333993333333
      300033F77FFF3333377739999993333333333777777F3333333F399999933333
      33003777777333333377333993333333330033377F3333333377333993333333
      3333333773333333333F333333333333330033333333F33333773333333C3333
      330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
      333333333337733333FF3333333C333330003333333733333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object btnSair: TBitBtn
    Left = 463
    Top = 304
    Width = 91
    Height = 33
    Cursor = crHandPoint
    Cancel = True
    Caption = '&Retornar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TabStop = False
    OnClick = btnSairClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333333333333333333333333333333333FF333333333333
      3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
      E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
      E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
      E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
      000033333373FF77777733333330003333333333333777333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 298
    Width = 143
    Height = 41
    Caption = 'Ordena'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object ComboBox1: TComboBox
      Left = 8
      Top = 15
      Width = 129
      Height = 21
      BevelKind = bkTile
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 1
      ParentFont = False
      TabOrder = 0
      Text = 'EMPRESA'
      Items.Strings = (
        'CODIGO'
        'EMPRESA')
    end
  end
  object GroupBox2: TGroupBox
    Left = 155
    Top = 298
    Width = 210
    Height = 41
    Caption = '&Pesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object EditPesquisa: TEdit
      Left = 8
      Top = 15
      Width = 195
      Height = 21
      BevelKind = bkTile
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = EditPesquisaChange
      OnKeyPress = EditPesquisaKeyPress
    end
  end
end
