object ConsTipoTitulo: TConsTipoTitulo
  Left = 302
  Top = 258
  Width = 549
  Height = 236
  Caption = 'ConsTipoTitulo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 202
    Align = alClient
    TabOrder = 0
    object dbgrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 539
      Height = 200
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrid1DrawColumnCell
      OnDblClick = dbgrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_TIPO_TITULO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DSTIPOTITULO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TPTITULO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIXA_AUTOMATICA'
          Visible = True
        end>
    end
  end
  object IBQuery1: TIBQuery
    Database = DataModule1.DBPrincipal
    Transaction = DataModule1.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *from TIPO_TITULO')
    Left = 91
    Top = 131
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 136
    Top = 128
  end
end
