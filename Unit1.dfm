object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 424
  ClientWidth = 832
  Color = clRed
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 58
    Top = 26
    Width = 53
    Height = 19
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 13
    Top = 51
    Width = 98
    Height = 19
    Caption = 'Sobrenome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 58
    Top = 81
    Width = 53
    Height = 19
    Caption = 'Idade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 332
    Top = 26
    Width = 62
    Height = 19
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtNome: TEdit
    Left = 117
    Top = 21
    Width = 209
    Height = 24
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object txtSobrenome: TEdit
    Left = 117
    Top = 51
    Width = 378
    Height = 24
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object txtIdade: TEdit
    Left = 117
    Top = 81
    Width = 74
    Height = 24
    TabOrder = 2
  end
  object Button1: TButton
    Left = 535
    Top = 19
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 632
    Top = 19
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 632
    Top = 50
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 535
    Top = 50
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 6
    OnClick = Button4Click
  end
  object txtCodigo: TEdit
    Left = 400
    Top = 21
    Width = 95
    Height = 24
    Enabled = False
    TabOrder = 7
  end
  object btnRelatorio: TButton
    Left = 632
    Top = 81
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 8
    OnClick = btnRelatorioClick
  end
  object btnPesquisar: TBitBtn
    Left = 728
    Top = 19
    Width = 83
    Height = 86
    Caption = 'Pesquisar'
    TabOrder = 9
    OnClick = btnPesquisarClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 128
    Width = 833
    Height = 297
    Color = clHighlight
    DataSource = DataSource1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
  end
  object SQL: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'SchemaOverride=sa.dbo'
      'DriverName=MSSQL'
      'HostName=SLIMBOOK'
      'DataBase=Agenda'
      'User_Name=sa'
      'Password=sql1984'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'OS Authentication=False'
      'Prepare SQL=False'
      'ConnectTimeout=60'
      'Mars_Connection=False')
    Connected = True
    Left = 216
    Top = 80
  end
  object Query: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *from TBClientes')
    SQLConnection = SQL
    Left = 264
    Top = 80
  end
  object Provedor: TDataSetProvider
    DataSet = Query
    Left = 312
    Top = 80
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Provedor'
    Left = 384
    Top = 80
    object ClientDataSet1IdCLiente: TIntegerField
      FieldName = 'IdCLiente'
      Required = True
    end
    object ClientDataSet1Nome: TWideStringField
      FieldName = 'Nome'
      Required = True
      Size = 40
    end
    object ClientDataSet1Sobrenome: TWideStringField
      FieldName = 'Sobrenome'
      Required = True
      Size = 40
    end
    object ClientDataSet1Idade: TIntegerField
      FieldName = 'Idade'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 448
    Top = 80
  end
  object Query2: TSQLQuery
    Active = True
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select *from TBClientes'
      '')
    SQLConnection = SQL
    Left = 496
    Top = 80
  end
end
