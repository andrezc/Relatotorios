object FProdutos: TFProdutos
  Left = 246
  Top = 119
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 514
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 523
    Height = 514
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Button1: TJvGradient
      Left = 1
      Top = 1
      Width = 521
      Height = 512
      Style = grVertical
      StartColor = clSkyBlue
      EndColor = clWhite
    end
    object Label2: TLabel
      Left = 336
      Top = 48
      Width = 115
      Height = 13
      Caption = 'Pesquisa Por (F11/F12):'
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label1: TLabel
      Left = 8
      Top = 488
      Width = 103
      Height = 16
      Caption = '<F9> Estoques'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btPesquisaFornecedor: TSpeedButton
      Left = 66
      Top = 23
      Width = 23
      Height = 22
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000320B0000320B000000010000000100005A6B7300AD7B
        73004A637B00EFBD8400B58C8C00A5948C00C6948C00B59C8C00BD9C8C00F7BD
        8C00BD949400C6949400CE949400C69C9400CEAD9400F7CE9400C6A59C00CEA5
        9C00D6A59C00C6AD9C00CEAD9C00D6AD9C00F7CE9C00F7D69C004A7BA500CEAD
        A500D6B5A500DEBDA500F7D6A500DEBDAD00DEC6AD00E7C6AD00FFDEAD00FFE7
        AD00CEB5B500F7DEB500F7E7B500FFE7B500FFEFB500D6BDBD00DED6BD00E7DE
        BD00FFE7BD006B9CC600EFDEC600FFEFC600FFF7C600F7E7CE00FFF7CE00F7EF
        D600F7F7D600FFF7D600FFFFD6002184DE00F7F7DE00FFFFDE001884E700188C
        E700FFFFE700188CEF00218CEF00B5D6EF00F7F7EF00FFF7EF00FFFFEF00FFFF
        F700FF00FF004AB5FF0052B5FF0052BDFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0042020A424242
        424242424242424242422B39180B42424242424242424242424243443C180B42
        4242424242424242424242444438180B42424242424242424242424244433918
        0A424242424242424242424242444335004201101A114242424242424242453D
        05072F343434291942424242424242221A2D34343437403E0442424242424206
        231C303437404146284242424242421B210F30373A414140310D42424242421F
        20032434373A3A37321342424242421D25030F2D37373737311042424242420D
        2D2D1C162430333429424242424242421E463F0F0316252E0842424242424242
        4227312D21252314424242424242424242420E141B1B42424242}
    end
    object CheckBoxLembrarPesquisa: TCheckBox
      Left = 336
      Top = 24
      Width = 145
      Height = 17
      Caption = 'Lembrar '#218'ltima Pesquisa'
      TabOrder = 0
    end
    object EditPesquisa: TEdit
      Left = 8
      Top = 64
      Width = 321
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object ComboBoxCampoOrdenado: TComboBox
      Left = 336
      Top = 64
      Width = 177
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'C'#243'digo'
      OnChange = ComboBoxCampoOrdenadoChange
      Items.Strings = (
        'C'#243'digo'
        'Descri'#231#227'o'
        'Aplica'#231#227'o')
    end
    object DBGrid1: TwwDBGrid
      Left = 8
      Top = 96
      Width = 505
      Height = 385
      Selected.Strings = (
        'COD_BARRAS'#9'13'#9'C'#243'digo'#9#9
        'NM_PRODUTO'#9'52'#9'Desri'#231#227'o'#9#9
        'ESTOQUEATUAL'#9'11'#9'Estoque'#9#9
        'PRECOVENDA'#9'12'#9'Pre'#231'o'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = EsteDataSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnCalcCellColors = DBGrid1CalcCellColors
    end
    object EdtEmpresa: TEdit
      Left = 8
      Top = 23
      Width = 57
      Height = 21
      TabOrder = 4
      OnChange = EdtEmpresaChange
    end
    object EdtNomeEmpresa: TEdit
      Left = 88
      Top = 23
      Width = 241
      Height = 21
      TabStop = False
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object EstaQuery: TIBOQuery
    Params = <>
    ColumnAttributes.Strings = (
      'P.CD_PRODUTO=REQUIRED')
    DatabaseName = 'firebird2.locador.com.br:/home/firebird/pdv_fb/WEBFOCUS.FDB'
    IB_Connection = DtM.DatabaseConsultas
    IB_Transaction = EstaTransaction
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'P.CD_PRODUTO, '
      'P.NM_PRODUTO, '
      'p.cod_barras, '
      'pR.precovenda, '
      'coalesce(E.estoqueatual,0) as ESTOQUEATUAL'
      'from Produtos P'
      'left outer join ESTOQUE E on P.CD_PRODUTO = E.CD_PRODUTO'
      'left outer join PRECOS PR on P.CD_PRODUTO = PR.CD_PRODUTO')
    FieldOptions = []
    Left = 8
    Top = 448
    object EstaQueryCOD_BARRAS: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 13
      FieldName = 'COD_BARRAS'
      Origin = 'PRODUTOS.COD_BARRAS'
      Size = 13
    end
    object EstaQueryNM_PRODUTO: TStringField
      DisplayLabel = 'Desri'#231#227'o'
      DisplayWidth = 52
      FieldName = 'NM_PRODUTO'
      Origin = 'PRODUTOS.NM_PRODUTO'
      Size = 45
    end
    object EstaQueryESTOQUEATUAL: TBCDField
      DisplayLabel = 'Estoque'
      DisplayWidth = 11
      FieldName = 'ESTOQUEATUAL'
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object EstaQueryPRECOVENDA: TBCDField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 12
      FieldName = 'PRECOVENDA'
      Origin = 'PRECOS.PRECOVENDA'
      Precision = 18
      Size = 3
    end
    object EstaQueryCD_PRODUTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CD_PRODUTO'
      Origin = 'PRODUTOS.CD_PRODUTO'
      Required = True
      Visible = False
    end
  end
  object EstaTransaction: TIBOTransaction
    IB_Connection = DtM.DatabaseConsultas
    Isolation = tiCommitted
    Left = 40
    Top = 448
  end
  object EsteDataSource: TDataSource
    DataSet = EstaQuery
    Left = 72
    Top = 448
  end
  object TransactionSuperCombo: TIBOTransaction
    IB_Connection = DtM.DatabaseConsultas
    Isolation = tiCommitted
    Left = 40
    Top = 416
  end
end
