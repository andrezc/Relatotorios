inherited fCadProdutos: TfCadProdutos
  Left = 92
  Top = 22
  Caption = 'Cadastro de Produtos'
  ClientHeight = 566
  ClientWidth = 775
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object Label15: TLabel [0]
    Left = 21
    Top = 15
    Width = 47
    Height = 14
    Caption = 'Margem 2'
    FocusControl = BitBtn1
  end
  inherited Panel1: TPanel
    Top = 525
    Width = 775
    inherited Bt_Sair: TBitBtn
      Left = 672
    end
  end
  inherited PanelDireita: TPanel
    Left = 418
    Width = 267
    Height = 525
    inherited PanelPesquisa: TPanel
      Width = 265
      Height = 482
      inherited DBGrid1: TDBGrid
        Top = 134
        Width = 261
        Height = 328
      end
      inherited DBNavigator1: TDBNavigator
        Top = 462
        Width = 261
        Hints.Strings = ()
      end
      inherited Panel3: TPanel
        Top = 112
        Width = 261
        inherited SpeedButton1: TJvSpeedButton
          Left = 237
        end
        inherited Edit1: TJvEdit
          Width = 236
        end
      end
      inherited PanelQuantidade: TPanel
        Top = 95
        Width = 261
        inherited Label43: TLabel
          Width = 203
          Caption = 'Quantidade de Produtos Cadastrados:'
        end
        inherited Panel2: TPanel
          Left = 204
        end
      end
      object GroupBoxFiltro: TGroupBox
        Left = 2
        Top = 2
        Width = 261
        Height = 93
        Align = alTop
        Caption = 'Filtro'
        TabOrder = 4
        object Label8: TLabel
          Left = 4
          Top = 48
          Width = 50
          Height = 12
          Caption = '&Fornecedor:'
          FocusControl = EditCodFornecedor
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButtonFornecedor: TSpeedButton
          Left = 97
          Top = 46
          Width = 13
          Height = 15
          Caption = '...'
          OnClick = SpeedButtonFornecedorClick
        end
        object Label24: TLabel
          Left = 4
          Top = 15
          Width = 28
          Height = 12
          Caption = '&Grupo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RadioGroupAtivos: TRadioGroup
          Left = 8
          Top = 60
          Width = 248
          Height = 30
          Columns = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Items.Strings = (
            '&Ativos'
            '&Inativos'
            '&Todos')
          ParentFont = False
          TabOrder = 0
          OnClick = RadioGroupAtivosClick
        end
        object EditCodFornecedor: TEdit
          Tag = -1
          Left = 56
          Top = 45
          Width = 40
          Height = 18
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = EditCodFornecedorChange
          OnKeyDown = EditCodFornecedorKeyDown
          OnKeyPress = EditCodFornecedorKeyPress
        end
        object EditNomeFornecedor: TEdit
          Tag = -1
          Left = 110
          Top = 45
          Width = 146
          Height = 18
          TabStop = False
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnChange = EditNomeFornecedorChange
        end
        object edGrupoFiltro: TEdit
          Left = 4
          Top = 25
          Width = 229
          Height = 20
          AutoSelect = False
          CharCase = ecUpperCase
          Color = clMoneyGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = '*** TODOS OS GRUPOS ***'
          OnKeyDown = edGrupoFiltroKeyDown
        end
        object btBuscaGrupo: TBitBtn
          Left = 235
          Top = 23
          Width = 20
          Height = 20
          TabOrder = 4
          OnClick = btBuscaGrupoClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDDDDDDDDDDDD80DDDDDDDDDDDDD8777DDDDDDDDDDD87787DDDDDDDDDD877
            87DDDDDDDDDD87787DDDDDD7777D7077DDDDDD877778078DDDDDD77FFFF778DD
            DDDD84FF88FF78DDDDDD88F8888F77DDDDDD78F8888F77DDDDDD8888FF8877DD
            DDDD878FFFF878DDDDDDD888FF888DDDDDDDDD888888DDDDDDDD}
        end
      end
    end
    inherited PanelDatas: TPanel
      Top = 483
      Width = 265
      inherited DBEdit24: TDBEdit
        Width = 131
      end
      inherited DBEdit32: TDBEdit
        Width = 131
      end
    end
  end
  inherited PanelCampos: TPanel
    Width = 418
    Height = 525
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 414
      Height = 521
      ActivePage = TabSheet5
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 0
      TabStop = False
      object TabSheet1: TTabSheet
        Caption = '&B'#225'sico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        object Label1: TLabel
          Left = 2
          Top = 35
          Width = 33
          Height = 14
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 0
          Top = -2
          Width = 49
          Height = 14
          Caption = 'Descri'#231#227'o'
        end
        object Label3: TLabel
          Left = 128
          Top = 35
          Width = 30
          Height = 14
          Caption = 'Grupo'
        end
        object lbUnidade: TLabel
          Left = 360
          Top = 2
          Width = 39
          Height = 14
          Caption = 'Unidade'
          OnMouseDown = edFabricanteMouseDown
        end
        object lbLocalizacao: TLabel
          Left = 1
          Top = 145
          Width = 58
          Height = 14
          Caption = 'Localiza'#231#227'o'
          OnMouseDown = edFabricanteMouseDown
        end
        object lbFabricante: TLabel
          Left = 152
          Top = 70
          Width = 44
          Height = 12
          Caption = 'Fabricante'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 0
          Top = 239
          Width = 79
          Height = 12
          Caption = #218'ltimo Fornecedor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbEstoque: TLabel
          Left = 310
          Top = 208
          Width = 65
          Height = 12
          Caption = 'Quant. Estoque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbEstoqueMinimo: TLabel
          Left = 230
          Top = 208
          Width = 56
          Height = 12
          Caption = 'Estoque m'#237'n.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnMouseDown = edFabricanteMouseDown
        end
        object lbSimilares: TLabel
          Left = 162
          Top = 145
          Width = 43
          Height = 14
          Caption = 'Similares'
          OnMouseDown = edFabricanteMouseDown
        end
        object Label46: TLabel
          Left = 171
          Top = 208
          Width = 41
          Height = 12
          Caption = 'Reservas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 384
          Top = 248
          Width = 16
          Height = 17
          Caption = '...'
          OnClick = SpeedButton2Click
        end
        object bt_GeraCodigo: TSpeedButton
          Left = 106
          Top = 47
          Width = 15
          Height = 23
          Hint = 'Sugerir C'#243'digo'
          Caption = '...'
          ParentShowHint = False
          ShowHint = True
          OnClick = bt_GeraCodigoClick
        end
        object Label56: TLabel
          Left = 309
          Top = 177
          Width = 66
          Height = 12
          Caption = 'M'#233'dia de Venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton5: TSpeedButton
          Left = 379
          Top = 186
          Width = 21
          Height = 21
          Hint = 'Calcula M'#233'dia de Venda'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000220B0000220B0000000100000001000000840000088C
            0800108C080018941000219410001894180029941800219C2100299C210029A5
            2900E78C31005AA53900B56B4A006BAD4A0073AD4A008C6B5200946B5200E79C
            5200A5635A00A56B5A00BD7B5A0084B55A00FFB55A0063BD6300A5636B00A573
            6B00BD846B00C6846B00D6946B00A5B56B0073BD6B00DE9C7300CEB5730094BD
            73009CBD7300ADBD730073C673007BC6730084C6730094C673009CC67300E7AD
            7B00DEBD7B00EFBD7B009CC67B00EFC67B00EFBD84009CC68400EFC68400F7C6
            840084CE8400EFC68C00F7CE8C00B5AD9400ADB59400EFC69400A5CE9400C6CE
            9400D6CE9400E7CE9400F7CE9400BDCE9C00EFCE9C00BDD69C00EFCEA500ADD6
            A500BDD6A500F7D6A500A5DEA500EFD6AD00F7D6AD00B5DEAD00DECEB500F7D6
            B500F7DEB500F7DEBD00DEC6C600FFEFC600FFEFCE00E7E7D600F7EFD600FFEF
            DE00DEF7DE00E7F7DE00FFEFE700E7F7E700FFF7E700F7F7EF00FFF7EF00FFF7
            F700F7FFF700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C5C18181818
            1818181818181818185C5C5C184D393A3E3B302E2B2E2E30185C5C5C184E2208
            0D04040B202B2B30185C5C5C12513D0200000000062A2B30185C5C5C12563D03
            0003230E000E2E30185C5C5C19584201000015401D0D3330185C5C5C195D4F38
            2F212245402C3733185C5C5C1A5D4454502F212122403E3C185C5C5C1A5D2441
            5426000001454043185C5C5C1C5D32002541050002494640185C5C5C1C5D5709
            00000000024E4835185C5C5C1F5D5D521707071E08101313185C5C5C1F5D5D5D
            5D52525B360F110A0C5C5C5C295D5D5D5D5D5D5D4C1316145C5C5C5C29575757
            575757574C131A5C5C5C5C5C291C1C1C1C1C1C1C1C135C5C5C5C}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton5Click
        end
        object lbDescrAbrev: TLabel
          Left = 2
          Top = 70
          Width = 89
          Height = 12
          Caption = 'Descri'#231#227'o abreviada:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnMouseDown = edFabricanteMouseDown
        end
        object lbAplicacao: TLabel
          Left = 0
          Top = 177
          Width = 40
          Height = 12
          Caption = 'Aplica'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnMouseDown = edFabricanteMouseDown
        end
        object Label9: TLabel
          Left = 153
          Top = 462
          Width = 98
          Height = 12
          Caption = 'Data da '#250'ltima compra:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 280
          Top = 463
          Width = 93
          Height = 12
          Caption = 'Data da '#250'ltima venda:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbPesoLiquido: TLabel
          Left = 0
          Top = 208
          Width = 53
          Height = 12
          Caption = 'Peso Liquido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnMouseDown = edFabricanteMouseDown
        end
        object lbPesoBruto: TLabel
          Left = 80
          Top = 209
          Width = 46
          Height = 12
          Caption = 'Peso Bruto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnMouseDown = edFabricanteMouseDown
        end
        object btPesquisaSimilar: TSpeedButton
          Left = 197
          Top = 158
          Width = 18
          Height = 17
          Glyph.Data = {
            02020000424D4202000000000000B600000028000000090000000B0000000100
            2000000000008C01000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C00000000000000000000000000000000000000000000000000000000000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000000000000000
            0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000000000000000
            00000000000000000000C0C0C000C0C0C000C0C0C00000000000000000000000
            000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
            C000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000}
          OnClick = btPesquisaSimilarClick
          OnMouseDown = edFabricanteMouseDown
        end
        object Label44: TLabel
          Left = 9
          Top = 461
          Width = 65
          Height = 12
          Caption = #218'ltimo reajuste:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbQuantDigitos: TLabel
          Left = 60
          Top = 37
          Width = 41
          Height = 12
          Caption = '05 d'#237'gitos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
          Visible = False
        end
        object btAlteraEstoque: TSpeedButton
          Left = 378
          Top = 219
          Width = 21
          Height = 21
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000320B0000320B0000000100000001000000000000CE63
            00000010180039082100A56B2900DE8C3900E7396300526B7B0000089C007B9C
            A500D6CEAD00F7D6AD00FFD6AD00ADB5BD00B5C6C600BDC6C600C6C6C600FFE7
            C600ADC6CE00FFEFD6002163DE00FFEFDE00FFF7E700FFFFF700FF00FF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181818181818
            1818181818181818181818010101010101010101010101010101180119191716
            1311070A0B0C0C0C0C011801190F0F0F0F0F0700120F0F0F0C01180119191919
            17160700000C0B0C0C011801190F0F0F0F0F071505000E0F0C01180119191919
            1919091505000C0C0C011801190F0F0F0F0F0F071505000D0C01180119191919
            191919091505000C0C011801190F0F0F0F0F0F0F071505000C01180119191919
            19191919091505020C0118011919191919191919190700140001180101010101
            0101010101041414030118180101010101010101010108080618181818181818
            1818181818181818181818181818181818181818181818181818}
          OnClick = btAlteraEstoqueClick
        end
        object DBEdit2: TDBEdit
          Left = 0
          Top = 11
          Width = 345
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_PRODUTO'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnEnter = DBEdit2Enter
          OnExit = DBEdit2Exit
        end
        object edCodigo: TDBEdit
          Left = 0
          Top = 47
          Width = 105
          Height = 22
          DataField = 'COD_BARRAS'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnChange = edCodigoChange
          OnEnter = edCodigoEnter
          OnExit = edCodigoExit
          OnKeyPress = edCodigoKeyPress
        end
        object GroupBoxCodigos: TGroupBox
          Left = 0
          Top = 98
          Width = 401
          Height = 48
          Caption = 'C'#243'digos'
          TabOrder = 8
          object lbCodigo2: TLabel
            Left = 5
            Top = 14
            Width = 37
            Height = 12
            Caption = 'C'#243'digo 2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnMouseDown = edFabricanteMouseDown
          end
          object lbCodigo3: TLabel
            Left = 107
            Top = 14
            Width = 37
            Height = 12
            Caption = 'C'#243'digo 3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnMouseDown = edFabricanteMouseDown
          end
          object lbCodigo4: TLabel
            Left = 208
            Top = 14
            Width = 37
            Height = 12
            Caption = 'C'#243'digo 4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            OnMouseDown = edFabricanteMouseDown
          end
          object edCodigo2: TDBEdit
            Left = 5
            Top = 25
            Width = 97
            Height = 20
            CharCase = ecUpperCase
            DataField = 'CODIGO02'
            DataSource = DataSource1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnMouseDown = edFabricanteMouseDown
          end
          object edCodigo3: TDBEdit
            Left = 106
            Top = 25
            Width = 97
            Height = 20
            CharCase = ecUpperCase
            DataField = 'CODIGO03'
            DataSource = DataSource1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnMouseDown = edFabricanteMouseDown
          end
          object edCodigo4: TDBEdit
            Left = 207
            Top = 25
            Width = 97
            Height = 20
            CharCase = ecUpperCase
            DataField = 'CODIGO04'
            DataSource = DataSource1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnMouseDown = edFabricanteMouseDown
          end
          object edCodBalanca: TDBEdit
            Left = 313
            Top = 25
            Width = 78
            Height = 17
            AutoSize = False
            CharCase = ecUpperCase
            DataField = 'BAL_COD_BALANCA'
            DataSource = DataSource1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = edCodBalancaKeyPress
            OnMouseDown = edFabricanteMouseDown
          end
          object cbCodBalanca: TDBCheckBox
            Left = 313
            Top = 13
            Width = 84
            Height = 12
            Caption = 'Cod. Balan'#231'a'
            DataField = 'BAL_GERARCODBALANCA'
            DataSource = DataSource1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            ValueChecked = 'V'
            ValueUnchecked = 'F'
            OnMouseDown = edFabricanteMouseDown
          end
        end
        object edLocalizacao: TDBEdit
          Left = 0
          Top = 158
          Width = 153
          Height = 20
          CharCase = ecUpperCase
          DataField = 'LOCALIZACAO'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnMouseDown = edFabricanteMouseDown
        end
        object BitBtn1: TBitBtn
          Left = 379
          Top = 47
          Width = 21
          Height = 22
          TabOrder = 4
          OnClick = BitBtn1Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDDDDDDDDDDDD80DDDDDDDDDDDDD8777DDDDDDDDDDD87787DDDDDDDDDD877
            87DDDDDDDDDD87787DDDDDD7777D7077DDDDDD877778078DDDDDD77FFFF778DD
            DDDD84FF88FF78DDDDDD88F8888F77DDDDDD78F8888F77DDDDDD8888FF8877DD
            DDDD878FFFF878DDDDDDD888FF888DDDDDDDDD888888DDDDDDDD}
        end
        object edReservas: TEdit
          Left = 171
          Top = 220
          Width = 41
          Height = 19
          TabStop = False
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
          Text = '0'
        end
        object edFabricante: TDBEdit
          Left = 152
          Top = 80
          Width = 153
          Height = 20
          CharCase = ecUpperCase
          DataField = 'FABRICANTE'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnMouseDown = edFabricanteMouseDown
        end
        object edUnidade: TDBComboBox
          Left = 360
          Top = 14
          Width = 41
          Height = 22
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'UNIDADE'
          DataSource = DataSource1
          ItemHeight = 14
          Items.Strings = (
            'UN'
            'CX'
            'KG'
            'LT'
            'MT'
            'PC'
            'SC'
            'DZ'
            'RL'
            'PR'
            'JG'
            'CT'
            'GL'
            'M2'
            'M3'
            'ML'
            'CH')
          TabOrder = 1
        end
        object edDescrAbrev: TDBEdit
          Left = 0
          Top = 80
          Width = 145
          Height = 20
          CharCase = ecUpperCase
          DataField = 'DESCRICAO_ABREV'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnMouseDown = edFabricanteMouseDown
        end
        object DBIboSuperCombo2: TDBIboSuperCombo
          Left = 0
          Top = 249
          Width = 385
          Height = 17
          DataSource = DataSource1
          DataField = 'ULTIMOFORNECEDOR'
          _DesignedBy_ = 'Denis da Silva Guerra'
          TabOrder = 20
          TabStop = False
          LookUpTable = 'FORNECEDORES'
          LookUpField = 'CD_FORNECEDOR'
          LookUpDisplay = 'NM_FORNECEDOR'
          Edit1Color = clYellow
          Edit1Font.Charset = ANSI_CHARSET
          Edit1Font.Color = clWindowText
          Edit1Font.Height = -9
          Edit1Font.Name = 'Arial'
          Edit1Font.Style = []
          Edit2Color = clYellow
          Edit2Font.Charset = ANSI_CHARSET
          Edit2Font.Color = clNavy
          Edit2Font.Height = -9
          Edit2Font.Name = 'Arial'
          Edit2Font.Style = []
          Edit2CharCase = ecUpperCase
          ButtonWidth = 3
          ButtonGlyph.Data = {
            CE000000424DCE000000000000007600000028000000090000000B0000000100
            0400000000005800000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888000
            0000800000008000000088888888800000008888088880000000888000888000
            0000880000088000000080000000800000008880008880000000888000888000
            000088800088800000008888888880000000}
          GridFont.Charset = DEFAULT_CHARSET
          GridFont.Color = clWindowText
          GridFont.Height = -11
          GridFont.Name = 'MS Sans Serif'
          GridFont.Style = []
          ReadOnly = True
        end
        object edAplicacao: TDBEdit
          Tag = 111
          Left = 0
          Top = 188
          Width = 297
          Height = 20
          CharCase = ecUpperCase
          DataField = 'APLICACAO'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnMouseDown = edFabricanteMouseDown
        end
        object DBEdit1: TDBEdit
          Left = 151
          Top = 472
          Width = 120
          Height = 17
          TabStop = False
          AutoSize = False
          Color = clYellow
          DataField = 'DT_ULTIMACOMPRA'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clPurple
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 27
        end
        object DBEdit9: TDBEdit
          Left = 279
          Top = 473
          Width = 120
          Height = 17
          TabStop = False
          AutoSize = False
          Color = clYellow
          DataField = 'DT_ULTIMAVENDA'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clPurple
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 28
        end
        object edEstoqueMinimo: TJvDBCalcEdit
          Left = 230
          Top = 219
          Width = 65
          Height = 19
          DisplayFormat = ',0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = False
          TabOrder = 17
          ZeroEmpty = False
          DecimalPlacesAlwaysShown = False
          OnMouseDown = edFabricanteMouseDown
          DataField = 'ESTOQUEMINIMO'
          DataSource = DataSource1
        end
        object EditMediaVenda: TJvDBCalcEdit
          Left = 308
          Top = 187
          Width = 70
          Height = 19
          TabStop = False
          Color = clYellow
          DecimalPlaces = 15
          DisplayFormat = ',0.000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          ShowButton = False
          TabOrder = 13
          ZeroEmpty = False
          DecimalPlacesAlwaysShown = False
          DataField = 'MEDIAVENDA'
          DataSource = DataSource1
        end
        object edPesoLiquido: TJvDBCalcEdit
          Left = 0
          Top = 219
          Width = 73
          Height = 19
          DisplayFormat = ',0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = False
          TabOrder = 14
          DecimalPlacesAlwaysShown = False
          OnMouseDown = edFabricanteMouseDown
          DataField = 'PESOLIQUIDO'
          DataSource = DataSource1
        end
        object edPesoBruto: TJvDBCalcEdit
          Left = 80
          Top = 219
          Width = 73
          Height = 19
          DisplayFormat = ',0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = False
          TabOrder = 15
          DecimalPlacesAlwaysShown = False
          OnMouseDown = edFabricanteMouseDown
          DataField = 'PESOBRUTO'
          DataSource = DataSource1
        end
        object edCodSimilar: TDBEdit
          Left = 160
          Top = 158
          Width = 36
          Height = 20
          DataField = 'CD_SIMILAR'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnChange = edCodSimilarChange
          OnKeyDown = edCodSimilarKeyDown
          OnKeyPress = edCodSimilarKeyPress
          OnMouseDown = edFabricanteMouseDown
        end
        object EditNomeSimilar: TEdit
          Left = 214
          Top = 158
          Width = 186
          Height = 20
          TabStop = False
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
          OnMouseDown = edFabricanteMouseDown
        end
        object btGrade: TBitBtn
          Left = 311
          Top = 77
          Width = 89
          Height = 24
          Caption = 'Grade - F6'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          TabStop = False
          OnClick = btGradeClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000130B0000130B00000001000000010000EF9C2100F7A5
            5A00FFB56B00FFE7C600FFF7E700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
            0505050505050505050505050505050505050505050505050505020202020202
            0202020202020202020202060602030304020303040203030402020606020303
            0402030304020303040202060602020202020202020202020202020606020303
            0402030304020303040201010101030304010303040103030401010606010101
            0101010101010101010101060601030304010303040103030401000606000303
            0400030304000303040000000000000000000000000000000000000606000606
            0606060006060606060000060600060606060600060606060600000000000000
            0000000000000000000005050505050505050505050505050505}
        end
        object GroupBoxPrecos: TGroupBox
          Left = 0
          Top = 269
          Width = 400
          Height = 87
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 21
          object Label19: TLabel
            Left = 286
            Top = 47
            Width = 10
            Height = 16
            Caption = '%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 241
            Top = 31
            Width = 33
            Height = 12
            Caption = 'Margem'
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 4
            Top = 14
            Width = 227
            Height = 68
            Caption = 'Custo'
            DataField = 'TIPOCUSTO'
            DataSource = DataSource1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Items.Strings = (
              #218'ltimo Custo'
              'Custo M'#233'dio')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              'U'
              'M')
            OnChange = DBRadioGroup1Change
          end
          object StaticText2: TStaticText
            Left = 7
            Top = -2
            Width = 92
            Height = 18
            Caption = 'Pre'#231'o de Tabela'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object DBEditMargem: TJvDBCalcEdit
            Left = 239
            Top = 44
            Width = 47
            Height = 22
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 4
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnExit = DBEditMargemExit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'MARGEM'
            DataSource = DataSource1
          end
          object edUltimoCusto: TJvDBCalcEdit
            Left = 83
            Top = 29
            Width = 67
            Height = 22
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 1
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnExit = edUltimoCustoExit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'ULTIMOCUSTO'
            DataSource = DataSource1
          end
          object edCustoMedio: TJvDBCalcEdit
            Left = 83
            Top = 52
            Width = 67
            Height = 22
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 2
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnEnter = edCustoMedioEnter
            OnExit = edCustoMedioExit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'CUSTOMEDIO'
            DataSource = DataSource1
          end
          object edPrecoCusto: TJvDBCalcEdit
            Left = 155
            Top = 41
            Width = 71
            Height = 22
            TabStop = False
            Color = 10930928
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ShowButton = False
            TabOrder = 3
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            DataField = 'PRECOCUSTO'
            DataSource = DataSource1
          end
          object GroupBox6: TGroupBox
            Left = 299
            Top = 12
            Width = 96
            Height = 68
            Caption = 'Pre'#231'o de Venda'
            TabOrder = 6
            object DBEditPrecoVenda: TJvDBCalcEdit
              Left = 5
              Top = 16
              Width = 86
              Height = 22
              DisplayFormat = ',0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ShowButton = False
              TabOrder = 0
              ZeroEmpty = False
              DecimalPlacesAlwaysShown = False
              OnExit = DBEditPrecoVendaExit
              OnKeyPress = edUltimoCustoKeyPress
              DataField = 'PRECOVENDA'
              DataSource = DataSource1
            end
            object edPrecoVendaPDV: TJvDBCalcEdit
              Left = 5
              Top = 43
              Width = 86
              Height = 19
              TabStop = False
              Color = clYellow
              DisplayFormat = ',0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              ShowButton = False
              TabOrder = 1
              ZeroEmpty = False
              DecimalPlacesAlwaysShown = False
              DataField = 'PDV_PRECOVENDA'
              DataSource = DataSource1
            end
          end
        end
        object DBEdit34: TDBEdit
          Left = 9
          Top = 472
          Width = 118
          Height = 17
          TabStop = False
          AutoSize = False
          Color = clYellow
          DataField = 'DT_ULTIMOREAJUSTE'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clPurple
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 29
        end
        object chSincronizaPreco: TCheckBox
          Left = 301
          Top = 348
          Width = 91
          Height = 17
          Caption = 'Sincronizar Pre'#231'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 23
        end
        object pnCalcCustoMedio: TPanel
          Left = 131
          Top = 321
          Width = 20
          Height = 21
          BevelOuter = bvNone
          TabOrder = 22
          Visible = False
          object spAtualizaCustoMedio: TSpeedButton
            Left = 0
            Top = -1
            Width = 20
            Height = 21
            Hint = 'Calcula Custo M'#233'dio'
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              08000000000000010000220B0000220B0000000100000001000000840000088C
              0800108C080018941000219410001894180029941800219C2100299C210029A5
              2900E78C31005AA53900B56B4A006BAD4A0073AD4A008C6B5200946B5200E79C
              5200A5635A00A56B5A00BD7B5A0084B55A00FFB55A0063BD6300A5636B00A573
              6B00BD846B00C6846B00D6946B00A5B56B0073BD6B00DE9C7300CEB5730094BD
              73009CBD7300ADBD730073C673007BC6730084C6730094C673009CC67300E7AD
              7B00DEBD7B00EFBD7B009CC67B00EFC67B00EFBD84009CC68400EFC68400F7C6
              840084CE8400EFC68C00F7CE8C00B5AD9400ADB59400EFC69400A5CE9400C6CE
              9400D6CE9400E7CE9400F7CE9400BDCE9C00EFCE9C00BDD69C00EFCEA500ADD6
              A500BDD6A500F7D6A500A5DEA500EFD6AD00F7D6AD00B5DEAD00DECEB500F7D6
              B500F7DEB500F7DEBD00DEC6C600FFEFC600FFEFCE00E7E7D600F7EFD600FFEF
              DE00DEF7DE00E7F7DE00FFEFE700E7F7E700FFF7E700F7F7EF00FFF7EF00FFF7
              F700F7FFF700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005C5C18181818
              1818181818181818185C5C5C184D393A3E3B302E2B2E2E30185C5C5C184E2208
              0D04040B202B2B30185C5C5C12513D0200000000062A2B30185C5C5C12563D03
              0003230E000E2E30185C5C5C19584201000015401D0D3330185C5C5C195D4F38
              2F212245402C3733185C5C5C1A5D4454502F212122403E3C185C5C5C1A5D2441
              5426000001454043185C5C5C1C5D32002541050002494640185C5C5C1C5D5709
              00000000024E4835185C5C5C1F5D5D521707071E08101313185C5C5C1F5D5D5D
              5D52525B360F110A0C5C5C5C295D5D5D5D5D5D5D4C1316145C5C5C5C29575757
              575757574C131A5C5C5C5C5C291C1C1C1C1C1C1C1C135C5C5C5C}
            ParentShowHint = False
            ShowHint = True
            OnClick = spAtualizaCustoMedioClick
          end
        end
        object EditQuantEstoque: TJvCalcEdit
          Left = 307
          Top = 219
          Width = 93
          Height = 22
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = ',0.000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowButton = False
          TabOrder = 18
          DecimalPlacesAlwaysShown = False
        end
        object RxDBCalcEdit5: TJvDBCalcEdit
          Left = 308
          Top = 219
          Width = 69
          Height = 22
          TabStop = False
          Color = clYellow
          DecimalPlaces = 15
          DisplayFormat = ',0.000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          ShowButton = False
          TabOrder = 19
          ZeroEmpty = False
          DecimalPlacesAlwaysShown = False
          DataField = 'ESTOQUEATUAL'
          DataSource = DataSource1
        end
        object GroupBoxTipoPreco: TGroupBox
          Left = 0
          Top = 365
          Width = 401
          Height = 79
          Caption = 'Tipo de Pre'#231'o (Cod. Venda)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
          object Label11: TLabel
            Left = 11
            Top = 12
            Width = 41
            Height = 12
            Caption = 'Margem 2'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 91
            Top = 12
            Width = 41
            Height = 12
            Caption = 'Margem 3'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 171
            Top = 12
            Width = 41
            Height = 12
            Caption = 'Margem 4'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 251
            Top = 12
            Width = 41
            Height = 12
            Caption = 'Margem 5'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 11
            Top = 43
            Width = 32
            Height = 12
            Caption = 'Pre'#231'o 2'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 91
            Top = 43
            Width = 32
            Height = 12
            Caption = 'Pre'#231'o 3'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 171
            Top = 43
            Width = 32
            Height = 12
            Caption = 'Preco 4'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 251
            Top = 43
            Width = 32
            Height = 12
            Caption = 'Pre'#231'o 5'
            FocusControl = BitBtn1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 66
            Top = 25
            Width = 10
            Height = 16
            Caption = '%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 146
            Top = 25
            Width = 10
            Height = 16
            Caption = '%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label22: TLabel
            Left = 226
            Top = 25
            Width = 10
            Height = 16
            Caption = '%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 306
            Top = 25
            Width = 10
            Height = 16
            Caption = '%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edMargem2: TJvDBCalcEdit
            Left = 11
            Top = 23
            Width = 52
            Height = 20
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 0
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnExit = edMargem2Exit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'MARGEM2'
            DataSource = DataSource1
          end
          object edMargem3: TJvDBCalcEdit
            Left = 91
            Top = 22
            Width = 52
            Height = 20
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 1
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnExit = edMargem2Exit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'MARGEM3'
            DataSource = DataSource1
          end
          object edMargem4: TJvDBCalcEdit
            Left = 171
            Top = 22
            Width = 52
            Height = 20
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 2
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnExit = edMargem2Exit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'MARGEM4'
            DataSource = DataSource1
          end
          object edMargem5: TJvDBCalcEdit
            Left = 251
            Top = 22
            Width = 52
            Height = 20
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 3
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnExit = edMargem2Exit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'MARGEM5'
            DataSource = DataSource1
          end
          object edPreco2: TJvDBCalcEdit
            Left = 11
            Top = 54
            Width = 70
            Height = 20
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 4
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnExit = edPreco2Exit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'PRECO2'
            DataSource = DataSource1
          end
          object edPreco3: TJvDBCalcEdit
            Left = 91
            Top = 54
            Width = 70
            Height = 20
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 5
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnExit = edPreco2Exit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'PRECO3'
            DataSource = DataSource1
          end
          object edPreco4: TJvDBCalcEdit
            Left = 171
            Top = 54
            Width = 70
            Height = 20
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 6
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnExit = edPreco2Exit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'PRECO4'
            DataSource = DataSource1
          end
          object edPreco5: TJvDBCalcEdit
            Left = 251
            Top = 54
            Width = 70
            Height = 20
            DisplayFormat = ',0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowButton = False
            TabOrder = 7
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnExit = edPreco2Exit
            OnKeyPress = edUltimoCustoKeyPress
            DataField = 'PRECO5'
            DataSource = DataSource1
          end
        end
        object btPrecos: TBitBtn
          Left = 333
          Top = 387
          Width = 58
          Height = 20
          Caption = '&Pre'#231'os'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
          TabStop = False
          OnClick = btPrecosClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000130B0000130B00000001000000010000005A00000084
            000000C6000042424200008484008484840084FF840000C6C600C6C6C600C6FF
            C600FF00FF0084FFFF00C6FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000A0A0A0A0A0A
            0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A05040404050A0A0A0A0A0A05040404
            05040C0B0B040A0A0A0A0A0A040C0B0B04050404040504050A0A0A0A05040404
            050A0A04080808040A0A0A0A0A0A0A0A0A0A0A04070707040A0A0A0000000000
            000000040808080400000A0001010202020202040707070401000A0001020606
            060303040D0B0B0401000A0002090906030808040404040602000A0002090909
            030C08080306060602000A0001020909090303030606060201000A0001010209
            090909060606020101000A0000000000000000000000000000000A0A0A0A0A0A
            0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A}
        end
        object chTiposPreco: TCheckBox
          Left = 8
          Top = 360
          Width = 161
          Height = 17
          Caption = 'Tipos de Pre'#231'o (Cod. Venda)'
          TabOrder = 24
          OnClick = chTiposPrecoClick
        end
        object edGrupo: TEdit
          Left = 128
          Top = 47
          Width = 251
          Height = 22
          AutoSelect = False
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          OnKeyDown = edGrupoKeyDown
        end
        object DBEdit4: TDBEdit
          Left = 128
          Top = 48
          Width = 48
          Height = 20
          CharCase = ecUpperCase
          DataField = 'CD_GRUPO'
          DataSource = DataSource1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 30
          Visible = False
          OnChange = DBEdit4Change
        end
      end
      object TabSheet5: TTabSheet
        Caption = '&Dados Complementares'
        ImageIndex = 4
        object lbClassFiscal: TLabel
          Left = 168
          Top = 125
          Width = 61
          Height = 14
          Caption = 'Class. Fiscal'
          OnMouseDown = edFabricanteMouseDown
        end
        object lbIPI: TLabel
          Left = 254
          Top = 125
          Width = 10
          Height = 14
          Caption = 'IPI'
          OnMouseDown = edFabricanteMouseDown
        end
        object lbIPI2: TLabel
          Left = 286
          Top = 142
          Width = 10
          Height = 14
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnMouseDown = edFabricanteMouseDown
        end
        object lbDesconto: TLabel
          Left = 8
          Top = 123
          Width = 54
          Height = 14
          Caption = 'Desc. M'#225'x.'
          OnMouseDown = edFabricanteMouseDown
        end
        object lbDesconto2: TLabel
          Left = 51
          Top = 141
          Width = 10
          Height = 14
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnMouseDown = edFabricanteMouseDown
        end
        object lbComissao2: TLabel
          Left = 118
          Top = 141
          Width = 10
          Height = 14
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnMouseDown = edFabricanteMouseDown
        end
        object lbComissao: TLabel
          Left = 75
          Top = 123
          Width = 47
          Height = 14
          Caption = 'Comiss'#227'o'
          OnMouseDown = edFabricanteMouseDown
        end
        object lbAliquota: TLabel
          Left = 301
          Top = 124
          Width = 39
          Height = 14
          Caption = 'Al'#237'quota'
          OnMouseDown = edFabricanteMouseDown
        end
        object lbAliquota2: TLabel
          Left = 390
          Top = 142
          Width = 10
          Height = 14
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnMouseDown = edFabricanteMouseDown
        end
        object Label45: TLabel
          Left = 8
          Top = 305
          Width = 53
          Height = 14
          Caption = 'Dimens'#245'es'
        end
        object lbQuantParaTroca: TLabel
          Left = 326
          Top = 12
          Width = 72
          Height = 14
          Caption = 'Quant. p/ troca'
          OnMouseDown = edFabricanteMouseDown
        end
        object Label4: TLabel
          Left = 248
          Top = 171
          Width = 124
          Height = 28
          Caption = 'Unidade de convers'#227'o'#13#10'na embalagem de Entrada'
        end
        object Label7: TLabel
          Left = 323
          Top = 205
          Width = 73
          Height = 14
          Caption = 'por embalagem'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object edClassFiscal: TDBEdit
          Left = 168
          Top = 138
          Width = 77
          Height = 22
          CharCase = ecUpperCase
          DataField = 'CLASSFISCAL'
          DataSource = DataSource1
          TabOrder = 3
          OnMouseDown = edFabricanteMouseDown
        end
        object edIPI: TDBEdit
          Left = 252
          Top = 138
          Width = 33
          Height = 22
          CharCase = ecUpperCase
          DataField = 'IPI'
          DataSource = DataSource1
          TabOrder = 4
          OnMouseDown = edFabricanteMouseDown
        end
        object GroupBox5: TGroupBox
          Left = 8
          Top = 12
          Width = 273
          Height = 106
          Caption = 'Embalagem Fechada'
          TabOrder = 0
          object lbValorEmbalagem: TLabel
            Left = 126
            Top = 19
            Width = 141
            Height = 14
            Caption = 'Valor da embalagem fechada'
          end
          object lbUndConvEmbalagem: TLabel
            Left = 8
            Top = 59
            Width = 109
            Height = 14
            Caption = 'Unidade de convers'#227'o'
          end
          object lbUndConvEmbalagem2: TLabel
            Left = 83
            Top = 77
            Width = 50
            Height = 14
            Caption = 'por embal.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbCodEmbalagem: TLabel
            Left = 8
            Top = 19
            Width = 79
            Height = 14
            Caption = 'C'#243'd. Embalagem'
            OnMouseDown = edFabricanteMouseDown
          end
          object lbValorPDVEmbalagem: TLabel
            Left = 152
            Top = 59
            Width = 84
            Height = 14
            Caption = 'Valor para o PDV'
          end
          object edCodEmbalagem: TDBEdit
            Left = 8
            Top = 32
            Width = 89
            Height = 22
            DataField = 'CX_COD_BARRA_CAIXA'
            DataSource = DataSource1
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnChange = edCodEmbalagemChange
            OnMouseDown = edFabricanteMouseDown
          end
          object edValorEmbalagem: TJvDBCalcEdit
            Left = 152
            Top = 33
            Width = 113
            Height = 22
            DisplayFormat = ',0.00'
            ShowButton = False
            TabOrder = 2
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            DataField = 'CX_VALORCAIXA'
            DataSource = DataSource1
          end
          object edUndConvEmbalagem: TJvDBCalcEdit
            Left = 8
            Top = 73
            Width = 73
            Height = 22
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
            DataField = 'CX_UNDCONVERSAO'
            DataSource = DataSource1
          end
          object edValorPDVEmbalagem: TJvDBCalcEdit
            Left = 152
            Top = 73
            Width = 113
            Height = 22
            TabStop = False
            Color = clYellow
            DisplayFormat = ',0.00'
            ReadOnly = True
            ShowButton = False
            TabOrder = 3
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            DataField = 'CX_VALORCAIXAPDV'
            DataSource = DataSource1
          end
        end
        object edDesconto: TDBEdit
          Left = 8
          Top = 136
          Width = 41
          Height = 22
          CharCase = ecUpperCase
          DataField = 'DESCONTO'
          DataSource = DataSource1
          TabOrder = 7
          OnMouseDown = edFabricanteMouseDown
        end
        object edComissao: TDBEdit
          Left = 75
          Top = 136
          Width = 41
          Height = 22
          CharCase = ecUpperCase
          DataField = 'COMISSAO'
          DataSource = DataSource1
          TabOrder = 8
          OnMouseDown = edFabricanteMouseDown
        end
        object GroupBox3: TGroupBox
          Left = 8
          Top = 247
          Width = 385
          Height = 56
          TabOrder = 14
          object Label52: TLabel
            Left = 272
            Top = 15
            Width = 89
            Height = 14
            Caption = 'Pre'#231'o Promocional'
          end
          object Label53: TLabel
            Left = 9
            Top = 16
            Width = 90
            Height = 14
            Caption = 'In'#237'cio da promo'#231#227'o'
          end
          object Label54: TLabel
            Left = 113
            Top = 16
            Width = 82
            Height = 14
            Caption = 'Fim da promo'#231#227'o'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 4
            Top = -3
            Width = 144
            Height = 17
            Caption = 'Ativar pre'#231'o promocional'
            DataField = 'PROM_ATIVO'
            DataSource = DataSource1
            TabOrder = 0
            ValueChecked = 'V'
            ValueUnchecked = 'F'
            OnClick = DBCheckBox3Click
          end
          object RxDBCalcEdit12: TJvDBCalcEdit
            Left = 272
            Top = 28
            Width = 105
            Height = 22
            DisplayFormat = ',0.00'
            ShowButton = False
            TabOrder = 3
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            DataField = 'PROM_PRECO'
            DataSource = DataSource1
          end
          object DBDateEdit3: TJvDBDateEdit
            Left = 8
            Top = 29
            Width = 97
            Height = 22
            DataField = 'PROM_DT_INICIO'
            DataSource = DataSource1
            DialogTitle = 'Selecione uma data'
            Glyph.Data = {
              76050000424D760500000000000036000000280000001C0000000C0000000100
              2000000000004005000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF008080800080808000808080008080800080808000808080008080
              800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
              0000800000008000000000000000800000000000000000000000800000008080
              8000FF00FF008080800080808000808080008080800080808000808080008080
              80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
              FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
              FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
              0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
              8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
              80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
              C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
              FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
              FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
              8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
              0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
              FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
              FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
              FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
              8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
              8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
              000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
              FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
              FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
              8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
              C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF008080800080808000808080008080800080808000808080008080
              80008080800080808000808080008080800080808000FF00FF00}
            ImageKind = ikCustom
            NumGlyphs = 2
            PopupColor = clBtnFace
            YearDigits = dyFour
            TabOrder = 1
          end
          object DBDateEdit4: TJvDBDateEdit
            Left = 112
            Top = 29
            Width = 97
            Height = 22
            DataField = 'PROM_DT_FIM'
            DataSource = DataSource1
            DialogTitle = 'Selecione uma data'
            Glyph.Data = {
              76050000424D760500000000000036000000280000001C0000000C0000000100
              2000000000004005000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF008080800080808000808080008080800080808000808080008080
              800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
              0000800000008000000000000000800000000000000000000000800000008080
              8000FF00FF008080800080808000808080008080800080808000808080008080
              80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
              FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
              FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
              0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
              8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
              80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
              C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
              FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
              FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
              8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
              0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
              FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
              FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
              FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
              8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
              8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
              000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
              FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
              FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
              8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
              FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
              C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF008080800080808000808080008080800080808000808080008080
              80008080800080808000808080008080800080808000FF00FF00}
            ImageKind = ikCustom
            NumGlyphs = 2
            PopupColor = clBtnFace
            YearDigits = dyFour
            TabOrder = 2
          end
        end
        object edAliquota2: TEdit
          Left = 347
          Top = 138
          Width = 41
          Height = 22
          TabStop = False
          Color = clYellow
          TabOrder = 6
          OnMouseDown = edFabricanteMouseDown
        end
        object DBCheckBox2: TDBCheckBox
          Left = 11
          Top = 181
          Width = 121
          Height = 17
          Caption = 'Tr'#234's casas decimais'
          DataField = 'TRESCASAS'
          DataSource = DataSource1
          TabOrder = 10
          ValueChecked = 'V'
          ValueUnchecked = 'F'
        end
        object cbAliquota: TDBComboBox
          Left = 300
          Top = 138
          Width = 49
          Height = 22
          Style = csDropDownList
          DataField = 'CD_ALIQUOTA'
          DataSource = DataSource1
          ItemHeight = 14
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            'II'
            'FF'
            'NN')
          TabOrder = 5
          OnChange = cbAliquotaChange
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 318
          Width = 385
          Height = 22
          CharCase = ecUpperCase
          DataField = 'DIMENSOES'
          DataSource = DataSource1
          TabOrder = 15
        end
        object DBCheckBox4: TDBCheckBox
          Left = 8
          Top = 469
          Width = 65
          Height = 17
          Caption = 'E&xportar'
          DataField = 'EXPORTAR'
          DataSource = DataSource1
          TabOrder = 16
          ValueChecked = 'V'
          ValueUnchecked = 'F'
        end
        object gbPromocoes: TGroupBox
          Left = 288
          Top = 53
          Width = 113
          Height = 65
          Caption = 'Ref. Promo'#231#227'o'
          TabOrder = 2
          object wwDBSpinEdit1: TwwDBSpinEdit
            Left = 29
            Top = 26
            Width = 55
            Height = 22
            Increment = 1.000000000000000000
            DataField = 'REF_PROMOCAO'
            DataSource = DataSource1
            TabOrder = 0
            UnboundDataType = wwDefault
          end
        end
        object DBCheckBox8: TDBCheckBox
          Left = 11
          Top = 165
          Width = 191
          Height = 17
          Caption = 'Pre'#231'o proporcional ao Peso Liquido'
          Color = clBtnFace
          DataField = 'PRECOPROPESO'
          DataSource = DataSource1
          ParentColor = False
          TabOrder = 9
          ValueChecked = 'V'
          ValueUnchecked = 'F'
        end
        object edQuantParaTroca: TJvDBCalcEdit
          Left = 328
          Top = 26
          Width = 71
          Height = 22
          DisplayFormat = ',0.00'
          ShowButton = False
          TabOrder = 1
          ZeroEmpty = False
          DecimalPlacesAlwaysShown = False
          OnMouseDown = edFabricanteMouseDown
          DataField = 'QUANTTROCA'
          DataSource = DataSource1
        end
        object DBCheckBox1: TDBCheckBox
          Left = 11
          Top = 197
          Width = 117
          Height = 17
          Caption = 'Unidade Fracionada'
          DataField = 'UND_FRACIONADA'
          DataSource = DataSource1
          TabOrder = 11
          ValueChecked = 'V'
          ValueUnchecked = 'F'
        end
        object JvDBCalcEdit1: TJvDBCalcEdit
          Left = 248
          Top = 201
          Width = 73
          Height = 22
          DecimalPlaces = 3
          DisplayFormat = ',0.000'
          ShowButton = False
          TabOrder = 13
          DecimalPlacesAlwaysShown = False
          DataField = 'UNDCONVERSAOENTRADA'
          DataSource = DataSource1
        end
        object DBCheckBox6: TDBCheckBox
          Left = 11
          Top = 213
          Width = 117
          Height = 17
          Caption = 'Controla N'#186' S'#233'rie'
          DataField = 'CONTROLANUMSERIE'
          DataSource = DataSource1
          TabOrder = 12
          ValueChecked = 'V'
          ValueUnchecked = 'F'
        end
        object GroupBox1: TGroupBox
          Left = 8
          Top = 353
          Width = 385
          Height = 67
          TabOrder = 17
          object lbCodVenda: TLabel
            Left = 10
            Top = 20
            Width = 57
            Height = 14
            Caption = 'C'#243'd. Venda'
          end
          object SuperCombo1: TDBIboSuperCombo
            Left = 12
            Top = 34
            Width = 362
            Height = 22
            DataSource = DataSource1
            DataField = 'CD_VENDA_UNICO'
            _DesignedBy_ = 'Denis da Silva Guerra'
            IBO_DataBase = DtM.IBDatabaseRet
            TabOrder = 1
            LookUpTable = 'CODIGOVENDA'
            LookUpField = 'CD_VENDA'
            LookUpDisplay = 'NM_VENDA'
            Edit1Width = 45
            Edit1Color = clWhite
            Edit1Font.Charset = DEFAULT_CHARSET
            Edit1Font.Color = clNavy
            Edit1Font.Height = -11
            Edit1Font.Name = 'MS Sans Serif'
            Edit1Font.Style = [fsBold]
            Edit2Font.Charset = DEFAULT_CHARSET
            Edit2Font.Color = clNavy
            Edit2Font.Height = -11
            Edit2Font.Name = 'MS Sans Serif'
            Edit2Font.Style = [fsBold]
            Edit2CharCase = ecUpperCase
            ButtonGlyph.Data = {
              CE000000424DCE000000000000007600000028000000090000000B0000000100
              0400000000005800000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888000
              0000800000008000000088888888800000008888088880000000888000888000
              0000880000088000000080000000800000008880008880000000888000888000
              000088800088800000008888888880000000}
            GridFont.Charset = DEFAULT_CHARSET
            GridFont.Color = clWindowText
            GridFont.Height = -11
            GridFont.Name = 'MS Sans Serif'
            GridFont.Style = []
          end
          object DBCheckBoxTipoPrecoUnico: TDBCheckBox
            Left = 8
            Top = 2
            Width = 201
            Height = 17
            Caption = 'Usar apenas um '#250'nico Tipo de Pre'#231'o'
            DataField = 'USAR_CD_VENDA_UNICO'
            DataSource = DataSource1
            TabOrder = 0
            ValueChecked = 'V'
            ValueUnchecked = 'F'
            OnClick = DBCheckBoxTipoPrecoUnicoClick
          end
        end
        object btTransfGrade: TBitBtn
          Left = 7
          Top = 429
          Width = 138
          Height = 24
          Caption = 'Transforma em Grade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          TabStop = False
          OnClick = btTransfGradeClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFF0E1E0C69B9AA46054934034E6D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7613BCB7D50E8A676FFC189D283
            597C1B17E9D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFBA6635FFCD9AF2B27FEAA36FD88C6089200CB27A75FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE682EF1AE7DE69D6AE1905BDE93
            669B3014A66257FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFC77331E49566E19668E39D72EDB089B95A389E4E39FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE69954EFAC6EFCC498C3A3639488
            3FD27B4A973D22FFFFFFFFFFFFCDD3FC6069E92E43D42535C42C2EB06262B9D3
            D3ECFFFFFFF0C5A3CB78368F7A3408810B999B74ECDCD8FFFFFFFFFFFF2651FA
            ADEEFF97D9FF65A2FF2E6DFF0133FF2525AAE7F7E7FFFFFFFFFFFF54A9542BCC
            40359138FFFFFFFFFFFFFFFFFF8390F882BCFA94D2FF5993FF1D54FF0022E77B
            7BC523A123DBEFDB66B8662CC24235D34D17901EFFFFFFFFFFFFFFFFFFF2F3FF
            2B51EDA9E9FF5792FF0C46FF1114B1EFEFF811A61618A92141D86246E0683EDB
            5C3D9B40FFFFFFFFFFFFFFFFFFFFFFFF878EF77AB1F45995FF0025E58787D1FF
            FFFF11A8176CFFA256F08350EB7821AF30C3E0C3FFFFFFFFFFFFFFFFFFFFFFFF
            F3F3FF2F4DDB5A9EFF1818B5F5F5FCFFFFFF12A81976FFB167FF9A48DF6C56B6
            57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B91EC1C3CD49393DBFFFFFFFF
            FFFF10A21313A71B11A61911A718109E136AC26BFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF5F5FE4149C4F9F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object TabSheet4: TTabSheet
        Caption = '&Obs'
        ImageIndex = 3
        object DBMemo1: TDBMemo
          Left = 16
          Top = 16
          Width = 385
          Height = 465
          DataField = 'OBS'
          DataSource = DataSource1
          TabOrder = 0
        end
      end
      object TabSheet6: TTabSheet
        Caption = '&Foto'
        ImageIndex = 5
        object Bt_Foto: TBitBtn
          Left = 144
          Top = 400
          Width = 113
          Height = 25
          Caption = 'Escolher Imagem'
          TabOrder = 0
          OnClick = Bt_FotoClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C30E0000C30E00000001000000010000003100000039
            000000420000B5420000004A0000AD4A0000BD4A000000520000C6520000005A
            0000085A0000C65A0000006300007B630000CE630000C66B0000DE6B0000E76B
            0000DE730000F78C0000084208009C4208000052080008520800085A0800086B
            0800D68C0800106B1000186B100008731000E78C1000106B1800BD6B1800CE7B
            1800218C1800DE7B2100AD9C2100C6732900318C2900B5AD2900FFAD2900BD73
            3100318C310029B53100398C3900DE8C3900429C3900529C3900B5A5390031AD
            39009CAD3900AD6B4200319442003994420094944200DE9C420029A5420094B5
            4200FFB5420084BD42004AA54A004AAD4A0094B54A008CBD4A00FFBD4A00429C
            5200FFC65200A5BD5A00FFBD5A00FFC65A00FFCE5A005ABD630063C66300FFCE
            63006B6B6B004AC66B0073737300CE9C730052A5730052B57B00F7CE7B0073D6
            7B00FFD67B00848484008C84840063B58400E7D68400F7D68400FFD684008484
            8C008C848C0094848C008C8C8C007BCE8C008CCE8C00F7CE8C00FFD68C00FFE7
            8C008C8C9400948C94008C94940094949400DEBD9400EFC694008CCE9400F7CE
            9400848C9C008C949C009C9C9C00E7C69C00EFC69C00EFCE9C008CD69C00F7D6
            9C00FFD69C00FFEF9C00A5A5A50073CEA500EFCEA500F7D6A50094DEA500FFDE
            A500A5A5AD00ADADAD00F7D6AD0094DEAD00F7DEAD0073E7AD00ADADB500ADB5
            B500B5B5B5007BD6B50094DEB50084E7B500B5B5BD00BDBDBD009CD6BD008CDE
            BD00F7DEBD00FFFFBD00BDBDC600BDC6C600C6C6C60094E7C600F7EFC600FFEF
            C60094E7CE00FFFFCE0094E7DE0094EFE70094FFE700FF00FF009CFFFF00A5FF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00976C4C4A4C4C
            4C4C4C4C4C4C4C4A4C6565635C5C5C5C5C5C5C5C5C5C5C5C5C4C655E5E5E7078
            787D848989899288544A6C2C2A2C353535414E5583969694544A6C1704161616
            161714174F999895544A7404020101010004041C5D857F755A4A741C19040100
            001F384B513E2730624A7B3C3C18010409263E32241A131E6A4A8047481D070C
            0A0D0F0E101012216A4A82312B222F2E362D230B030608206B4A873F3B435656
            73735037252905156B4A875852494245454249618B8A4D33624A8E5F603A2840
            443A447990909390534A8E7677695F777C7C7C716F6F716D594C8E766F76766D
            6D6D6D6D6D6D676662748D8D8C8786868281807B7A7A746C6C97}
        end
        object Bt_ApagaFoto: TBitBtn
          Left = 288
          Top = 400
          Width = 105
          Height = 25
          Caption = 'Apagar Imagem'
          TabOrder = 1
          OnClick = Bt_ApagaFotoClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000EE0E0000EE0E000000010000000100006B6B6B008484
            8400C6C6C600DEDEDE00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00040404040404
            0404040404040404040404040404040404040404040404040404040404040404
            0404040404040404040404010000000000000104040404040404040002020202
            0202000004040404040404000202020202020001000404040404040100020202
            0202000101000404040404040003030303030300010100040404040404000303
            0303030300010100040404040404000303030303030001010004040404040400
            0303030303030001000404040404040400030303030303000004040404040404
            0400030303030303000404040404040404040100000000010104040404040404
            0404040404040404040404040404040404040404040404040404}
        end
        object EDBImage1: TEDBImage
          Left = 8
          Top = 40
          Width = 385
          Height = 353
          DataField = 'FOTO'
          DataSource = DataSource1
          TabOrder = 2
        end
      end
    end
  end
  inherited Panel4: TGradPan
    Left = 685
    Width = 90
    Height = 525
    inherited JvLabel1: TJvLabel
      Left = 27
      Top = 304
      Height = 128
      Caption = 'Produtos'
    end
    object Label25: TLabel
      Left = 72
      Top = 484
      Width = 11
      Height = 14
      Caption = 'Id:'
      Transparent = True
    end
    object Bt_UltimasCompras: TBitBtn
      Left = 3
      Top = 14
      Width = 81
      Height = 24
      Hint = #218'ltimas Compras realizadas'
      Caption = '&1- '#218'lt. Compras'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TabStop = False
      OnClick = Bt_UltimasComprasClick
    end
    object btQtdePedida: TBitBtn
      Left = 3
      Top = 97
      Width = 81
      Height = 24
      Hint = 'Quantidade Pedida'
      Caption = '&4- Qtde. Pedida'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TabStop = False
      OnClick = btQtdePedidaClick
    end
    object bt_UltimasVendas: TBitBtn
      Left = 3
      Top = 41
      Width = 81
      Height = 24
      Hint = #218'ltimas Vendas realizadas'
      Caption = '&2- '#218'lt. Vendas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = bt_UltimasVendasClick
    end
    object bt_VendaMensal: TBitBtn
      Left = 3
      Top = 69
      Width = 81
      Height = 24
      Hint = 'Venda Mensal'
      Caption = '&3- Venda Mens.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      TabStop = False
      OnClick = bt_VendaMensalClick
    end
    object btEstoqueDepositos: TBitBtn
      Left = 3
      Top = 124
      Width = 81
      Height = 24
      Hint = 'Estoque nos Dep'#243'sitos'
      Caption = '&5- Estq. Depos.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TabStop = False
      OnClick = btEstoqueDepositosClick
    end
    object btEtiquetas: TBitBtn
      Left = 3
      Top = 180
      Width = 81
      Height = 24
      Hint = 'Emiss'#227'o de Etiquetas deste Produto'
      Caption = '&7- Etiquetas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      TabStop = False
      OnClick = btEtiquetasClick
    end
    object btAuditoriaDeEstoque: TBitBtn
      Left = 3
      Top = 152
      Width = 81
      Height = 24
      Hint = 'Auditoria de Estoque'
      Caption = '&6- Aud.Estoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      TabStop = False
      OnClick = btAuditoriaDeEstoqueClick
    end
    object btNumSeries: TBitBtn
      Left = 3
      Top = 208
      Width = 81
      Height = 24
      Hint = 'Emiss'#227'o de Etiquetas deste Produto'
      Caption = '&8- Num. S'#233'rie'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      TabStop = False
      OnClick = btNumSeriesClick
    end
    object DBEdit6: TDBEdit
      Left = 0
      Top = 499
      Width = 86
      Height = 22
      TabStop = False
      Anchors = [akLeft, akRight, akBottom]
      AutoSize = False
      Color = clBtnFace
      DataField = 'CD_PRODUTO'
      DataSource = DataSource1
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
  end
  object DBCheckBox5: TDBCheckBox [5]
    Left = 364
    Top = 7
    Width = 53
    Height = 17
    TabStop = False
    Caption = 'Inativo'
    DataField = 'INATIVO'
    DataSource = DataSource1
    TabOrder = 4
    ValueChecked = 'V'
    ValueUnchecked = 'F'
    OnClick = DBCheckBox5Click
  end
  inherited DataSource1: TDataSource
    Left = 597
    Top = 144
  end
  inherited TrCadastro: TIBOTransaction
    Left = 569
    Top = 144
  end
  inherited IBCadastro: TIBOQuery
    Left = 541
    Top = 144
  end
  object IBAliquotas: TIB_Query
    DatabaseName = 'F:\Fontes\Focus\FOCUS.FOC'
    IB_Connection = DtM.IBDatabaseRet
    IB_Transaction = DtM.IBTransacao
    SQL.Strings = (
      'select * from ALIQUOTAS')
    CallbackInc = -1
    CallbackInitInt = 0
    CallbackRefreshInt = 0
    PreparedInserts = False
    CommitAction = caInvalidateCursor
    Left = 545
    Top = 182
  end
  object IBSP_PegaCodBalanca: TIBOStoredProc
    Params = <>
    StoredProcHasDML = True
    StoredProcName = 'PEGA_CODBALANCA'
    DatabaseName = 'F:\Fontes\Focus\FOCUS.FOC'
    IB_Connection = DtM.IBDatabaseRet
    IB_Transaction = CM.SPTransacao
    Left = 545
    Top = 214
  end
  object OpenPictureDialog1: TOpenPictureDialog
    FileName = 'E:\nova civilizacao.jpg'
    Filter = 'JPeg (*.jpg)|*.jpg'
    Left = 545
    Top = 254
  end
  object PopupMenu: TPopupMenu
    AutoPopup = False
    OnPopup = PopupMenuPopup
    Left = 544
    Top = 296
    object MenuLiga: TMenuItem
      Caption = '&Liga'
      OnClick = MenuLigaClick
    end
    object MenuDesliga: TMenuItem
      Caption = '&Desliga'
      OnClick = MenuDesligaClick
    end
  end
end
