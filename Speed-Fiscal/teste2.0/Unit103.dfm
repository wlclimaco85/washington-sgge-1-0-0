object Form103: TForm103
  Left = 204
  Top = 174
  Width = 783
  Height = 540
  Caption = 'Form103'
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
    Width = 775
    Height = 49
    Align = alTop
    Color = clBtnShadow
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 55
      Height = 13
      Caption = 'PERIODO :'
    end
    object Label2: TLabel
      Left = 87
      Top = 5
      Width = 69
      Height = 13
      Caption = 'DATA INICIAL'
    end
    object Label3: TLabel
      Left = 192
      Top = 5
      Width = 62
      Height = 13
      Caption = 'DATA FINAL'
    end
    object SpeedButton1: TSpeedButton
      Left = 280
      Top = 16
      Width = 73
      Height = 22
      Caption = '&GERAR'
      OnClick = SpeedButton1Click
    end
    object MaskEdit1: TMaskEdit
      Left = 84
      Top = 20
      Width = 77
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object MaskEdit2: TMaskEdit
      Left = 190
      Top = 19
      Width = 75
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 775
    Height = 457
    Align = alClient
    TabOrder = 1
    object DBChart1: TDBChart
      Left = 1
      Top = 1
      Width = 773
      Height = 455
      BackWall.Brush.Color = clWhite
      Title.Text.Strings = (
        'TDBChart')
      View3D = False
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      Align = alClient
      TabOrder = 0
      object Series1: TBarSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        DataSource = Query1
        SeriesColor = clRed
        XLabelsSource = 'CODPRO'
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        XValues.ValueSource = 'CODPRO'
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
        YValues.ValueSource = 'SUM'
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 648
    Top = 8
  end
  object Query1: TIBQuery
    Database = DataModule1.DBPrincipal
    Transaction = DataModule1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT CODPRO ,SUM(QUANTIDADE) FROM nfsaidasitens   where codpro' +
        ' > 0'
      ' group by CODPRO')
    Left = 614
    Top = 9
  end
end
