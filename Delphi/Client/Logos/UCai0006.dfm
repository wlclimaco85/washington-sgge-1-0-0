inherited Cai0006: TCai0006
  Left = 327
  Top = 171
  Caption = 'Cai0006 - Configurar consulta'
  ClientHeight = 365
  ClientWidth = 708
  OnCreate = FormCreate
  ExplicitWidth = 714
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 708
    Height = 365
    ExplicitWidth = 708
    ExplicitHeight = 365
    inherited Panel2: TPanel
      Top = 328
      Width = 702
      ExplicitTop = 328
      ExplicitWidth = 702
      inherited BbtOk: TBrvBitBtn
        Left = 232
        OnClick = BbtOkClick
        ExplicitLeft = 232
      end
      inherited BbtCancel: TBrvBitBtn
        Left = 313
        ExplicitLeft = 313
      end
      object BrvBitBtn1: TBrvBitBtn
        Left = 396
        Top = 3
        Width = 75
        Height = 26
        Caption = 'Excluir'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 2
        OnClick = BrvBitBtn1Click
        BrTipoBotao = BrBtnExcluir
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 702
      Height = 27
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 6
        Top = 7
        Width = 121
        Height = 13
        Caption = 'Consultas dispon'#237'veis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CbxConDis: TBrvComboBox
        Left = 133
        Top = 2
        Width = 561
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnChange = CbxConDisChange
      end
    end
    object PgcConfig: TPageControl
      Left = 1
      Top = 28
      Width = 702
      Height = 300
      ActivePage = TbsRetorn
      Align = alClient
      TabOrder = 2
      object TbsAtrDis: TTabSheet
        Caption = 'Atributos para Display'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel8: TPanel
          Left = 0
          Top = 245
          Width = 694
          Height = 27
          Align = alBottom
          TabOrder = 0
          object Label4: TLabel
            Left = 6
            Top = 7
            Width = 117
            Height = 13
            Caption = 'Separador de campo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CbxSepAnt: TBrvComboBox
            Left = 130
            Top = 2
            Width = 183
            Height = 21
            Style = csDropDownList
            TabOrder = 0
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 694
          Height = 245
          Align = alTop
          Caption = 'Panel4'
          TabOrder = 1
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 663
            Height = 243
            Align = alClient
            BevelOuter = bvNone
            Caption = 'Panel6'
            TabOrder = 0
            object CbxAtribu: TBrvCheckListBox
              Left = 0
              Top = 0
              Width = 663
              Height = 243
              Align = alClient
              ItemHeight = 13
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 664
            Top = 1
            Width = 29
            Height = 243
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object BtnAcima: TBrvSpeedButton
              Left = 2
              Top = 0
              Width = 26
              Height = 26
              Flat = True
              Glyph.Data = {
                56070000424D5607000000000000360400002800000028000000140000000100
                0800000000002003000000000000000000000001000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                A6000020400000206000002080000020A0000020C0000020E000004000000040
                20000040400000406000004080000040A0000040C0000040E000006000000060
                20000060400000606000006080000060A0000060C0000060E000008000000080
                20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                20004000400040006000400080004000A0004000C0004000E000402000004020
                20004020400040206000402080004020A0004020C0004020E000404000004040
                20004040400040406000404080004040A0004040C0004040E000406000004060
                20004060400040606000406080004060A0004060C0004060E000408000004080
                20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                20008000400080006000800080008000A0008000C0008000E000802000008020
                20008020400080206000802080008020A0008020C0008020E000804000008040
                20008040400080406000804080008040A0008040C0008040E000806000008060
                20008060400080606000806080008060A0008060C0008060E000808000008080
                20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
                0303030303030303030303030303030303030303030303030303030303030303
                0303030303030303030303030303030303030303030303030303030303030303
                0303030303030303030303030303030303030300000003030303030303030303
                030303030303A4A4A403030303030303030303030303030303030300F9000303
                0303030303030303030303030303A4FFA4030303030303030303030303030303
                03030300F90003030303030303030303030303030303A4FFA403030303030303
                030303030303030303030300F90003030303030303030303030303030303A4FF
                A403030303030303030303030303030303030300F90003030303030303030303
                030303030303A4FFA403030303030303030303030303030303030300F9000303
                030303030303030303030303FFFFA4FFA4030303030303030303030303030303
                00000000F90000000003030303030303030303A4A4A4A403A4A4A4A403030303
                030303030303030300F9F9F9F9F9F9F90003030303030303030303A403FF0303
                030303A40303030303030303030303030300F9F9F9F9F9000303030303030303
                03030303A4FF03030303A4FF0303030303030303030303030300F9F9F9F9F900
                030303030303030303030303A403FF030303A403030303030303030303030303
                030300F9F9F9000303030303030303030303030303A4FF0303A4FF0303030303
                0303030303030303030300F9F9F9000303030303030303030303030303A403FF
                03A4030303030303030303030303030303030300F90003030303030303030303
                030303030303A4FFA4FF030303030303030303030303030303030300F9000303
                0303030303030303030303030303A403A4030303030303030303030303030303
                0303030300030303030303030303030303030303030303A4FF03030303030303
                03030303030303030303030300030303030303030303030303030303030303A4
                0303030303030303030303030303030303030303030303030303030303030303
                0303030303030303030303030303030303030303030303030303030303030303
                0303030303030303030303030303030303030303030303030303}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnAcimaClick
              BrTipoBotao = BrBtnSetaAcima
            end
            object BtnAbaixo: TBrvSpeedButton
              Left = 2
              Top = 26
              Width = 26
              Height = 26
              Flat = True
              Glyph.Data = {
                56070000424D5607000000000000360400002800000028000000140000000100
                0800000000002003000000000000000000000001000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                A6000020400000206000002080000020A0000020C0000020E000004000000040
                20000040400000406000004080000040A0000040C0000040E000006000000060
                20000060400000606000006080000060A0000060C0000060E000008000000080
                20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                20004000400040006000400080004000A0004000C0004000E000402000004020
                20004020400040206000402080004020A0004020C0004020E000404000004040
                20004040400040406000404080004040A0004040C0004040E000406000004060
                20004060400040606000406080004060A0004060C0004060E000408000004080
                20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                20008000400080006000800080008000A0008000C0008000E000802000008020
                20008020400080206000802080008020A0008020C0008020E000804000008040
                20008040400080406000804080008040A0008040C0008040E000806000008060
                20008060400080606000806080008060A0008060C0008060E000808000008080
                20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
                0303030303030303030303030303030303030303030303030303030303030303
                0303030303030303030303030303030303030303030303030303030303030303
                0303030303030303030303030303030303030303000303030303030303030303
                03030303030303A4FF0303030303030303030303030303030303030300030303
                030303030303030303030303030303A403FF0303030303030303030303030303
                03030300F90003030303030303030303030303030303A4FFA4FF030303030303
                030303030303030303030300F90003030303030303030303030303030303A403
                A403FF03030303030303030303030303030300F9F9F900030303030303030303
                0303030303A4FF0303A4FF03030303030303030303030303030300F9F9F90003
                03030303030303030303030303A4030303A403FF030303030303030303030303
                0300F9F9F9F9F900030303030303030303030303A4FF03030303A4FF03030303
                03030303030303030300F9F9F9F9F900030303030303030303030303A4030303
                0303A403FF030303030303030303030300F9F9F9F9F9F9F90003030303030303
                030303A4FFFFFFFF03FFFFA4FF030303030303030303030300000000F9000000
                0003030303030303030303A4A4A4A4FFA4A4A4A4030303030303030303030303
                03030300F90003030303030303030303030303030303A4FFA4FF030303030303
                030303030303030303030300F90003030303030303030303030303030303A4FF
                A4FF030303030303030303030303030303030300F90003030303030303030303
                030303030303A4FFA4FF030303030303030303030303030303030300F9000303
                0303030303030303030303030303A4FFA4FF0303030303030303030303030303
                03030300F90003030303030303030303030303030303A4FFA4FF030303030303
                030303030303030303030300000003030303030303030303030303030303A4A4
                A403030303030303030303030303030303030303030303030303030303030303
                0303030303030303030303030303030303030303030303030303030303030303
                0303030303030303030303030303030303030303030303030303}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = BtnAbaixoClick
              BrTipoBotao = BrBtnSetaAbaixo
            end
          end
        end
      end
      object TbsRetorn: TTabSheet
        Caption = 'Atributos para retorno'
        ImageIndex = 1
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 694
          Height = 33
          Align = alTop
          TabOrder = 0
          object Label2: TLabel
            Left = 326
            Top = 6
            Width = 17
            Height = 25
            Caption = '='
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BrvSpeedButton2: TBrvSpeedButton
            Left = 665
            Top = 3
            Width = 26
            Height = 26
            Flat = True
            Glyph.Data = {
              56070000424D5607000000000000360400002800000028000000140000000100
              0800000000002003000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303000303030303030303030303
              03030303030303A4FF0303030303030303030303030303030303030300030303
              030303030303030303030303030303A403FF0303030303030303030303030303
              03030300F90003030303030303030303030303030303A4FFA4FF030303030303
              030303030303030303030300F90003030303030303030303030303030303A403
              A403FF03030303030303030303030303030300F9F9F900030303030303030303
              0303030303A4FF0303A4FF03030303030303030303030303030300F9F9F90003
              03030303030303030303030303A4030303A403FF030303030303030303030303
              0300F9F9F9F9F900030303030303030303030303A4FF03030303A4FF03030303
              03030303030303030300F9F9F9F9F900030303030303030303030303A4030303
              0303A403FF030303030303030303030300F9F9F9F9F9F9F90003030303030303
              030303A4FFFFFFFF03FFFFA4FF030303030303030303030300000000F9000000
              0003030303030303030303A4A4A4A4FFA4A4A4A4030303030303030303030303
              03030300F90003030303030303030303030303030303A4FFA4FF030303030303
              030303030303030303030300F90003030303030303030303030303030303A4FF
              A4FF030303030303030303030303030303030300F90003030303030303030303
              030303030303A4FFA4FF030303030303030303030303030303030300F9000303
              0303030303030303030303030303A4FFA4FF0303030303030303030303030303
              03030300F90003030303030303030303030303030303A4FFA4FF030303030303
              030303030303030303030300000003030303030303030303030303030303A4A4
              A403030303030303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = BrvSpeedButton2Click
            BrTipoBotao = BrBtnSetaAbaixo
          end
          object CbxAtrDes: TBrvComboBox
            Left = 7
            Top = 6
            Width = 320
            Height = 21
            Style = csDropDownList
            TabOrder = 0
          end
          object CbxAtrOri: TBrvComboBox
            Left = 342
            Top = 6
            Width = 320
            Height = 21
            Style = csDropDownList
            TabOrder = 1
          end
        end
        object BrvClxRetorn: TListBox
          Left = 0
          Top = 33
          Width = 665
          Height = 239
          Align = alClient
          ItemHeight = 13
          TabOrder = 1
        end
        object Panel11: TPanel
          Left = 665
          Top = 33
          Width = 29
          Height = 239
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          object BrvSpeedButton1: TBrvSpeedButton
            Left = 2
            Top = 2
            Width = 26
            Height = 26
            Hint = 'Excluir'
            Flat = True
            Glyph.Data = {
              56070000424D5607000000000000360400002800000028000000140000000100
              0800000000002003000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00646464646464
              6464646464646464646464646464646464646464646464646464646464646464
              6464646464646464646464646464646464646464646464646464646464646464
              6464646464646464646464646464646464646464646464646464646464646464
              6464646464646464646464646464646464646464646400000000000000000000
              000064646464646464A4A4A4A4A4A4A4A4A4A4A4A464646464646464646400FF
              FFFFFFFFFFFFFFFFFF0064646464646464A4FF080808080808080808A4646464
              64646464646400FFFFFFFFFFFFFFFFFFFF0064646464646464A4FF08FFFFFFFF
              FFFFFFFFA464646464646464646400FF0000000000000000FF00646464646464
              64A4FFA4A4A4A4A4A4A4A408A464646464646464646400FFFFFFFFFFFFFFFFFF
              FF0064646464646464A4FF08FFFFFFFFFFFFFFFFA464646464646464646400FF
              0000000000000000FF0064646464646464A4FFA4A4A4A4A4A4A4A408A4646464
              64646464646400FFFFFFFFFFFFFFFFFFFF0064646464646464A4FF08FFFFFFFF
              FFFFFFFFA464646464646464646400FF0000000000000000FF00646464646464
              64A4FFA4A4A4A4A4A4A4A408A464646464646464646400FFFFFFFFFFFFFFFFFF
              FF0064646464646464A4FF08FFFFFFFFFFFFFFFFA464646464646464646400FF
              0000000000000000FF0064646464646464A4FFA4A4A4A4A4A4A4A408A4646464
              64646464646400FFFFFFFFFFFFFFFFFFFF0064646464646464A4FF08FFFFFFFF
              FF08FFFFA464646464646464646400FF0000000000FF00000000000064646464
              64A4FFA4A4A4A4A408A4A4A4A4A4A46464646464646400FFFFFFFFFFFF000101
              010101010064646464A4FFFFFFFFFFFFA4FF0808080808A46464646464640000
              000000000000F9F9F9F9F9F90064646464A4A4A4A4A4A4A4A408FFFFFFFFFFA4
              6464646464646464646464646464000000000000646464646464646464646464
              64A4A4A4A4A4A464646464646464646464646464646464646464646464646464
              6464646464646464646464646464646464646464646464646464646464646464
              6464646464646464646464646464646464646464646464646464}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = BrvSpeedButton1Click
            BrTipoBotao = BrBtnExcluir
          end
        end
      end
    end
  end
  object QpChaEst: TBrvClientDataSet
    Aggregates = <>
    Params = <>
    BrShowFieldName = False
    BrQueryCode = 0
    BrDicionario = DmSrvApl.BrvDicionario
    BrType = VqNormal
    BrGravaLog = True
    BrUserCode = 0
    Left = 526
    Top = 176
  end
  object BrvString: TBrvString
    Left = 632
    Top = 192
  end
  object BrvString2: TBrvString
    Left = 632
    Top = 248
  end
end
