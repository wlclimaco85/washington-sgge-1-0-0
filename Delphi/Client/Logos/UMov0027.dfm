inherited Mov0027: TMov0027
  Caption = 'Mov0027 - Contabiliza'#231#227'o de Receitas'
  ClientHeight = 523
  ClientWidth = 795
  ExplicitWidth = 811
  ExplicitHeight = 561
  PixelsPerInch = 96
  TextHeight = 13
  inherited NavBarra: TBrvDbNavCop
    Width = 795
    ExplicitWidth = 795
    inherited BrvSpeedButton1: TBrvSpeedButton
      Left = 768
      ExplicitLeft = 768
    end
    inherited SbtAjuda: TBrvSpeedButton
      Left = 743
      ExplicitLeft = 743
    end
  end
  inherited PnlFundo: TPanel
    Width = 795
    Height = 493
    ExplicitWidth = 795
    ExplicitHeight = 493
    object PnlFilter: TPanel
      Left = 1
      Top = 1
      Width = 789
      Height = 88
      Align = alTop
      BorderStyle = bsSingle
      TabOrder = 0
      DesignSize = (
        785
        84)
      object BrvLabel2: TBrvLabel
        Left = 12
        Top = 6
        Width = 49
        Height = 13
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BrvLabel1: TBrvLabel
        Left = 12
        Top = 33
        Width = 64
        Height = 13
        Caption = 'Data Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BrvLabel3: TBrvLabel
        Left = 12
        Top = 60
        Width = 64
        Height = 13
        Caption = 'Data Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtCdEmpres: TBrvEdit
        Left = 80
        Top = 3
        Width = 100
        Height = 21
        Alignment = taRightJustify
        TabOrder = 0
        Text = '0'
        BrvReadOnlyColor = 14541539
        BrVisibleButton = True
        BrFunctionButton = VeConsulta
        BrOnBeforeConsulta = EdtCdEmpresBrOnBeforeConsulta
        BrConfigurar.Strings = (
          'EdtCdEmpres;CdEmpres;S;S;'
          'LblDsEmpres;DsEmpres;S;N;')
        BrAlignment = taLeftJustify
        BrDicionario = DmSrvApl.BrvDicionario
        BrvQueryCode = 12
        BrRecordar = False
      end
      object LblDsEmpres: TBrvRetCon
        Left = 186
        Top = 3
        Width = 460
        Height = 19
        TabStop = False
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelWidth = 2
        BorderStyle = bsNone
        ParentColor = True
        ReadOnly = True
        TabOrder = 1
        ExplicitWidth = 472
      end
      object EdtDtInicio: TBrvEditDate
        Left = 80
        Top = 30
        Width = 100
        Height = 21
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
        BrvReadOnlyColor = 14541539
        BrDataValida = False
        BrDataVazia = True
        BrFunctionButton = TVdData
        BrAlignment = taLeftJustify
        BrDicionario = DmSrvApl.BrvDicionario
        BrRecordar = False
      end
      object EdtDtFim: TBrvEditDate
        Left = 80
        Top = 57
        Width = 100
        Height = 21
        EditMask = '99/99/9999;1; '
        MaxLength = 10
        TabOrder = 3
        Text = '  /  /    '
        BrvReadOnlyColor = 14541539
        BrDataValida = False
        BrDataVazia = True
        BrFunctionButton = TVdData
        BrAlignment = taLeftJustify
        BrDicionario = DmSrvApl.BrvDicionario
        BrRecordar = False
      end
      object BtnBuscar: TBrvBitBtn
        Left = 678
        Top = 55
        Width = 90
        Height = 25
        Hint = 'Localizar'
        Anchors = [akTop, akRight]
        Caption = 'Buscar'
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
        TabOrder = 4
        OnClick = BtnBuscarClick
        BrTipoBotao = BrBtnLocalizar
        ExplicitLeft = 690
      end
    end
    object PnlDados: TPanel
      Left = 1
      Top = 89
      Width = 789
      Height = 399
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object PgcLancto: TPageControl
        Left = 0
        Top = 0
        Width = 789
        Height = 365
        ActivePage = TbsLanctos
        Align = alClient
        TabOrder = 0
        object TbsLanctos: TTabSheet
          Caption = 'Lan'#231'amentos'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DbgReceitas: TBrvDbGrid
            Left = 0
            Top = 0
            Width = 781
            Height = 337
            BrShowMemo = True
            BrReadOnlyStyle = [fsItalic]
            BrReadOnlyColor = clMaroon
            Align = alClient
            DataSource = DtsReceitas
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DbgReceitasDrawColumnCell
            BrDicionario = DmSrvApl.BrvDicionario
            BrDrawColumn.Strings = (
              'N'#227'o remova essas duas linhas de formata'#231#227'o:'
              'CampoTabela;Operador;ValorComparativo;Cor;')
            BrGradeZebrada = False
          end
        end
        object TbsTotais: TTabSheet
          Caption = 'Totais'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Shape7: TShape
            Left = 3
            Top = 9
            Width = 773
            Height = 89
          end
          object Shape4: TShape
            Left = 5
            Top = 16
            Width = 241
            Height = 71
          end
          object Label28: TLabel
            Left = 8
            Top = 18
            Width = 63
            Height = 16
            Caption = 'Receitas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 89
            Top = 37
            Width = 58
            Height = 13
            Caption = 'Registros:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label4: TLabel
            Left = 89
            Top = 56
            Width = 54
            Height = 13
            Caption = 'Total: R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblRegRec: TLabel
            Left = 224
            Top = 37
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LblValorRec: TLabel
            Left = 224
            Top = 56
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Shape5: TShape
            Left = 260
            Top = 16
            Width = 241
            Height = 71
          end
          object Label29: TLabel
            Left = 264
            Top = 18
            Width = 108
            Height = 16
            Caption = 'Cancelamentos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 345
            Top = 37
            Width = 58
            Height = 13
            Caption = 'Registros:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label9: TLabel
            Left = 349
            Top = 56
            Width = 54
            Height = 13
            Caption = 'Total: R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblRegCan: TLabel
            Left = 484
            Top = 37
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LblValorCan: TLabel
            Left = 484
            Top = 56
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Shape6: TShape
            Left = 520
            Top = 16
            Width = 249
            Height = 71
          end
          object Label30: TLabel
            Left = 528
            Top = 18
            Width = 37
            Height = 16
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label8: TLabel
            Left = 605
            Top = 37
            Width = 58
            Height = 13
            Caption = 'Registros:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 609
            Top = 56
            Width = 54
            Height = 13
            Caption = 'Total: R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblRegTT: TLabel
            Left = 752
            Top = 37
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object LblValorTT: TLabel
            Left = 752
            Top = 56
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Shape8: TShape
            Left = 3
            Top = 104
            Width = 773
            Height = 121
          end
          object Shape2: TShape
            Left = 5
            Top = 112
            Width = 241
            Height = 105
          end
          object Shape3: TShape
            Left = 260
            Top = 112
            Width = 241
            Height = 105
          end
          object Shape9: TShape
            Left = 520
            Top = 112
            Width = 249
            Height = 105
          end
          object Label6: TLabel
            Left = 8
            Top = 120
            Width = 21
            Height = 13
            Caption = 'PIS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label12: TLabel
            Left = 80
            Top = 120
            Width = 79
            Height = 13
            Caption = 'Receitas : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblRecPIS: TLabel
            Left = 224
            Top = 120
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblCanPIS: TLabel
            Left = 224
            Top = 136
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label14: TLabel
            Left = 64
            Top = 136
            Width = 95
            Height = 13
            Caption = 'Cancelados : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label11: TLabel
            Left = 8
            Top = 176
            Width = 46
            Height = 13
            Caption = 'COFINS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            Left = 80
            Top = 176
            Width = 79
            Height = 13
            Caption = 'Receitas : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label15: TLabel
            Left = 64
            Top = 192
            Width = 95
            Height = 13
            Caption = 'Cancelados : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblCanCOFINS: TLabel
            Left = 224
            Top = 192
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblRecCOFINS: TLabel
            Left = 224
            Top = 176
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label16: TLabel
            Left = 268
            Top = 120
            Width = 38
            Height = 33
            AutoSize = False
            Caption = 'ISS Retido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
          end
          object Label19: TLabel
            Left = 268
            Top = 176
            Width = 37
            Height = 13
            Caption = 'ISSQn'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label17: TLabel
            Left = 340
            Top = 120
            Width = 79
            Height = 13
            Caption = 'Receitas : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label18: TLabel
            Left = 324
            Top = 136
            Width = 95
            Height = 13
            Caption = 'Cancelados : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label20: TLabel
            Left = 340
            Top = 176
            Width = 79
            Height = 13
            Caption = 'Receitas : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label22: TLabel
            Left = 324
            Top = 192
            Width = 95
            Height = 13
            Caption = 'Cancelados : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblRecISSQn: TLabel
            Left = 484
            Top = 176
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblCanISSQn: TLabel
            Left = 484
            Top = 192
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblCanISSRet: TLabel
            Left = 484
            Top = 136
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblRecISSRet: TLabel
            Left = 484
            Top = 120
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label21: TLabel
            Left = 528
            Top = 120
            Width = 31
            Height = 13
            Caption = 'ICMS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label25: TLabel
            Left = 528
            Top = 176
            Width = 57
            Height = 25
            AutoSize = False
            Caption = 'ICMS Retido'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
          end
          object Label23: TLabel
            Left = 608
            Top = 120
            Width = 79
            Height = 13
            Caption = 'Receitas : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 592
            Top = 136
            Width = 95
            Height = 13
            Caption = 'Cancelados : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = 608
            Top = 176
            Width = 79
            Height = 13
            Caption = 'Receitas : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label27: TLabel
            Left = 592
            Top = 192
            Width = 95
            Height = 13
            Caption = 'Cancelados : R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblRecICMS: TLabel
            Left = 752
            Top = 120
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblCanICMS: TLabel
            Left = 752
            Top = 136
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblRecICMSRet: TLabel
            Left = 752
            Top = 176
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object LblCanICMSRet: TLabel
            Left = 752
            Top = 192
            Width = 8
            Height = 13
            Alignment = taRightJustify
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
        end
        object TbsErros: TTabSheet
          Caption = 'Erros'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object BrvDbGrid1: TBrvDbGrid
            Left = 0
            Top = 0
            Width = 781
            Height = 337
            BrShowMemo = True
            BrReadOnlyStyle = [fsItalic]
            BrReadOnlyColor = clMaroon
            Align = alClient
            DataSource = DtsErros
            Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            BrDrawColumn.Strings = (
              'N'#227'o remova essas duas linhas de formata'#231#227'o:'
              'CampoTabela;Operador;ValorComparativo;Cor;')
            BrGradeZebrada = False
            Columns = <
              item
                Expanded = False
                FieldName = 'DsLinha'
                Width = 800
                Visible = True
                BrConsulta = 0
                BrPermissao = []
                BrValueHalfChecked = False
                BrSaveOnClick = False
              end>
          end
        end
      end
      object PnlGravar: TPanel
        Left = 0
        Top = 365
        Width = 789
        Height = 34
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          789
          34)
        object BtnGravar: TBrvBitBtn
          Left = 600
          Top = 5
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
          TabOrder = 0
          OnClick = BtnGravarClick
          BrTipoBotao = BrBtnSalvar
        end
        object BtnCancelar: TBrvBitBtn
          Left = 696
          Top = 5
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
          TabOrder = 1
          OnClick = BtnCancelarClick
          BrTipoBotao = BrBtnCancel
        end
      end
    end
  end
  inherited PopCfgFrm: TPopupMenu
    Left = 192
    Top = 64
  end
  inherited ImlPopFrm: TImageList
    Left = 224
    Top = 64
    Bitmap = {
      494C010103000500100014001400FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000500000001400000001002000000000000019
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B08B
      7B00BC888700BA868600BA868500BA868500BA868500BA868400BA858400BA85
      8400BA858400BA858400BA858400BA858400BB868400B28E7900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008D7B47007E784700AC763300B0773500AF773400AC75
      3300827947006C7D550000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDCC
      AE00FFF1D100FCE7C400FBE4BB00FAE1B400F8DDAD00F7DAA500F5D69C00F5D5
      9900F5D59900F5D59900F5D59900F5D59900F8DA9B00D0B58300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BB783300AA7B3D00C29F6F00D0BA9800D7C5A700D4C1A200CCB5
      9000BC956200AB763500C67A3300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000BB6D0000C4
      6800009676000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D7C7
      AE00F9E9D000CFB68D00CFB68D00CFB68D00F1D6AF00CFB68D00CFB68D00CFB6
      8D00CFB68D00EDCB9600CFB68D00CFB68D00CFB68D00CDB08200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B57C3B00C2A67A00E9DFCD00F1EBDE00F1EDE000F1ECDF00F1ECDF00F1ED
      E000F0EBDE00E0D2BA00B7936200B77D3C000000000000000000000000000000
      0000000000000000000000000000000000000000000002C46F0001BD6E0000BB
      6E0000BD6A00009A750000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8C9
      B100FBEDD600F5E2CA00F4DEC300F4DCBD00F2D9B600F1D5AF00F0D3A700F0CF
      A100EECD9B00EDCB9600EECC9600EECC9700F1D09800CDB08200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BA83
      4400C9AF8800F4F2E600F0EBDE00EEE9DA00EFEADD00F2EEE300F4F1E600EEE9
      DA00EEE9DB00F1EDE100EFEADD00BB986500BC83450000000000000000000000
      00000000000000000000000000000000000006C1750004C2720002BE700001BC
      6F0000BA6D0000C0680000927800000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DACB
      B600FCF0DD00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB6
      8D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CDB08200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CA8B4B00CBB1
      8800F6F4EB00F0EBDE00F0EADD00F1ECE000EBE1D200A5793C00B7946200F3ED
      E100F0EBDE00F0EADD00F2EDE100F2ECE000BE9B6900D68F4C00000000000000
      00000000000000000000000000000EC9770009C4750006C2750004C0720002BE
      710001BC6F0000BA6D0000C16900009A76000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBCE
      BB00FDF4E600F7E9D900F7E5D000F6E3CC00F3DFC500F4DCBE00F3D9B500F2D6
      B000F1D3AA00F0D0A300EDCB9A00EDCB9600F1D09800CDB08200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A8F6100BC925A00EDE7
      D800F3EFE400F1ECE100F1ECE100F2EEE300F0E9DC00C3A67C00D1BC9B00F4F0
      E500F1EDE100F1ECE100F1ECE100F5F2E800E0D3BA00BC8C5100000000000000
      0000000000000000000017CA7B0011C879000DC3770008C3760005C1740004C1
      720001BE700000BB6E0000BB6D0000BD69000096770000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DDD3
      C100FDF7ED00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB6
      8D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CDB08200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD905E00D1B69000F6F3
      EB00F3EFE600F3EFE500F3EFE500F3F0E600F4F0E600DDCEB200EBE2D200F5F2
      EA00F3EFE500F3EFE500F3EFE500F3F0E600F5F2E900C7A06F00999065000000
      00000000000024CB7D001DCB7D0016C87B0012C679000CC4780009C5760007C7
      750004C0720002BE700001BC6F0000BA6D0000C1690000967600000000000000
      000000000000000000000000000000000000000000000000000000000000E0D7
      C500FEFBF300F9EFE600F8ECDD00F8E9D800F6E6D100F5E2CA00F5DFC200F4DC
      BC00F2D9B600F1D5AF00F0D3A800F0D0A000F1D19B00CDB08200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC975E00E1D2BA00F8F6
      F000F5F2E900F5F2E900F5F2E900F6F3EB00F1ECE000BD996700CAAE8500F9F8
      F200F6F2EA00F5F2E900F5F2E900F6F2E900F8F5EF00D7BB9600969065000000
      00000000000030D4810023CB7F001DC97D0017C87B0012CA79000BB579000000
      000007C7740004C0730002BE710001BB6F0000BB6E0000BD6A00009A75000000
      000000000000000000000000000000000000000000000000000000000000E3DC
      CB00FFFFFA00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB6
      8D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CCB08400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CC9B6400E9DDCC00F8F7
      F100F6F3EC00F6F3EC00F6F3EC00F6F4ED00F8F7F100D1B89300B7925A00DFCE
      B400FCFDFB00F6F3EC00F6F3EC00F6F3EC00F9F9F400E0C7A800979165000000
      00000000000030CC82002CD0810023CA7E001FCD7C0014C07C00000000000000
      00000000000007CB730004C0720002BE700001BC6F0000BA6D0000C068000092
      780000000000000000000000000000000000000000000000000000000000E5DF
      CF00FFFFFF00FEF8F300FAF3EB00F9F0E600F8ECDD00F8E8D800F7E5CF00F5E2
      CA00F4DFC200F3DCBD00F2D8B600F1D6AD00F4D7A900CDB38900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CE9E6800EADECD00FAF8
      F300F8F5EE00F8F5EE00F8F6F000FBFBF700FAF7F200FEFEFC00CFB38C00BC95
      6000DECCB100FAF8F300F8F5EF00F8F5EE00FBFBF600E0C8A900999369000000
      000000000000000000002FC9830031D782001FC27E0000000000000000000000
      0000000000000000000007CC740004C0720002BE710001BC6F0000BA6D0000C1
      6900009A7600000000000000000000000000000000000000000000000000E7E0
      CF00FFFFFF00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB6
      8D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D19E6800E2D3BC00FBFB
      F800F8F6F100F9F8F200F5F1E800CAAB8000F1EADE00FBFBF700FBF9F500CEB3
      8A00C19D6B00F7F4EE00F9F8F200F9F7F100FAFAF500DABE9A009B966D000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006C7740004C1720001BE700000BB6E0000BB
      6D0000BD6900009677000000000000000000000000000000000000000000E9E1
      D000FFFFFF00FFFFFF00FFFDFC00FDF9F500FBF4ED00FAF1E700F9ECDD00F8E9
      D700F7E5D000F6E2C900F5DEC200F5DDBC00F6DDB700C6B38E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BA9D6D00D7BD9900FCFC
      F900FAF8F400FBF9F600F4EEE500C0996300D4B99500FFFFFF00FFFFFF00D5BA
      9600C39E6900F7F4EF00FAF9F500FAF9F500FBF9F600CEA87900AB9D72000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000007CC740004C0720002BE700001BC
      6F0000BA6D0000C169000098760000000000000000000000000000000000EBE3
      D000FFFFFF00FFFFFF00FFFFFF00FFFEFC00FDF9F300FBF4ED00FAEFE400F9ED
      DD00F8E9D600F7E4CF00F7E4CB00F1DCBF00DBC9AD00A8A08300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F967800CEA16D00F4EE
      E500FDFCFA00FBF9F600FDFCFA00E1CEB400C6A27100CEAF8500CEAF8500C6A2
      7100E0CCB000FCFBFA00FBF9F600FEFEFE00E6D6C000DEA26A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007C7740004C0730002BE
      710001BB6F0000BD6D0000B36D0000000000000000000000000000000000EDE5
      D100FFFFFF00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB6
      8D00FAEDDE00FFF5E200F5EBD700D0C6B500BCB6A400A09E8500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECAA7000D6BC
      9700FFFFFF00FDFCFA00FCFBF800FDFDFC00EEE3D300DDC8AA00DDC7A900ECE2
      D200FDFCFA00FCFBF800FEFEFD00F8F4EF00D4AD7D00929B7700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007CB730004C0
      720002BE700002C66C000000000000000000000000000000000000000000EFE6
      D200FFFFFF00CFB68D00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FCF6F100CFB6
      8D00FAF0E400C8A39600AA7E7800A27C7B00A37E7E00A18A6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFA4
      7100D8BD9A00FFFFFF00FFFFFF00FDFDFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FDFDFC00FFFFFF00F9F6F200CDAB7D00DAA9750000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000007CE
      740005C77100000000000000000000000000000000000000000000000000F1E9
      D300FFFFFF00CFB68D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCFB00CFB6
      8D00F4EBE300B88D8700E1B38500EFB36100F5AD3C00D2965700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8A6
      7C00D0A67300D5B99400F2EBE000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EADCCB00D6B08300DBAA76000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1EA
      D300FFFFFF00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB68D00CFB6
      8D00F6EFEB00BA8F8900E8BD8B00F8C26200D5986C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1B07800D1A67200D9B99000E7CFB300EBD6BF00EBD5BD00E4CB
      AC00D4B18500E3AA7300959E7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F4EE
      DA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F9F7F700BB928E00F0C68700CC9D71000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000859B7E00A8A17A00A39E7700A29D7600A29D7600A39F
      7800B2A47B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7EB
      AD00F1F8CF00F0F5CC00EEF4CC00EDF2CC00EBF0CA00E9EFCA00E6EDCA00E5EC
      CB00DDE1C000B29C7800BAAE6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000050000000140000000100010000000000F00000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFE0003000000000FC03FFFF
      FFE0003000000000F801FFC7FFE0003000000000F000FF83FFE0003000000000
      E0007F01FFE0003000000000C0003E00FFE000300000000080003C007FE00030
      00000000800018003FE0003000000000800018101FE000300000000080001838
      0FE000300000000080001C7C07E000300000000080001FFE03E0003000000000
      80001FFF01E000300000000080003FFF81E0003000000000C0003FFFC3E00030
      00000000E0007FFFE7E0003000000000E000FFFFFFE0007000000000F801FFFF
      FFE000F000000000FC07FFFFFFE001F000000000FFFFFFFFFFFFFFF000000000
      00000000000000000000000000000000000000000000}
  end
  inherited LspS049: TBrvListParam
    Left = 256
    Top = 64
  end
  object BrvAlertProgress: TBrvAlertProgress
    Left = 192
    Top = 96
  end
  object CcReceitas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 64
    object CcReceitasNRDOC: TStringField
      FieldName = 'NRDOC'
    end
    object CcReceitasDSMODENF: TStringField
      FieldName = 'DSMODENF'
      Size = 5
    end
    object CcReceitasDTEMINOT: TDateField
      FieldName = 'DTEMINOT'
    end
    object CcReceitasSTNOTA: TStringField
      FieldName = 'STNOTA'
    end
    object CcReceitasCDPRODUT: TIntegerField
      FieldName = 'CDPRODUT'
      Visible = False
    end
    object CcReceitasDSOBSERV: TStringField
      FieldName = 'DSOBSERV'
      Size = 50
    end
    object CcReceitasSTLANCTO: TStringField
      FieldName = 'STLANCTO'
      Visible = False
      Size = 1
    end
    object CcReceitasNRCCRREC: TIntegerField
      FieldName = 'NRCCRREC'
      Visible = False
    end
    object CcReceitasNRCDBREC: TIntegerField
      FieldName = 'NRCDBREC'
      Visible = False
    end
    object CcReceitasCDHISREC: TIntegerField
      FieldName = 'CDHISREC'
      Visible = False
    end
    object CcReceitasNRCCRPIS: TIntegerField
      FieldName = 'NRCCRPIS'
      Visible = False
    end
    object CcReceitasNRCDBPIS: TIntegerField
      FieldName = 'NRCDBPIS'
      Visible = False
    end
    object CcReceitasCDHISPIS: TIntegerField
      FieldName = 'CDHISPIS'
      Visible = False
    end
    object CcReceitasNRCCRCOF: TIntegerField
      FieldName = 'NRCCRCOF'
      Visible = False
    end
    object CcReceitasNRCDBCOF: TIntegerField
      FieldName = 'NRCDBCOF'
      Visible = False
    end
    object CcReceitasCDHISCOF: TIntegerField
      FieldName = 'CDHISCOF'
      Visible = False
    end
    object CcReceitasNRCCRICM: TIntegerField
      FieldName = 'NRCCRICM'
      Visible = False
    end
    object CcReceitasNRCDBICM: TIntegerField
      FieldName = 'NRCDBICM'
      Visible = False
    end
    object CcReceitasCDHISICM: TIntegerField
      FieldName = 'CDHISICM'
      Visible = False
    end
    object CcReceitasNRCCRISS: TIntegerField
      FieldName = 'NRCCRISS'
      Visible = False
    end
    object CcReceitasNRCDBISS: TIntegerField
      FieldName = 'NRCDBISS'
      Visible = False
    end
    object CcReceitasCDHISISS: TIntegerField
      FieldName = 'CDHISISS'
      Visible = False
    end
    object CcReceitasNRCCRISR: TIntegerField
      FieldName = 'NRCCRISR'
      Visible = False
    end
    object CcReceitasNRCDBISR: TIntegerField
      FieldName = 'NRCDBISR'
      Visible = False
    end
    object CcReceitasCDHISISR: TIntegerField
      FieldName = 'CDHISISR'
      Visible = False
    end
    object CcReceitasNRCCRICR: TIntegerField
      FieldName = 'NRCCRICR'
      Visible = False
    end
    object CcReceitasNRCDBICR: TIntegerField
      FieldName = 'NRCDBICR'
      Visible = False
    end
    object CcReceitasCDHISICR: TIntegerField
      FieldName = 'CDHISICR'
      Visible = False
    end
    object CcReceitasVRCONNOT: TFloatField
      FieldName = 'VRCONNOT'
      DisplayFormat = '###,###,##0.00'
    end
    object CcReceitasVRICMS: TFloatField
      FieldName = 'VRICMS'
      Visible = False
    end
    object CcReceitasVRICMSRET: TFloatField
      FieldName = 'VRICMSRET'
      Visible = False
    end
    object CcReceitasVRISSQN: TFloatField
      FieldName = 'VRISSQN'
      Visible = False
    end
    object CcReceitasVRISSRET: TFloatField
      FieldName = 'VRISSRET'
      Visible = False
    end
    object CcReceitasVRIMPPIS: TFloatField
      FieldName = 'VRIMPPIS'
      Visible = False
    end
    object CcReceitasVRIMPCOF: TFloatField
      FieldName = 'VRIMPCOF'
      Visible = False
    end
    object CcReceitasNRNOTMIN: TIntegerField
      FieldName = 'NRNOTMIN'
      Visible = False
    end
    object CcReceitasNRNOTMAX: TIntegerField
      FieldName = 'NRNOTMAX'
      Visible = False
    end
    object CcReceitasNRPLANO: TIntegerField
      FieldName = 'NRPLANO'
      Visible = False
    end
  end
  object CcErros: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 64
    object CcErrosDsLinha: TStringField
      FieldName = 'DsLinha'
      Size = 200
    end
  end
  object DtsErros: TDataSource
    DataSet = CcErros
    Left = 288
    Top = 97
  end
  object DtsReceitas: TDataSource
    DataSet = CcReceitas
    Left = 320
    Top = 97
  end
  object CcNotFisFat: TBrvClientDataSet
    Aggregates = <>
    Params = <>
    BeforeInsert = CcNotFisFatBeforeInsert
    BeforeDelete = CcNotFisFatBeforeDelete
    BrShowFieldName = False
    BrQueryCode = 0
    BrDicionario = DmSrvApl.BrvDicionario
    BrType = VqNormal
    BrGravaLog = True
    BrUserCode = 0
    Left = 352
    Top = 64
  end
  object CcNotFisCan: TBrvClientDataSet
    Aggregates = <>
    Params = <>
    BrShowFieldName = False
    BrQueryCode = 0
    BrDicionario = DmSrvApl.BrvDicionario
    BrType = VqNormal
    BrGravaLog = True
    BrUserCode = 0
    Left = 352
    Top = 96
  end
  object CcConfProdCan: TBrvClientDataSet
    Aggregates = <>
    Params = <>
    BrShowFieldName = False
    BrQueryCode = 0
    BrDicionario = DmSrvApl.BrvDicionario
    BrType = VqNormal
    BrGravaLog = True
    BrUserCode = 0
    Left = 384
    Top = 64
  end
  object CpB002: TBrvClientDataSet
    Aggregates = <>
    Params = <>
    BrShowFieldName = False
    BrQueryCode = 0
    BrDicionario = DmSrvApl.BrvDicionario
    BrType = VqNormal
    BrGravaLog = True
    BrUserCode = 0
    Left = 384
    Top = 96
  end
  object CcB004: TBrvClientDataSet
    Aggregates = <>
    Params = <>
    BrShowFieldName = False
    BrQueryCode = 0
    BrDicionario = DmSrvApl.BrvDicionario
    BrType = VqNormal
    BrGravaLog = True
    BrUserCode = 0
    Left = 416
    Top = 64
  end
  object CcB008: TBrvClientDataSet
    Aggregates = <>
    Params = <>
    BrShowFieldName = False
    BrQueryCode = 0
    BrDicionario = DmSrvApl.BrvDicionario
    BrType = VqNormal
    BrGravaLog = True
    BrUserCode = 0
    Left = 416
    Top = 96
  end
  object CpG008: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 64
  end
  object BrvServerProgress: TBrvServerProgress
    Left = 448
    Top = 96
  end
end
