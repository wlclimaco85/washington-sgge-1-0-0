inherited ModeloForm7: TModeloForm7
  Left = 227
  Top = 168
  Height = 662
  Caption = 'ModeloForm7'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Height = 571
    inherited SpeedButton1: TSpeedButton
      OnClick = SpeedButton1Click
    end
    inherited SpeedButton2: TSpeedButton
      OnClick = SpeedButton2Click
    end
    inherited SpeedButton3: TSpeedButton
      OnClick = SpeedButton3Click
    end
    inherited SpeedButton4: TSpeedButton
      OnClick = SpeedButton4Click
    end
    inherited SpeedButton5: TSpeedButton
      OnClick = SpeedButton5Click
    end
    inherited SpeedButton6: TSpeedButton
      OnClick = SpeedButton6Click
    end
    inherited SpeedButton7: TSpeedButton
      OnClick = SpeedButton7Click
    end
    inherited SpeedButton8: TSpeedButton
      OnClick = SpeedButton8Click
    end
    inherited SpeedButton9: TSpeedButton
      Top = 199
      OnClick = SpeedButton9Click
    end
  end
  inherited Panel3: TPanel
    Height = 571
    object Label1: TLabel
      Left = 10
      Top = 5
      Width = 90
      Height = 13
      Caption = 'CDFORNECEDOR'
    end
    object Label4: TLabel
      Left = 11
      Top = 52
      Width = 37
      Height = 13
      Caption = 'RAZAO'
    end
    object Label6: TLabel
      Left = 10
      Top = 97
      Width = 31
      Height = 13
      Caption = 'SIGLA'
    end
    object Label7: TLabel
      Left = 9
      Top = 138
      Width = 52
      Height = 13
      Caption = 'FANTASIA'
    end
    object Label8: TLabel
      Left = 12
      Top = 184
      Width = 22
      Height = 13
      Caption = 'CGC'
    end
    object Label9: TLabel
      Left = 10
      Top = 229
      Width = 26
      Height = 13
      Caption = 'INCR'
    end
    object Label10: TLabel
      Left = 10
      Top = 272
      Width = 60
      Height = 13
      Caption = 'ENDERECO'
    end
    object Label11: TLabel
      Left = 10
      Top = 315
      Width = 41
      Height = 13
      Caption = 'BAIRRO'
    end
    object Label12: TLabel
      Left = 13
      Top = 358
      Width = 56
      Height = 13
      Caption = 'MUNICIPIO'
    end
    object Label13: TLabel
      Left = 16
      Top = 405
      Width = 14
      Height = 13
      Caption = 'UF'
    end
    object Label14: TLabel
      Left = 11
      Top = 448
      Width = 21
      Height = 13
      Caption = 'CEP'
    end
    object Label15: TLabel
      Left = 13
      Top = 497
      Width = 29
      Height = 13
      Caption = 'FONE'
    end
    object Label16: TLabel
      Left = 429
      Top = 12
      Width = 49
      Height = 13
      Caption = 'FONEFAX'
    end
    object Label17: TLabel
      Left = 429
      Top = 63
      Width = 49
      Height = 13
      Caption = 'FONECEL'
    end
    object Label18: TLabel
      Left = 430
      Top = 113
      Width = 52
      Height = 13
      Caption = 'CONTATO'
    end
    object Label19: TLabel
      Left = 430
      Top = 167
      Width = 32
      Height = 13
      Caption = 'EMAIL'
    end
    object Label20: TLabel
      Left = 430
      Top = 216
      Width = 24
      Height = 13
      Caption = 'SITE'
    end
    object Label21: TLabel
      Left = 429
      Top = 260
      Width = 22
      Height = 13
      Caption = 'OBS'
    end
    object TXTCDFORNECEDOR: TActNumberEdit
      Left = 9
      Top = 20
      Width = 121
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 111
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTCDFORNECEDOR'
      TabOrder = 0
      Value = 0
    end
    object TXTRAZAO: TActEdit
      Left = 11
      Top = 71
      Width = 296
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTRAZAO'
      TabOrder = 1
    end
    object TXTSIGLA: TActEdit
      Left = 11
      Top = 113
      Width = 50
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTSIGLA'
      TabOrder = 2
    end
    object TXTFANTASIA: TActEdit
      Left = 8
      Top = 152
      Width = 302
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 73
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTFANTASIA'
      TabOrder = 3
    end
    object TXTCGC: TActMaskEdit
      Left = 14
      Top = 202
      Width = 168
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 43
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTCGC'
      TabOrder = 4
    end
    object TXTINCR: TActMaskEdit
      Left = 11
      Top = 245
      Width = 168
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 47
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTINCR'
      TabOrder = 5
    end
    object TXTENDERECO: TActEdit
      Left = 12
      Top = 286
      Width = 302
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 81
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTENDERECO'
      TabOrder = 6
    end
    object TXTBAIRRO: TActEdit
      Left = 12
      Top = 329
      Width = 136
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 62
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTBAIRRO'
      TabOrder = 7
    end
    object TXTMUNICIPIO: TActEdit
      Left = 15
      Top = 373
      Width = 136
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 77
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTMUNICIPIO'
      TabOrder = 8
    end
    object TXTUF: TActEdit
      Left = 11
      Top = 420
      Width = 40
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 35
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTUF'
      TabOrder = 9
    end
    object TXTCEP: TActMaskEdit
      Left = 12
      Top = 466
      Width = 121
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = 16311512
      ColorOnNotFocus = clWindow
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTCEP'
      TabOrder = 10
    end
    object TXTFONE: TActMaskEdit
      Left = 13
      Top = 516
      Width = 143
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = 16311512
      ColorOnNotFocus = clWindow
      EditLabel.Width = 50
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTFONE'
      TabOrder = 11
    end
    object TXTFAX: TActMaskEdit
      Left = 430
      Top = 29
      Width = 121
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 41
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTFAX'
      TabOrder = 12
    end
    object TXTFONECEL: TActMaskEdit
      Left = 428
      Top = 79
      Width = 123
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 70
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTFONECEL'
      TabOrder = 13
    end
    object TXTCONTATO: TActEdit
      Left = 430
      Top = 132
      Width = 206
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 73
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTCONTATO'
      TabOrder = 14
    end
    object TXTEMAIL: TActEdit
      Left = 428
      Top = 184
      Width = 206
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 53
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTEMAIL'
      TabOrder = 15
    end
    object TXTSITE: TActEdit
      Left = 430
      Top = 230
      Width = 206
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTSITE'
      TabOrder = 16
    end
    object TXTOBS: TActEdit
      Left = 427
      Top = 276
      Width = 206
      Height = 21
      Alignment = taLeftJustify
      ColorOnFocus = clRed
      ColorOnNotFocus = clWindow
      EditLabel.Width = 43
      EditLabel.Height = 13
      EditLabel.Caption = 'TXTOBS'
      TabOrder = 17
    end
    object GroupBox1: TGroupBox
      Left = 425
      Top = 363
      Width = 185
      Height = 63
      Caption = 'STATUS'
      TabOrder = 18
      object RadioButton1: TRadioButton
        Left = 21
        Top = 16
        Width = 113
        Height = 17
        Caption = 'ATIVO'
        TabOrder = 0
      end
      object RadioButton2: TRadioButton
        Left = 21
        Top = 37
        Width = 113
        Height = 17
        Caption = 'INATIVO'
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 189
      Top = 436
      Width = 439
      Height = 115
      Caption = 'REPRESENTANTE'
      TabOrder = 19
      object TXTREPRESENTANTE: TActEdit
        Left = 109
        Top = 19
        Width = 261
        Height = 21
        Alignment = taLeftJustify
        ColorOnFocus = clRed
        ColorOnNotFocus = clWindow
        EditLabel.Width = 95
        EditLabel.Height = 13
        EditLabel.Caption = 'REPRESENTANTE'
        TabOrder = 0
      end
      object TXTFONEREPRE: TActEdit
        Left = 109
        Top = 53
        Width = 263
        Height = 21
        Alignment = taLeftJustify
        ColorOnFocus = clRed
        ColorOnNotFocus = clWindow
        EditLabel.Width = 56
        EditLabel.Height = 13
        EditLabel.Caption = 'TELEFONE'
        TabOrder = 1
      end
      object TXTINTERVALO: TActEdit
        Left = 110
        Top = 81
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        ColorOnFocus = clRed
        ColorOnNotFocus = clWindow
        EditLabel.Width = 61
        EditLabel.Height = 13
        EditLabel.Caption = 'INTERVALO'
        TabOrder = 2
      end
    end
  end
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *from fornecedores')
    Left = 665
    Top = 11
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 703
    Top = 12
  end
  object IBQuery2: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 495
    Top = 11
  end
  object IBQuery3: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 451
    Top = 10
  end
  object IBQuery4: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 412
    Top = 13
  end
end
