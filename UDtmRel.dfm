object dmRel: TdmRel
  OldCreateOrder = False
  Height = 659
  Width = 905
  object frxP01CompletaUnitario: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.473581446800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 103
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 907.087200000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 340.157700000000000000
          Top = 45.354360000000000000
          Width = 551.811380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Levantamento de Estoque - [frxUserDataSetSituacao."tipo"] - Cust' +
              'o/Venda')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 1084.725110000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 302.362400000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 400.630180000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 438.425480000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 574.488560000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object frxDBDataset1C6: TfrxMemoView
          Left = 873.071430000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C9'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C9"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 506.457020000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 752.126470000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 978.898270000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 657.638220000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C10"]%')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 869.291900000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 1084.725110000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 93.708720000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 400.630180000000000000
          Top = 7.559060000000003000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 438.425480000000000000
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 574.488560000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Custo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 873.071430000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Venda')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 506.457020000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Est.M'#237'n.')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 755.512370000000000000
          Top = 7.559060000000003000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'V.Estoque')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 978.898270000000000000
          Top = 7.559060000000003000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'V. Venda Estoq.')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 657.638220000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Margem')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 340.157700000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 408.189240000000000000
          Top = 4.559060000000017000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C4">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 563.149970000000000000
          Top = 4.559060000000017000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 865.512370000000000000
          Top = 4.559060000000017000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C9">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 737.008350000000000000
          Top = 4.779529999999994000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 971.339210000000000000
          Top = 4.779529999999994000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxP01CustoUnitario: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40058.427717546300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 7
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 907.087200000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 340.157700000000000000
          Top = 37.795300000000000000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Levantamento de Estoque')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 1084.725110000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 114.944960000000000000
          Width = 393.071120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 544.252320000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 616.063390000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 827.717070000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 733.228820000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 944.882500000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 869.291900000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 1084.725110000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000002000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 112.606370000000000000
          Top = 7.559060000000002000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 544.252320000000000000
          Top = 7.559060000000002000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 616.063390000000000000
          Top = 7.559060000000002000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 827.717070000000000000
          Top = 7.559060000000002000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Custo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 733.228820000000000000
          Top = 7.559060000000002000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Est.M'#237'n.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 944.882500000000000000
          Top = 7.559060000000002000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor do Estoque')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 340.157700000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 585.827150000000000000
          Top = 4.559060000000017000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C4">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 816.378480000000000000
          Top = 4.559060000000017000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 944.882500000000000000
          Top = 4.779529999999994000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxP01VendaUnitario: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.473740046300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 55
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 578.268090000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Levantamento de Estoque - [frxUserDataSetSituacao."tipo"] - Vend' +
              'a')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 404.409710000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 445.984540000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C6: TfrxMemoView
          Left = 600.945270000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C9"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 525.354670000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 672.756340000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 97.488250000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 404.409710000000000000
          Top = 7.559060000000003000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 445.984540000000000000
          Top = 7.559060000000003000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 600.945270000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'V.Venda')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 525.354670000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Est.M'#237'n.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 672.756340000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'V.V.Estq.')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 423.748300000000000000
          Top = 4.559060000000017000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C4">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 582.268090000000000000
          Top = 4.559060000000017000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C9">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 668.197280000000000000
          Top = 4.779529999999994000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxP02PrecoAlteradoVenda: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.475590277800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 199
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 192.756030000000000000
          Top = 45.354360000000000000
          Width = 563.149970000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Produtos [frxUserDataSetSituacao."tipo"] com Pre'#231'o Alterado no P' +
              'er'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUserDataSetDatas.' +
              '"DataAte"]  Venda')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 427.086890000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 517.795610000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 634.961040000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 97.488250000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 423.307360000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559060000000003000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Venda Atual')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 634.961040000000000000
          Top = 7.559060000000003000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Venda Ant.')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP02PrecoAlteradoCusto: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40049.391596493100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 151
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 37.795300000000000000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Produtos com Pre'#231'o Alterado')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 427.086890000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 517.795610000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 634.961040000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 97.488250000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 423.307360000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559060000000003000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Custo Atual')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 634.961040000000000000
          Top = 7.559060000000003000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Custo Ant.')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP02PrecoAlteradoCustoVenda: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.474360706000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    OnGetValue = frxP02PrecoAlteradoCustoVendaGetValue
    Left = 40
    Top = 247
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 907.087200000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 359.055350000000000000
          Top = 49.133889999999990000
          Width = 721.890230000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Produtos [frxUserDataSetSituacao."tipo"] com Pre'#231'o Alterado no P' +
              'er'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUserDataSetDatas.' +
              '"DataAte"] - Custo/Venda')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 1084.725110000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 445.984540000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 653.858690000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 498.897960000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object frxDBDataset2C4: TfrxMemoView
          Left = 967.559680000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset2C5: TfrxMemoView
          Left = 839.055660000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 763.465060000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]%')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 865.512370000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 1084.725110000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 97.488250000000000000
          Top = 7.559060000000003000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 445.984540000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 627.401980000000000000
          Top = 7.559060000000003000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Custo Atual')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 498.897960000000000000
          Top = 7.559060000000003000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Custo Ant.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 967.559680000000000000
          Top = 7.559060000000003000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Venda Atual')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 839.055660000000000000
          Top = 7.559060000000003000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Venda Ant.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 763.465060000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Margem')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 359.055350000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP03QuebraInventario: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.477350798600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 295
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 907.087200000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 215.433210000000000000
          Top = 49.133889999999990000
          Width = 687.874460000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Quebra do Invent'#225'rio Referente ao Per'#237'odo de [frxUserDataSetData' +
              's."DataDe"] a [frxUserDataSetDatas."DataAte"] - [frxUserDataSetS' +
              'ituacao."tipo"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 1084.725110000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C4: TfrxMemoView
          Left = 634.961040000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 918.425790000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object frxDBDataset1C6: TfrxMemoView
          Left = 997.795920000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 729.449290000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object frxDBDataset2C1: TfrxMemoView
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset2C2: TfrxMemoView
          Left = 72.370130000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset2C3: TfrxMemoView
          Left = 176.740260000000000000
          Width = 434.645950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset2C6: TfrxMemoView
          Left = 823.937540000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 869.291900000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 1084.725110000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 176.960730000000000000
          Top = 7.559060000000003000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 634.961040000000000000
          Top = 7.559060000000003000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estq.Atual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 918.425790000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'V. Venda')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 997.795920000000000000
          Top = 7.559060000000003000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 729.449290000000000000
          Top = 7.559060000000003000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estq. Real')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 72.590600000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 823.937540000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quebra')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo14: TfrxMemoView
        Left = 215.433210000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 990.236860000000000000
          Top = 5.779529999999994000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxP04ProdutosTroca: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.479401400500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 343
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Produtos [frxUserDataSetSituacao."tipo"] para Troca')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 366.614410000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 491.338900000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 570.709030000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 672.756340000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 97.488250000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 559.370440000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 672.756340000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000110000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 551.811380000000000000
          Top = 4.559060000000017000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C4">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 665.197280000000000000
          Top = 4.559060000000017000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxP05TabelaPrecoCustoVenda: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40177.419999455990000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 392
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 555.590910000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Tabela de Pre'#231'os dos Produtos [frxUserDataSetSituacao."tipo"] - ' +
              'Custo/Venda')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 317.480520000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 427.086890000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 672.756340000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 483.779840000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 585.827150000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]%')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 97.488250000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 427.086890000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 672.756340000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Venda')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 483.779840000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Custo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 585.827150000000000000
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Margem')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP05TabelaPrecoVenda: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.480784675900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 439
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 192.756030000000000000
          Top = 45.354360000000000000
          Width = 521.575140000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Tabela de Pre'#231'os - Venda - [frxUserDataSetSituacao."tipo"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 122.504020000000000000
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 608.504330000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 676.535870000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 123.944960000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 608.504330000000000000
          Top = 7.559060000000003000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 680.315400000000000000
          Top = 7.559060000000003000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxC01ClientesComContasAbertas: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.585578159700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 7
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 192.756030000000000000
          Top = 49.133889999999990000
          Width = 563.149970000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Clientes [frxUserDataSetSituacao."tipo"] com Contas Abertas no P' +
              'er'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUserDataSetDatas.' +
              '"DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 46.913420000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 291.023810000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 472.441250000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 521.575140000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 612.283860000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 676.535870000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000002000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 48.354360000000000000
          Top = 7.559060000000002000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 291.023810000000000000
          Top = 7.559060000000002000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 472.441250000000000000
          Top = 7.559060000000002000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Atraso')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 521.575140000000000000
          Top = 7.559060000000002000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Div'#237'da')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 612.283860000000000000
          Top = 7.559060000000002000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 676.535870000000000000
          Top = 7.559060000000002000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C5: TfrxMemoView
          Left = 517.795610000000000000
          Top = 5.779529999999994000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 612.283860000000000000
          Top = 5.779529999999994000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 674.756340000000000000
          Top = 5.779529999999994000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxC02ClientesComContasemAtraso: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.589552581000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 56
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 192.756030000000000000
          Top = 41.574830000000000000
          Width = 563.149970000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Clientes [frxUserDataSetSituacao."tipo"] com Contas em Atraso no' +
              ' Per'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUserDataSetData' +
              's."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 43.133890000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 287.244280000000000000
          Width = 177.637910000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 464.882190000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 514.016080000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 597.165740000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 684.094930000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 44.574830000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 291.023810000000000000
          Top = 7.559060000000003000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 464.882190000000000000
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Atraso')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'D'#237'vida Venc.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 597.165740000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'D'#237'v.a Venc.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 684.094930000000000000
          Top = 7.559060000000003000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C5: TfrxMemoView
          Left = 506.457020000000000000
          Top = 6.779529999999994000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 597.165740000000000000
          Top = 6.779529999999994000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 682.315400000000000000
          Top = 6.779529999999994000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxC03ClientesComSaldoAcimaLimite: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40282.434907581000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 104
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 192.756030000000000000
          Top = 41.574830000000000000
          Width = 495.118430000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Clientes [frxUserDataSetSituacao."tipo"] com Saldo da D'#237'vida Aci' +
              'ma do Limite de Cr'#233'dito   No Per'#237'odo de [frxUserDataSetDatas."Da' +
              'taDe"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 43.133890000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 287.244280000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 434.645950000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 540.472790000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 653.858690000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000002000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 44.574830000000000000
          Top = 7.559060000000002000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 291.023810000000000000
          Top = 7.559060000000002000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Apelido')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Top = 7.559060000000002000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 540.472790000000000000
          Top = 7.559060000000002000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Limite Cr'#233'dito')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 653.858690000000000000
          Top = 7.559060000000002000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo da D'#237'vida')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo11: TfrxMemoView
          Left = 657.638220000000000000
          Top = 5.779529999999994000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxC04ClientesBloqueados: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.598929930600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 152
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Clientes [frxUserDataSetSituacao."tipo"] Bloqueados')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 43.133890000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 287.244280000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 442.205010000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 540.472790000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 44.574830000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 291.023810000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Apelido')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 442.205010000000000000
          Top = 7.559060000000003000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 540.472790000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxC05ClientesSimp: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.605263483800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 200
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 200.315090000000000000
          Top = 49.133889999999990000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Clientes [frxUserDataSetSituacao."tipo"] Simplificado')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 43.133890000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 298.582870000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 404.409710000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 487.559370000000000000
          Width = 268.346630000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 44.574830000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 298.582870000000000000
          Top = 7.559060000000003000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Apelido')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 404.409710000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 487.559370000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxC06SaldoMaior: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.613329525500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 248
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 521.575140000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Clientes [frxUserDataSetSituacao."tipo"] com Saldo da D'#237'vida mai' +
              'or que R$ [frxUserDataSetNum."Num"] entre [frxUserDataSetDatas."' +
              'DataDe"] e [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 50.692950000000000000
          Width = 309.921460000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 362.834880000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 548.031850000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 666.417750000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 52.133890000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 362.834880000000000000
          Top = 7.559060000000003000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Apelido')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 551.811380000000000000
          Top = 7.559060000000003000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Atraso (dias)')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 672.756340000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo D'#237'vida')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C5: TfrxMemoView
          Left = 661.417750000000000000
          Top = 6.779529999999994000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxC07AniversariantesP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.625136527800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 296
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 192.756030000000000000
          Top = 49.133889999999990000
          Width = 563.149970000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Clientes [frxUserDataSetSituacao."tipo"] Aniversariantes no Per'#237 +
              'odo de [frxUserDataSetDatas."DataDe"] a [frxUserDataSetDatas."Da' +
              'taAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 43.133890000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 287.244280000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 343.937230000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 393.071120000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 646.299630000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 44.574830000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 291.023810000000000000
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 343.937230000000000000
          Top = 7.559060000000003000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Idade')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 393.071120000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 646.299630000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxF01ValoresCompradosP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.646301898100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 432
    Top = 8
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 555.590910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Valores Comprados no Per'#237'odo de [frxUserDataSetDatas."DataDe"] a' +
              ' [frxUserDataSetDatas."DataAte"]        [frxUserDataSetSituacao.' +
              '"tipo"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 491.338900000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 634.961040000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 97.488250000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559060000000003000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 646.299630000000000000
          Top = 7.559060000000003000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #218'ltima Compra')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C3: TfrxMemoView
          Left = 478.220780000000000000
          Top = 5.779529999999994000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C3">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCP01ContasAPagarVP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.383463541700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 680
    Top = 32
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 559.370440000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Contas a Pagar com Vencimento no Per'#237'odo de [frxUserDataSetDatas' +
              '."DataDe"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 201.874150000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 423.307360000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 517.795610000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 199.535560000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 423.307360000000000000
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 90.708720000000000000
          Top = 7.559060000000003000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 517.795610000000000000
          Top = 7.559060000000003000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C2: TfrxMemoView
          Left = 90.708720000000000000
          Top = 5.779529999999994000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C2">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCP02ContasPagasP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.384839768500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 680
    Top = 80
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 559.370440000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Contas Pagas no Per'#237'odo de [frxUserDataSetDatas."DataDe"] a [frx' +
              'UserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 77.149660000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 162.519790000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 222.992270000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 634.961040000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 551.811380000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data pg.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 78.590600000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 162.519790000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 222.992270000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Pago')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 634.961040000000000000
          Top = 7.559060000000003000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 302.362400000000000000
          Top = 7.559060000000003000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 551.811380000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo doc.')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxCR01ChequesLiquidadosP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.391854201400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 784
    Top = 8
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 551.811380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Cheques Liquidados no Per'#237'odo de [frxUserDataSetDatas."DataDe"] ' +
              'a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 321.039580000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 381.732530000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 52.913420000000000000
          Width = 264.567100000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 434.645950000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 498.897960000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 574.488560000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 650.079160000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 320.480520000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Doc.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Top = 7.559060000000003000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 52.913420000000000000
          Top = 7.559060000000003000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 434.645950000000000000
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ag'#234'ncia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 498.897960000000000000
          Top = 7.559060000000003000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Cheque')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 574.488560000000000000
          Top = 7.559060000000003000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 650.079160000000000000
          Top = 7.559060000000003000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 646.299630000000000000
          Top = 5.779529999999994000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCR02ChequesComVencP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.392781574100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 784
    Top = 56
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 551.811380000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Cheques com Vencimento no Per'#237'odo de [frxUserDataSetDatas."DataD' +
              'e"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 283.244280000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 343.937230000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 37.795300000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 396.850650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 457.323130000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 532.913730000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 600.945270000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 665.197280000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C9'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C9"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 282.685220000000000000
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Doc.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 343.937230000000000000
          Top = 7.559060000000003000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
          Top = 7.559060000000003000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 396.850650000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ag'#234'ncia')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 457.323130000000000000
          Top = 7.559060000000003000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Cheque')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 532.913730000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 600.945270000000000000
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 665.197280000000000000
          Top = 7.559060000000003000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Hist'#243'rico')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 577.488560000000000000
          Top = 5.779529999999994000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCR03CrediariosLiquidP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.393581261590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 784
    Top = 104
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 555.590910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Credi'#225'rios Liquidados no Per'#237'odo de [frxUserDataSetDatas."DataDe' +
              '"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Left = 139.842610000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 71.590600000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 438.425480000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 181.417440000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 578.268090000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 525.354670000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 657.638220000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Left = 139.842610000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 71.031540000000000000
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Doc.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 438.425480000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 181.417440000000000000
          Top = 7.559060000000003000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 525.354670000000000000
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Atraso')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 578.268090000000000000
          Top = 7.559060000000003000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 657.638220000000000000
          Top = 7.559060000000003000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Original')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 646.299630000000000000
          Top = 5.779529999999994000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCR04CrediariosComVencP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.394607557900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 784
    Top = 152
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 555.590910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Credi'#225'rios com Vencimento no Per'#237'odo de [frxUserDataSetDatas."Da' +
              'taDe"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 71.590600000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 151.181200000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 226.771800000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 544.252320000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 634.961040000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 71.031540000000000000
          Top = 7.559060000000003000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Doc.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 151.181200000000000000
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 226.771800000000000000
          Top = 7.559060000000003000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 544.252320000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 634.961040000000000000
          Top = 7.559060000000003000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Credi'#225'rio')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 641.740570000000000000
          Top = 5.779529999999994000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCR05BoletosLiquidP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.399810289400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 784
    Top = 200
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 555.590910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Boletos Liquidados no Per'#237'odo de [frxUserDataSetDatas."DataDe"] ' +
              'a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 354.275820000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 427.086890000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 49.133890000000000000
          Width = 291.023810000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 483.779840000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 600.945270000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 668.976810000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 354.496290000000000000
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Doc.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 427.086890000000000000
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 49.133890000000000000
          Top = 7.559060000000003000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 483.779840000000000000
          Top = 7.559060000000003000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Boleto')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 600.945270000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 680.315400000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 646.299630000000000000
          Top = 5.779529999999994000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCR06BoletosComVencP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.405436550900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 784
    Top = 248
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 555.590910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Boletos com Vencimento no Per'#237'odo de [frxUserDataSetDatas."DataD' +
              'e"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 64.031540000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 120.944960000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 226.771800000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 616.063390000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C9"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 672.756340000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C10'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C10"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 185.196970000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 449.764070000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 502.677490000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 566.929500000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 63.472480000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Doc.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 120.944960000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Boleto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 226.771800000000000000
          Top = 7.559060000000003000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 616.063390000000000000
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencim.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 672.756340000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 185.196970000000000000
          Top = 7.559060000000003000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 449.764070000000000000
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Banco')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 502.677490000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ag'#234'ncia')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 566.929500000000000000
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Conta')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 641.740570000000000000
          Top = 5.779529999999994000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C10">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCR07RecebimentosDeContasP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.408547268500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 784
    Top = 296
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 555.590910000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Recebimentos de Contas no Per'#237'odo de [frxUserDataSetDatas."DataD' +
              'e"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 120.944960000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 340.157700000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 79.370130000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 408.189240000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 453.543600000000000000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 687.874460000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 120.944960000000000000
          Top = 7.559060000000003000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo17: TfrxMemoView
          Left = 340.157700000000000000
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 79.370130000000000000
          Top = 7.559060000000003000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 408.189240000000000000
          Top = 7.559060000000003000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 453.543600000000000000
          Top = 7.559060000000003000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ref. Contas')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 661.417750000000000000
          Top = 7.559060000000003000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total Recebido')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C4: TfrxMemoView
          Left = 332.598640000000000000
          Top = 5.779529999999994000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C4">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 397.850650000000000000
          Top = 5.559060000000017000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 687.874460000000000000
          Top = 5.779529999999994000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCR08ContasReceberCliente: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40077.607511203710000000
    ReportOptions.LastChange = 40077.607511203710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 784
    Top = 344
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
    end
  end
  object frxCR09ContasReceberEmitP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.414417129600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 784
    Top = 392
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 555.590910000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Recebimentos de Contas no Per'#237'odo de [frxUserDataSetDatas."DataD' +
              'e"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 109.606370000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 415.748300000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 147.401670000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 56.692950000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 476.220780000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 196.535560000000000000
          Width = 215.433073310000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 585.827150000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C9'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C9"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 691.653990000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C11'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C11"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 536.693260000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 631.181510000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C10'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C10"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 109.606370000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DOC')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 415.748300000000000000
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vencim.')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 476.220780000000000000
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 56.692950000000000000
          Top = 7.559060000000003000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' DOC')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 585.827150000000000000
          Top = 7.559060000000003000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 147.401670000000000000
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 196.535560000000000000
          Top = 7.559060000000003000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 691.653990000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 536.693260000000000000
          Top = 7.559060000000003000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Atraso')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 631.181510000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Abatido')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C4: TfrxMemoView
          Left = 453.543600000000000000
          Top = 5.779529999999994000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 570.709030000000000000
          Top = 5.779529999999994000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C9">,MasterData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 623.622450000000000000
          Top = 5.559060000000017000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C10">,MasterData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 687.874460000000000000
          Top = 5.559060000000017000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C11">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCR10CobTitulosVencidosVend: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.419694363400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 784
    Top = 440
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Cobran'#231'a de T'#237'tulos Vencidos no Per'#237'odo de [frxUserDataSetDatas.' +
              '"DataDe"] a [frxUserDataSetDatas."DataAte"] por Vendedor')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 79.370130000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 230.551330000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 582.047620000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 665.197280000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 173.858380000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 514.016080000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 79.370130000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo Conta')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 230.551330000000000000
          Top = 7.559060000000003000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 582.047620000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 672.756340000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 173.858380000000000000
          Top = 7.559060000000003000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' DOC')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 641.740570000000000000
          Top = 5.779529999999994000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxCR11CobTitulosAbertosVend: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.421829606500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 784
    Top = 488
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Cobran'#231'a de T'#237'tulos Abertos no Per'#237'odo de [frxUserDataSetDatas."' +
              'DataDe"] a [frxUserDataSetDatas."DataAte"] por Vendedor')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 79.370130000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 230.551330000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 582.047620000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 665.197280000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 173.858380000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 514.016080000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 79.370130000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo Conta')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 230.551330000000000000
          Top = 7.559060000000003000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 582.047620000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 672.756340000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 173.858380000000000000
          Top = 7.559060000000003000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' DOC')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 641.740570000000000000
          Top = 5.779529999999994000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxF02FornecedoresSimp: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.649889131900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 432
    Top = 56
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 52.913420000000000000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fornecedores Simplificado   -   [frxUserDataSetSituacao."tipo"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 43.133890000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 287.244280000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 434.645950000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 540.472790000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 657.638220000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 44.574830000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 287.244280000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome Fantasia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Top = 7.559060000000003000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 540.472790000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contato')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 657.638220000000000000
          Top = 7.559060000000003000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Telefone Cont.')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxC11MediadeComprasP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.628796469900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 528
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 563.149970000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'M'#233'dia de Compras dos Clientes [frxUserDataSetSituacao."tipo"] no' +
              ' Per'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUserDataSetData' +
              's."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 58.252010000000000000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 461.102660000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 657.638220000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 55.913420000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 461.102660000000000000
          Top = 7.559060000000003000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 657.638220000000000000
          Top = 7.559060000000003000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #218'ltima Compra')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo6: TfrxMemoView
          Left = 461.102660000000000000
          Top = 5.559060000000017000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[AVG(<frxDBDataset2."C3">,MasterData1)]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 5.559060000000017000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'M'#201'DIA GERAL')
          ParentFont = False
        end
      end
    end
  end
  object frxP08MediaVendasReferenteP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.488886527800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 576
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'M'#233'dia de Vendas Referente ao Per'#237'odo de [frxUserDataSetNum."Num"' +
              '] dia(s) - [frxUserDataSetSituacao."tipo"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 381.732530000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 427.086890000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 650.079160000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 491.338900000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 585.827150000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 97.488250000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 427.086890000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 650.079160000000000000
          Top = 7.559060000000003000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Tempo Dura'#231#227'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo7: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559060000000003000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quant.Venda')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 585.827150000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'M'#233'dia')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000110000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 585.827150000000000000
          Top = 7.559060000000017000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[AVG(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxP10ProdPrecoNaoConciliadoPDV: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.490839838000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 128
    Top = 72
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 555.590910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Produtos [frxUserDataSetSituacao."tipo"] com Pre'#231'os N'#227'o Concilia' +
              'dos para o PDV - Custo/Balan'#231'a')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 164.078850000000000000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 514.016080000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 98.267780000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 665.197280000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 563.149970000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 161.740260000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 98.267780000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Balan'#231'a')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 665.197280000000000000
          Top = 7.559060000000003000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo7: TfrxMemoView
          Left = 563.149970000000000000
          Top = 7.559060000000003000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Custo')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000110000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP10ProdPrecoNaoConciliadoPDVSemCusto: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.492986469900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 128
    Top = 120
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 555.590910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Produtos [frxUserDataSetSituacao."tipo"] com Pre'#231'os N'#227'o Concilia' +
              'dos para o PDV - Balan'#231'a')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 164.078850000000000000
          Width = 415.748300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 585.827150000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 98.267780000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 665.197280000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 163.519790000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 585.827150000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 98.267780000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Balan'#231'a')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 665.197280000000000000
          Top = 7.559060000000003000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000110000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP10ProdPrecoNaoConciliadoPDVSBal: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.496615486110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 128
    Top = 168
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Produtos [frxUserDataSetSituacao."tipo"] com Pre'#231'os N'#227'o Concilia' +
              'dos para o PDV - Custo')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 113.165430000000000000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 514.016080000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 665.197280000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 563.149970000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 112.606370000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 665.197280000000000000
          Top = 7.559060000000003000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo7: TfrxMemoView
          Left = 563.149970000000000000
          Top = 7.559060000000003000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Custo')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000110000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP10ProdPrecoNaoConciliadoPDVSemCustoBal: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.498220115710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 128
    Top = 216
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 521.575140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Produtos [frxUserDataSetSituacao."tipo"] com Pre'#231'os N'#227'o Concilia' +
              'dos para o PDV')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 113.944960000000000000
          Width = 415.748300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 585.827150000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 665.197280000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 114.385900000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 585.827150000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 665.197280000000000000
          Top = 7.559060000000003000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Venda')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000110000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP11FormInventario: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.571107303200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 128
    Top = 264
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Formul'#225'rio para Invent'#225'rio de Produtos [frxUserDataSetSituacao."' +
              'tipo"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Line5: TfrxLineView
          Top = 15.118120000000000000
          Width = 763.465060000000000000
          ShowHint = False
          Diagonal = True
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 130.063080000000000000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 559.370440000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 661.417750000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object frxDBDataset1C1: TfrxMemoView
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 131.504020000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 559.370440000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 661.417750000000000000
          Top = 7.559060000000003000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP11FormInventarioBal: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.574508634300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 128
    Top = 312
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 49.133889999999990000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Formul'#225'rio para Invent'#225'rio de Produtos [frxUserDataSetSituacao."' +
              'tipo"] / Balan'#231'a')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Line5: TfrxLineView
          Top = 15.118120000000000000
          Width = 763.465060000000000000
          ShowHint = False
          Diagonal = True
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 190.535560000000000000
          Width = 400.630180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 612.283860000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 661.417750000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object frxDBDataset1C1: TfrxMemoView
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 109.606370000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 188.196970000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 612.283860000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 680.315400000000000000
          Top = 7.559060000000003000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 109.606370000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Balan'#231'a')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP13LevantamentoEstoqueCusto: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.578470775500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 128
    Top = 408
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 907.087200000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 340.157700000000000000
          Top = 49.133889999999990000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Levantamento de Estoque - [frxUserDataSetSituacao."tipo"] - CUST' +
              'O')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 1084.725110000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 114.944960000000000000
          Width = 393.071120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 668.976810000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 725.669760000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 827.717070000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 944.882500000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 869.291900000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 1084.725110000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 112.606370000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 668.976810000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 725.669760000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 827.717070000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Custo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo7: TfrxMemoView
          Left = 944.882500000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor do Estoque')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 340.157700000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 710.551640000000000000
          Top = 4.559060000000017000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C4">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 816.378480000000000000
          Top = 4.559060000000017000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 944.882500000000000000
          Top = 4.779529999999994000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSetName = 'IBXQuery1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxE01EntradasNFP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.659700150500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 24
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Entradas de NF no Per'#237'odo de [frxUserDataSetDatas."DataDe"] a [f' +
              'rxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 149.960730000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 75.590600000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 544.252320000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 661.417750000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 453.543600000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data Emis.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 150.401670000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 75.590600000000000000
          Top = 7.559060000000003000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.Forn.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 544.252320000000000000
          Top = 7.559060000000003000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Produtos')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 661.417750000000000000
          Top = 7.559060000000003000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Nota')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 453.543600000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' N.F.')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 653.858690000000000000
          Top = 5.559060000000017000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 536.693260000000000000
          Top = 5.559060000000017000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV01SaidaProdutosDP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.675821759300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 128
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 907.087200000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 211.653680000000000000
          Top = 49.133889999999990000
          Width = 865.512370000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Sa'#237'da de Produtos em Pedidos [frxUserDataSetSituacao."tipo"] DET' +
              'ALHADO - Per'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUserDat' +
              'aSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 1084.725110000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C4: TfrxMemoView
          Left = 672.756340000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 1043.150280000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C9"]')
          ParentFont = False
        end
        object frxDBDataset1C6: TfrxMemoView
          Left = 944.882500000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 767.244590000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object frxDBDataset2C1: TfrxMemoView
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset2C2: TfrxMemoView
          Left = 72.370130000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset2C3: TfrxMemoView
          Left = 188.078850000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset2C6: TfrxMemoView
          Left = 854.173780000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 604.724800000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 869.291900000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 1084.725110000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 188.299320000000000000
          Top = 7.559060000000003000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 672.756340000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 1043.150280000000000000
          Top = 7.559060000000003000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '#00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PDV')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 944.882500000000000000
          Top = 7.559060000000003000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 767.244590000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o Unit.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 72.590600000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 854.173780000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 604.724800000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo14: TfrxMemoView
        Left = 215.433210000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 937.323440000000000000
          Top = 5.779529999999994000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 854.173780000000000000
          Top = 5.559060000000017000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV01SaidaProdutosAgP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.675535659700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 176
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 578.268090000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 215.433210000000000000
          Top = 37.795300000000000000
          Width = 540.472790000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Sa'#237'da de Produtos em Pedidos [frxUserDataSetSituacao."tipo"] AGR' +
              'UPADO - Per'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUserData' +
              'SetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C4: TfrxMemoView
          Left = 464.882190000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C6: TfrxMemoView
          Left = 668.976810000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 525.354670000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object frxDBDataset2C2: TfrxMemoView
          Left = 0.559060000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset2C3: TfrxMemoView
          Left = 97.370130000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset2C6: TfrxMemoView
          Left = 593.386210000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 427.086890000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 536.693260000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo3: TfrxMemoView
          Left = 96.590600000000000000
          Top = 7.559060000000003000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 464.882190000000000000
          Top = 7.559060000000003000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 668.976810000000000000
          Top = 7.559060000000003000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 525.354670000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ Unit.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 0.779530000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 593.386210000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 427.086890000000000000
          Top = 7.559060000000003000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo14: TfrxMemoView
        Left = 215.433210000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 661.417750000000000000
          Top = 5.779529999999994000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 593.386210000000000000
          Top = 5.559060000000017000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxV01SaidaProdutosPdvP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40169.689138449100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 224
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 578.268090000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 559.370440000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Sa'#237'da de Produtos em Pedidos [frxUserDataSetSituacao."tipo"] no ' +
              'Terminal [frxUserDataSetNum."Num"] - Per'#237'odo de [frxUserDataSetD' +
              'atas."DataDe"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C4: TfrxMemoView
          Left = 525.354670000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object frxDBDataset1C6: TfrxMemoView
          Left = 695.433520000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 582.047620000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object frxDBDataset2C2: TfrxMemoView
          Left = 70.370130000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset2C3: TfrxMemoView
          Left = 165.401670000000000000
          Width = 321.260050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset2C6: TfrxMemoView
          Left = 646.299630000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 491.338900000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 536.693260000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo3: TfrxMemoView
          Left = 164.622140000000000000
          Top = 7.559060000000003000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 536.693260000000000000
          Top = 7.559060000000003000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 695.433520000000000000
          Top = 7.559060000000003000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 585.827150000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ Unit.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 70.590600000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 646.299630000000000000
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desc.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 491.338900000000000000
          Top = 7.559060000000003000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 687.874460000000000000
          Top = 5.779529999999994000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 634.961040000000000000
          Top = 5.559060000000017000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV02PedidosEfetuadosP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.370808368100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 272
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Produtos [frxUserDataSetSituacao."tipo"] com Pre'#231'o Alterado no P' +
              'er'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUserDataSetDatas.' +
              '"DataAte"]  [frxUserDataSetNum."Num"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Left = 287.244280000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 79.149660000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 128.504020000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 521.575140000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 680.315400000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 328.819110000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 604.724800000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Left = 287.244280000000000000
          Top = 11.338590000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 78.590600000000000000
          Top = 11.338590000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Doc.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 128.504020000000000000
          Top = 11.338590000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendedor(a)')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 328.819110000000000000
          Top = 11.338590000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 604.724800000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 521.575140000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 680.315400000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 19.118120000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 18.897650000000030000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 672.756340000000000000
          Top = 4.000000000000028000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 597.165740000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 514.016080000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV03PedidoscomFormaPg: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.380482847200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 320
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Pedidos [frxUserDataSetSituacao."tipo"] com Forma de Pagamento [' +
              'frxUserDataSetNum."TipoPG"] (RESUMIDO) Periodo de [frxUserDataSe' +
              'tDatas."DataDe"] a [frxUserDataSetDatas."DataAte"] [frxUserDataS' +
              'etNum."Num"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Left = 253.228510000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 48.913420000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 98.267780000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 480.000310000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 680.315400000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C9'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C9"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 291.023810000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 548.031850000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 604.724800000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Left = 253.228510000000000000
          Top = 11.338590000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 48.354360000000000000
          Top = 11.338590000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' Doc.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 98.267780000000000000
          Top = 11.338590000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendedor(a)')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 291.023810000000000000
          Top = 11.338590000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 551.811380000000000000
          Top = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desc.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 480.000310000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 680.315400000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Conta')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 604.724800000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 19.118120000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 18.897650000000030000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 672.756340000000000000
          Top = 4.000000000000028000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C9">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 549.031850000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 472.441250000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 598.165740000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxP03: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40168.412660405090000000
    ReportOptions.LastChange = 40168.412660405090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 536
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxP06ProdutosPorFornecedor: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.686019594900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 480
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 559.370440000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Tabela de Produtos - Fornecedor: [frxUserDataSetNum."Cod"] - [fr' +
              'xUserDataSetNum."Nome"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 721.890230000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C9'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C9"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 623.622450000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 665.197280000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 200.315090000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 563.149970000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 483.779840000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 408.189240000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 95.708720000000000000
          Top = 7.559060000000003000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.Prod.Forn.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 396.850650000000000000
          Top = 7.559060000000003000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Prim.Compra')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 721.890230000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Troca')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 623.622450000000000000
          Top = 7.559060000000003000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estq')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 665.197280000000000000
          Top = 7.559060000000003000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'M.Vend')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 200.315090000000000000
          Top = 7.559060000000003000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto - Descri'#231#227'o')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 563.149970000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #218'lt.Vend')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 483.779840000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #218'lt.Compra')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP07FornecedoresPorProduto: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40170.693588321800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 40
    Top = 528
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 559.370440000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Tabela de Fornecedores do Produto: [frxUserDataSetNum."Cod"] - [' +
              'frxUserDataSetNum."Nome"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 109.606370000000000000
          Width = 423.307360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 676.535870000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo7: TfrxMemoView
          Left = 548.031850000000000000
          Top = 7.559060000000003000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'd.Prod.Fornec.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 109.606370000000000000
          Top = 7.559060000000003000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fornecedor')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 676.535870000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #218'lt.Compra')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxP12ProdutosPorFornecedor: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40175.451753831000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 128
    Top = 360
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 559.370440000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Produtos [frxUserDataSetSituacao."tipo"] Vinculados ao Fornecedo' +
              'r: [frxUserDataSetNum."Cod"] - [frxUserDataSetNum."Nome"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 328.819110000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 536.693260000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 430.866420000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 699.213050000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 616.063390000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 468.661720000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 95.708720000000000000
          Top = 7.559060000000003000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 468.661720000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo5: TfrxMemoView
          Left = 540.472790000000000000
          Top = 7.559060000000003000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estoque')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 430.866420000000000000
          Top = 7.559060000000003000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unid')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 699.213050000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #218'lt.Vend')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 616.063390000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #218'lt.Compra')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxC08ExtratoCliente: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40175.629593460600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 344
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Extrado do Cliente [frxUserDataSetNum."Cod"] - [frxUserDataSetNu' +
              'm."Nome"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 95.047310000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 230.551330000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 313.700990000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 612.283860000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 381.732530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 457.323130000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 548.031850000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 93.708720000000000000
          Top = 7.559060000000003000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186'. Doc.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 230.551330000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'D'#233'bitos')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 313.700990000000000000
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Juros')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -3.779530000000000000
          Top = 34.015769999999990000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 612.283860000000000000
          Top = 7.559060000000003000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Operador')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 381.732530000000000000
          Top = 7.559060000000003000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 457.323130000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cr'#233'ditos')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 548.031850000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo PG')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxC09ProdutosPorCliente: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40175.698092256900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 392
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 559.370440000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Produtos do Cliente [frxUserDataSetNum."Cod"] - [frxUserDataSetN' +
              'um."Nome"] no Per'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUs' +
              'erDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 96.047310000000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 381.732530000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 427.086890000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 676.535870000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 510.236550000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 593.386210000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 97.488250000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Top = 7.559060000000003000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quant')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 427.086890000000000000
          Top = 7.559060000000003000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Menor Valor')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 676.535870000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #218'lt.Compra')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 510.236550000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Maior Valor')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 593.386210000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pre'#231'o M'#233'd.')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxC10ClientesPorVendedorDet: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40176.473747615710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 440
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 907.087200000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 340.157700000000000000
          Top = 41.574830000000000000
          Width = 740.787880000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Clientes [frxUserDataSetSituacao."tipo"] do Vendedor [frxUserDat' +
              'aSetNum."Cod"] - [frxUserDataSetNum."Nome"]  ([frxUserDataSetNum' +
              '."Detalhe"])')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 1084.725110000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 84.708720000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 381.732530000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 517.795610000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 789.921770000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 680.315400000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 990.236860000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 869.291900000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 1084.725110000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 82.370130000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome/Raz'#227'o Social')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contato')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 517.795610000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 789.921770000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 680.315400000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 990.236860000000000000
          Top = 7.559060000000003000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 340.157700000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxC10ClientesPorVendedorAgr: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40176.478446713000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 480
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 559.370440000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Clientes [frxUserDataSetSituacao."tipo"] do Vendedor [frxUserDat' +
              'aSetNum."Cod"] - [frxUserDataSetNum."Nome"]  ([frxUserDataSetNum' +
              '."Detalhe"])')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 107.385900000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 457.323130000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 653.858690000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 108.826840000000000000
          Top = 7.559060000000003000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 457.323130000000000000
          Top = 7.559060000000003000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Apelido/Nome Fantasia')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 653.858690000000000000
          Top = 7.559060000000003000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxC12ClientesPorProduto: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40176.577749919000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 240
    Top = 576
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 559.370440000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Clientes [frxUserDataSetSituacao."tipo"] do Produto [frxUserData' +
              'SetNum."Cod"] - [frxUserDataSetNum."Nome"] no Per'#237'odo de [frxUse' +
              'rDataSetDatas."DataDe"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.905999999999900000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 99.826840000000000000
          Width = 445.984540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 555.590910000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 657.638220000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.905999999999900000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.905999999999900000
        object Memo2: TfrxMemoView
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 97.488250000000000000
          Top = 3.779529999999994000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 555.590910000000000000
          Top = 3.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 657.638220000000000000
          Top = 3.779529999999994000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            #218'ltima Compra')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.905999999999900000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo6: TfrxMemoView
          Left = 555.590910000000000000
          Top = 5.559060000000017000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C3">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxC13ClientesPorPraca: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40176.667067870400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 344
    Top = 24
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 907.087200000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 340.157700000000000000
          Top = 41.574830000000000000
          Width = 740.787880000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Clientes [frxUserDataSetSituacao."tipo"] da Pra'#231'a [frxUserDataSe' +
              'tNum."Cod"] - [frxUserDataSetNum."Nome"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 1084.725110000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 84.708720000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 381.732530000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 517.795610000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C5: TfrxMemoView
          Left = 789.921770000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 680.315400000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3f'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 990.236860000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 869.291900000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 1084.725110000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 82.370130000000000000
          Top = 7.559060000000003000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente/Raz'#227'o Social')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 381.732530000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contato')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 517.795610000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 789.921770000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 680.315400000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 990.236860000000000000
          Top = 7.559060000000003000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 340.157700000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677179999999990000
          Width = 1084.725110000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
      end
    end
  end
  object frxE02TransferenciaEntP: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40177.385437094900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 72
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Transfer'#234'ncias (Entrada) no Per'#237'odo de [frxUserDataSetDatas."Dat' +
              'aDe"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 592.165740000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 120.944960000000000000
          Width = 461.102660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 672.756340000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 336.378170000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Top = 7.559060000000003000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 596.386210000000000000
          Top = 7.559060000000003000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 120.944960000000000000
          Top = 7.559060000000003000
          Width = 461.102660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o/Produto')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo6: TfrxMemoView
          Left = 672.756340000000000000
          Top = 7.559060000000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 22.677180000000280000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 653.858690000000000000
          Top = 5.559060000000017000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C4">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV04PedidosComLucro: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40182.627483541700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 368
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Pedidos [frxUserDataSetSituacao."tipo"] com Lucro no Per'#237'odo de ' +
              '[frxUserDataSetDatas."DataDe"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Left = 207.874150000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 136.063080000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 619.842920000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 83.149660000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 684.094930000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 483.779840000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 548.031850000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Left = 207.874150000000000000
          Top = 11.338590000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186'.Doc.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 136.063080000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd.Cliente')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 483.779840000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 548.031850000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Despesas')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 619.842920000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ Custo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 83.149660000000000000
          Top = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 684.094930000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Margem R$')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 19.118120000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 18.897650000000030000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 684.094930000000000000
          Top = 4.000000000000028000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 612.283860000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 548.031850000000000000
          Top = 3.779529999999994000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 457.323130000000000000
          Top = 3.779529999999994000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV05PedidosComLucroDet: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40182.632073020800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 416
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Pedidos [frxUserDataSetSituacao."tipo"] com Lucro (Detalhado) no' +
              ' Per'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUserDataSetData' +
              's."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C1: TfrxMemoView
          Left = 396.850650000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '#00000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object frxDBDataset1C2: TfrxMemoView
          Left = 48.913420000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 143.622140000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 487.559370000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 616.063390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C8'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 430.866420000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 551.811380000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 691.653990000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C9"] %')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Left = 396.850650000000000000
          Top = 11.338590000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Und.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 48.354360000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd. Prod.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 143.622140000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 430.866420000000000000
          Top = 11.338590000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 551.811380000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ Venda')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 487.559370000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ Custo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 616.063390000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Margem R$')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 691.653990000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Margem %')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 19.118120000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 18.897650000000030000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 616.063390000000000000
          Top = 4.000000000000028000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 548.031850000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 476.220780000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV05PedidosComLucroAgr: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40182.640372893500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 464
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Pedidos [frxUserDataSetSituacao."tipo"] com Lucro (Detalhado/Res' +
              'umido) no Per'#237'odo de [frxUserDataSetDatas."DataDe"] a [frxUserDa' +
              'taSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C2: TfrxMemoView
          Left = 48.913420000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 143.622140000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 510.236550000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 445.984540000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 597.165740000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 691.653990000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C9"] %')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          Left = 48.354360000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd. Prod.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 143.622140000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 445.984540000000000000
          Top = 11.338590000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 612.283860000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ Venda')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 529.134200000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'R$ Custo')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 11.338590000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 691.653990000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Margem %')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 19.118120000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 18.897650000000030000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo17: TfrxMemoView
          Left = 597.165740000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV06QuebraNoPeriodo: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40183.380073055600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 512
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Quebra de Produtos [frxUserDataSetSituacao."tipo"] no Per'#237'odo de' +
              ' [frxUserDataSetDatas."DataDe"] a [frxUserDataSetDatas."DataAte"' +
              ']')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C2: TfrxMemoView
          Left = -0.220470000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 102.047310000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 480.000310000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 616.063390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 411.968770000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 551.811380000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 691.653990000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C7'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          Left = -0.779530000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'd. Prod.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 102.047310000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 411.968770000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quant.')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 551.811380000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quebra')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 480.000310000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Peso Sa'#237'da')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 616.063390000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quebra (%)')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 691.653990000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Diferen'#231'a')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 19.118120000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 18.897650000000030000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 684.094930000000000000
          Top = 4.000000000000028000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 548.031850000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV07PedidosComTipoPgDet: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40185.618737881900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 520
    Top = 560
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Pedidos [frxUserDataSetSituacao."tipo"] no Per'#237'odo de [frxUserDa' +
              'taSetDatas."DataDe"] a [frxUserDataSetDatas."DataAte"] com Tipo ' +
              'de Pagamento ([frxUserDataSetNum."Detalhe"])')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C2: TfrxMemoView
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 86.929190000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 253.228510000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 430.866420000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 166.299320000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 343.937230000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 517.795610000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 687.874460000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C9"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 600.945270000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 86.929190000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186'.Doc.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 170.078850000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 347.716760000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cheque')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 257.008040000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Dinheiro')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 434.645950000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cart'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 521.575140000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Ticket')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 604.724800000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Credi'#225'rio')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 691.653990000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cred.Cli.')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 19.118120000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 18.897650000000030000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 684.094930000000000000
          Top = 4.000000000000028000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C9">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 597.165740000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 514.016080000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 427.086890000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 340.157700000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 253.228510000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C4">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 166.299320000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C3">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV08VendasFatPeriodo: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40184.431915138900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 592
    Top = 56
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Vendas Faturadas no Per'#237'odo de [frxUserDataSetDatas."DataDe"] a ' +
              '[frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C3: TfrxMemoView
          Left = 18.897650000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 419.527830000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 653.858690000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 302.362400000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 544.252320000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo4: TfrxMemoView
          Left = 18.897650000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Grupo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 302.362400000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 544.252320000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Lucro R$')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 419.527830000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Venda')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 653.858690000000000000
          Top = 11.338590000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Margem Lucro')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 19.118120000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 18.897650000000030000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo23: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C4">,MasterData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 419.527830000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C3">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C2">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV09TransferenciasNoPeriodo: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40184.482824791710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 600
    Top = 112
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 45.354360000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Transfer'#234'ncias (Sa'#237'das) no Per'#237'odo de [frxUserDataSetDatas."Data' +
              'De"] a [frxUserDataSetDatas."DataAte"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C3: TfrxMemoView
          Left = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C1'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 196.535560000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 661.417750000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C6'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 98.267780000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 555.590910000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 468.661720000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.3n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 98.267780000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Balan'#231'a')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 555.590910000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 196.535560000000000000
          Top = 11.338590000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 661.417750000000000000
          Top = 11.338590000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 468.661720000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 19.118120000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 18.897650000000030000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo23: TfrxMemoView
          Left = 657.638220000000000000
          Top = 3.779529999999994000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxV07PedidosComTipoPgAgr: TfrxReport
    Version = '4.9.72'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.433203657400000000
    ReportOptions.LastChange = 40185.609160694400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.'
      ''
      ''
      ''
      '            ')
    Left = 592
    Top = 8
    Datasets = <
      item
        DataSet = FrmPrincipal.frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetDatas
        DataSetName = 'frxUserDataSetDatas'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetNum
        DataSetName = 'frxUserDataSetNum'
      end
      item
        DataSet = FrmPrincipal.frxUserDataSetSituacao
        DataSetName = 'frxUserDataSetSituacao'
      end>
    Variables = <
      item
        Name = 'VAR'
        Value = 'TESTE'
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 79.370130000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Gradient1: TfrxGradientView
          Left = 177.637910000000000000
          Width = 582.047620000000000000
          Height = 79.370130000000000000
          ShowHint = False
          EndColor = clMoneyGreen
          Style = gsHorizontal
          Frame.Color = clTeal
          Color = 14741216
        end
        object Memo1: TfrxMemoView
          Left = 196.535560000000000000
          Top = 41.574830000000000000
          Width = 555.590910000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'Pedidos [frxUserDataSetSituacao."tipo"] no Per'#237'odo de [frxUserDa' +
              'taSetDatas."DataDe"] a [frxUserDataSetDatas."DataAte"] com Tipo ' +
              'de Pagamento ([frxUserDataSetNum."Detalhe"])')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 192.756030000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Center = True
          DataField = 'LOGORELATORIO'
          DataSet = FrmPrincipal.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 15.118120000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = FrmPrincipal.frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset1C2: TfrxMemoView
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd/mm/yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset2."C1"]')
          ParentFont = False
        end
        object frxDBDataset1C3: TfrxMemoView
          Left = 343.937230000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C5'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C5"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 177.637910000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C3'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C3"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 430.866420000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C6"]')
          ParentFont = False
        end
        object frxDBDataset1C4: TfrxMemoView
          Left = 94.488250000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C2'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C2"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 260.787570000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'C4'
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C4"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 517.795610000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C7"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 687.874460000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C9"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 600.945270000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."C8"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 540.472790000000000000
          Top = 7.559059999999988000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559059999999988000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Focus - Sistema de Automa'#231#227'o Comercial - Emitido em')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 3.779530000000022000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 275.905690000000000000
          Top = 7.559059999999988000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd '#39'de'#39' mmmm '#39'de'#39' yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 120.944960000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 343.937230000000000000
          Top = 11.338590000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cheque Pr'#233)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 94.488250000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 26.456710000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Memo13: TfrxMemoView
          Left = 260.787570000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cheque')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 177.637910000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Dinheiro')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 434.645950000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cart'#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 521.575140000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Ticket')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 604.724800000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Credi'#225'rio')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 691.653990000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 24064
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cred.Cli.')
          ParentFont = False
        end
      end
      object Memo14: TfrxMemoView
        Left = 196.535560000000000000
        Top = 15.118120000000000000
        Width = 438.425480000000000000
        Height = 30.236240000000000000
        ShowHint = False
        DataSetName = 'DBDatEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '[frxDBDataset1."NM_EMPRESA"]')
        ParentFont = False
      end
      object Footer1: TfrxFooter
        Height = 19.118120000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999994000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object Line4: TfrxLineView
          Top = 18.897650000000030000
          Width = 759.685530000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 1.500000000000000000
        end
        object frxDBDataset2C8: TfrxMemoView
          Left = 684.094930000000000000
          Top = 4.000000000000028000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C9">,MasterData1)]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 597.165740000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C8">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 514.016080000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C7">,MasterData1)]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 427.086890000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C6">,MasterData1)]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 253.228510000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C4">,MasterData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 173.858380000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C3">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 90.708720000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C2">,MasterData1)]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrmPrincipal.frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."C5">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end
