inherited Mov0031: TMov0031
  Caption = 'Mov0031 - N'#227'o Conformidade de Avarias "FO/43"'
  ClientHeight = 290
  ClientWidth = 612
  ExplicitWidth = 620
  ExplicitHeight = 317
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 14
    Top = 117
    Width = 84
    Height = 13
    Caption = 'Descarga para'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited NavBarra: TBrvDbNavCop
    Width = 612
    ExplicitWidth = 612
    inherited BrvSpeedButton1: TBrvSpeedButton
      Left = 585
      ExplicitLeft = 585
    end
    inherited SbtAjuda: TBrvSpeedButton
      Left = 560
      ExplicitLeft = 560
    end
  end
  inherited PnlFundo: TPanel
    Width = 612
    Height = 260
    ExplicitWidth = 612
    ExplicitHeight = 328
    object PnlRegistro: TPanel
      Left = 1
      Top = 1
      Width = 606
      Height = 220
      Align = alClient
      BorderStyle = bsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 288
      object Label11: TLabel
        Left = 9
        Top = 8
        Width = 74
        Height = 26
        Caption = 'Natureza da opera'#231#227'o NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label1: TLabel
        Left = 9
        Top = 49
        Width = 84
        Height = 13
        Caption = 'Descarga para'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 9
        Top = 83
        Width = 111
        Height = 13
        Caption = 'Houve Vazamento?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 319
        Top = 15
        Width = 92
        Height = 13
        Caption = 'Tipo Vazamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 319
        Top = 44
        Width = 73
        Height = 26
        Caption = 'Produto foi reembalado?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label7: TLabel
        Left = 319
        Top = 78
        Width = 89
        Height = 26
        Caption = 'Direcionamento do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label8: TLabel
        Left = 9
        Top = 117
        Width = 87
        Height = 13
        Caption = 'Transportadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 9
        Top = 151
        Width = 53
        Height = 13
        Caption = 'Motorista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 319
        Top = 185
        Width = 33
        Height = 13
        Caption = 'Placa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 465
        Top = 185
        Width = 30
        Height = 13
        Caption = 'Frota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 9
        Top = 180
        Width = 87
        Height = 26
        Caption = 'O motorista foi entrevistado?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object ClbTpOpeNot: TBrvDBComboListBox
        Left = 126
        Top = 12
        Width = 175
        Height = 21
        DataField = 'TpOpeNot'
        DataSource = DsQ004
        TabOrder = 0
      end
      object ClbTpCarga: TBrvDBComboListBox
        Left = 126
        Top = 46
        Width = 175
        Height = 21
        DataField = 'TpCarga'
        DataSource = DsQ004
        TabOrder = 1
      end
      object ClbSnVazame: TBrvDBComboListBox
        Left = 126
        Top = 80
        Width = 175
        Height = 21
        DataField = 'SnVazame'
        DataSource = DsQ004
        TabOrder = 2
      end
      object ClbTpVazEmb: TBrvDBComboListBox
        Left = 417
        Top = 12
        Width = 175
        Height = 21
        DataField = 'TpVazEmb'
        DataSource = DsQ004
        TabOrder = 3
      end
      object ClbSnReemba: TBrvDBComboListBox
        Left = 417
        Top = 46
        Width = 175
        Height = 21
        DataField = 'SnReemba'
        DataSource = DsQ004
        TabOrder = 4
      end
      object ClbTpDireci: TBrvDBComboListBox
        Left = 417
        Top = 80
        Width = 175
        Height = 21
        DataField = 'TpDireci'
        DataSource = DsQ004
        TabOrder = 5
      end
      object EdtNmMotori: TBrvDbEdit
        Left = 202
        Top = 148
        Width = 390
        Height = 21
        Color = clWhite
        DataField = 'NmMotori'
        DataSource = DsQ004
        TabOrder = 9
        BrAlignment = taLeftJustify
        BrVisibleButton = False
        BrFunctionButton = TpDbConsulta
        BrDicionario = DmSrvApl.BrvDicionario
        BrQueryConsulta = 0
      end
      object EdtNrPlaVei: TBrvDbEdit
        Left = 359
        Top = 182
        Width = 90
        Height = 21
        Color = clWhite
        DataField = 'NrPlaVei'
        DataSource = DsQ004
        TabOrder = 11
        BrAlignment = taLeftJustify
        BrVisibleButton = False
        BrFunctionButton = TpDbConsulta
        BrConfigurar.Strings = (
          'NrPlaVei;NrPlaVei;S;S;')
        BrDicionario = DmSrvApl.BrvDicionario
        BrQueryConsulta = 0
      end
      object ClbSnMotEnt: TBrvDBComboListBox
        Left = 126
        Top = 182
        Width = 175
        Height = 21
        DataField = 'SnMotEnt'
        DataSource = DsQ004
        TabOrder = 10
      end
      object EdtCdTitula: TBrvDbEdit
        Left = 126
        Top = 114
        Width = 70
        Height = 21
        DataField = 'CdTransp'
        DataSource = DsQ004
        TabOrder = 6
        BrAlignment = taRightJustify
        BrVisibleButton = True
        BrFunctionButton = TpDbConsulta
        BrConfigurar.Strings = (
          'CdTransp;CdTitula;S;S;'
          'LblRsTitula;RsTitula;S;N;')
        BrDicionario = DmSrvApl.BrvDicionario
        BrQueryConsulta = 65
      end
      object EdtCdMotori: TBrvDbEdit
        Left = 126
        Top = 148
        Width = 70
        Height = 21
        DataField = 'CdMotori'
        DataSource = DsQ004
        TabOrder = 8
        BrAlignment = taRightJustify
        BrVisibleButton = True
        BrFunctionButton = TpDbConsulta
        BrOnAfterConsulta = EdtCdMotoriBrOnAfterConsulta
        BrConfigurar.Strings = (
          'CdMotori;CdMotori;S;S;'
          'NmMotori;NmMotori;S;N;'
          'CdVeicul;CdVeicul;S;N;'
          'NrPlaVei;NrPlaVei;S;N;')
        BrDicionario = DmSrvApl.BrvDicionario
        BrQueryConsulta = 66
      end
      object LblRsTitula: TBrvRetCon
        Left = 202
        Top = 114
        Width = 390
        Height = 21
        TabStop = False
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelWidth = 2
        BorderStyle = bsNone
        ParentColor = True
        ReadOnly = True
        TabOrder = 7
      end
      object EdtCdVeicul: TBrvDbEdit
        Left = 502
        Top = 182
        Width = 90
        Height = 21
        DataField = 'CdVeicul'
        DataSource = DsQ004
        TabOrder = 12
        BrAlignment = taRightJustify
        BrVisibleButton = True
        BrFunctionButton = TpDbConsulta
        BrConfigurar.Strings = (
          'CdVeicul;CdVeicul;S;S;')
        BrDicionario = DmSrvApl.BrvDicionario
        BrQueryConsulta = 67
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 221
      Width = 606
      Height = 34
      Align = alBottom
      BorderStyle = bsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitTop = 289
      DesignSize = (
        602
        30)
      object BtnConfirmar: TBrvBitBtn
        Left = 368
        Top = 2
        Width = 110
        Height = 25
        Hint = 'Confirmar'
        Anchors = [akTop, akRight]
        Caption = '&Confirmar'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          96090000424D9609000000000000360000002800000028000000140000000100
          18000000000060090000C40E0000C40E00000000000000000000008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000BB6D00
          C468009676008080008080008080008080008080008080008080008080008080
          008080008080008080008080008080008080008080008080A6A6A6ACACAC8C8C
          8C00808000808000808000808000808000808000808000808000808000808000
          808000808000808000808000808000808002C46F01BD6E00BB6E00BD6A009A75
          0080800080800080800080800080800080800080800080800080800080800080
          80008080008080008080008080AEAEAEA9A9A9A6A6A6A8A8A88E8E8E00808000
          8080008080008080008080008080008080008080008080008080008080008080
          00808000808006C17504C27202BE7001BC6F00BA6D00C0680092780080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080ACACACADADADA9A9A9A7A7A7A6A6A6AAAAAA888888008080008080008080
          0080800080800080800080800080800080800080800080800080800EC97709C4
          7506C27504C07202BE7101BC6F00BA6D00C169009A7600808000808000808000
          8080008080008080008080008080008080008080008080B4B4B4AFAFAFADADAD
          ABABABA9A9A9A8A8A8A6A6A6A9A9A98E8E8E0080800080800080800080800080
          8000808000808000808000808000808017CA7B11C8790DC37708C37605C17404
          C17201BE7000BB6E00BB6D00BD69009677008080008080008080008080008080
          008080008080008080008080B5B5B5B3B3B3AFAFAFAEAEAEACACACACACACA9A9
          A9A6A6A6A5A5A5A8A8A88B8B8B00808000808000808000808000808000808000
          808000808024CB7D1DCB7D16C87B12C6790CC47809C57607C77504C07202BE70
          01BC6F00BA6D00C1690096760080800080800080800080800080800080800080
          80B6B6B6B6B6B6B3B3B3B1B1B1AFAFAFAFAFAFB1B1B1ABABABAAAAAAA7A7A7A6
          A6A6A9A9A98B8B8B00808000808000808000808000808000808000808030D481
          23CB7F1DC97D17C87B12CA790BB57900808007C77404C07302BE7101BB6F00BB
          6E00BD6A009A75008080008080008080008080008080008080BEBEBEB6B6B6B4
          B4B4B3B3B3B5B5B5A4A4A4008080B1B1B1ABABABAAAAAAA7A7A7A6A6A6A7A7A7
          8E8E8E00808000808000808000808000808000808030CC822CD08123CA7E1FCD
          7C14C07C00808000808000808007CB7304C07202BE7001BC6F00BA6D00C06800
          9278008080008080008080008080008080B7B7B7BABABAB5B5B5B7B7B7ADADAD
          008080008080008080B3B3B3ABABABA9A9A9A7A7A7A5A5A5AAAAAA8989890080
          800080800080800080800080800080802FC98331D7821FC27E00808000808000
          808000808000808007CC7404C07202BE7101BC6F00BA6D00C169009A76008080
          008080008080008080008080B4B4B4C0C0C0AEAEAE0080800080800080800080
          80008080B4B4B4ABABABAAAAAAA7A7A7A6A6A6A9A9A98F8F8F00808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          00808006C77404C17201BE7000BB6E00BB6D00BD690096770080800080800080
          80008080008080008080008080008080008080008080008080008080008080B1
          B1B1ACACACA9A9A9A6A6A6A6A6A6A8A8A88C8C8C008080008080008080008080
          00808000808000808000808000808000808000808000808000808000808007CC
          7404C07202BE7001BC6F00BA6D00C16900987600808000808000808000808000
          8080008080008080008080008080008080008080008080008080B4B4B4ABABAB
          A9A9A9A7A7A7A5A5A5AAAAAA8D8D8D0080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808007C77404C07302
          BE7101BB6F00BD6D00B36D008080008080008080008080008080008080008080
          008080008080008080008080008080008080008080B1B1B1ACACACAAAAAAA7A7
          A7A7A7A7A1A1A100808000808000808000808000808000808000808000808000
          808000808000808000808000808000808000808007CB7304C07202BE7002C66C
          0080800080800080800080800080800080800080800080800080800080800080
          80008080008080008080008080008080B3B3B3ABABABA9A9A9AEAEAE00808000
          8080008080008080008080008080008080008080008080008080008080008080
          00808000808000808000808000808007CE7405C7710080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080B6B6B6B0B0B0008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = BtnConfirmarClick
        BrTipoBotao = BrBtnOk
      end
      object BtnCancelar: TBrvBitBtn
        Left = 482
        Top = 2
        Width = 110
        Height = 25
        Hint = 'Cancelar'
        Anchors = [akTop, akRight]
        Caption = '&Cancelar'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          96090000424D9609000000000000360000002800000028000000140000000100
          18000000000060090000C40E0000C40E00000000000000000000008080008080
          0080800080800080800080800080800080800048AE004AAB004AAA0047AB0080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080676060606060606060655F5F008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          80008080006DFF096FE81F77DC2A7ED72979CE1C6AC20553B000328B00808000
          8080008080008080008080008080008080008080008080008080008080008080
          9882828C86868D8D8D9090908B8B8B7F7F7F6E67675D47470080800080800080
          800080800080800080800080800080800080800080800072FF1281FF66ACF6AB
          D0F7D1E6F9E3F0FBE1EFFCCCE4F8A1C8F05796DC0654B6003586008080008080
          0080800080800080800080800080800080808D8787A09696BDBDBDD8D8D8EBEB
          EBF5F5F5F5F5F5E8E8E8D2D2D2A9A9A97268684F4A4A00808000808000808000
          80800080800080800080800075FF449DFFD0E7FEFFFFFFFFFFFFFFFFFEEEF5FE
          F9FBFEFFFFFFFFFFFFF9FDFFBED9F52A72C7003B8D0080800080800080800080
          80008080008080878686B5B2B2EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFE8E8E88A87874D4D4D008080008080008080008080008080
          007AFF57AAFFF5FBFFFFFFFFF2F6FE75B0F41273E91272E71271E81170E781B5
          F3FFFFFFFFFFFFE9F3FD2D75C9003689008080008080008080008080908A8ABF
          BCBCFCFCFCFFFFFFFFFFFFC3C3C38E8E8E8C8C8C8D8D8D8B8B8BC9C9C9FFFFFF
          FFFFFFF5F5F58E8B8B504A4A008080008080008080008080419FFFF1F8FFFFFF
          FFC1DDFB197DF00065EA056DE91073EA036AE70066E60057E3257FEAC7DDF9FF
          FFFFCEE3F50F5DBE008080008080008080008080BBB1B1FBFBFBFFFFFFF0F0F0
          9494947E7E7E8686868C8C8C848484828282747474979797F3F3F3FFFFFFEBEB
          EB7C72722071710080800080801186FF9CCDFFFFFFFFE1EFFD2084F44795F14C
          98F21377ED0870EA0D71E90E71E94792ED0D6EE61E7BEAEBF3FEFFFFFF71A5DC
          0049B9008080008080AF9999DADADAFFFFFFFDFDFD999999A8A8A8ACACAC8F8F
          8F8888888B8B8B8A8A8AA9A9A9888888939393FFFFFFFFFFFFB5B5B5755E5E00
          80800080803498FFDDEDFFFFFFFF65ACF9127BF2B5D6FBFFFFFF64A7F3066EEC
          0F75EC8CBCF4FBFDFF4892EE0059E478B1F2FFFFFFC0D9F11469D10080800080
          80B1AAAAF5F5F5FFFFFFBCBCBC929292E4E4E4FFFFFFB8B8B88888888C8C8CCD
          CDCDFFFFFFAAAAAA757575C4C4C4FFFFFFE0E0E0878080306D6D1589FF5EAEFF
          FFFFFFFAFDFF2C8CF61D83F5318EF5ADD1FBF0F7FD4C9AF361A5F4FFFFFF8DBD
          F51375EA0169E81877EAF9FBFEEFF5FB3388E10053CEB4A194BCBCBCFFFFFFFF
          FFFFA1A1A1979797A2A2A2E0E0E0FEFEFEAFAFAFB8B8B8FFFFFFCECECE8D8D8D
          838383919191FFFFFFFCFCFC9A9A9A736C6C1789FF84C0FFFFFFFFB4D8FE2A8E
          F92B8FF71A84F62488F6A5CDFAF2F7FEE1EEFD66A7F30D75ED0C72EB096FEA10
          73EAC9E0FAFFFFFF4C9EEF0067F4AEA091CCCCCCFFFFFFE4E4E4A1A1A19F9F9F
          9797979D9D9DDEDEDEFDFDFDFAFAFABABABA8C8C8C8A8A8A8888888C8C8CEBEB
          EBFFFFFFACACAC8080802691FFA5D2FFFFFFFFABD4FE2D91FC288EFA2F90F917
          83F787BEFAFFFFFFF8FBFE4899F40C77EF1277EE0D73EB1376EDB7D6F9FFFFFF
          53A5F9006EFAB6A798DCDCDCFFFFFFDFDFDFA4A4A49F9F9FA2A2A2969696CFCF
          CFFFFFFFFDFDFDAEAEAE8E8E8E8F8F8F8B8B8B8F8F8FE1E1E1FFFFFFB3B3B384
          84842E95FFB2D8FFFFFFFFCEE5FF3597FC2990FC3193FB87C0FCE5F1FE8AC0FA
          A6CFFBF0F6FE6BACF61B80F11077EF1A7CEED8E9FBFFFFFF47A1FA006EFEBBAC
          9CE2E2E2FFFFFFF1F1F1A8A8A8A1A1A1A6A6A6CECECEF8F8F8D2D2D2DFDFDFFF
          FFFFBDBDBD9595958E8E8E949494F3F3F3FFFFFFB0B0B085858549A3FFA7D3FF
          FFFFFFFFFFFF419EFD2E94FDA1CFFDFFFFFF87C0FC1784F8268AF8B1D4FCFFFF
          FF529FF60B77F0358EF4FFFFFFE6F3FF2E91FD006DFFD4BCACDFDFDFFFFFFFFF
          FFFFAEAEAEA5A5A5DCDCDCFFFFFFCECECE9797979E9E9EE3E3E3FFFFFFB0B0B0
          8C8C8CA3A3A3FFFFFFFAFAFAA5A5A59087870080808AC4FFFBFDFFFFFFFFABD5
          FF1F8EFE9DCEFDA0CFFE3395FB288EFA248BFA3593F9B5D7FC5AA5F8006EF2B1
          D5FCFFFFFFB2D9FF0D7FFF008080008080DED5D5FFFFFFFFFFFFE4E4E49E9E9E
          DADADADBDBDBA7A7A7A0A0A09D9D9DA6A6A6E5E5E5B6B6B6848484E6E6E6FFFF
          FFE0E0E09E969600808000808082BFFFE3F1FFFFFFFFFFFFFF60AEFF228FFE31
          97FF2D93FD2F94FC2C90FB268DFA288DF90D7DF69BCBFDFFFFFFFDFEFF5EADFF
          0078FF008080008080EBD3D3F8F8F8FFFFFFFFFFFFC0C0C0A0A0A0A7A7A7A4A4
          A4A4A4A4A3A3A39E9E9EA0A0A0909090DEDEDEFFFFFFFFFFFFBEBEBEA48C8C00
          8080008080008080ADD6FFFEFEFFFFFFFFFFFFFF8FC5FF359AFF3096FF2C93FE
          2A92FE2C92FC2F93FBA0CDFDFFFFFFFFFFFFA3D0FF007DFF0080800080800080
          80008080F4E7E7FFFFFFFFFFFFFFFFFFD5D5D5A9A9A9A7A7A7A4A4A4A3A3A3A4
          A4A4A3A3A3DDDDDDFFFFFFFFFFFFDDDDDD9B8E8E008080008080008080008080
          75B9F7D0E7FFFFFFFFFFFFFFFFFFFFE8F4FF96CAFF7DBDFF7EBDFE9DCEFEF3F9
          FFFFFFFFFFFFFFC1E0FF1C8CFF007FF7008080008080008080008080C1C9C9F7
          F2F2FFFFFFFFFFFFFFFFFFF9F9F9D5D5D5C8C8C8C8C8C8D9D9D9FDFDFDFFFFFF
          FFFFFFE6E6E6A39E9E0080800080800080800080800080800080807ABBF7BCDD
          FFFCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF5FF98CBFF1D
          8CFF0480F7008080008080008080008080008080008080C3CBCBEEE9E9FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBDADADAAD9F9F878F
          8F00808000808000808000808000808000808000808093C8FF9FCFFFC9E4FFEE
          F7FFFDFDFFFFFFFFF9FCFFE5F1FFB6DAFF66B2FF228FFF008080008080008080
          008080008080008080008080008080008080DED9D9EDE0E0EDEDEDFFFFFFFFFF
          FFFFFFFFFFFFFFFCFCFCE7E7E7CCC3C3BAA2A200808000808000808000808000
          808000808000808000808000808000808000808097CAFF77BAFF7FBEFF83C0FF
          70B6FF56AAFF3B9CFF0080800080800080800080800080800080800080800080
          80008080008080008080008080008080E7DCDCCACACACECECED0D0D0C7C7C7BA
          BABAB6AEAE008080008080008080008080008080008080008080}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnCancelarClick
        BrTipoBotao = BrBtnCancel
      end
    end
  end
  inherited PopCfgFrm: TPopupMenu
    Left = 208
    Top = 65520
  end
  inherited ImlPopFrm: TImageList
    Left = 320
    Top = 65520
  end
  inherited LspS049: TBrvListParam
    Left = 264
    Top = 65520
  end
  object CpQ004: TBrvClientDataSet
    Aggregates = <>
    Params = <>
    BrShowFieldName = False
    BrQueryCode = 0
    BrDicionario = DmSrvApl.BrvDicionario
    BrType = VqNormal
    BrGravaLog = True
    BrUserCode = 0
    Left = 497
    Top = 157
  end
  object DsQ004: TDataSource
    DataSet = CpQ004
    Left = 547
    Top = 157
  end
end
