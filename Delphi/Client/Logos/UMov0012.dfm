inherited Mov0012: TMov0012
  Caption = 'Mov0012 - Mesa de Opera'#231#245'es'
  ClientHeight = 521
  ClientWidth = 940
  ExplicitTop = -22
  ExplicitWidth = 948
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 13
  inherited NavBarra: TBrvDbNavCop
    Width = 940
    ExplicitWidth = 940
    inherited BrvSpeedButton1: TBrvSpeedButton
      Left = 915
      ExplicitLeft = 915
    end
    inherited SbtAjuda: TBrvSpeedButton
      Left = 890
      ExplicitLeft = 890
    end
  end
  inherited PnlFundo: TPanel
    Top = 111
    Width = 940
    Height = 410
    TabOrder = 2
    ExplicitTop = 111
    ExplicitWidth = 940
    ExplicitHeight = 410
    object bdgRegistros: TBrvDbGrid
      Left = 1
      Top = 1
      Width = 934
      Height = 357
      BrShowMemo = True
      BrReadOnlyStyle = []
      BrReadOnlyColor = clMaroon
      Align = alClient
      DataSource = DsW005
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = bdgRegistrosDrawColumnCell
      OnDblClick = bdgRegistrosDblClick
      BrDrawColumn.Strings = (
        'N'#227'o remova essas duas linhas de formata'#231#227'o:'
        'CampoTabela;Operador;ValorComparativo;Cor;'
        'StOpeLog;=;D;clRed;'
        'StOpeLog;=;A;clWhite;'
        'StOpeLog;=;S;clYellow;'
        'StOpeLog;=;P;clGreen;')
      BrGradeZebrada = True
      Columns = <
        item
          Expanded = False
          FieldName = 'NRPRIORI'
          ReadOnly = False
          Title.Caption = 'Prior.'
          Width = 30
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'DsTipAti'
          Title.Caption = 'Atividade'
          Width = 100
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'NrOpeLog'
          ReadOnly = False
          Title.Caption = 'Opera'#231#227'o'
          Width = 52
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'NrFornec'
          Title.Caption = 'Remessa'
          Width = 80
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'NrNrOrig'
          Title.Caption = 'Nota'
          Width = 60
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'NrSENFOR'
          Title.Caption = 'S'#233'rie'
          Width = 30
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'NrOrdem'
          Title.Caption = 'Ordem'
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'NmUsuExe'
          ReadOnly = False
          Title.Caption = 'Execu'#231#227'o'
          Width = 100
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'DtGeraca'
          ReadOnly = False
          Title.Caption = 'Gera'#231#227'o'
          Width = 115
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'DtIniOpe'
          ReadOnly = False
          Title.Caption = 'Inicio da Opera'#231#227'o'
          Width = 115
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'DsOpeLog'
          ReadOnly = False
          Title.Caption = 'Situa'#231#227'o'
          Width = 110
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end
        item
          Expanded = False
          FieldName = 'NmUsuGer'
          ReadOnly = False
          Title.Caption = 'Gerador'
          Width = 90
          Visible = True
          BrConsulta = 0
          BrPermissao = []
          BrValueHalfChecked = False
          BrSaveOnClick = False
        end>
    end
    object PnlOperacao: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 361
      Width = 928
      Height = 41
      Align = alBottom
      BevelEdges = [beTop]
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      DesignSize = (
        928
        39)
      object Label3: TLabel
        Left = 2
        Top = 13
        Width = 67
        Height = 13
        Caption = 'Registro(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblQtdeNF: TLabel
        Left = 86
        Top = 13
        Width = 35
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BtnCancel: TBrvBitBtn
        Left = 833
        Top = 8
        Width = 90
        Height = 25
        Hint = 'Cancelar'
        Anchors = [akTop, akRight]
        Caption = 'Cancelar'
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
        TabOrder = 0
        OnClick = BtnCancelClick
        BrTipoBotao = BrBtnCancel
      end
      object BtnSalvar: TBrvBitBtn
        Left = 737
        Top = 8
        Width = 90
        Height = 25
        Hint = 'Salvar'
        Anchors = [akTop, akRight]
        Caption = 'Gravar'
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
          008080008080008080008080008080008080008080008080008080008080587A
          579F9A73CADED2A4A8888277447E723EC9DDD1C2D3C3C2D3C3C2D3C3C9DDD17E
          723E867C4B897C4A6C7D550080800080800080800080800080803C7575809595
          C3DBDB8BA3A3597171546C6CC1D9D9B8D0D0B7CFCFB8D0D0C1D9D9536B6B5F77
          776075754C787800808000808000808000808063805DB77936C7A577FFFBEFD3
          B58FA87839A37130FFF9EDF9ECDAF9ECDAF9ECDAFFF9EDA37130AC7F42B27F40
          8C7F4E008080008080008080008080477B7B807272A29E9EFBF7F7B4B0B07470
          706D6969F9F5F5ECE8E8ECE8E8ECE8E8FAF6F66D69697A76767F777764797900
          8080008080008080668261BA8446A97F44C5A87FFFFEF7D1BA96A77D42A37638
          FEFCF4F5EFE1F5EFE1F5EFE1FEFCF4A37638AC844BB184498C83550080800080
          800080804A7E7E867B7B777777A4A4A4FBFBFBB4B4B47575756E6E6EFAFAFAEC
          ECECECECECECECECFAFAFA6E6E6E7D7D7D7F7B7B657D7D008080008080008080
          CC8A49B08951AC844AC8AE86FFFFFECFB894A275359D6F2CFFFFFCF8F3E9F8F3
          E9F8F3E9FFFFFCA67C3EAF8951B589508F875A00808000808000808096818181
          81817C7C7CA8A8A8FFFFFFB3B3B36C6C6C656565FFFFFFF1F1F1F2F2F2F1F1F1
          FEFEFE737373818181868282688080008080008080008080C99257B5905BB28B
          54D0B793FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFAC
          8348B5905BBB915A938D62008080008080008080978989888888838383B1B1B1
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7A8888
          888D89896E8686008080008080008080CD955CB8935FB8925EBD9A69C6A97EC5
          A77BC5A77BC5A77BC5A77BC5A77BC5A77BC5A77BC7AA80B6905BB8935FBE945E
          9690660080800080800080809B8D8D8B8B8B8B8B8B939393A2A2A2A0A0A0A0A0
          A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A3A3A38888888B8B8B908C8C71898900
          8080008080008080CE9960BA9763BA9763B99561B8935EB8935EB8935EB8935E
          B8935EB8935EB8935EB8935EB8935EBA9763BA9763C097629793690080800080
          800080809E90908F8F8F8F8F8F8D8D8D8B8B8B8B8B8B8B8B8B8A8A8A8B8B8B8B
          8B8B8B8B8B8B8B8B8B8B8B8F8F8F8F8F8F938F8F748C8C008080008080008080
          D19C64BD9967BD9967BD9967BD9967BD9967BD9967BD9967BD9967BD9967BD99
          67BD9967BD9967BD9967BD9967C29A669A946B008080008080008080A1939391
          9191919191919191919191919191919191919191919191919191919191919191
          919191919191919191959191768E8E008080008080008080D39F67BE9C6ABE9C
          6AB9945FB8935DB8935DB8935DB8935DB8935DB8935DB8935DB8935DB8935DBB
          9864BE9C6AC49D699A976E008080008080008080A496969494949494948C8C8C
          8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8989898A8A8A8A8A8A8A8A8A9090909393
          93999595789090008080008080008080D6A26BC19E6DBC9763F1E8D4F6F1E2F6
          F0E0F6F0E0F6F0E0F6F0E0F6F0E0F6F0E0F6F0E0F9F4E6D9C3A0BE9A67C79F6D
          9D9971008080008080008080A799999696968E8E8EE3E3E3EEEEEEECECECECEC
          ECEBEBEBECECECEBEBEBECECECEBEBEBF1F1F1BBBBBB9393939B97977A929200
          8080008080008080D8A46FC2A070BD9864F7F2E4F0E8D5F0E8D5F0E8D5F0E8D5
          F0E8D5F0E8D5F0E8D5F0E8D5F2EBDAE2D1B4BF9B68C8A1709E9A730080800080
          80008080A99B9B9898988F8F8FEFEFEFE4E4E4E4E4E4E4E4E4E4E4E4E3E3E3E3
          E3E3E3E3E3E4E4E4E7E7E7CCCCCC9292929D99997C9494008080008080008080
          D9A772C4A374BE9A67F8F3E7F3EADAF3EADAF3EADAF3EADAF3EADAF3EADAF3EA
          DAF3EADAF5EEDFE2D2B7C09E6CCAA4739F9C76008080008080008080AC9E9E9B
          9B9B929292F0F0F0E6E6E6E8E8E8E6E6E6E6E6E6E7E7E7E7E7E7E7E7E7E8E8E8
          EAEAEACDCDCD949494A09C9C7E9696008080008080008080DCA975C7A576C19C
          69FAF7EDF5EEE0F5EEE0F5EEE0F5EEE0F5EEE0F5EEE0F5EEE0F5EEE0F7F1E5E5
          D5BBC39F6ECDA676A19E78008080008080008080AEA0A09D9D9D939393F4F4F4
          EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEEEEEED0D0D09898
          98A29E9E809898008080008080008080DEAC77C8A778C29E6AFDFAF3F7F1E5F7
          F1E5F7F1E5F7F1E5F7F1E5F7F1E5F7F1E5F7F1E5F9F4EAE7D7C0C4A170CEA878
          A3A07A008080008080008080B1A3A39F9F9F959595F8F8F8EFEFEFEEEEEEEEEE
          EEEEEEEEEEEEEEEFEFEFEFEFEFEEEEEEF1F1F1D3D3D3999999A4A0A081999900
          8080008080008080E0AD7BCAA97BC4A06DFEFDF7F8F3E9F8F3E9F8F3E9F8F3E9
          F8F3E9F8F3E9F8F3E9F8F3E9FAF7EFE9DAC3C6A372D0AA7BA4A27C0080800080
          80008080B3A5A5A1A1A1979797FBFBFBF1F1F1F2F2F2F0F0F0F2F2F2F1F1F1F1
          F1F1F1F1F1F1F1F1F4F4F4D5D5D59C9C9CA6A2A2839B9B008080008080008080
          E1AF7CCBAA7CC5A16EFFFFFAF9F5ECF9F5ECF9F5ECF9F5ECF9F5ECF9F5ECF9F5
          ECF9F5ECFCF9F1E9DCC6C7A574D1AC7CA4A27D008080008080008080B4A6A6A2
          A2A2989898FDFDFDF3F3F3F4F4F4F3F3F3F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3
          F7F7F7D8D8D89C9C9CA7A3A3849C9C008080008080008080E8B17DD2AC7ECCA2
          6FFFFFFFFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFFF4
          E4D1CEA675D8AD7DAAA37F008080008080008080B9A7A7A8A4A49F9B9BFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3DFDFA19D
          9DADA5A5879C9C008080008080008080B6A67EA5A27EA5A17CA8A683A7A582A7
          A582A7A582A7A582A7A582A7A582A7A582A7A582A7A582A6A481A5A27DAAA37E
          859B7F008080008080008080919F9F849C9C839B9B88A0A0879F9F88A0A0879F
          9F879F9F879F9F879F9F88A0A0879F9F879F9F879F9F839B9B889D9D6B979700
          8080008080008080008080008080008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000808000808000808000808000808000808000
          8080008080008080008080008080008080008080008080008080}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Visible = False
        OnClick = BtnSalvarClick
        BrTipoBotao = BrBtnSalvar
      end
      object BtnAtualiza: TBrvBitBtn
        Left = 737
        Top = 8
        Width = 90
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Atualizar'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          96090000424D9609000000000000360000002800000028000000140000000100
          18000000000060090000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF74C96358C45958C45958C45958C459FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFA99B9B969797969797969797969797FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74C96358C45973
          C75E61C55B5FC55B5FC55B6BC65D79C75E6FCE6DFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA99B9B969797AB9B9B9D98
          989C98989C9898A59A9AB09B9BA8A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF74C96370C75E5EC65C5DC65D5CC65C5CC65C
          5CC65C5CC65C5CC65C67C65D6BC75EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA99B9BA99B9B9B99999A9A9A99999999999999999999
          9999999999A29A9AA59B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF74C9636FC75F5DC65D5DC65D5DC65D5DC65D5CC65C5DC65D5DC65D5DC6
          5D5DC65D5FC65D83C963FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9
          9B9BA89C9C9A9A9A9A9A9A9A9A9A9A9A9A9999999A9A9A9A9A9A9A9A9A9A9A9A
          9C9A9AB79F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74C96374C96361C8
          615FC75F61C86161C86161C75F64C96261C75F5FC75F61C8615FC75F5FC75F61
          C75F70C963FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA99B9BAC9F9F9D9D9D9C9C9C
          9D9D9D9D9D9D9D9C9CA09E9E9D9C9C9C9C9C9D9D9D9C9C9C9C9C9C9D9C9CA99F
          9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61C96266C96361C86162C96262C96269
          CA646CCA6459C86162C96270CB6662C96261C86162C96262C96271CB666FCE6D
          FFFFFFFFFFFFFFFFFFFFFFFF9D9E9EA19F9F9D9D9D9E9E9E9E9E9EA4A0A0A6A0
          A0979D9D9E9E9EA9A1A19E9E9E9D9D9D9E9E9E9E9E9EAAA1A1A8A7A7FFFFFFFF
          FFFFFFFFFF3EC75E80CD6B66CB6664CA6466CB666BCB663DC65CFFFFFFFFFFFF
          FFFFFF20C1548BCE6D7CCC6971CC686BCB6671CB676FCE6DFFFFFFFFFFFFFFFF
          FFB5A5A5B5A5A5A1A1A1A0A0A0A1A1A1A5A1A17D9999FFFFFFFFFFFFFFFFFF5A
          9292BCA7A7B2A4A4AAA3A3A5A1A1AAA2A2A8A7A7FFFFFFFFFFFFFFFFFF3EC75E
          70CC6967CB6769CC6969CC6871CC69FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF1FC2564AC86144C75F58CA64FFFFFFFFFFFFFFFFFF7E9B9BA9A4A4A2
          A2A2A4A4A4A4A3A3AAA4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          599494899D9D849C9C96A0A0FFFFFFFFFFFFFFFFFF47C96271CE6C6BCD6B6BCD
          6B6FCE6C61CC68FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF879E9EAAA6A6A5A5A5A5A5A5A8A6A6
          9DA3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF54CB6774CF6F6FCF6F6DCE6D70CF6F6DCE6DFF
          FFFFFFFFFFFFFFFF6FCE6D97D3778CD2758CD2758BD1748CD2759AD3776FCE6D
          FFFFFFFFFFFFFFFFFF92A2A2ACA8A8A8A8A8A7A7A7A9A8A8A7A7A7FFFFFFFFFF
          FFFFFFFFA8A7A7C4AEAEBDADADBDADADBCACACBDADADC6AEAEA8A7A7FFFFFFFF
          FFFFFFFFFF27C75E88D37771D07171D07170D0707FD17423C459FFFFFFFFFFFF
          FFFFFF56CC6977D17371D07171D07170D0707FD1746FCE6DFFFFFFFFFFFFFFFF
          FF92A2A2BAAEAEAAAAAAAAAAAAA9A9A9B4ACAC5E9797FFFFFFFFFFFFFFFFFF94
          A4A4AEABABAAAAAAAAAAAAA9A9A9B4ACACA8A7A7FFFFFFFFFFFFFFFFFFFFFFFF
          A0D78074D17475D27575D27575D27585D37871D17415C25539CA6483D47977D3
          7775D27575D27575D27583D3786FCE6DFFFFFFFFFFFFFFFFFFFFFFFFCAB5B5AC
          ACACADADADADADADADADADB8AFAFAAACAC4A939379A0A0B7B0B0AEAEAEADADAD
          ADADADADADADB7AFAFA8A7A7FFFFFFFFFFFFFFFFFFFFFFFF27C75E88D57C78D3
          7878D37878D37879D4797CD47988D57C82D47B78D37878D37878D37878D37878
          D37889D67E6FCE6DFFFFFFFFFFFFFFFFFFFFFFFF649B9BBAB2B2AFAFAFAFAFAF
          AFAFAFB0B0B0B2B0B0BAB2B2B6B1B1AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFBBB3
          B3A8A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF94D78282D67E7BD47B7BD47B7B
          D47B7BD47B7BD47B7BD47B7BD47B7BD47B7BD47B7BD47B82D67E8BD67F6FCE6D
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B6B6B6B3B3B1B1B1B1B1B1B1B1B1B1B1
          B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B6B3B3BCB4B4A8A7A7FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF7ED67E86D67F7FD67F7ED67E7ED67E7FD67F
          7ED67E7FD67F7FD67F82D67F97D9854ACF6F9ED9866FCE6DFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB3B3B3B9B4B4B4B4B4B3B3B3B3B3B3B4B4B4B3B3B3B4
          B4B4B4B4B4B6B4B4C4B8B889A8A8C9B9B9A8A7A7FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF8ED9858ED98592D98683D78280D78080D7808ED98595DA
          8886D8831DC65CFFFFFF67D4796FCE6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFBEB8B8BEB8B8C1B9B9B7B6B6B5B5B5B5B5B5BEB8B8C3BABAB9B7B7
          569999FFFFFFA2B0B0A8A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF7BD47B97DA88A2DB8BAFDD8F7BD47B26C861FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFB1B1B1C4BABACBBCBCD3BFBFB1B1B1629D9DFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BtnAtualizaClick
        BrTipoBotao = BrBtnAtualizar
      end
    end
  end
  object PnlCabeca: TPanel [2]
    Left = 0
    Top = 30
    Width = 940
    Height = 81
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      940
      81)
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 55
      Height = 13
      Caption = 'Armaz'#233'm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 8
      Top = 33
      Width = 54
      Height = 13
      Caption = 'Atividade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 57
      Width = 51
      Height = 13
      Caption = 'Situa'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtCdArmaze: TBrvEditNum
      Left = 80
      Top = 6
      Width = 66
      Height = 21
      TabOrder = 0
      Text = '0'
      BrvReadOnlyColor = 14541539
      BrAlignment = taRightJustify
      BrCasasDecimais = 0
      BrSepararMilhar = False
      BrAsInteger = 0
      BrAsFloatSQL = '0'
      BrVisibleButton = True
      BrFunctionButton = TpConsulta
      BrConfigurar.Strings = (
        'EdtCdArmaze;CdArmaze;S;S;'
        'EdtNmArmaze;NmArmaze;S;N;')
      BrDicionario = DmSrvApl.BrvDicionario
      BrQueryCode = 42
      BrRecordar = False
    end
    object EdtNmArmaze: TBrvRetCon
      Left = 152
      Top = 7
      Width = 396
      Height = 19
      TabStop = False
      BevelInner = bvLowered
      BevelKind = bkFlat
      BevelWidth = 2
      BorderStyle = bsNone
      ParentColor = True
      ReadOnly = True
      TabOrder = 1
    end
    object CbxStOpeLog: TBrvComboBox
      Left = 80
      Top = 53
      Width = 180
      Height = 21
      TabOrder = 2
      OnChange = CbxStOpeLogChange
    end
    object BtnLocali: TBrvBitBtn
      Left = 839
      Top = 53
      Width = 90
      Height = 25
      Hint = 'Localizar'
      Anchors = [akTop, akRight]
      Caption = 'Localizar'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        96090000424D9609000000000000360000002800000028000000140000000100
        1800000000006009000000000000000000000000000000000000008080008080
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
        8080008080AD4416B95E3CB95E3CB95E3CB95E3CB46C49008080008080008080
        008080008080008080B95E3CB95E3CB95E3CB95E3CB46C490080800080800080
        80646360808080808080808080808080C0C0C000808000808000808000808000
        8080008080808080808080808080808080C0C0C0008080008080008080AD4416
        B95E3CE8D1C6B95E3CB95E3CB46C490080800080800080800080800080800080
        80B95E3CE8D1C6B95E3CB95E3CB46C49008080008080008080646360808080E8
        D1C6808080808080C0C0C0008080008080008080008080008080008080808080
        E8D1C6808080808080C0C0C0008080008080008080AD4416B95E3CE8D1C6B95E
        3CB95E3CB46C49008080008080008080008080008080008080B95E3CE8D1C6B9
        5E3CB95E3CB46C49008080008080008080646360808080E8D1C6808080808080
        C0C0C0008080008080008080008080008080008080808080E8D1C68080808080
        80C0C0C0008080008080008080AD4416B95E3CE8D1C6B95E3CB95E3CB46C4900
        8080008080008080008080008080008080B95E3CE8D1C6B95E3CB95E3CB46C49
        008080008080008080646360808080E8D1C6808080808080C0C0C00080800080
        80008080008080008080008080808080E8D1C6808080808080C0C0C000808000
        8080008080AD4416B95E3CB95E3CB95E3CB95E3CB95E3CB95E3CB46C49008080
        008080B95E3CB95E3CB95E3CB95E3CB95E3CB95E3CB46C490080800080800080
        80646360808080808080808080808080808080808080C0C0C000808000808080
        8080808080808080808080808080808080C0C0C0008080008080008080AD4416
        B95E3CB95E3CE8D1C6B95E3CB95E3CB95E3CB46C49B95E3CB95E3CB95E3CE8D1
        C6B95E3CB95E3CB95E3CB95E3CB46C4900808000808000808064636080808080
        8080E8D1C6808080808080808080C0C0C0808080808080808080E8D1C6808080
        808080808080808080C0C0C0008080008080008080AD4416B95E3CB95E3CE8D1
        C6B95E3CB95E3CB95E3C808080B95E3CB95E3CB95E3CE8D1C6B95E3CB95E3CB9
        5E3CB95E3CB46C49008080008080008080646360808080808080E8D1C6808080
        808080808080808080808080808080808080E8D1C68080808080808080808080
        80C0C0C0008080008080008080AD4416B95E3CB95E3CE8D1C6B95E3CB95E3CB9
        5E3C808080B95E3CB95E3CB95E3CE8D1C6B95E3CB95E3CB95E3CB95E3CB46C49
        008080008080008080646360808080808080E8D1C68080808080808080808080
        80808080808080808080E8D1C6808080808080808080808080C0C0C000808000
        8080008080008080AD4416B95E3CB95E3CB95E3CB95E3CB95E3CB46C49B95E3C
        B95E3CB95E3CB95E3CB95E3CB95E3CB95E3CB95E3C0080800080800080800080
        80008080646360808080808080808080808080808080C0C0C080808080808080
        8080808080808080808080808080808080008080008080008080008080008080
        008080AD4416B95E3CE8D1C6B95E3CB95E3CB46C49008080AD4416B95E3CE8D1
        C6B95E3CB95E3CB46C4900808000808000808000808000808000808000808064
        6360808080E8D1C6808080808080C0C0C0008080646360808080E8D1C6808080
        808080C0C0C0008080008080008080008080008080008080008080AD4416B95E
        3CB95E3CB95E3CB95E3CB46C49008080AD4416B95E3CB95E3CB95E3CB95E3CB4
        6C49008080008080008080008080008080008080008080646360808080808080
        808080808080C0C0C0008080646360808080808080808080808080C0C0C00080
        80008080008080008080008080008080008080008080AD4416B95E3CB95E3CB9
        5E3C008080008080008080AD4416B95E3CB95E3CB95E3C008080008080008080
        0080800080800080800080800080806463606463608080808080808080800080
        8000808000808064636080808080808080808000808000808000808000808000
        8080008080008080008080008080AD4416B95E3CE8D1C6B95E3C008080008080
        008080AD4416B95E3CE8D1C6B95E3C0080800080800080800080800080800080
        80008080008080008080646360808080E8D1C680808000808000808000808064
        6360808080E8D1C6808080008080008080008080008080008080008080008080
        008080008080AD4416B95E3CB95E3CB95E3C008080008080008080AD4416B95E
        3CB95E3CB95E3C00808000808000808000808000808000808000808000808000
        8080646360808080808080808080008080008080008080646360808080808080
        8080800080800080800080800080800080800080800080800080800080800080
        80AD4416AD4416AD4416008080008080008080AD4416AD4416AD4416AD441600
        8080008080008080008080008080008080008080008080008080008080646360
        6463606463600080800080800080800080806463606463606463600080800080
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
      TabOrder = 3
      OnClick = BtnLocaliClick
      BrTipoBotao = BrBtnLocalizar
    end
    object CbxDsTipMov: TBrvComboBox
      Left = 80
      Top = 30
      Width = 180
      Height = 21
      TabOrder = 4
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'Entradas'
        'Sa'#237'das'
        'Endere'#231'amento')
      Values.Strings = (
        '1,2,3,4,5'
        '1,4'
        '2,3'
        '5')
    end
  end
  object DsW005: TDataSource
    DataSet = CPW005
    Left = 721
    Top = 155
  end
  object CPW005: TBrvClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = CPW005AfterPost
    BrShowFieldName = False
    BrQueryCode = 0
    BrDicionario = DmSrvApl.BrvDicionario
    BrType = VqNormal
    BrGravaLog = True
    BrUserCode = 0
    Left = 775
    Top = 155
  end
  object PopSuspensa: TPopupMenu
    Left = 648
    Top = 152
    object SuspenderestaAtividade1: TMenuItem
      Caption = 'Suspender Atividade'
      OnClick = SuspenderestaAtividade1Click
    end
    object AtivarestaAtividade1: TMenuItem
      Caption = 'Ativar Atividade'
      OnClick = AtivarestaAtividade1Click
    end
    object SuspenderTodas1: TMenuItem
      Caption = 'Suspender Todas'
      OnClick = SuspenderTodas1Click
    end
    object AtivarTodas1: TMenuItem
      Caption = 'Ativar Todas'
      OnClick = AtivarTodas1Click
    end
  end
end
