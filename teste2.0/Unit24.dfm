object CONSPRINTERS: TCONSPRINTERS
  Left = 215
  Top = 157
  Width = 696
  Height = 480
  Caption = 'CONSPRINTERS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 88
    Width = 688
    Height = 358
    Align = alBottom
    DataSource = DataModule2.dsPRINTERS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
