object FrmAprovPag: TFrmAprovPag
  Left = 170
  Top = 187
  Width = 783
  Height = 560
  Caption = 'FrmAprovPag'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 648
    Top = 57
    Width = 127
    Height = 469
    Align = alRight
    TabOrder = 0
    object SpeedButton6: TSpeedButton
      Left = 16
      Top = 8
      Width = 89
      Height = 22
      Caption = 'Aprovar'
      OnClick = SpeedButton6Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 57
    Align = alTop
    TabOrder = 1
    object ActResultEdit1: TActResultEdit
      Left = 222
      Top = 19
      Width = 121
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = 16311512
      ColorOnNotFocus = clWindow
      EditLabel.Width = 84
      EditLabel.Height = 13
      EditLabel.Caption = 'CODIGO TITULO'
      TabOrder = 0
      Value = 0
      Glyph.Data = {
        46030000424D460300000000000036000000280000000E0000000E0000000100
        2000000000001003000000000000000000000000000000000000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000000000000000000000808000008080000000000000000000008080
        0000808000000000000000000000808000008080000080800000808000000000
        0000000000008080000080800000000000000000000080800000808000000000
        0000000000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        0000808000008080000080800000808000008080000080800000808000008080
        00008080000080800000}
      NumGlyphs = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 57
    Width = 648
    Height = 469
    Align = alClient
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 646
      Height = 181
      Align = alTop
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 644
        Height = 179
        Align = alClient
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 182
      Width = 646
      Height = 286
      Align = alClient
      TabOrder = 1
      object Label1: TLabel
        Left = 367
        Top = 40
        Width = 82
        Height = 16
        Caption = 'DC NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 366
        Top = 73
        Width = 59
        Height = 16
        Caption = 'DCSERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 365
        Top = 108
        Width = 69
        Height = 16
        Caption = 'DCORDEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 365
        Top = 145
        Width = 50
        Height = 16
        Caption = 'DCTIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 36
        Top = 40
        Width = 66
        Height = 16
        Caption = 'EMPRESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 36
        Top = 73
        Width = 37
        Height = 16
        Caption = 'FILIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 508
        Top = 40
        Width = 62
        Height = 16
        Caption = 'PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 508
        Top = 73
        Width = 45
        Height = 16
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 508
        Top = 108
        Width = 76
        Height = 16
        Caption = 'DESCONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 508
        Top = 145
        Width = 129
        Height = 16
        Caption = 'DATA VENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 36
        Top = 108
        Width = 95
        Height = 16
        Caption = 'FORNECEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 36
        Top = 145
        Width = 82
        Height = 16
        Caption = 'TIPO TITULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 36
        Top = 184
        Width = 133
        Height = 16
        Caption = 'DATA LAN'#199'AMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 40
        Top = 58
        Width = 3
        Height = 13
      end
      object Label15: TLabel
        Left = 40
        Top = 91
        Width = 3
        Height = 13
      end
      object Label16: TLabel
        Left = 40
        Top = 126
        Width = 3
        Height = 13
      end
      object Label17: TLabel
        Left = 40
        Top = 164
        Width = 3
        Height = 13
      end
      object Label18: TLabel
        Left = 40
        Top = 203
        Width = 3
        Height = 13
      end
      object Label19: TLabel
        Left = 370
        Top = 58
        Width = 3
        Height = 13
      end
      object Label20: TLabel
        Left = 370
        Top = 91
        Width = 3
        Height = 13
      end
      object Label21: TLabel
        Left = 370
        Top = 126
        Width = 3
        Height = 13
      end
      object Label22: TLabel
        Left = 370
        Top = 164
        Width = 3
        Height = 13
      end
      object Label23: TLabel
        Left = 514
        Top = 58
        Width = 3
        Height = 13
      end
      object Label24: TLabel
        Left = 514
        Top = 91
        Width = 3
        Height = 13
      end
      object Label25: TLabel
        Left = 514
        Top = 126
        Width = 3
        Height = 13
      end
      object Label26: TLabel
        Left = 514
        Top = 164
        Width = 3
        Height = 13
      end
    end
  end
  object IBQuery1: TIBQuery
    Database = DataModule1.DBPrincipal
    Transaction = DataModule1.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *FROM TITULOSPAGAR2  WHERE STATUS = '#39'D'#39)
    Left = 403
    Top = 21
    object IBQuery1DCNUMERO: TIntegerField
      FieldName = 'DCNUMERO'
      Origin = 'TITULOSPAGAR2.DCNUMERO'
    end
    object IBQuery1DCSERIE: TIBStringField
      FieldName = 'DCSERIE'
      Origin = 'TITULOSPAGAR2.DCSERIE'
      Size = 3
    end
    object IBQuery1DCORDEM: TIBStringField
      FieldName = 'DCORDEM'
      Origin = 'TITULOSPAGAR2.DCORDEM'
      Size = 2
    end
    object IBQuery1DCTIPO: TIBStringField
      FieldName = 'DCTIPO'
      Origin = 'TITULOSPAGAR2.DCTIPO'
      Size = 6
    end
    object IBQuery1PARCELA: TFloatField
      FieldName = 'PARCELA'
      Origin = 'TITULOSPAGAR2.PARCELA'
    end
    object IBQuery1DTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
      Origin = 'TITULOSPAGAR2.DTVENCIMENTO'
    end
    object IBQuery1DTLANCAMENTO: TDateField
      FieldName = 'DTLANCAMENTO'
      Origin = 'TITULOSPAGAR2.DTLANCAMENTO'
    end
    object IBQuery1STATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'TITULOSPAGAR2.STATUS'
      Size = 1
    end
    object IBQuery1TPSITUACAO: TIBStringField
      FieldName = 'TPSITUACAO'
      Origin = 'TITULOSPAGAR2.TPSITUACAO'
      Size = 1
    end
    object IBQuery1VLPARCELA: TFloatField
      FieldName = 'VLPARCELA'
      Origin = 'TITULOSPAGAR2.VLPARCELA'
    end
    object IBQuery1FORNECEDOR: TFloatField
      FieldName = 'FORNECEDOR'
      Origin = 'TITULOSPAGAR2.FORNECEDOR'
    end
    object IBQuery1OBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'TITULOSPAGAR2.OBS'
      Size = 255
    end
    object IBQuery1DATAPAGAMENTO: TDateField
      FieldName = 'DATAPAGAMENTO'
      Origin = 'TITULOSPAGAR2.DATAPAGAMENTO'
    end
    object IBQuery1TIPO_TITULO: TIntegerField
      FieldName = 'TIPO_TITULO'
      Origin = 'TITULOSPAGAR2.TIPO_TITULO'
    end
    object IBQuery1COD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Origin = 'TITULOSPAGAR2.COD_EMPRESA'
    end
    object IBQuery1COD_FILIAL: TIntegerField
      FieldName = 'COD_FILIAL'
      Origin = 'TITULOSPAGAR2.COD_FILIAL'
    end
    object IBQuery1COD_CONTA: TIntegerField
      FieldName = 'COD_CONTA'
      Origin = 'TITULOSPAGAR2.COD_CONTA'
    end
    object IBQuery1COD_TITULO: TIntegerField
      FieldName = 'COD_TITULO'
      Origin = 'TITULOSPAGAR2.COD_TITULO'
    end
    object IBQuery1VALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
      Origin = 'TITULOSPAGAR2.VALORPAGO'
    end
    object IBQuery1OPER_TITULO: TIBStringField
      FieldName = 'OPER_TITULO'
      Origin = 'TITULOSPAGAR2.OPER_TITULO'
      Size = 1
    end
    object IBQuery1ID_MOV_DIARIO: TIntegerField
      FieldName = 'ID_MOV_DIARIO'
      Origin = 'TITULOSPAGAR2.ID_MOV_DIARIO'
    end
    object ibstrngfldIBQuery1NOCHEQUE: TIBStringField
      FieldName = 'NOCHEQUE'
      Origin = 'TITULOSPAGAR2.NOCHEQUE'
      Size = 15
    end
    object fltfldIBQuery1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'TITULOSPAGAR2.DESCONTO'
    end
    object fltfldIBQuery1JUROS: TFloatField
      FieldName = 'JUROS'
      Origin = 'TITULOSPAGAR2.JUROS'
    end
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 438
    Top = 24
  end
  object QryEmp: TIBQuery
    Database = DataModule1.DBPrincipal
    Transaction = DataModule1.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *from empresa where cod_empresa = :cod_empresa')
    Left = 491
    Top = 18
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_empresa'
        ParamType = ptUnknown
      end>
  end
  object QryFil: TIBQuery
    Database = DataModule1.DBPrincipal
    Transaction = DataModule1.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from FILIAL where cdfilial = :cdfilial')
    Left = 526
    Top = 18
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cdfilial'
        ParamType = ptUnknown
      end>
  end
  object QryFor: TIBQuery
    Database = DataModule1.DBPrincipal
    Transaction = DataModule1.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  * from CLIENTES_FORNECEDOR where COD_PART = :cod_part')
    Left = 562
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cod_part'
        ParamType = ptUnknown
      end>
  end
  object QryTipo: TIBQuery
    Database = DataModule1.DBPrincipal
    Transaction = DataModule1.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select *   from TIPO_TITULO where COD_TIPO_TITULO =:COD_TIPO_TIT' +
        'ULO')
    Left = 600
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_TIPO_TITULO'
        ParamType = ptUnknown
      end>
  end
  object IBQuery2: TIBQuery
    Database = DataModule1.DBPrincipal
    Transaction = DataModule1.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT *FROM TITULOSPAGAR2  WHERE STATUS = '#39'D'#39)
    Left = 368
    Top = 22
  end
end