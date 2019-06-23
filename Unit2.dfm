object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 424
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FxRelatorios: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43638.678627997700000000
    ReportOptions.LastChange = 43638.742801504630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 96
    Datasets = <
      item
        DataSet = FrxDados
        DataSetName = 'FrxDados'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 185.196970000000000000
          Top = 86.929190000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[FrxDados."Nome"]')
        end
        object Memo2: TfrxMemoView
          Left = 317.480520000000000000
          Top = 86.929190000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[FrxDados."Sobrenome"]')
        end
        object Memo3: TfrxMemoView
          Left = 86.929190000000000000
          Top = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[FrxDados."IdCLiente"]')
        end
        object Memo4: TfrxMemoView
          Left = 487.559370000000000000
          Top = 86.929190000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[FrxDados."Idade"]')
        end
        object Memo5: TfrxMemoView
          Left = 211.653680000000000000
          Top = 3.779530000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIOS DE CLIENTES')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 480.000310000000000000
          Top = 37.795300000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'IDADE:')
        end
        object Memo8: TfrxMemoView
          Left = 75.590600000000000000
          Top = 37.795300000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C'#211'DIGO:')
        end
        object Memo9: TfrxMemoView
          Left = 188.976500000000000000
          Top = 37.795300000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'NOME:')
        end
        object Memo10: TfrxMemoView
          Left = 317.480520000000000000
          Top = 37.795300000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'SOBRENOME:')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 272.126160000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLIENTE ATIVO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = FrxDados
        DataSetName = 'FrxDados'
        RowCount = 0
      end
    end
  end
  object FrxDados: TfrxDBDataset
    UserName = 'FrxDados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IdCLiente=IdCLiente'
      'Nome=Nome'
      'Sobrenome=Sobrenome'
      'Idade=Idade')
    DataSet = Form1.ClientDataSet1
    BCDToCurrency = False
    Left = 224
    Top = 96
  end
end
