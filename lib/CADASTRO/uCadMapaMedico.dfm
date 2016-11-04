inherited frmCadMapaMedico: TfrmCadMapaMedico
  Left = 301
  Top = 117
  Caption = 'Mapa M'#233'dico'
  ClientHeight = 566
  ClientWidth = 1076
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPadrao: TStatusBar
    Top = 547
    Width = 1076
    Panels = <
      item
        Style = psOwnerDraw
        Width = 900
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  inherited Panel1: TPanel
    Width = 1076
    inherited btPesquisar: TBitBtn
      OnClick = btPesquisarClick
    end
    inherited btfechar: TBitBtn
      Left = 1027
    end
  end
  inherited Panel2: TPanel
    Width = 1076
    Height = 495
    inherited pgGeral: TPageControl
      Width = 1074
      Height = 493
      ActivePage = tabGeral
      inherited tabLista: TTabSheet
        inherited Panel3: TPanel
          Width = 1066
          Height = 465
          inherited grDados: TdxDBGrid
            Width = 1064
            Height = 463
            KeyField = 'CD_MAPA'
            ParentFont = False
            BandColor = clHighlight
            Filter.Criteria = {00000000}
            GroupPanelColor = clHighlight
            HeaderFont.Style = [fsBold]
            object gcCD_MAPA: TdxDBGridColumn
              Caption = 'C'#243'digo'
              Width = 53
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CD_MAPA'
            end
            object gcNM_MEDICO: TdxDBGridColumn
              Caption = 'M'#233'dico'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NM_MEDICO'
            end
            object gcDT_MAPA: TdxDBGridColumn
              Caption = 'Data'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DT_MAPA'
            end
          end
        end
      end
      inherited tabGeral: TTabSheet
        inherited Panel4: TPanel
          Width = 1066
          Height = 465
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 1064
            Height = 48
            Align = alTop
            TabOrder = 0
            object Label2: TLabel
              Left = 10
              Top = 15
              Width = 32
              Height = 13
              Caption = 'Data:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 198
              Top = 15
              Width = 46
              Height = 13
              Caption = 'M'#233'dico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object dtMapa: TDBDateEdit
              Left = 43
              Top = 12
              Width = 121
              Height = 21
              DataField = 'DT_MAPA'
              DataSource = dsControle
              NumGlyphs = 2
              TabOrder = 0
            end
            object btLocMedico: TdxDBButtonEdit
              Left = 247
              Top = 11
              Width = 75
              Hint = '(F5) Localizar Pais'
              ParentShowHint = False
              ShowHint = True
              Style.ButtonStyle = bts3D
              TabOrder = 1
              DataField = 'CD_MEDICO'
              DataSource = dsControle
              ReadOnly = False
              OnChange = btLocMedicoChange
              Buttons = <
                item
                  Default = True
                  Glyph.Data = {
                    36050000424D3605000000000000360400002800000010000000100000000100
                    0800000000000001000000000000000000000001000000000000D4600600E06A
                    0600AB500B00481C11006A381100AB58110060311600B66A1600A1502A00A158
                    31007B583800484040007B584000584848007B58480098734800605850006A58
                    5000735850007B6050008F6A50007B50580084505800845858006A6058007360
                    5800CA7B58008F6A6000AB7B6A00AB846A00E0AB6A00737373007B7373008F73
                    7300A1847B00AB987B00EAB67B0084848400CAAB8400EAC08400F4CA84008F8F
                    8F0098988F00CAAB8F00CAB68F00E0B68F00D4C08F00EAC08F00EACA8F00A198
                    9800CAAB9800D4B69800D4C09800D4CA9800E0CA9800EAD49800487BA1008F98
                    A100A1A1A100ABA1A100F4EAA100ABA1AB00B6A1AB00ABABAB00C0ABAB00B6B6
                    AB00CAB6AB00D4D4AB00E0D4AB00E0E0AB00EAE0AB00FFEAAB0084A1B600D4C0
                    B600D4E0B600F4F4B600506AC000B6B6C000D4E0C000F4F4C000FFFFC000586A
                    CA0073ABCA0098B6CA00B6B6CA00B6C0CA00C0C0CA00EAF4CA005073D400607B
                    D400ABCAD400B6CAD400B6D4D400C0D4D400D4E0D400EAF4D400B6CAE000C0CA
                    E000C0D4E000C0E0E000E0E0E000C0E0EA00FFFFEA00CAEAF400D4F4F400EAF4
                    F400FF00FF0016A1FF002AA1FF0023ABFF008FE0FF00C0EAFF00CAEAFF00CAF4
                    FF00D4F4FF00E0F4FF00D4FFFF00E0FFFF00F4FFFF00FFFFFF00000000000000
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
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000000000006A3A102A6A6A
                    6A6A6A6A6A6A6A6A6A6A3A535916256A6A6A6A6A6A6A6A6A6A6A6A6E6C511729
                    6A6A6A6A6A6A6A6A6A6A6A6A6E6D58153F6A6A6A6A6A6A6A6A6A6A6A6A386B4C
                    0B2011190D1F6A6A6A6A6A09090852481C476677771B031A066A6A2775756840
                    2F4B4F5F76771871136A6A1E6F5B552B362E4A5E64662339126A6A1E6F5B5532
                    2E2C434A4E5726390E6A6A1E6F5B5B324534354344501D5B0E6A6A1E705D5D41
                    496944303C2721760C6A6A1E6F5B5B5B3B4236302D225B770C6A6A1E70616262
                    654D313D4D6772770C6A6A247165656767677271706768770C6A6A0205050505
                    0505050507070714046A6A000101010101010101010101010F6A}
                  Kind = bkGlyph
                end>
              ClickKey = 116
              OnButtonClick = btLocMedicoButtonClick
              StoredValues = 64
              ExistButtons = True
            end
            object edMedico: TdxDBEdit
              Left = 323
              Top = 11
              Width = 278
              Color = cl3DLight
              TabOrder = 2
              TabStop = False
              DataField = 'NM_MEDICO'
              DataSource = dsControle
              ReadOnly = True
              StoredValues = 64
            end
            object btAgenda: TBitBtn
              Left = 704
              Top = 8
              Width = 113
              Height = 33
              Caption = 'Agenda x Mapa'
              TabOrder = 3
              OnClick = btAgendaClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333333333333333333333333C3333333333333337F3333333333333C0C3333
                333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
                3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
                333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
                0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
                0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
                3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
                3333333333777333333333333333333333333333333333333333}
              NumGlyphs = 2
            end
          end
          object Panel6: TPanel
            Left = 1035
            Top = 49
            Width = 30
            Height = 415
            Align = alRight
            TabOrder = 1
            object btIns: TSpeedButton
              Left = 4
              Top = 8
              Width = 23
              Height = 22
              Hint = 'Incluir'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333333FF33333333FF333993333333300033377F3333333777333993333333
                300033F77FFF3333377739999993333333333777777F3333333F399999933333
                33003777777333333377333993333333330033377F3333333377333993333333
                3333333773333333333F333333333333330033333333F33333773333333C3333
                330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                333333333337733333FF3333333C333330003333333733333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = btInsClick
            end
            object btDel: TSpeedButton
              Left = 4
              Top = 32
              Width = 23
              Height = 22
              Hint = 'Excluir'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333FF33333333333330003333333333333777333333333333
                300033FFFFFF3333377739999993333333333777777F3333333F399999933333
                3300377777733333337733333333333333003333333333333377333333333333
                3333333333333333333F333333333333330033333F33333333773333C3333333
                330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
                333333377F33333333FF3333C333333330003333733333333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = btDelClick
            end
          end
          object grMapaMedico: TdxDBGrid
            Left = 1
            Top = 49
            Width = 1034
            Height = 415
            Bands = <
              item
                Caption = 'Identifica'#231#227'o do Paciente'
                Width = 317
              end
              item
                Caption = 'Primeira Consulta'
              end
              item
                Caption = 'Primeiro TARV'
              end
              item
                Caption = #218'ltima Consulta'
              end
              item
                Caption = 'Rastreio'
                Width = 75
              end
              item
                Caption = 'TARV'
              end
              item
                Caption = 'Diagn'#243'stico'
              end
              item
                Caption = 'Prescri'#231#227'o'
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'CD_MAPA_LINHA'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 2
            AutoExpandOnSearch = False
            BandColor = 8404992
            BandFont.Charset = DEFAULT_CHARSET
            BandFont.Color = clWhite
            BandFont.Height = -13
            BandFont.Name = 'MS Sans Serif'
            BandFont.Style = [fsBold]
            DataSource = dsMapaLinha
            DblClkExpanding = False
            Filter.Criteria = {00000000}
            GroupPanelColor = 12615680
            HeaderColor = 15983825
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clWindowText
            HeaderFont.Height = -11
            HeaderFont.Name = 'MS Sans Serif'
            HeaderFont.Style = [fsBold]
            OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoPreview, edgoUseBitmap]
            PreviewFieldName = 'NM_PACIENTE'
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clBlue
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = [fsBold]
            RowFooterColor = 13232592
            ShowBands = True
            ShowRowFooter = True
            object gcCODIGO: TdxDBGridColumn
              Caption = 'Cod.'
              DisableEditor = True
              Width = 34
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODIGO'
            end
            object gcNR_PROCESSO: TdxDBGridColumn
              Caption = 'Nr. Processo'
              Width = 85
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NR_PROCESSO'
            end
            object gcNM_PACIENTE: TdxDBGridMaskColumn
              Caption = 'Nome do Utente'
              Visible = False
              Width = 55
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NM_PACIENTE'
            end
            object gcTP_SEXO: TdxDBGridColumn
              Caption = 'Sexo'
              HeaderAlignment = taCenter
              Width = 43
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FL_SEXO'
            end
            object gcNR_IDADE_ANOS: TdxDBGridColumn
              Caption = 'Idade Anos'
              HeaderAlignment = taCenter
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NR_IDADE_ANOS'
            end
            object gcNR_IDADE_MESES: TdxDBGridColumn
              Caption = 'Idade Meses'
              HeaderAlignment = taCenter
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NR_IDADE_MESES'
            end
            object gcVL_GESTANTE: TdxDBGridCheckColumn
              Caption = 'Gestante'
              MinWidth = 20
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VL_GESTANTE'
              ValueChecked = 'S'
              ValueGrayed = 'N'
              ValueUnchecked = 'N'
            end
            object gcDT_PREV_GEST: TdxDBGridDateColumn
              Caption = 'Data Prev. Gest.'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DT_PREV_GESTACAO'
              UseEditMask = True
            end
            object gcNR_MESES: TdxDBGridColumn
              Caption = 'Meses'
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NR_MESES'
            end
            object gcDT_PRIMEIRA_CONSULTA: TdxDBGridDateColumn
              Caption = 'Data'
              Width = 50
              BandIndex = 1
              RowIndex = 0
              FieldName = 'DT_PRIMEIRA_CONSULTA'
              UseEditMask = True
            end
            object gcVL_ESTADIO_PC: TdxDBGridPickColumn
              Alignment = taCenter
              Caption = 'OMS'
              Width = 50
              BandIndex = 1
              RowIndex = 0
              FieldName = 'VL_ESTADIO_PC'
              Items.Strings = (
                'I'
                'II'
                'III'
                'IV')
            end
            object gcVL_CD4_PC: TdxDBGridColumn
              Caption = 'CD4'
              Width = 40
              BandIndex = 1
              RowIndex = 0
              FieldName = 'VL_CD4_PC'
            end
            object gcVL_CV_PC: TdxDBGridColumn
              Caption = 'CV'
              Width = 40
              BandIndex = 1
              RowIndex = 0
              FieldName = 'VL_CV_PC'
            end
            object gcDT_PRIMEIRO_TARV: TdxDBGridDateColumn
              Caption = 'Data'
              Width = 50
              BandIndex = 2
              RowIndex = 0
              FieldName = 'DT_PRIMEIRO_TARV'
              UseEditMask = True
            end
            object gcVL_PRIMEIRO_ESQUEMA: TdxDBGridColumn
              Caption = 'Esquema'
              DisableDragging = True
              HeaderAlignment = taCenter
              Width = 60
              BandIndex = 2
              RowIndex = 0
              FieldName = 'VL_PRIMEIRO_ESQUEMA'
            end
            object gcBTEsq: TdxDBGridButtonColumn
              HeaderAlignment = taCenter
              HeaderGlyph.Data = {
                F6050000424DF60500000000000036000000280000001E000000100000000100
                180000000000C0050000C40E0000C40E00000000000000000000FFFFFBFFFBF8
                F2F3F7E5F1F3E4FBF7DAF2EAE5F4ECE9F4ECEAEFEEF7F5F5F8ECEAFFEEEA3303
                003E0400FFFEFFFEF9FBFFFEFFFDFEFFFCFDFFFDFFFEFAFEF8F8FEF3BAB4B99E
                9C9CB6B5B1F2F0EFFFFDFFFFFEFFFAFFFEF4FFF70000FFFDF9E7DFDF9EA1A57F
                8A8E7585847C8B8780878283848084828293888A9A8685280A05542A252C0000
                FBFFFFFDFFFFF6F5F7FFFEFFF2EDECBCB3AF90867C6054486245414E39312F23
                173C362FD6D4D4FFFDFFFBFCFFFBFFFF0000F3E7E58B85862B2F340F141D0E11
                1619181C140C0D2216162A161B22070B23010153312B230600FFF4E6F1FCFAF8
                FFFFFCFDFBFEF7F46858524630255C4133725443895A4C643C294B301B2E1F0F
                605956FFFBFFFFFBFFFCF7FF0000D2CECDFFFFFFFDFEFFFFFDFFFFFDFFFFF8F7
                FFFEF9FFFBF7FFF9FA2A08094F29271C00009B8B7FFFF9EAF8FFFFF0F5F3FFFF
                FCB6A8A24A34296F524373523F6D4A36724C3A7A543C7A5539896D55231106BD
                B5B6FFFDFFFBFDFF0000BBC1C0F7FCFAFFFFFEFFFDFA250700310D002A070034
                10002A05004A272323060225120D8B8A80EBF4E7FDFCFEFFFFFEFFFFFB817067
                4A3428897060C7AE9A9F846F8275656A4F3A8B6144C4957A502E1E665951F4F7
                F5F4FFFF0000B8C0C0FFFFFEFFFFF8220C00785835DDBA8EE1BF916C49212A05
                002E0E03FFFDF921151380847EECF9F1FFFEFFFFFEFFFFF5F14F3E35847164C6
                B3A4C2B2A28E7F6FD2D4C86C5742B08064E7AD9090644D3A291CF6FAF4F3FFFC
                0000C1C0C4FFFFFB190300725833FFFAB9FFF4A5FFF5A4FFF7B378582F2A0C00
                FFF3F11E1518858787E9EFEEFCFDFFFFFFFFE4DBD83C2F27C2B3AA6D5E557C71
                698D847BA8A0937D5C48BC8364EEAE8FBB8D75251205DBD8D4F8FDFE0000C4BE
                C3FFFBF72B1100E7CE9CFFF6A7FFFF9FFFFC9AFFFBA9CDB4822A1000FFFEFB19
                1217838286EEF1F5F6FFFFF3F7F8A6A39F281E17CFC2BAA3958FF3E8E4BFB8B5
                6F554783543EDB9B79EDAE8CD5A9912A160BA39B9CFFFBFF0000C7C0C5FFF9F6
                240A00EAD19FFFF7A7FFFF9EFFFF9FFFF7A4CFBC89241000FFFCF8181419817F
                85F3F3F9EBFDFCF8FFFA72665A4E322179503A7D523D98705D6E4A38784F36A1
                6B52C19070E4AB8CECAC944E3521666C61FFFDFA0000C3BFC4FFFFFB230D0078
                613BFDEFADFDF6A6FFFAAAFFF6B263552B160900FFFFFB161517828485E7EBEC
                FFFFFFFFFAF84A332B6F4D40835E5089665985685F9F8880B39D97D0B7ADB9A8
                9583705BE0BFAC7050453D312BFDFBFA0000B7BBBCFFFFFEFFFFF8200C008369
                45EBD3A5D7C6957062381F1400FFFFF5FFFDF8171816838A85E7F3EDFFFEFEDD
                CECC331D18937770AD938C75625D635A57CBC7C6FEFBFFC6C9CDBAC1BCC7D1C4
                CBC8BA81615B4C2E2DAEB1AF0000C0C5C3F7F8F6FFFEFDFFFEFB240A00220700
                200B00190A00FFFEF4FFFFFBFFFEF91818127B847AECFAEEFCFCFCB9B5B47067
                63FFF7EFF5ECE3C6C1B8CDCEC5F0F4EED3D2D6BFCAC8DFDFD9F9F5EAD8D7C993
                7C745E3F3C4D4D470000C3C0BCFFFFFEFBFAFEFBF7FDFFFDFFFFF6F5FFFEFBA8
                9C98A09597A09899A195932D2720A7ADA2ECF6E9E4EEEEAEB4B3D4D4CEB4AFA6
                6D64576E6453C4B8A6FFF6E4FBEFE3C1BEAF8B6E5FB28578F7E3D2C1BAAB584C
                427F77700000CAC4BFFFFDFCFDFDFFFDFCFFFFFBFFFFF9FFFFF9FC999295FFFD
                FFFFFEFFFFFFFE74706BD5D6CCFFFFF7F0F3F7F7F9FAFFFCF8C5BBB44F3F337B
                6454DDC1B0C2A38EA69580AD9A858A5F4E91574BA6897BC7CABBB3B7ACFFFCF8
                0000D3D0C8FFFEFAFFFEFFFDFDFFF9F8FCFFFFFFFFFFFE9D9B9AF7FBFCF6FFFF
                788381C9D0CBFCFAF2FFFCF3FFFDFFFDFAFCFFFCFDFFFFFEF6EBE7C9B9B2C2AE
                A3AF998D92897FAA958DCDB3ACEBD5CFE9DBD5D7D8D4D3DAD7FFFAFB0000F3F1
                E9D8D7D3C0BDBFBABBBFC5C7C8BBBEBCC6C3BFBFC0BCBBC3C3BCCCCBE0F0EFF0
                FBF8FFFFFAFFFFF9FFFFFFFFFFFFF9FDFEF8FDFEF9FEFFE1E5E6D2D4D4FCFDFB
                F6FBFEFFFBFFF8F9FDECFFFFF5FAFDFFFDFFE0E4E9FDFCFF0000}
              MinWidth = 35
              Width = 35
              BandIndex = 2
              RowIndex = 0
              ButtonOnly = True
              Buttons = <
                item
                  Default = True
                  Glyph.Data = {
                    0A020000424D0A0200000000000036000000280000000B0000000D0000000100
                    180000000000D4010000C40E0000C40E00000000000000000000FFFFFBF2EFEE
                    D5DCDFCADEDCC5DAD3CEDAD3D2D7D4DFDADBDECFCD8B6B673A0602FFFFFFF9F3
                    F0A5A1A3585F644650524E5555514F4C5950515E4C4F5C413F3C1B16785953FF
                    FFFFDCD6D4D3D3D3B9BABDB6B5B8B9B4B4B9B5B1BDB5B536181A3E1B194E3530
                    DACFC1FFFFFFBDC2C1F9FDFBFFFEFC5A433E3F1E123E1C123E1B12462420260A
                    06534740D2D7CBFFFFFFB9C0C1F5F4F17D6F647C613DE2C392C1A3725230192E
                    0E03D7D2CF4C4744CED8D2FFFFFFC2BFC4C3BBB6654C32EEE3A2FFF8A3FFF8A5
                    BEA972341807D7CECD4B474ACFD3D4FFFFFFC6BFC4C5BAB4907756FBF0A6FFFF
                    9EFFFCA0E0D09236200DD5D3D148444AD3D3D8FFFFFFC4BFC4C4BDB75B4428E8
                    D99AFDF7A5FFF9ABA79A65211205D5D5D2474749CCD0D1FFFFFFB8BCBDFFFFFC
                    8F857C6E5537D9C297A6966A463A1FECEBE0D5D4CF484C47CCD6D1FFFFFFC1C3
                    C1FBFBFAFEFCFC83746E66514C594B42A9A099E2DFDCBEBBB64F5149D1DCD0FF
                    FFFFC7C2BEFEFDFDFCFAFEFFFBFFFFF8FBDCD7D7C1B9BAD3CFD0BDB7B584837B
                    E8ECE1FFFFFFD1CDC6FFFEFBFEFDFFFBF9FDFFFEFFDBD9D9D7D8D8F8FFFF9DA4
                    A2D1D3CDFCF9F1FFFFFFF3F1E9D2D0CEBDBCBFC3C5C6BCBEBCC3C2BEBCC2C0BC
                    CBCAE3F2F1F7FDF9FFFFF9FFFFFF}
                  Kind = bkGlyph
                end
                item
                  Default = False
                  Glyph.Data = {
                    C2010000424DC20100000000000036000000280000000B0000000B0000000100
                    1800000000008C010000130B0000130B00000000000000000000FDFEFFFCFBFC
                    FDFEFFEEEDECCECBC4AAA49B8074717F7A72CFCDCCFFFEFFF9FFFCFFFFFFF2FC
                    FAFAFEFDFEF8F668564F5E45387655456C4333442C19554C44FFFBFFFDF9FFFF
                    FFFFFAFEFFFAFCF9AB9D975B43368D705D7D5E4A75553F865F445B3F2EA69C9B
                    FAFCFDFFFFFFFFFEFFFFFBFA68574F917E70C2AF9F9E9282847361B38367A677
                    5F524438F4FDF8FFFFFFFAFEFFE9E7E5453933AB9C93968B839A9187866855CC
                    9070D29E83352318E5E4E4FFFFFFEEFEFDC1C0BA4933258D6B59A98879806151
                    905F47CD9777E6AC90493423C1C0BCFFFFFFFFFFFFA89A9572524689675A8066
                    5DAE9B95CAB7B1B1A594C0AA976E50479E9794FFFFFFFDFDFD958B87CCBDB6C9
                    BBB3A7A39CE3E3E1CAD0D1D5D8D1DBDACD876D66655854FFFFFFE5EEEFC5C8C4
                    B9B3AC6C6254B6AA98F8ECDCCDC6B8917061D8B9AAB9B2A4776E66FFFFFFF8F8
                    FBFDFBFBE7E3DFA99990C7B0A3B09A89A79587B29084C8ADA3CFD1C8E4E4E1FF
                    FFFFFFFFFFFCFEFFF8FDFEF0F5F6D5D7D7FAFCFCFDFBFFF6FAFDF2FCFEFCFBFD
                    F0F1F5FFFFFF}
                  Kind = bkGlyph
                end>
              EditButtonStyle = ebsGlyph
              OnButtonClick = gcBTEsqButtonClick
            end
            object gcVL_ULTIMA_ESQUEMA: TdxDBGridColumn
              Caption = 'Esquema'
              HeaderAlignment = taCenter
              Width = 74
              BandIndex = 3
              RowIndex = 0
              FieldName = 'VL_ULTIMA_ESQUEMA'
            end
            object gcBTEsq3: TdxDBGridButtonColumn
              HeaderAlignment = taCenter
              HeaderGlyph.Data = {
                76010000424D760100000000000076000000280000001E000000100000000100
                0400000000000001000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                00FFFFFFFF878FFFFF00FF877777777040FFFFF87774008FFF00F70000000004
                0FFFFF746774407FFF008FFFFFFFF0407FFFF84766666708FF008FFF00000400
                7FFFF74787767747FF008FF0688600F07FFFF47887877870FF008F06F88F60F0
                7FFF8087777778708F008F08888F80F07FFF8087F87688807F008F08888880F0
                7FFF7466766778847F008F0688FF60F07FFF4677778887870F008FF078860FF0
                7FF8077778F8888748008FFF0000FFF07FF87FF88F888F8747008FFFFFF77770
                8FF888778FF877F877008FFFFFF7FFF78FFFF847887777788F008FFFFFF7FF78
                FFFFFFF8877788888F00F888888888FFFFFFFFFF8FFFFFFFFF00}
              MinWidth = 35
              Width = 35
              BandIndex = 3
              RowIndex = 0
              ButtonOnly = True
              Buttons = <
                item
                  Default = True
                  Glyph.Data = {
                    0A020000424D0A0200000000000036000000280000000B0000000D0000000100
                    180000000000D4010000C40E0000C40E00000000000000000000FFFFFBF2EFEE
                    D5DCDFCADEDCC5DAD3CEDAD3D2D7D4DFDADBDECFCD8B6B673A0602FFFFFFF9F3
                    F0A5A1A3585F644650524E5555514F4C5950515E4C4F5C413F3C1B16785953FF
                    FFFFDCD6D4D3D3D3B9BABDB6B5B8B9B4B4B9B5B1BDB5B536181A3E1B194E3530
                    DACFC1FFFFFFBDC2C1F9FDFBFFFEFC5A433E3F1E123E1C123E1B12462420260A
                    06534740D2D7CBFFFFFFB9C0C1F5F4F17D6F647C613DE2C392C1A3725230192E
                    0E03D7D2CF4C4744CED8D2FFFFFFC2BFC4C3BBB6654C32EEE3A2FFF8A3FFF8A5
                    BEA972341807D7CECD4B474ACFD3D4FFFFFFC6BFC4C5BAB4907756FBF0A6FFFF
                    9EFFFCA0E0D09236200DD5D3D148444AD3D3D8FFFFFFC4BFC4C4BDB75B4428E8
                    D99AFDF7A5FFF9ABA79A65211205D5D5D2474749CCD0D1FFFFFFB8BCBDFFFFFC
                    8F857C6E5537D9C297A6966A463A1FECEBE0D5D4CF484C47CCD6D1FFFFFFC1C3
                    C1FBFBFAFEFCFC83746E66514C594B42A9A099E2DFDCBEBBB64F5149D1DCD0FF
                    FFFFC7C2BEFEFDFDFCFAFEFFFBFFFFF8FBDCD7D7C1B9BAD3CFD0BDB7B584837B
                    E8ECE1FFFFFFD1CDC6FFFEFBFEFDFFFBF9FDFFFEFFDBD9D9D7D8D8F8FFFF9DA4
                    A2D1D3CDFCF9F1FFFFFFF3F1E9D2D0CEBDBCBFC3C5C6BCBEBCC3C2BEBCC2C0BC
                    CBCAE3F2F1F7FDF9FFFFF9FFFFFF}
                  Kind = bkGlyph
                end
                item
                  Default = False
                  Glyph.Data = {
                    C2010000424DC20100000000000036000000280000000B0000000B0000000100
                    1800000000008C010000130B0000130B00000000000000000000FDFEFFFCFBFC
                    FDFEFFEEEDECCECBC4AAA49B8074717F7A72CFCDCCFFFEFFF9FFFCFFFFFFF2FC
                    FAFAFEFDFEF8F668564F5E45387655456C4333442C19554C44FFFBFFFDF9FFFF
                    FFFFFAFEFFFAFCF9AB9D975B43368D705D7D5E4A75553F865F445B3F2EA69C9B
                    FAFCFDFFFFFFFFFEFFFFFBFA68574F917E70C2AF9F9E9282847361B38367A677
                    5F524438F4FDF8FFFFFFFAFEFFE9E7E5453933AB9C93968B839A9187866855CC
                    9070D29E83352318E5E4E4FFFFFFEEFEFDC1C0BA4933258D6B59A98879806151
                    905F47CD9777E6AC90493423C1C0BCFFFFFFFFFFFFA89A9572524689675A8066
                    5DAE9B95CAB7B1B1A594C0AA976E50479E9794FFFFFFFDFDFD958B87CCBDB6C9
                    BBB3A7A39CE3E3E1CAD0D1D5D8D1DBDACD876D66655854FFFFFFE5EEEFC5C8C4
                    B9B3AC6C6254B6AA98F8ECDCCDC6B8917061D8B9AAB9B2A4776E66FFFFFFF8F8
                    FBFDFBFBE7E3DFA99990C7B0A3B09A89A79587B29084C8ADA3CFD1C8E4E4E1FF
                    FFFFFFFFFFFCFEFFF8FDFEF0F5F6D5D7D7FAFCFCFDFBFFF6FAFDF2FCFEFCFBFD
                    F0F1F5FFFFFF}
                  Kind = bkGlyph
                end>
              EditButtonStyle = ebsGlyph
              OnButtonClick = gcBTEsq3ButtonClick
            end
            object gcDT_ULTIMA_CONSULTA: TdxDBGridDateColumn
              Caption = 'Data'
              Width = 54
              BandIndex = 3
              RowIndex = 0
              FieldName = 'DT_ULTIMA_CONSULTA'
              UseEditMask = True
            end
            object gcVL_ESTADIO_UC: TdxDBGridPickColumn
              Alignment = taCenter
              Caption = 'Estadio'
              Width = 50
              BandIndex = 3
              RowIndex = 0
              FieldName = 'VL_ESTADIO_UC'
              Items.Strings = (
                'I'
                'II'
                'III'
                'IV')
            end
            object gcDT_ESTADIO_UC: TdxDBGridDateColumn
              Caption = 'Data'
              Width = 50
              BandIndex = 3
              RowIndex = 0
              FieldName = 'DT_ESTADIO_UC'
              UseEditMask = True
            end
            object gcVL_CD4_UC: TdxDBGridColumn
              Caption = 'CD4'
              Width = 40
              BandIndex = 3
              RowIndex = 0
              FieldName = 'VL_CD4_UC'
            end
            object gcDT_CD4_UC: TdxDBGridDateColumn
              Caption = 'Data'
              Width = 50
              BandIndex = 3
              RowIndex = 0
              FieldName = 'DT_CD4_UC'
              UseEditMask = True
            end
            object gcVL_CV_UC: TdxDBGridColumn
              Caption = 'CV'
              Width = 40
              BandIndex = 3
              RowIndex = 0
              FieldName = 'VL_CV_UC'
            end
            object gcDT_CV_UC: TdxDBGridDateColumn
              Caption = 'Data'
              Width = 50
              BandIndex = 3
              RowIndex = 0
              FieldName = 'DT_CV_UC'
              UseEditMask = True
            end
            object gcVL_RASTREIO_TB: TdxDBGridCheckColumn
              Caption = 'TB'
              MinWidth = 20
              Width = 33
              BandIndex = 4
              RowIndex = 0
              FieldName = 'VL_RASTREIO_TB'
              ValueChecked = 'S'
              ValueGrayed = 'N'
              ValueUnchecked = 'N'
            end
            object gcVL_RASTREIO_ITS: TdxDBGridCheckColumn
              Caption = 'ITS'
              Width = 32
              BandIndex = 4
              RowIndex = 0
              FieldName = 'VL_RASTREIO_ITS'
              ValueChecked = 'S'
              ValueGrayed = 'N'
              ValueUnchecked = 'N'
            end
            object gcVL_N: TdxDBGridCheckColumn
              Caption = 'N'
              DisableDragging = True
              HeaderAlignment = taCenter
              Width = 23
              BandIndex = 5
              RowIndex = 0
              FieldName = 'VL_N'
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object gcVL_I: TdxDBGridCheckColumn
              Caption = 'I'
              DisableDragging = True
              HeaderAlignment = taCenter
              Width = 19
              BandIndex = 5
              RowIndex = 0
              FieldName = 'VL_I'
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object gcVL_T: TdxDBGridCheckColumn
              Caption = 'T'
              DisableDragging = True
              HeaderAlignment = taCenter
              Width = 20
              BandIndex = 5
              RowIndex = 0
              FieldName = 'VL_T'
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object gcVL_M: TdxDBGridCheckColumn
              Caption = 'M'
              DisableDragging = True
              HeaderAlignment = taCenter
              Width = 24
              BandIndex = 5
              RowIndex = 0
              FieldName = 'VL_M'
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object gcVL_TARV_PADRAO: TdxDBGridColumn
              Caption = 'TARV Padr'#227'o'
              Width = 90
              BandIndex = 5
              RowIndex = 0
              FieldName = 'VL_TARV_PADRAO'
            end
            object gcBTEsq2: TdxDBGridButtonColumn
              HeaderAlignment = taCenter
              HeaderGlyph.Data = {
                F6050000424DF60500000000000036000000280000001E000000100000000100
                180000000000C0050000C40E0000C40E00000000000000000000FFFFFBFFFBF8
                F2F3F7E5F1F3E4FBF7DAF2EAE5F4ECE9F4ECEAEFEEF7F5F5F8ECEAFFEEEA3303
                003E0400FFFEFFFEF9FBFFFEFFFDFEFFFCFDFFFDFFFEFAFEF8F8FEF3BAB4B99E
                9C9CB6B5B1F2F0EFFFFDFFFFFEFFFAFFFEF4FFF70000FFFDF9E7DFDF9EA1A57F
                8A8E7585847C8B8780878283848084828293888A9A8685280A05542A252C0000
                FBFFFFFDFFFFF6F5F7FFFEFFF2EDECBCB3AF90867C6054486245414E39312F23
                173C362FD6D4D4FFFDFFFBFCFFFBFFFF0000F3E7E58B85862B2F340F141D0E11
                1619181C140C0D2216162A161B22070B23010153312B230600FFF4E6F1FCFAF8
                FFFFFCFDFBFEF7F46858524630255C4133725443895A4C643C294B301B2E1F0F
                605956FFFBFFFFFBFFFCF7FF0000D2CECDFFFFFFFDFEFFFFFDFFFFFDFFFFF8F7
                FFFEF9FFFBF7FFF9FA2A08094F29271C00009B8B7FFFF9EAF8FFFFF0F5F3FFFF
                FCB6A8A24A34296F524373523F6D4A36724C3A7A543C7A5539896D55231106BD
                B5B6FFFDFFFBFDFF0000BBC1C0F7FCFAFFFFFEFFFDFA250700310D002A070034
                10002A05004A272323060225120D8B8A80EBF4E7FDFCFEFFFFFEFFFFFB817067
                4A3428897060C7AE9A9F846F8275656A4F3A8B6144C4957A502E1E665951F4F7
                F5F4FFFF0000B8C0C0FFFFFEFFFFF8220C00785835DDBA8EE1BF916C49212A05
                002E0E03FFFDF921151380847EECF9F1FFFEFFFFFEFFFFF5F14F3E35847164C6
                B3A4C2B2A28E7F6FD2D4C86C5742B08064E7AD9090644D3A291CF6FAF4F3FFFC
                0000C1C0C4FFFFFB190300725833FFFAB9FFF4A5FFF5A4FFF7B378582F2A0C00
                FFF3F11E1518858787E9EFEEFCFDFFFFFFFFE4DBD83C2F27C2B3AA6D5E557C71
                698D847BA8A0937D5C48BC8364EEAE8FBB8D75251205DBD8D4F8FDFE0000C4BE
                C3FFFBF72B1100E7CE9CFFF6A7FFFF9FFFFC9AFFFBA9CDB4822A1000FFFEFB19
                1217838286EEF1F5F6FFFFF3F7F8A6A39F281E17CFC2BAA3958FF3E8E4BFB8B5
                6F554783543EDB9B79EDAE8CD5A9912A160BA39B9CFFFBFF0000C7C0C5FFF9F6
                240A00EAD19FFFF7A7FFFF9EFFFF9FFFF7A4CFBC89241000FFFCF8181419817F
                85F3F3F9EBFDFCF8FFFA72665A4E322179503A7D523D98705D6E4A38784F36A1
                6B52C19070E4AB8CECAC944E3521666C61FFFDFA0000C3BFC4FFFFFB230D0078
                613BFDEFADFDF6A6FFFAAAFFF6B263552B160900FFFFFB161517828485E7EBEC
                FFFFFFFFFAF84A332B6F4D40835E5089665985685F9F8880B39D97D0B7ADB9A8
                9583705BE0BFAC7050453D312BFDFBFA0000B7BBBCFFFFFEFFFFF8200C008369
                45EBD3A5D7C6957062381F1400FFFFF5FFFDF8171816838A85E7F3EDFFFEFEDD
                CECC331D18937770AD938C75625D635A57CBC7C6FEFBFFC6C9CDBAC1BCC7D1C4
                CBC8BA81615B4C2E2DAEB1AF0000C0C5C3F7F8F6FFFEFDFFFEFB240A00220700
                200B00190A00FFFEF4FFFFFBFFFEF91818127B847AECFAEEFCFCFCB9B5B47067
                63FFF7EFF5ECE3C6C1B8CDCEC5F0F4EED3D2D6BFCAC8DFDFD9F9F5EAD8D7C993
                7C745E3F3C4D4D470000C3C0BCFFFFFEFBFAFEFBF7FDFFFDFFFFF6F5FFFEFBA8
                9C98A09597A09899A195932D2720A7ADA2ECF6E9E4EEEEAEB4B3D4D4CEB4AFA6
                6D64576E6453C4B8A6FFF6E4FBEFE3C1BEAF8B6E5FB28578F7E3D2C1BAAB584C
                427F77700000CAC4BFFFFDFCFDFDFFFDFCFFFFFBFFFFF9FFFFF9FC999295FFFD
                FFFFFEFFFFFFFE74706BD5D6CCFFFFF7F0F3F7F7F9FAFFFCF8C5BBB44F3F337B
                6454DDC1B0C2A38EA69580AD9A858A5F4E91574BA6897BC7CABBB3B7ACFFFCF8
                0000D3D0C8FFFEFAFFFEFFFDFDFFF9F8FCFFFFFFFFFFFE9D9B9AF7FBFCF6FFFF
                788381C9D0CBFCFAF2FFFCF3FFFDFFFDFAFCFFFCFDFFFFFEF6EBE7C9B9B2C2AE
                A3AF998D92897FAA958DCDB3ACEBD5CFE9DBD5D7D8D4D3DAD7FFFAFB0000F3F1
                E9D8D7D3C0BDBFBABBBFC5C7C8BBBEBCC6C3BFBFC0BCBBC3C3BCCCCBE0F0EFF0
                FBF8FFFFFAFFFFF9FFFFFFFFFFFFF9FDFEF8FDFEF9FEFFE1E5E6D2D4D4FCFDFB
                F6FBFEFFFBFFF8F9FDECFFFFF5FAFDFFFDFFE0E4E9FDFCFF0000}
              MinWidth = 35
              Width = 35
              BandIndex = 5
              RowIndex = 0
              ButtonOnly = True
              Buttons = <
                item
                  Default = True
                  Glyph.Data = {
                    0A020000424D0A0200000000000036000000280000000B0000000D0000000100
                    180000000000D4010000C40E0000C40E00000000000000000000FFFFFBF2EFEE
                    D5DCDFCADEDCC5DAD3CEDAD3D2D7D4DFDADBDECFCD8B6B673A0602FFFFFFF9F3
                    F0A5A1A3585F644650524E5555514F4C5950515E4C4F5C413F3C1B16785953FF
                    FFFFDCD6D4D3D3D3B9BABDB6B5B8B9B4B4B9B5B1BDB5B536181A3E1B194E3530
                    DACFC1FFFFFFBDC2C1F9FDFBFFFEFC5A433E3F1E123E1C123E1B12462420260A
                    06534740D2D7CBFFFFFFB9C0C1F5F4F17D6F647C613DE2C392C1A3725230192E
                    0E03D7D2CF4C4744CED8D2FFFFFFC2BFC4C3BBB6654C32EEE3A2FFF8A3FFF8A5
                    BEA972341807D7CECD4B474ACFD3D4FFFFFFC6BFC4C5BAB4907756FBF0A6FFFF
                    9EFFFCA0E0D09236200DD5D3D148444AD3D3D8FFFFFFC4BFC4C4BDB75B4428E8
                    D99AFDF7A5FFF9ABA79A65211205D5D5D2474749CCD0D1FFFFFFB8BCBDFFFFFC
                    8F857C6E5537D9C297A6966A463A1FECEBE0D5D4CF484C47CCD6D1FFFFFFC1C3
                    C1FBFBFAFEFCFC83746E66514C594B42A9A099E2DFDCBEBBB64F5149D1DCD0FF
                    FFFFC7C2BEFEFDFDFCFAFEFFFBFFFFF8FBDCD7D7C1B9BAD3CFD0BDB7B584837B
                    E8ECE1FFFFFFD1CDC6FFFEFBFEFDFFFBF9FDFFFEFFDBD9D9D7D8D8F8FFFF9DA4
                    A2D1D3CDFCF9F1FFFFFFF3F1E9D2D0CEBDBCBFC3C5C6BCBEBCC3C2BEBCC2C0BC
                    CBCAE3F2F1F7FDF9FFFFF9FFFFFF}
                  Kind = bkGlyph
                end
                item
                  Default = False
                  Glyph.Data = {
                    C2010000424DC20100000000000036000000280000000B0000000B0000000100
                    1800000000008C010000130B0000130B00000000000000000000FDFEFFFCFBFC
                    FDFEFFEEEDECCECBC4AAA49B8074717F7A72CFCDCCFFFEFFF9FFFCFFFFFFF2FC
                    FAFAFEFDFEF8F668564F5E45387655456C4333442C19554C44FFFBFFFDF9FFFF
                    FFFFFAFEFFFAFCF9AB9D975B43368D705D7D5E4A75553F865F445B3F2EA69C9B
                    FAFCFDFFFFFFFFFEFFFFFBFA68574F917E70C2AF9F9E9282847361B38367A677
                    5F524438F4FDF8FFFFFFFAFEFFE9E7E5453933AB9C93968B839A9187866855CC
                    9070D29E83352318E5E4E4FFFFFFEEFEFDC1C0BA4933258D6B59A98879806151
                    905F47CD9777E6AC90493423C1C0BCFFFFFFFFFFFFA89A9572524689675A8066
                    5DAE9B95CAB7B1B1A594C0AA976E50479E9794FFFFFFFDFDFD958B87CCBDB6C9
                    BBB3A7A39CE3E3E1CAD0D1D5D8D1DBDACD876D66655854FFFFFFE5EEEFC5C8C4
                    B9B3AC6C6254B6AA98F8ECDCCDC6B8917061D8B9AAB9B2A4776E66FFFFFFF8F8
                    FBFDFBFBE7E3DFA99990C7B0A3B09A89A79587B29084C8ADA3CFD1C8E4E4E1FF
                    FFFFFFFFFFFCFEFFF8FDFEF0F5F6D5D7D7FAFCFCFDFBFFF6FAFDF2FCFEFCFBFD
                    F0F1F5FFFFFF}
                  Kind = bkGlyph
                end>
              EditButtonStyle = ebsGlyph
              OnButtonClick = gcBTEsq2ButtonClick
            end
            object gcVL_DIAGNOSTICO_TB: TdxDBGridCheckColumn
              Caption = 'TB'
              HeaderAlignment = taCenter
              Width = 100
              BandIndex = 6
              RowIndex = 0
              FieldName = 'VL_DIAGNOSTICO_TB'
              ValueChecked = 'S'
              ValueGrayed = 'N'
              ValueUnchecked = 'N'
            end
            object gcVL_PRESCRICAO_IONIZADA: TdxDBGridCheckColumn
              Caption = 'Ionizada'
              MinWidth = 20
              Width = 60
              BandIndex = 7
              RowIndex = 0
              FieldName = 'VL_PRESCRICAO_IONIZADA'
              ValueChecked = 'S'
              ValueGrayed = 'N'
              ValueUnchecked = 'N'
            end
            object gcVL_PRESCRICAO_COTROMIXAZOL: TdxDBGridCheckColumn
              Caption = 'Cotromixazol'
              MinWidth = 20
              Width = 80
              BandIndex = 7
              RowIndex = 0
              FieldName = 'VL_PRESCRICAO_COTROMIXAZOL'
              ValueChecked = 'S'
              ValueGrayed = 'N'
              ValueUnchecked = 'N'
            end
          end
        end
      end
      object tabExport: TTabSheet
        Caption = 'Export'
        ImageIndex = 2
        object grExport: TdxDBGrid
          Left = 0
          Top = 21
          Width = 905
          Height = 444
          Bands = <
            item
              Caption = 'Mapa'
              OnlyOwnColumns = True
              Width = 326
            end
            item
              Caption = 'Identifica'#231#227'o do Paciente'
              OnlyOwnColumns = True
              Width = 485
            end
            item
              Caption = 'Primeira Consulta'
              OnlyOwnColumns = True
            end
            item
              Caption = 'Primeiro TARV'
              OnlyOwnColumns = True
            end
            item
              Caption = #218'ltima Consulta'
              OnlyOwnColumns = True
            end
            item
              Caption = 'Rastreio'
              OnlyOwnColumns = True
            end
            item
              Caption = 'TARV'
              OnlyOwnColumns = True
            end
            item
              Caption = 'Prescri'#231#227'o'
              OnlyOwnColumns = True
              Width = 176
            end
            item
              Caption = 'Diagn'#243'stico'
              OnlyOwnColumns = True
              Width = 93
            end>
          DefaultLayout = False
          HeaderPanelRowCount = 1
          KeyField = 'CD_MAPA_LINHA'
          ShowGroupPanel = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ShowHint = False
          TabOrder = 0
          AutoExpandOnSearch = False
          BandColor = 8404992
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWhite
          BandFont.Height = -13
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = [fsBold]
          DataSource = dsExport
          DblClkExpanding = False
          Filter.Active = True
          Filter.AutoDataSetFilter = True
          Filter.Criteria = {00000000}
          GroupPanelColor = 12615680
          HeaderColor = 15983825
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = [fsBold]
          OptionsBehavior = [edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoPreview, edgoRowSelect, edgoUseBitmap]
          PreviewFieldName = 'NM_PACIENTE'
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = [fsBold]
          RowFooterColor = 13232592
          ShowBands = True
          ShowRowFooter = True
          object dxDBGridColumn1: TdxDBGridColumn
            Caption = 'Cod.'
            DisableEditor = True
            Width = 49
            BandIndex = 1
            RowIndex = 0
            FieldName = 'CD_MAPA_LINHA'
          end
          object dxDBGridColumn2: TdxDBGridColumn
            Caption = 'Nr. Processo'
            Width = 96
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NR_PROCESSO'
          end
          object dxDBGridMaskColumn1: TdxDBGridMaskColumn
            Caption = 'Nome do Utente'
            Visible = False
            Width = 68
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NM_PACIENTE'
          end
          object dxDBGridColumn3: TdxDBGridColumn
            Caption = 'Sexo'
            HeaderAlignment = taCenter
            Width = 51
            BandIndex = 1
            RowIndex = 0
            FieldName = 'FL_SEXO'
          end
          object dxDBGridColumn4: TdxDBGridColumn
            Caption = 'Idade Anos'
            HeaderAlignment = taCenter
            Width = 87
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NR_IDADE_ANOS'
          end
          object dxDBGridColumn5: TdxDBGridColumn
            Caption = 'Idade Meses'
            HeaderAlignment = taCenter
            Width = 95
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NR_IDADE_MESES'
          end
          object dxDBGridCheckColumn1: TdxDBGridCheckColumn
            Caption = 'Gestante'
            MinWidth = 20
            Width = 74
            BandIndex = 1
            RowIndex = 0
            FieldName = 'VL_GESTANTE'
            ValueChecked = 'S'
            ValueGrayed = 'N'
            ValueUnchecked = 'N'
          end
          object dxDBGridDateColumn1: TdxDBGridDateColumn
            Caption = 'Data'
            Width = 60
            BandIndex = 2
            RowIndex = 0
            FieldName = 'DT_PRIMEIRA_CONSULTA'
          end
          object dxDBGridPickColumn1: TdxDBGridPickColumn
            Alignment = taCenter
            Caption = 'OMS'
            Width = 50
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VL_ESTADIO_PC'
            Items.Strings = (
              'I'
              'II'
              'III'
              'IV')
          end
          object dxDBGridColumn6: TdxDBGridColumn
            Caption = 'CD4'
            Width = 47
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VL_CD4_PC'
          end
          object dxDBGridColumn7: TdxDBGridColumn
            Caption = 'CV'
            Width = 39
            BandIndex = 2
            RowIndex = 0
            FieldName = 'VL_CV_PC'
          end
          object dxDBGridDateColumn2: TdxDBGridDateColumn
            Caption = 'Data'
            Width = 60
            BandIndex = 3
            RowIndex = 0
            FieldName = 'DT_PRIMEIRO_TARV'
          end
          object dxDBGridColumn8: TdxDBGridColumn
            Caption = 'Esquema'
            DisableDragging = True
            HeaderAlignment = taCenter
            Width = 94
            BandIndex = 3
            RowIndex = 0
            FieldName = 'VL_PRIMEIRO_ESQUEMA'
          end
          object dxDBGridDateColumn3: TdxDBGridDateColumn
            Caption = 'Data'
            Visible = False
            BandIndex = 4
            RowIndex = 0
            FieldName = 'DT_ULTIMA_CONSULTA'
          end
          object grExportColumn35: TdxDBGridColumn
            Caption = 'Esquema'
            HeaderAlignment = taCenter
            Width = 87
            BandIndex = 4
            RowIndex = 0
            FieldName = 'VL_ULTIMA_ESQUEMA'
          end
          object dxDBGridPickColumn2: TdxDBGridPickColumn
            Alignment = taCenter
            Caption = 'Estadio'
            Width = 65
            BandIndex = 4
            RowIndex = 0
            FieldName = 'VL_ESTADIO_UC'
            Items.Strings = (
              'I'
              'II'
              'III'
              'IV')
          end
          object dxDBGridDateColumn4: TdxDBGridDateColumn
            Caption = 'Data'
            Width = 60
            BandIndex = 4
            RowIndex = 0
            FieldName = 'DT_ESTADIO_UC'
          end
          object dxDBGridColumn9: TdxDBGridColumn
            Caption = 'CD4'
            Width = 47
            BandIndex = 4
            RowIndex = 0
            FieldName = 'VL_CD4_UC'
          end
          object dxDBGridDateColumn5: TdxDBGridDateColumn
            Caption = 'Data'
            Width = 60
            BandIndex = 4
            RowIndex = 0
            FieldName = 'DT_CD4_UC'
          end
          object dxDBGridColumn10: TdxDBGridColumn
            Caption = 'CV'
            Width = 39
            BandIndex = 4
            RowIndex = 0
            FieldName = 'VL_CV_UC'
          end
          object dxDBGridDateColumn6: TdxDBGridDateColumn
            Caption = 'Data'
            Width = 60
            BandIndex = 4
            RowIndex = 0
            FieldName = 'DT_CV_UC'
          end
          object dxDBGridCheckColumn2: TdxDBGridCheckColumn
            Caption = 'TB'
            MinWidth = 20
            Width = 50
            BandIndex = 5
            RowIndex = 0
            FieldName = 'VL_RASTREIO_TB'
            ValueChecked = 'S'
            ValueGrayed = 'N'
            ValueUnchecked = 'N'
          end
          object grExportColumn36: TdxDBGridCheckColumn
            Caption = 'ITS'
            Width = 50
            BandIndex = 5
            RowIndex = 0
            FieldName = 'VL_RASTREIO_ITS'
            ValueChecked = 'S'
            ValueGrayed = 'N'
            ValueUnchecked = 'N'
          end
          object dxDBGridCheckColumn3: TdxDBGridCheckColumn
            Caption = 'N'
            DisableDragging = True
            HeaderAlignment = taCenter
            Width = 32
            BandIndex = 6
            RowIndex = 0
            FieldName = 'VL_N'
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dxDBGridCheckColumn4: TdxDBGridCheckColumn
            Caption = 'I'
            DisableDragging = True
            HeaderAlignment = taCenter
            Width = 27
            BandIndex = 6
            RowIndex = 0
            FieldName = 'VL_I'
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dxDBGridCheckColumn5: TdxDBGridCheckColumn
            Caption = 'T'
            DisableDragging = True
            HeaderAlignment = taCenter
            Width = 31
            BandIndex = 6
            RowIndex = 0
            FieldName = 'VL_T'
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dxDBGridCheckColumn6: TdxDBGridCheckColumn
            Caption = 'M'
            DisableDragging = True
            HeaderAlignment = taCenter
            Width = 33
            BandIndex = 6
            RowIndex = 0
            FieldName = 'VL_M'
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object dxDBGridColumn11: TdxDBGridColumn
            Caption = 'TARV Padr'#227'o'
            Width = 110
            BandIndex = 6
            RowIndex = 0
            FieldName = 'VL_TARV_PADRAO'
          end
          object dxDBGridCheckColumn7: TdxDBGridCheckColumn
            Caption = 'Ionizada'
            MinWidth = 20
            Width = 71
            BandIndex = 7
            RowIndex = 0
            FieldName = 'VL_PRESCRICAO_IONIZADA'
            ValueChecked = 'S'
            ValueGrayed = 'N'
            ValueUnchecked = 'N'
          end
          object dxDBGridCheckColumn8: TdxDBGridCheckColumn
            Caption = 'Cotromixazol'
            MinWidth = 20
            Width = 94
            BandIndex = 7
            RowIndex = 0
            FieldName = 'VL_PRESCRICAO_COTROMIXAZOL'
            ValueChecked = 'S'
            ValueGrayed = 'N'
            ValueUnchecked = 'N'
          end
          object grExportColumn34: TdxDBGridColumn
            Caption = 'Todos'
            Sorted = csUp
            Visible = False
            Width = 58
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TODOS'
            GroupIndex = 0
          end
          object grExportColumn31: TdxDBGridColumn
            Caption = 'Cod.'
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CD_MEDICO'
          end
          object grExportColumn32: TdxDBGridColumn
            Caption = 'Medico'
            Width = 99
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NM_MEDICO'
          end
          object grExportColumn33: TdxDBGridDateColumn
            Caption = 'Data'
            Width = 60
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DT_MAPA'
          end
          object grExportDTPrevGest: TdxDBGridDateColumn
            Caption = 'Data Prev. Gest.'
            Width = 116
            BandIndex = 1
            RowIndex = 0
            FieldName = 'DT_PREV_GESTACAO'
          end
          object grExportNR_MESES: TdxDBGridColumn
            Caption = 'Meses'
            BandIndex = 1
            RowIndex = 0
            FieldName = 'NR_MESES'
          end
          object grExportColumn37: TdxDBGridCheckColumn
            Caption = 'TB'
            Width = 100
            BandIndex = 8
            RowIndex = 0
            FieldName = 'VL_DIAGNOSTICO_TB'
            ValueChecked = 'S'
            ValueGrayed = 'N'
            ValueUnchecked = 'N'
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 1066
          Height = 21
          Align = alTop
          BevelOuter = bvNone
          Color = 12615680
          TabOrder = 1
          DesignSize = (
            1066
            21)
          object ckHistorico: TCheckBox
            Left = 1116
            Top = 4
            Width = 97
            Height = 14
            Anchors = [akTop, akRight]
            Caption = 'Hist'#243'rico'
            Checked = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 0
          end
          object btCampos: TBitBtn
            Left = 945
            Top = 2
            Width = 75
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Campos'
            TabOrder = 1
            OnClick = btCamposClick
          end
        end
        object pnCampos: TPanel
          Left = 905
          Top = 21
          Width = 161
          Height = 444
          Align = alRight
          BevelOuter = bvNone
          Color = 12615680
          TabOrder = 2
          Visible = False
          object ckCampos: TCheckListBox
            Left = 0
            Top = 35
            Width = 161
            Height = 409
            OnClickCheck = ckCamposClickCheck
            Align = alClient
            ItemHeight = 13
            TabOrder = 0
          end
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 161
            Height = 35
            Align = alTop
            BevelOuter = bvNone
            Color = 12615680
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited dsControle: TDataSource
    DataSet = TB_MAPA_MEDICO
    Left = 437
    Top = 205
  end
  inherited dsGrid: TDataSource
    DataSet = qyGrid
    Left = 397
    Top = 205
  end
  object qyGrid: TIBQuery [5]
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select "MAPA_MEDICO"."CD_MAPA"'
      '      ,"MAPA_MEDICO"."CD_UNIDADE"'
      '      ,"MAPA_MEDICO"."DT_MAPA"'
      '      ,"MAPA_MEDICO"."CD_MEDICO"'
      '      ,"MEDICO"."NM_MEDICO"'
      'from MAPA_MEDICO,'
      '        MEDICO'
      'where'
      '  "MAPA_MEDICO"."CD_MEDICO" = "MEDICO"."CD_MEDICO"'
      '')
    Left = 354
    Top = 206
    object qyGridCD_MAPA: TIntegerField
      FieldName = 'CD_MAPA'
      Origin = 'MAPA_MEDICO.CD_MAPA'
      Required = True
    end
    object qyGridCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'MAPA_MEDICO.CD_UNIDADE'
      Required = True
    end
    object qyGridDT_MAPA: TDateTimeField
      FieldName = 'DT_MAPA'
      Origin = 'MAPA_MEDICO.DT_MAPA'
    end
    object qyGridCD_MEDICO: TIntegerField
      FieldName = 'CD_MEDICO'
      Origin = 'MAPA_MEDICO.CD_MEDICO'
    end
    object qyGridNM_MEDICO: TIBStringField
      FieldName = 'NM_MEDICO'
      Origin = 'MEDICO.NM_MEDICO'
      Size = 50
    end
  end
  inherited PopupMenu1: TPopupMenu
    Left = 317
    Top = 213
    object N1: TMenuItem
      Caption = '-'
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      OnClick = Imprimir1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      OnClick = Editar1Click
    end
  end
  object dsMapaLinha: TDataSource
    AutoEdit = False
    DataSet = TB_MAPA_MEDICO_LINHA
    OnStateChange = dsControleStateChange
    Left = 469
    Top = 197
  end
  object fxMapa: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41894.334857743100000000
    ReportOptions.LastChange = 42668.388395717590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 552
    Top = 224
    Datasets = <
      item
        DataSet = fxdbMapa
        DataSetName = 'Mapa'
      end
      item
        DataSet = fxdbPaciente
        DataSetName = 'Paciente'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnAfterPrint = 'Page1OnAfterPrint'
      object ReportTitle1: TfrxReportTitle
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Picture1: TfrxPictureView
          Align = baCenter
          Left = 478.090910000000000000
          Top = 3.779530000000000000
          Width = 90.747990000000000000
          Height = 62.629870000000000000
          ShowHint = False
          Center = True
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000008F00
            0000840806000000A9A47850000000017352474200AECE1CE90000000467414D
            410000B18F0BFC61050000000970485973000017110000171101CA26F33F0000
            8B164944415478DAEC9D079C1455BAF6FFD5B13A87999E48CE200A8A82191144
            C4C59C735C5DD3BA6E306F30AD39E708E61C3061424501111424094886C9A173
            ACAEAAEFAD616675EFDDEF86BDAEBAF76EF91BA7BBA7BAC2799FF38453A70A85
            7F2DFF5AFECE45F9B10FE05FCB3FEFF22FF0FC6BF9BB97BF028F29CB8F7D40FF
            5AFE9365FD5A0847205AF1A3ECFEFAEBAFEF7FE9A5976EB45EFF0B3CFF6C8BAE
            83CD2695FB7144E35FE0F98F96621C162FA7492DD29636F038C30C1E37465ACA
            FE631FD94F62F9BF031EEB6C748DB24DC16173FCFFD72B9529C49B59BBF8635E
            98D7C496050B69CD37D3DE9A462BBAB8FAA6F1EC73C05918D4E3F5BAB1FD1F76
            8AFF67C0A317D37C70CDEDBC948CB3CFE05A86EEB93FDB8DEA87DB16EC5EC1C0
            F866392F3EF32633966EA2BD6D13ADC9463CBB18E89B0A6C99DB41BE58A0CF10
            1B15E1FEB87C0338F1D2D33967D26EA21AB1BFBDD37219F29D10A8FAB14FFF1F
            B2FCEF008F5E80CD0D5027E6D11DFD9BAB14967CC1B4F32F619D2D417AEB3A54
            DDCF5E137764C2942338F3C88361CD06EEBDEE5EEE6B5E4552D988AFC54E64B4
            0B5F9D83CEB979DC1D9DECBF579840C6A0694D9A97D615187D78152FDF77AA6C
            FD0F7F739F89ADCB79EE0F3753EE3F823E0387B2C7D0014477DA4EFE62FBB15B
            EC7B59FEF9C1B36E3D38C5387ABC923C247DD853529B9DE50F2EF929829662F5
            63B3B8EEFE17792FD140EF43A318C9349DDFE4496D4DA1AA2A13268C61409B87
            5736B713DA558012CBD0F949115FB503DD6167F58B6D1C38D4C10347C770E6F2
            7CF38D9DD3E7C6A91C6067FA3307E0F2DC8D47F06073A97C57C7565C7B05BB5F
            739FC85D9E50D04F4D7D15FD076FCFB0BE8338E4801D18BED781047CDE1FBB05
            FFEEE59F1B3CB90E36FDF936FC070CA762F781F2812541F5F2E3ED3E1D390553
            E7B8637ECEBB9FBF8BD7A910AC75513B42A5E59B22468D873A6799D51FB5A0E5
            5D54EF13213644452B1B14361954974CE2AB73AC6CC8235FC5A39AA87E0F2E4D
            A3B9B344515189851C84FB0C6564D0C1E4DE83F16F27C7B2D30EA8F2DDD7AEBC
            9819CD6B38667715B7C7CFD235ED7CFD559AF5292F9535D5D4D755B1D7413BF2
            EBB32FA6365AFB63B7E67F7BF9E705CFF2956C9E3D9B33AEBA9D611746B8F1F2
            4B5195C3FEE6AA2F5F79058F37BDC3A66492C6F96962DBFB70F8DC981EF0D528
            E43696492E4912DB3980B3C649362D04B229473FAF8325CB52B89CD21E19074D
            F91C3E61AABEF54E8E3D4CC527DB48A645323F89B3618BC93BB932E9B86CD7E5
            C5EB320460396A6BDC9C7D6E886913220C77E7F866739ECFD60A9B3DD3C9438B
            D394EA1D3CF1F8547EB6FB8D72A4BD7EEC56FD6F2DFF7CE04936B1F6CEC7B8ED
            BDF92C6F5CCB5249429E7099CB6F9ACA5953AFC2C1D07FFF9DF7E770C6FB4FF1
            65611EF95569F24B0BD80226BE401DAE5172DAB61CADAFE7513C45826117CEB2
            8D6C218BA13B28E96514AF2AB64AC3A93944954AD85D3A87FD22C69F7FE39346
            13A96A97E89E80F55A8E74C141764E56F693E08D25F085A6D0B8398547E27DFF
            6121769AE8E0F85136926F68EC3523CE6F2E50B9FCCF63509DB7C9810EFAB15B
            F7BFB5FC0FC02349A2CBF8FD40E62FDE42C7E71F3173FAEBDCB97831ADBE4E6C
            361B46B38933ECC4E94D73EA05E3B9EC677743A8FEAFBF3BF36D8E7AE97D9617
            DF269C57286CEC64534B4EA2B607AFCF833DAF914A6838EC224572DAA6E2C0ED
            F6E27295710A2E14C38DEECC50566C14F286B8EF0229A787B75EEFC59E3BF865
            0725F909C98FDEDD8CA5AE976651239FB3D3F4722B6F2D5098B32543E2AB1C6B
            B24E34BF465C0077D1B96EAEBDE18FE038EB8769C7EF71F91F8047631B70FEC1
            03661B57B075CE1C66CDFB9259739732BFBD117F9597404C7C897893DC168352
            362E6CE09682989C73E05E0CDAF510461A7E39218DADB9363E7EE2054947098A
            46134E478074318322C6560D38641D85B2F817DD906A0B58CA791397EAC0E90B
            61374BE43403979CA65F75CBEB04ED22699EB2930B7651397B468C68CC32E64E
            B60D2429DDAF45CA7077B78FD67D22F2B7548EF60F4A7CD86AF0F9C76DBC305B
            936FD93970FC0E0C9B7216679C3819AF1CDF5F9686AD7CF4FCEB2C345C9C74DA
            015447EA7E1854FC17979FAE6C2D9BC7B217DE67C6D7EBF962FE472CC9A728EA
            2E2A7D222F0E1F254318A0ACA3D8454AA458A5821DB76A60C88FA9B9896695AE
            E093165F9334C5F0BA7D54053D6815264AA50D8F085CD0EFA273499CB68D691C
            2E876CCE21B52F61940C749BC1983A0F8ADB6A0B854A9B83FDEA4D86F757B1EF
            E667E75DA4D3D4CBC6BB18D8DDFD5B24CC4A783D66BD0B48162BD9BEF35E8EDB
            32F42983656B33AC7AB795BBA7B7B02AEE61D8F0114C3DEE60CE38EA4CA2768D
            AF1FBC8DE36E7C88AFE26926EE319AA9A79CC739471F2C09D1F3A396A667F969
            81A771232DED797CA9461EBEEA66EE5FB996267B023D6B10F498E23B14BC1522
            2936BBC888F886D63401975FCA262CA4E5A970DB694BEA02AC32A680CB1BB2E1
            8B46A9D8CE8F2941CCEDB39393DAB9041CB68C70C22685B6F592B4845D14D54B
            4E8AA48947B1FB9C5DA5DE694A90FB6FF73324A2C81EBCD815E7770ED6028535
            526DEB7EEDEFFEDC621AA3BB398DEFACE32023C7A80AD81D464CDE9ADDEBA628
            2552CC7F2EC5E38F24F868BD007DC0AE4CDBB19686051F32BF2DC7F88126F396
            A7D88A8B0327ECC3F537DFC8C0FE237EF0F2FCDBE527031EF3EB4F78ECE25B98
            BE6203BD9D456675B4E3AE0962F7EBD8360BB314A5E0353689C1510AEB44663A
            72524C3BD96C0E43FE66F738D1A5D37BC37642C3543AB76A945B8BD80C27C17E
            4EEA6A3D24AC331445C9271DD8DB1274C48B64F22501958BBA4A1FBD62710E1E
            1CC526296AF98622EBD6961870A48D5F1D584B6FBBB04A599A24202C53C84195
            BCAEB224CBFDDDB3E86E468B7D2CD068DDEF2D46324814DD224B6E5C7AAB9090
            004BF176AFD3ED1F25F5CD5E9063EEC3CDDCF385489CF8B3FD76ADE0893B63AC
            DB58E2C99BB7F2D0BC24FD060EE1C4DFFE92938F3D915EDE1F8F857E12E0D137
            6DE08173CFE6924FBE246F1A84BD625E6B031842EDA1A141D4B08DCC8A4EEC42
            D7BE7101B49622CE5519DADA3514454CA96EC7E3B2532C3A18382D882BE2A4B3
            49242C53C2DC62A353FC4E2068500E3A70293AB9820D9B2E4C25802BA71D8C98
            6AE7A2FD54FA8FEB4B554CE2BE319E52670B99F42C56373470EBD54BE9686D97
            4424322900B27BC464873462F52A15112F75226B7B48E4EEB5ABD0DB60858857
            0C7CC80296058EBCE0435E3B52D2C20210433EB368AFCB2B5AC02975AFA77583
            4EC0D094E7C339064FDDBD858F3768548C8B70FF9F420CF09A7C3A43E78AA736
            F0556B8949BBEDC71FAFBE945D76DE1DC78F3068FD13008FCEB2375EE3FCDFFC
            9E95E904F6B23081B0BA52B2495B8B7F191CC423CC504EC8E752FC88B4AD9EB4
            D1F0559A54262769C894E6B7513B3E42765989CA914E913088F47153B64BE416
            F6305797692FA7E8B7771D1E771F1489E88ADF431F8F972B870FA0EFE4F5D8DD
            63E458F6919FBF9E1B6394529C79D26F7875CD17F8D49448A80048A74B2AED29
            91C7549C62CA440D9978A23E04C3EC2E2C37655A84EA617E7A0FB4095308382C
            D76D01A914E8F2555D1BA1A7D9ADBF65BB5FDBBB41E4C5684DF1F2C359AEBA2B
            C1DA4289E37F53C31FCF8F125D6AF0EB93BFE6BEF5714EBB78476EFEC3F9D22E
            27B0CD53FD5F024F7B0BAF5D7021A77F3E9788C8553E259214F3E2889B3822E2
            4544867CFD8338DC0E8AE912CEAF9248C8222D7570492F4EE493782ABD548DF2
            D1BE242B25D5A9DB3E246CA590948279055CF9A53AED6B5A090D0F5135EE0442
            F669842AC543391D5C767C89E1C19DF86BF9F976C966339C7BEB7B34BA5278EC
            49EC462D4A3A4D517C936A66D0F259D2668E42E36AB4A60ED2C97661A906B2C5
            3CDEB28D112355468C0E307E6280C30E0CE10EF4A4304BAA34B6B18ED5D4963F
            2A7583A747FEB6BDDFF4459259D7C4B9F5630781290A47091B7FF65C0BEBE325
            5E7E25C2805DCF90F57EF5FF3D87FFB5E0D9BAF00BCE38F92C569869A17B8544
            32250510E088D975FB147CE22B3C037D18EB74B2AB3AC894C5C70858EA87F8E8
            5898A55CA3503B3A24B2A0905E5124F1750A5B95935E837C506BA3680AF83A21
            B13443ABD9C1D0699388D55E48C0EE239B2C130B25A9A92AF2CB832712F1F9BF
            7364D6E9C759F0D5175CF0EB4771F4EDCDE0C18749B9AB48D8D29472020E2996
            23E8246BD324DD49C4272721AA443CB119B5F36BD24D4B69DAB496B414D9518C
            D36F988F51DB05B8E0C808F5635582110B2896BC49FEEF620DCB2715BAC1A577
            03A9BCED77BAC81C61A0DF4D8FB36863119F5B61FAED310E3DF55459FDB7DDDB
            F961971F173CD9669EBDE24A7EF1FCC7842BA5170AA317B6A6D1CB2EBC7D9C94
            9ACB444784B05719A417E5294AF2B0E4A2F7D810AEA08BD605195C51088D0948
            9A72509AAB915C9D242FC9CC1DB1516A49E250551C1E95A2249A92C360D0C1BB
            50D9EF22DCAE5A7CE27B0B6262E34D9F327AA49D13761BCC7635FDB0A5B222A1
            69BEB6C778E1EEA778E7C5FB088A97197DF8C592C6F621E854C89962E245561D
            7145929D0D43982E5411C1ECC80BE875F4909F74431B6A499368DDC98605AFB3
            6EF9E7A41A36E1136D1BB57380C37F15E5F0DD2BA9ACB09ABE67DC4CEB06AE05
            8652F7EB9EF2986C5AA9F3A7F3B6F2EA9C38C75DD997DBFFF0AC406ED40F0E9C
            1F0F3C8B1632FFEB0DD8372DE7FC475E605DBC9960850F4D0AE0CCAAE4F339DC
            7E1BBA6893BBAF98CFB48027294D2BDEC73B44253648A5614986F89A2CBDF7AD
            A4C2AFD0B1DA20B72249D15EA476526FFCE1C112FD0788A46C1496D88C272BFE
            A4C681BF5F9470E82C62CE21942309922527AEE612B97C93A4B68F191B7513F8
            B29339752E3606FB619F35079FDE4E825584F63F08A7FF64CA19CB783BB18BA9
            0FE8055CA64A2257C01E1386C9987885ED5A521A39A34CC8E943F5DB29BBDC62
            C2D791DFB499F68E79B47D369B543AC7D87D829C766A8CA30EF1E3765BC9A9D0
            5D0A8B85BE3B66D43320AB916DB1F3C01F3770E3B319763F6402B7DE712DFD82
            3F7C74FFE1C1336F2E4FDF70357F9CBF18475927290DEB1BED47C915296E2860
            335D14243E97340597DB7230769CA6051C9BF47AA81BE567F80883CC860CCBDE
            95A20F09532DE6BAE59BAC24B42C35FB5411AA1376308EC551554FD65540CDA6
            094BF24A392491B932B23D3731619EB866D02C9EA64A0A5556C473181951872C
            45673B1139D4CCE68D1457CFE199BBFAF0CC23737864598001E37F49D93B1AA7
            A6E31689F2072AA49C05F2198D88CB407388BFB279F10AE0BDB2CD16D5261C92
            2726094D953D259D36D47282F8BAD5A457BFC58AF99F501239DD7E0727175F35
            928963753CFEEED4D5C53C3DA531BA7FBA47B325F5BD7C533B7FB8AE8DC0B8FE
            3CF8E8A38CEC337ADBEA8BE772F7AB73D8F1E043D863A7E1FF0BC0634DD6DEBA
            857977DEC9998F3EC33A296A40DA222ADEC53942E2F7E602FA565D58A2D07589
            C01A56B13B4C4C29B8A6A9021ED8734783634647997ADE4E222DF5CC7F2CCE05
            D33FA655DB48A85F25A1ED8613A9D80735D35F7A7A0D659F8F8AA297564742D2
            50147B87357898EA1A313663063E6BE02FAE91B1E789EB25A2453B117F9866A9
            9B96D371BEFF305EDB565E78D7C5EC996B39E5779D8C3CF12C6CB63DB1170314
            3C2914614AD3D431259EC7022ACE82292C26F92F2A69A994C3E800553A4132A0
            E3D2FDE8B91C36BBE873D48EAA14D196AEA371CD13AC5E360F4F31C7F8C3625C
            F9BB2843875A93DA727CCB3CF02D03F5FC5658F86C9E5F9EB18CECD03E3C7DFB
            2D44363573C79DD3B977F92AFA8EEAC58B336F64586CCA3F37785A962DE1D5DF
            5FCB235F7CC63A014258774A622A5135212C20913E152F8B47C991D992C1D01C
            281197F46C019C570CB3AEB0F7CE0A37DD359C80EFE7B2B5096CBB10098FDD72
            2537BFFB127DF71B8F1A984C4562182D7989F1AA4950CEC899B3537096C54F6B
            928E5D62A08BB8F322918E3C9ADF4DA5DD1A73F14B6A937D2A25BC5EEB1A941B
            5BFA1B9A3E9DC16F2F0C32EDB8041B97B4F19B5FAFA361D8AEF4AB398554A12F
            8E8A3CB69C5300E4448DB869F38BE9CF79649F65F22161B3428E6A354641982F
            6E1429174D2A6B2394444275B34451BEEB77E9E2D13A44CEB6D0F4C193346EFE
            8C8A1A3FBFBFA68E138EF47E072CCADFF8BDAD6C5FBF96E69C5F6DA121EFA58F
            30F9A2548621C2705BB329461F3B9827EE7A820AFB8EFFA4E0291479FFCF7FE6
            D07BEFC3E591843332408D18D9A6A54974F1369E2A07BEBC4E83242AC32D494B
            7C47DFA11ED24B3BD99851D9F5677E6E3ADB64E4F00B858EFEFAEAF3874FBFCA
            AD6FBD88513B027F743731D25564D22D38740F0E91B364D04685C4E35C6B276E
            D34F522910B679D0C4F09AB2AFAC30628511E81AFCDB14EFC4130BE1B7B929AE
            994BE3DCE778FBA31AAA6AC47089383D7A5792EB5F8CD37FCA79624976279032
            2808EB14445255018ACBE1457105451EF3D091A1C213A4208C9430725495C527
            891AB5CBFF74A3805BF775315FCA5BE8BA385A5990F4E7D848E7F24F59F3DEEB
            E4736B38E9E26ACEBBA03743423A7F9DC07AC6887A46B13DAC991FE7B473DB99
            FB5582CB2FA9E582B343DC7775923F3FD5C88167EDC2E3373C80CF39F4BF51B4
            9F0878B2F31672D10567F3E89AB58485CEA33BFAF1D53AE89C1DC74C1A983E3B
            A57C11D3E9C4AD3A89C8DFCCB44A676382C69CC21D378738FF8C3D654B57C9CF
            5F5F598E3FF10497BFF03A4B77DE9FA8AD0F05558A925728DBEDB86D2E910E1D
            BFB7484EE4CF23B291CAA4A4F975BCD57E910D17A50E0180374FA15492B0276C
            91CAD321C7D0F0E174CE18BD96F3FE1413F3DED955BC4F9E4870C99D4DD8A71D
            40EFCA13D0DB851505684D4827108FE6563DB81D0AD9BC9868BB783635D455EA
            5C4E12A41459B739F11A5E91B6349A57F6E62B63934E532CB9D164FFA64FC12E
            49D39EFC86B5B31F62C592398C9A54C97537D6337547F13A22B17A871D7B7FD9
            AADD92346B5CE75B365ABFB4C419D33690D9DEC5CC176AA8F1F8B9F6B08DDCF0
            4123079FB73F375C349DBA8AEF6F32FE3F1E3C0B17F2CABDD772EADB738949CF
            34C444AA63243E57B8E89CDF4949D28922BDBF24EA11A8B0934D29D89C459C12
            AB6D5E29461F69800B0C8E9E768F6CECDF6BB7FEF5975CFBF093BC9C71E2E9B5
            177E2346447C668391C01B0C109234A588E7483B9C5DF377D22D9D42E15E0A01
            01AB143C2C45EBB489A4D9044C0EF124225DB6CD6BF8E2C55B9939AB9A91DB5B
            A6B5D8051EB616B9E4B24DBC951EC088D1E793F7F6C1EB16BF137762C8F6F352
            50BB24ADB0EC332D713C1EC8883157F1343B683533C28A3E5C85BC005A402A3E
            CB14F35BED0BD02926BD299590A81FE81AFDB4D984FDC49B35CC7B9295735F25
            30002EBBA22F3F9FE2C66CD151063ABE3313C62A93C54015A2FD0D7CFD6C8969
            A735D37B371B4F3F57456DC6C5C907AEE395789EF3AE3B8DEB4EBB961EC9FF69
            83A7751537FEE2329E98F7395BA5B755444292174AE49D12C91DD608B1836C42
            FA64298F33E092C81D2167CB53D5A72C9DCA4DE3D725864E50B9F9E47A468DB5
            66DAEDF4EFF711DFCC2D3357F3DACA0578CA2345F6EA5025F51453D2935D2287
            C5064A05E106298EE2F4886408EB550A78720D282967577871188AF879913029
            82A2DA49AC5CC91123D35C718386BFA263DB05D192B87BAFC97D976CE086E74C
            6AF73F4E80B31B0931C56EF1348AAF12873539CD2AA54BC3D425116A3642C2AA
            11D541C11694D81E43F7E428B8C57B2524E505DD6415611EDD218C250792CC8A
            4596B42520372434F8143B1B173EC98A594FE00897B8FD957E1CB7AB2A85B2C6
            807AA680F44CF5B02EAB3461940D5EBC3BCB79976F66A75303BC7C6D1D6D1F18
            4C3E7F95F063817B6EFF0D871F7931DFCE02F829822797E0938B7FCFF14FBC4A
            87F4DC2A39374D0CA3DD279264C9864BE83DE9C03085893C2681C11ECC9C21BD
            53C11FF2D0D85022BB44E83EA270CC997DF9FD0533887886751F9C059A463A5D
            6E5E5FDCC21BB25E36BE513C4E4C8EDB4D3EAA12901EA77B04141B16B2E593C7
            696CFA92DD060F6570855BCCAD7892BC1F9B3084E6B089512E602B17C9387DE8
            9D650C3DC5A97FA866EC446B47A56D85325D5D778AAE9B9360FA839B29B48670
            F97B6196ADC265A5F1A4D80E95D616610E61BAACC8655A5848CB9A7C994A53BD
            F34EC4461D8EDB53475CA4C9DA64955F1298D74E5B73099FD79A9FE415D92C53
            B465E5BDF8AEA286DDDACEC6F92C7B6F8624BA06AE7FB09E53265BD2DD330664
            4997DE7D9C3D038B1A332E4F70C5DD1D9C3936825D58F0A1CF5BE91DD4B8F2B6
            00930F7A50D6F9D94F183CCF4CE7806BAFE793ADEDF8C2D2B3ECD210D66FC327
            AC50C02B31BC25A9A0FA4CF1410E929D225DD250355536CA718564D186599284
            22BD39385C04EB90095C30E66406AAD53464B33CBF39CB6A4565DD8638C5824A
            C411A618B20968346C6286F580655CC587E41C38B72C60F5274F50E358CB6567
            46D8EFD85E026E697431D638E4B762F560792D06568FDBB0C7A429C2816D1D5A
            0CBEB869BE4D395228292A1BE4A53D2D6F65252B7A1B024845BA45D2835DA4AC
            B4A1CCD257925CBB31C38AB61CFDA7EE8E73D0E1286D8308942268CE3C25AF5F
            805B46ED90742651DE2160570B2E61A3126561E762A22089D14BA4A282CCDA77
            F8F4E99BA4B3B572C7FDB51C798435D5D692AB9E3943D631A6BA5F4BA75C2732
            7556130FCF4D8BCFB1F1AB895E8EB9B82FD523A6CADFAD7BCDFEE793EDBF7FF0
            E81AC6FBB3B8E996877978D54A12F62C4EA74948D804E965663C47B64D0CAA21
            86D6AF0AA04CCA7943EAE4252C6C947117BB66F1799A3D647D716AADE1FB3E13
            C5408F202C80F33B0BD2AF1C7C23E9A420CC5159DD9748C14D4275755D5D97BA
            A19A65E205D9AF29DBF79709792314DB9274AC79530CF2C71C75689C534EAA20
            12B07A70B6BB00968908751760DB1C64EBB61DEC461728B6ADD333FADB3385A2
            A7C9AC1E2FE0B17C911E23F55E27B3DEDACC435F24691A3490A1837727163940
            54A986822EAC12F6D0D191429594A7FA5CB87D798AD291B4A28E4D9295E99433
            6C0B124FE471D515B14962741742381B5733F3B10BB1AB39EE7C642827EEE7EF
            0674CFB194BB8F67DB7135CE4D70D4314D98F53A1FBE7B90B0FA15F2E960BEAF
            79E7DF3B78E28B3FE4AE8B2FE3A9E59D68D1229E81760A0BCBA4A5711589AD76
            AD8CC762A0981D5B8D4FCEC3441539CB48EA729A36F26B8AE48D34DE8883DADD
            2AA81D3C550CE664A96384BCCB899E8B8BE9B6A3BAC5748BD13484EA6D212F49
            33892F651353ECC7884A52DE9C16B3AC52AC9298AD06A928F9C488EBAC5DF30D
            1B3FBA8B7181559C75D91026FFCC0282484031260A20A7ACB5CA7BDFB682382C
            E0E4BACFCCC1BFBDCEF4EDD571CFB6F7CB0BCCBBBD957B0A26CB4416BD0306D0
            D73B854C600C5E45DA4293E3347482D526B9760908B219BD6CA7450242B5742C
            3DA5D3694AE2121C87444603E21125A8D12AE9CD6B5389F5F5915939934FEFBB
            95F0B812F73C5ACB5EBDC3DF01B6ED3BC7B98D25DFFA5327E73CDEC4E9974EE0
            CA331E93CF2ABF17E07CFFE0C91678F9BAAB38FDE6BBA577B950077AE857ED61
            EBB214897C198780A3209DBA66AF28AEDE2ECA22318E9CD6A5EF4DABB35D715D
            6F2FE2AE50A9DE274CAFBA7DA8D08E22E10D52D04C346978B32C7226207049EC
            F5897C6425ADA5B46D777E7A847D1CE24DAC79CD395B015F44A79CF553EA6CC3
            EF098A072909240C0252DCA6AD732837BFCDD87E9BB9E48ADED4F5AAE6DB29A5
            0238ADAEFBEE536B8CC7DDDD3C3D534CDD7C3B0D553E6FCE909A5360FA4B2DCC
            D82AB2B9DB6091DFA3292B2370267D425CDB063B75D3812D261C9B7648642F92
            0DDA696F4D12B20BE87DAA04092F2E31D98E8C2E0C9C46EC9B002C44D99A02A2
            DBC4BCDBA8F186699FF71A339FBE8B8A91195E7F760843FAF54897F61DF0589F
            B9BAC6D82ED9631DCF96341E7EFE12260DBFE4A7099EFC92455C7AC2693CDABE
            4924C68753D24951DABF2C7EC0EE90861396298B29B6F7F712EB1FC4E5B6515C
            9E27119192766AB813656CFDED92ACEA512A8F133FB09F74143B46563E4F3BC5
            4F1AE8AA2498A208544921E112BA37DC54179D14C49816FD227B8594C45C2F45
            4F41D67753E9F6E0C916691249F0B97DD2834B788458B2F27E6B5B2B5B5EB89F
            E1B1E5FCF2A65A7619A913F05A779DF64C23FD8E61FE8B31B55E3BB7014D6425
            FE419E0FE7A5B86D8924C63E11F61DB7171BEC53313BFB939282354A7008F93D
            54C8D73A74398F4A1B955A400CBA5DB25111453EEB2D71BEA019B4BBF392CC02
            98591D3DAF75DD45EDAC14501939CCBC9340D84B49D3285889F0C3675938F356
            F6FF7935336EAA134FD923BDDFB2CE3679CDD130B7C89EFBAD62FC79C3B8FFFA
            07506DBBFCC4C0A3C7F9F4AAAB39F8E6E9D48C8F4A1AD1486E2E754DC6D2C400
            1AD2D836F122F27F1C72F21189A385A203BBD4212B52A415EC38AA54B63BB017
            03EA0EC4B0EF4F63CA87E92BE22A15B6954C3C8C2906D72931B845A2BFDFE5B5
            6EAA92482B3218D6E88C9B18EDB21D01A3433524427BBB529059E725DF16DF66
            6F54F126CE34AA5E4B5958CCE6D558F5D14B14BE7983634FD7F9FDAFEBB60147
            8A89DDBA22DBED65FE5218B6BDD7F3ACB831C3656FC7592BBEA5F74E3B501B3A
            94B47328E6D626AC43EB3063A8029292DF86537159439038C510172AACC15031
            E61D5991DFA0F83501513E835FF190135674560BEBB444F089594F170C0A4E43
            DC98741EC3EC1A68B4CB771DAE0CDF3C770D1B97BCC36D4F0FE1D8036A50FE22
            5F960733BA0124A0CFA678FC82762EFAA889C79FBE98A9E3FE243D3D4EA6B319
            67FD88BF7B0AD9F7039E528986876FE3BC5B1F6376632735120F6D0E9DD4B202
            86E8B92629CAE192C692A25B0363A634865F58272DA9AB2CCC617308BB684562
            BB0518BBE73162A48F276597488DF4DAB89D462D4FAB479294E6A24AD72946FC
            D2A89A04222F8618703DA812D7DAB1254CAAA215D2E3CBE2DB7344A2A1AEF89F
            B4D29151C6ED2853DAF411ABDF7D8AAA5193888D3810672C4A5C8AD8FEDC030C
            DBE12B9E78564C7349D8479726758B31B1F5DC2ED3D3A3B75D90940CCE5B67A5
            F8E32A9DD0DEE3F1D51E86BD5043B1693DADB3AF92645F4D68AFE389F6EA2BD2
            1920298CE715E3ED92F4A89B46D71894AA3BC8CB6E6CF192244B31FCFE92187C
            61E08C473843A5CD69DDE221522518C828365AD52415DE00811617815E5E3AF2
            ED7C76EF3938A34D7CFCC65049553D25EB39E6323D738336AE4A73E89E6BA8D9
            B517C74D98CC86D5653E5E36979D0FDE831B2EB988BFE76ED5EF013C22450B3E
            E5AEDFFC9E2B972DA35AF550B997977EC3DC2C7B3141DE32C385BC00C28ECF70
            59D0219517132AAED01671120C87319BF2B489A5EE3BB982FE03AFC413DC5394
            23CBF6239CB8C40FCC9C9D26EC2C6D0399574C705CC35354080C90886F53B035
            9B5218F14391125991479744DF92A18974390808CBB9D3364A4271390174E7B2
            77687DF21A227BB8714FFA3975812331D63751F86C3A479CE0E4D8B3A42D0C75
            DBE3DAB02E4BF8B615435224F662F77B397E61D10D8B4B1C7C7627037F763201
            DF54B2E2B9F8FC1D96CE7A84CAAAB86C7F2C9EC127123106624F7A89EB294A01
            495089B078786151AC3B54258E272508C8770B76E91031153565472B17E89474
            6973FB8959C3009A9D365B82A8489E3B20BE29642755F4B1EED5DBF9F2A32798
            764A8419B7D5F1EDD48D1E79D5BAD8C7CCA578F4AA0417DCDA42D0A111B47B68
            D2C4BC0FC933E3F5F399D8F756FEBB3770FECFC1532EB3EC57BFE18897DFA12C
            27575275FA4E8C10ECEBA2ED954E9A1BA4E8021CB36C8AC288D9B56EE10D4984
            96DAD4ED18C02954DCFA6192A4F8D581FB0EA67ED06FE49C0712DA6A90F33A68
            970655D23A91B21C5ED0494321439D24AA725A23A7A4715AF741094B0525F677
            3466294B9AF3563A306C928004B845016E458557BC8EF82E25C08A95F3687EE1
            5AEA46A6F0EE3D4DA4F070E2F366D3A762330FCEB0A2FA4ABE1DB9ED36A01991
            02BFF33B05B1A4CC4BBA4DE1DC43D7B164547F46F43B5700BC0B89B977B065D1
            2CCA7D0AD44CACC60C9C8FDB3648F6EF2465DD266458635D0A6991555FD9833B
            2FB21EB26E97B6E329E7049F1224E4BDE9B28BD996B62ACB795A039B3E09085B
            44DE5C06E988BD6B3EBDA755BC9169E7BDFB8FA6BDBC89875F18C241637AAE77
            E9DF01CFB6635FFD91CE1947ACE19B3A9519A7F9F872A6CE8DCBB21CF6BB813C
            F2DB9B649DBD7E58F0E8B92CB79F700A0F7EB592923341326D30F48830E10A31
            C8B315162EB126B4E8E22D64075287A800A66EB0BBEBF16E5AA741F1D3028D9D
            05EAF7F653B3FBA992260E12B0481271B8308445FCED25CAC21EF988C85ECAC0
            68EBA05CE7A1EC5471A6C433A45D6811E18360999C48A6A2FAD0ED51F2BE0261
            69DCB25BE4403C4251E27D5DD14DFBC6C5747CF047A2156DB8771B8733782C1B
            DE7A973D767272DD9D72AC34B32D7ACBB25123F57696875715A898A473F2B48A
            6EE6B17C45A9AB2EF3A6C7396E7A07230E3B05B7EB648C776FC5F3F51BACAFF7
            1199B82315E69964CC28296719573E4F9553D292187D2D9DC1BD79318E6A918B
            EA81525B1B3E8748BC24339710583EA3C839852565A5C50CBB443D3DE2F1B252
            172F4E31FB45B7824B9835ABE4497F328B0F5FBC938987B979F6C1BA2E9FB7CD
            E0FF9B9988399347AF4870F1B31DCC5FD49FBAC61263A76DA57E4F85575FB846
            CEFA8C1F163CE9471EE6E07B1EA7BD24A6574FD0164F131C5049DFBD7DA416E5
            D8FC45276A2F95D020911BF11FF53BF9102C4823213D5E7E564ACCDE29C5D03D
            F7131DBF8868CE8E9271B321E0A0526834534AE2CB09A5478489D259EADC2131
            D88A349A60D2BA054AE83C91931ED8F219DA976F9293BA0F38EC0274F1197991
            2A974FA3D424B225B2668B2A94D76F4099FB08E5FC6694BD03388C7D292C5BC5
            B3B78FA572CC3B74994DF14BFA3B1A2BDE4DF1EB975A592231D919F473E1A141
            4EBAD4478D35FA6C3D16439A7BF5E22C471EB991C02193E9D5EBE76C78E1016A
            1B3E203D2E8AA36E32FEEAE3BA26B5A5DA53C22E9EAECB329D728E46D30A1C73
            EE44098A991FB31FEEE804BC7E3F05619C40414115D9CD58CFFE89A8B8A49359
            F74E5B5030036EA27901AED3415AAC59A12D458574B4E58F5ECED6E47CAE7BA0
            3F47ECE3E1DB319F5C7767E81AF564EEA319CE3D6B1D17BC349AD30E2C70D14E
            EB78552972DD7D3FE798DDAEFBB6E3FC10E0D9FC873F72E433AFD3EC68C07007
            AC2F626B13000DF5509428AB3825620E0E0AEBEBE4D36297074A2FCA1BE4DB25
            562F2C90AD29B2E3C1C319103884747C4FCA6155FAB4DE15E92B24DA27C326F6
            8C1860F9AECB74A0D7FBB78DDDB5894BB27BC9FA4C3C29E9A51DCB58F0D4D554
            799B081CBA37BD2A7F47433928F0B39E62EAE832D086241B33D3C1E6F9F753FC
            FC036A0F94E8DB3400530CEBEC85311C4A5254ABCCBA391D3CF86686D9F13C7A
            9B4AD69EA57AE728E905257AED60E3E45F4438625FB5AB7717DAD3DC794603CF
            B40FA4EF0107B3FEB5F719D7399F86A9B5F87A1D46C176007A2265CDEDC7168E
            922D887497F32405C0F995AF525BE9A7795C0DDB8DBE949C3E10438052F69789
            46BD641A355CC2DA29D1F840D083A34D3C8AC7F2F3D6557C1D6FA613473140BC
            2A48F3FC37983DE37A4E3BC9CB3D77F5EE064D8F71FE0EFB6C2C70D6599BF8D4
            E1E5F3272A68BC2FCD8EB73672DA0503B8F30FF7C93A7BFE70E05974D1AFF9C5
            CCD9A48229F131E235BC36B47827B94D1ABE7AA7E87E25A95693FA013649580A
            EDC212F994497C7E925C7316EF9E6176D8F7046AAB4F44ED2CD322E9AB292FBD
            C9266597941496ED893851146F648887319D62336D3AE1A88E3B675D5414B3EC
            9294E270F2CD33BF65D7E222566C3F94F0EEA7602FED8A9113D6F12938C577B9
            05CC5EC5CBDACF9F24FDD1E3D4F4F3F04DD2E4CF7FDE93C30F6AA1F0541B2F7F
            A0F174479CFC201FD5BDF7C3312FC3172243FD0FEC8BBFFE281A17B9C86C7A92
            71239BB9E6BA0154543AF9F8F9CD9C7E778E21C3C6B375F66AAADD5B50F6EF85
            DAFB247CA5BDBB2E046B3E6BC05A8E35E72393584BDBBBB7D3D2BA963EBB3989
            8E3A0A5BD554E96C412A7491D980E861C84355A224E72A9E502DA089E4565BBA
            6F8DFB89A14F160A44243DBAC4EB19D245B4F55B58F4D4AFC955B772CFFD754C
            DCCEC9BFF73DDB268EFDFED7EBB8E5E1342B67F7C65CE165D2796B51C7E579FC
            B1DBD8A9D7CF7F38F0DC76E6993C3B7F1EC53E1AD9D62272EEA2C965526D6522
            8303548F728B5115499763373451E3B4F49C15091ABF167DAF321930A51F55B1
            638986F7C72B49A33DD98E5BF3632A621CA5F75488BE29A6874643B62D51D753
            B49193985E142653231E4C6B983F94A150F2939BFD28A5F5B3D0C34DD8F63D9E
            8AF069E49C29849E503CE225C48CBA03415A17BC42FCE33BB109A81A0C2FE3B7
            EFCDF183B7F2F8D7699AE5BD77F4F6F4891C47876B30DAA237D8F4D9ADF49FD0
            8FC0A8B3F1D87742D9DAC0671F3F4FB5F3338E3D5965F75A377FB8BA850D4A25
            FABAACB04D89D8B46AC2FD2F2464EC84EAC8D2620A9FCA31563992A45B17B3E5
            A9BB1835304DD39E95225DA7511D9C4CBAA00BA3886C19050188AC2FFEC8ED17
            562DC8EBBC9D76BF0DD56374F9C08047DA473569C996A8B36E9B96BF6F59FC38
            33A7DFCDEF6FEFCB25E75608CFE8DDCC634958CFF88F9B6F5EE8E0CCCB1A485A
            894F77D3F15507F5A3CB5C357D2A934759A9ABCF0F039EB34EFA3973577E889E
            11632B276A17392E8BAE648BD2334647F1D53905EB92281A0C3292BC8CA602E9
            A4983C5DD246B5CE8E878DA5CA7F129A675017C3F8E57CDD42E5E5D682F89D34
            1522532E97878EB63C46A288535569D3B228056B9CC4463A94931016A44E1A7D
            D3379FB1E9E53BD9ADDF465263A609E39C465E5292F59F35A058B2A6EFC45CE4
            3E7897D2DC07585F6C15104668ED485335DCCED85D06E1EC7F0079D79E3832DE
            AE873EC5173EC1C686D7E933B59A0ACFD16252F7165F124097E095FCE875F9DB
            3B4CE8FB15B6769337D62A8C71ABB4F47351B3EB000ACE8B31AC75857554017D
            58D2554A2F90FBFC11E20B5E60A75D1C6C19B3A3C4F3B304D84331948CB49B86
            C7112020726FBA0DDA321A55AA00480248474799424E129780A2DFF010D14291
            E67891427548DA288077CDE7CCB8FC02469E6872DF6D7DE8E7E9795E5086BF8C
            8A5B60928476FCB44DCC9C9DE4A443BDEC3CC4CB11BB44094CD95956B1C67C86
            FC30E0B9F6AC3379A56325BE705C9842A1F14B89CBBA14B968E0AD0E08A388F1
            6B17E9E850488A1C6425B23B3DD64450830163C20CD9731A85E044FCE530662A
            841A35BA6E4FA1E44611B098AEA2F08F9B0A018196D285D245CE243A3B1537A9
            448E508D42A9A4108AF8C964D2743CF25BAA0BAB5076099018F27329C4784CE9
            C52569487B51C52B80A3633D4B3EB885CE96AFA8AA8EA18EF5121A388EDEA1E3
            D012D5C4FD12E34B92EE8A1EF20BA7B376E3CBF49E524F65CD0968E51152D490
            ECD324E095736BCDD1B672166BE6BE4821DFC6C4A80B73DF0A927DF7C0ED3B19
            773224DFD1D0DD4549533E31F8B2FECC2B29C83130D649EF61D324A21F895125
            89D0E6C2977250164FA34940F0269202620146ADAB6B8AAAADC19A442F513D20
            9E479540512A0B2035D2D29E4A858F7AA391576FBC8A554901D1C3BD98BAAB75
            0351CF7CE79EEB5DD65D191ABF38622D739775B064C168F162D6E4B0BE6CBBE2
            FE5FBFF3F47F0C9EEB4F3F83E7BFF91AF728018F4855B95822312F2B3DD3C054
            5DD8ED72C26507A65646F33BB04BC354543BE85C9395DEDC9B1D069F4451DBBB
            6BEA8319F3E036F3B8DBC5680742E4254EB564C4C4368A7C05A3B40774FCE27B
            24E9D2EE16B32D5A582B8DE974BA68915EA8AA226DAB3FA4E5D587E8BFBB4171
            E269B86D4763A452D2D9C4A40BBD8734159F9EE4CB776EA4B46A2ED5537A5139
            F63862E614726591585B8ABC44DA8275A78514C5B3F805967C7E2F8326886C6D
            7F96C0781CF60E3947BB7830BB551807F55E1F9D4B3F61C52777304093A83FA9
            9A7CAFA9528783F08B5576EAA6B0A818E1808A6DF50734BEFF3431F126E6F84A
            6A62C78BBD194FD21ADCCC3AC5BD24502B63686D9BD8FCCE63B8C7EC43CDCEFB
            E36ACA5396FDD9244064246ADA13E2742ADCD299A4E308EB0705CC8E2101E6BF
            FA04EFDF71074F3D53CB31C778BA19A727B6F73CF9DEE0B50BDBB8FA9D4D5CF9
            C2240E1E39F3BF0C98EF113C65CE39F62C5E7DEF69223B5611AC09A0186532F3
            72E44B599256F22A4BCC563442BD8456ABA5F17A2944361834AE4B123AA0177D
            069D4B5D69479CD5761A44A68C3607FDC2C20E3E175BA417BA4A1A4EBB1843C9
            F771EB2113F99CC46E83882B4253B62CBD39872AAC645D4C0C49824869AD24EF
            3C81ED071B6CD8431ABDF23812C528114DD8507C42428C68480AB5F5CD075117
            3D8339254270D03902A8DD49BA3591190F4161B8ACBEAD0F263E7F8CD60D2F52
            7D403D6AF5F1A8CA5E6404C022CC78720E928A55C408B178036B5EBF5B3CD842
            3CD636079E41A8348E9CDB41C66DC3D1592064BAD9B8E071DA97BE459FA149FA
            EEB31B4A9FCB84392AB135662472ABC27AF6AE98AE7D329DD51F3C8E6BC810FA
            1E7C38F515FBC931A922B1C28A7E371E45783EE0155685B0F83F39353C225F1B
            3E788F376FFC03532E7071CB1F63045D3D73778CEEDF564A144B70770B87DFDB
            C1BEE78EE6E2731F90CF86FDD0E03139F5D8E37973E6DBD223EC520497C46653
            D25551E2AD35B94E21DCCB4F78A41B5BC48D4F0C5E795386CECF4B14FDD07FEA
            DEF4A93F9E8CDA1B975D95B4A5D096CFE31924D1548A686E4EA1681AEDB198C4
            DD166219E945E130AD66167B3A8B10196DB6005991A5A0989080DB2F8D9867E3
            F3D7905B351FCFFE11A263CE47CB8DC1E5542949443632762AFAD5B269D1E3F8
            DFBF17755F0FCEC18792F11F80DFACC025892FA73AB155E4513B0C12739EA3B5
            E13D7A4DB1AED41F8BCFD8A36BFCA8248C6A195B4D1266DAE3C6BBFE6BDA67DD
            2766BE11EFD43015A32E259A1D29C6D7A0BDA380C767A00AFB6D79E92AAAB30B
            D0F688121E324524FE34CA4A809ACA2C25DD81E212695BF719EBDFBA8D646B23
            BD779253DEFD50FC3BFC826CDE2B2013E35BCE92ADB0113183723C051C5101A8
            A44DB73092BA7E31B39FBA8EC4E0769EBD2FC6F6F501B699656BF43C4BCFC5DD
            F2AA34934E69A166DF4A9EBDCEBA9DE9973F3078D62CE6D45FFC92598BD76153
            73E8129DDD42F54573DBCDFA4A58A5F79E21828A8DB6B5D6DC9D0236A1EF8EE6
            924888789E9F8D62489F0B29B98693CAE5259980B74E27D369176B27125367A3
            437A64329E211A0A88AC89E94D6B2862B8159F4F7C4C09775A82705E4C64302C
            713649C466A37DD56734BC793DF563C5EBEC7A049EFC29100C4AA153E2293461
            903EC497BC48F2BD5B19393E4C71F8CEB438C40C8B790EE4FD748AA9753B24D1
            48DA699A7D3FEB16CDA4CF383FCE7D4E97EDEF8CD924BE44A4322932E916E36F
            4D3F4EACFE88AD9F3CC2A021E2A4470F150FF22BF2020A8F66E0D13D1405902C
            7E93E50B1E62504CD2D1E47ABC15BF40290E175FA6590FF9100084B0153AE0C3
            3B685BF601357DBD642744E93FF80AE1F8615DC5376C2132A9A2307A9E983B8C
            5E65A72E2661645941D2979BDAFA2C0BEEBB8677BF9CC39B6FF662DC28CBF758
            633E3D534CB64D5D35732A13F65D8D3F2446FF9D33E5B33FFEB0E0C9DF720307
            DCFC206BBD963C59E051246A96BAFEF927D3104BEC72D26770947C5B9A6C4AD2
            9818D680C8565ACC7FB123C3D0137764D0809BE4045CC4B748D3B884BDEA1DD8
            B60A18848FDBC4ECD9FC2AE15C069BDB4E4198A5941319931F8FCF41B32491A0
            EC2C225E22237296156016A4906A7C39E607B7E132248EEE311CD788DFA037D5
            216D8B16B49ACF4195F4D02FDEBC1A5FBD4270D2602AD42B246954907695BBA6
            3C84D225DA0B2295226DF1F5CF306C422546BF93C8197B6213C3AE8A1CA5C5D7
            D99C76229E109D0B1EC3B9F829D82B20867724DED0D9D20EE2619CC2863572EC
            2939EF59F7D2B6FC5552311BFDA70C2310BC88A42E29AEC6412191C72F092FDB
            F1251D1F3E80A3D08CB2830BE7B863E9557D08CE66392EA78F64B5742B6118AF
            781E975FCCB2986C87C741C49EC7256D365AECC19C19B771EBD30F31EFE3E18C
            1B67CD4FDA36297E9BF77177319155DEE3F7DEC297ED097EFBA7DD8919275813
            0FA8D97E4F46EF3050E4F91F099E96666EBBF432AE7EE145DCBD3DF8A2414A6B
            256929B9AEEB480E3991AEB9FC62961D6E85E8B0007DC678BAEE0DFF7A7EA7F4
            1E9D51476FCFE0BE7FC2EC25946A38D9BC262EECE4C523C6D916C890DE6AA352
            51316BAC2BC0390694755219491BC2640EF1069509F99A44D866690F47B28857
            8A9D375D18463BD9F7ADDEFB29AE7D7C548CFD1D7673476A7DC20085725753BA
            89B37CE60D14B67C4EF5A123F1F7BD524C6714EBE1B68ADB8D215ECBC8EB1416
            3D2F69EB19FAFEAC5AFCC37192D6F626A54A8417DF51DD59EABA6322EDD0D9F4
            FE2D4457BD83676225991187C87AD3B0AE9BBBC45F25BD212A367ECE37E2616C
            99F5947614C9D96E1A11C71924844142AA8792C467DD8C93FFF0515A57BE47CD
            1017B6317D08C64E47C234F668A96B1A6E58A2BCCF9AD2219A9D906DAB9D72C4
            3E495F513BDE4C117BCECFD2590F32E795DBB8FFE5C11C7B600F60BA9FF3F317
            EF93E7B6633BB9E5ADACD4CB2BC9527CAA4D63EF334773FF35D752EFFFCF479A
            FF7EF0AC58C489E75FC94B8B3EA757506266448A2E72951170E434912F97355E
            61430BA9223F3EFCFD1CF806D850966BACFBA81D575465D8E4C1D4F63E577ACE
            7624FC0A668B24B38429C6DB4E4A98CBED90B82E8D25B524ECB1EEA89006B66E
            E5ED5469B71847F66B5ABD282D0CA506A5317344A5E0B64290950B9FC7BBE076
            EA7671A1F73D8E549FFDB1392A096B12ED0B394CAF8B552FFC99DAB5EFC1C1BD
            D1FB9D27F232161F298A6D2D94EB6B2421CA717FF9340B973D44BF7DAA08549D
            8AA37232C54C0B850DABF0548D42F18405648D6C7EF71E8ADF7C46E501D54446
            1E8DBB7C100539F77CBA8D6A7B3F9C5F3FCDBC39F7D1BBAF0D754C1D8EEA0BC5
            EF0CC3544A92F4DC648BE25BD22BE9FCF0063C8556CABBBBA8D9E5782A6C8750
            CC9570D50883B70B586BDD5D8FD92D895CC70B3606F692E69026C9256D926A15
            9C5287E67766F0C933B773DDEDFD39DDBA51C2FE3726B399451E3EB2839BBFCC
            71C4A10146B766B8FDAD34CAE15E9EB8E972FA85CEE5DB74F67D83E7CD999C72
            E54DBC995ECBE0215EB658F75879AC395762368BBAF45E297EBD9FFAED856DA4
            F04589BF1EF9ACBC42A769438A8A3D4212A77F892B3C1E9F30485BD6EC7A28A3
            263DA8D250288B59B54BA4B7925585A213101E6D2888BCB58AF1B49EB72CD13C
            AB5BD33434AAC45B94E212618D24CEA08ADF1BA6F3ABB9ACFFE02EF1511B084D
            DA0EADFA22D4521F344F5A584BBE9677743141F5FA57F11E288C133E5624E840
            721BE6D0F8EE1DC4F6988C6FE8243A57AFA4F9CB47D86542847C9F6348F927E1
            5EF0361BE7CFC0EC3D80EA09075391F0B1E98DBB291B4DF8C7ABC4865D26E0D9
            4E12A7F83B29ACC7C8A22D7B9EC48A37E8B5AF8A67D8DE02E013284A7AB2EE07
            B307E4DC9DD2D1DEBD8F86C5AFE019E013100EA6C675367A6C678AF6248ADD4D
            5552FC644C110612364F96F08A77D47AEBB4149CF8A55D7CC2405AC046F3E7CF
            F0D9D3F772FE655E2EFE75AD749A9E8725F42C96AF28F0DEF129AEFBBAC8AD6F
            55337CA3C1A9876F243B55E5C15B7E434DE83CFEB3671CFEFDE079FE39CEBCF4
            6A5EAE4E3164071FED12CF3329037FC4A4243D4475B97159F7A4572A5DFFAA62
            3AA9E35A5722DBAE63F68591BB8F9394706ED7E8B0EE527188E01692A6F80801
            58CB1718ADEBF0EF348DA85A4559B4DD53E9A0D8A0D0BC56CCF3F6222BD664AD
            2D45328A66D1125A2A2169298023ECA0B3AC1113015AFFC674FCCB9EC1764008
            EF90CB2894B617392A892F731312039EFAF0493ABE7C9C6187F8C8D548AC0F9C
            4ACBF2B96C78F93A464E1010EE7A1C2DB3B32436CEA2767F3BFEFAC329948FA4
            38F759562E7A88585586D0FE93C57F4C61C3DBF73170871CDEC1556CD9B433B9
            7C9A9A41BBE3AFDD07DA17B0F4E51BA874B5E0DDBB420CFB7118E1DD84313D38
            ACA92AAAA4A8AD5FB1E5DD87A8776C64ADF89ADEE3A7E0504FC7275ECFCC58F7
            DE5BE353ADC27E55388A36DCA1B2F848079A98FB4247890EAF429FB048AE5249
            F382E798FBC4ED9CF26080AB8E8DE1FCAB8723F42C6E169DBA9ECB16E7B9F9A1
            BE0425481C7FE406FA1DEAE29E5B7F473874E13F103C6FBCCC29375DCD82DA34
            51974B62A42EF1382EFC5926AF89064B34AFDC4D8A59D0C5EC15C5687AC88A27
            F2F62D4B021B81B7F678FCCE316286ED2494B2389062576A098853E858F90ECB
            66DEC7903113A9DAE3089468B42BDDE4720E7491A8CA808B8447EF1ADB719B0E
            B26BE6915836136DDC0184223B1012139990DE199FFF0AB14533504788ACEE7D
            343E657FD2735E226E88C99D76322E01CAC6378465868B571BB72315F557A02E
            994FC7BB8F509E28A67DD01E783E0BB1E1EBD7E877884A312891D93C12ED8BB7
            58B6703AA30E10668C4CA123DE0BDBCB77B3CB4176DAB6EBC3E61775E29B5713
            3D72672AFB1F4BF6CB382B66DD4C556D8ABA43060BD34E24B1C18E317A129158
            107B7B81CE79F7905EF2266A9F00C6E4FEF8AA7E4129DB17EB0A5FBD4BCE3FB5
            56A4F146F13E3BD36BE2E1C47AD7B0B9C3BAE74D428335389A76A3390DD99E97
            8E792FF2C9B37770CCCF3D5C7D555F91FD9E276C7CF7E1E2952C3EBB81B3176E
            E696B76BE9BB4AE794C31A300FF731E3865FD13B7CC13F103C8DEB38E786DB58
            D0329B70A48CA34A8ABBBA44E32769E2A5BC80C34BB44F90C2D6ACA42D3B4EA7
            827F4489DAB1DBE1F51D45D8B597344C5264C4812927976F30254DE425995461
            EF6860F1FD97487C6DA1F7E49D718D3E0B6FBC376BB30DF82B23D8F3767C45C1
            A9D78EA69670CC7986CDB39F431B5841DF43CEA4B23C968CDD41BEB0894D2FDD
            8C2BB994E8614308477F47F36B8F095B7DCAA023CE23DFDA8F0DAF3C40756033
            EE093B10ACBC0663FD27B4BC732FBDA695D1068CC7981F66EDAA57183C4562B4
            FB70CC8AA3C8CF7F8EF5F31F21B67F989A1107B171718ED2EB4F129AE0471B39
            94E4CC0CB5B92D683B39710EDA99E6B732241B1762F814AA460D22D06C2391CD
            12DD7318EAD0C3086DEC60D55B77305CE4A9798497F0B8C992264FC5132F49C8
            768A916D23F5BE1CF7EA05A4EA74FA4E9E44F5B0D325214544AACB24EC3AA184
            17EB492C5A85CAF28F9F65ED2B3773FE19312EBCBA4AFCA08D6F6F1FB2E28275
            ADCBC1E2F3121CFF562777DC1D630701E249173593DDD7C753B79F4CDFDACBD9
            76F7C53F023CB25C73F9D53CF3CEEDC40645718C14335A0CD1387B152B57A585
            1D0CE9111E52D66D4F8624223DC3807D9C0CDCF59768DACFA80AE6B11B2AADE9
            224943285E0913AA945465D1BD57CCE1DACF59F9DA0DF4F237A18F9F46FDD80B
            49B6E471665C1402923284CE4BC24446C72A9A3E7F960B279778EDA34D2CAF1C
            C080DD7E210AEF21ACD6B3E9853F515AF6127D0EED8FD1FB525190ADB42DBD94
            91FB55090B5ECAC2A766114ECFA6EEC8D1E83557E05AB385C533EF60D4A41CCA
            88A114970C62E5B2D719665DEEA83E06A7F7443AE6DCCDFA85CF32F067B5C46A
            26D0FCC116B67CFD21B512E7A3FE416CFC78339EA844E74A17A5649896AD6D22
            9749B24E47D79410A7B38C4FE4BDFEC04A7A798FA0F1B34DACF9F24D761B69C3
            3F759078B94BB079EA71DA84D95AD3A4573EC1AACF6731B2CEA0AD775E92DA81
            0CA83E55A42B2232EA4029985D4FC8F78ADC2962BED7BEFD38F35FBC9BCB6EAE
            E2BC33225DCF0EDF667EF3DDBFF5AE7957EF9DD6C2D9EF26E933D0454473F0A1
            98E7FD0FF270F73D475059654D0C0BFC87F5FF1F81A7D0B6822BCFFF2D2F4B41
            82BB141920BE24B9416180C4CC832718B8D794B8E5890C6B0BD63F6296C155EF
            62BB6987482A3F1A7FA0B6EB4AB13F91A6B5B38CB77794508544F0781197C745
            9BA9B0E6A32729BC349DCAEDBC9853CEC167DB879018E4B22632E8F4A0DA2268
            F35E60DDC23778F695ED8879F7E29C73EE637DFF9DA9A93DA6EB9125E5856FF3
            CDBB0F121890C53EE908D4A6ED58FBC4EFF1ED5AA462EA95C4672E6078E24D2A
            CED88E958533F06DF6B37AD65D44876C24B6E770C25BC6F3C57B0FD07FB2306B
            DDE102ECD3BB0620572D7A89FAA3FB531515F0BCBC1A9B7D1903C45B75AE89B0
            E9B32DE28333E44D31B0258F9C6F8252DE4658ACC73131589A2EB32C28BEEF98
            6904DA06B1FEB5D7D11CAD84F775D26BFB1371E9D69D184E120191E64D0BD8F8
            D27DB88D4D98DBFB09EE3C4C98F25754570E22A1E7C98897ACB46E31B5C28804
            169B7CAFE1FD7BF96CE653DCFEF2508E9AD2339BD0BA35D9BABE65DF566A53E7
            CD53E2FCFA8D667A4982F306AC9B0C0B1C71648CE34F3E414285F52C24DF3F0E
            3C5D4BE7566EBFF9CFDCF5E46BA8A2254A48907B65847D0E14BDFC28CFE54F6B
            3CFA7A5C8E558C6AD041EFCA18D1D167E01E32891A6BDA81350F572F12D04D0C
            DD8D3DA68A8FC9D1B6D9943499A371EEED9457BD4A60BB1D718FBA04A3B682DE
            8A8796D6148E4084E6251FE0EE7C8F07EEDB9781FDCF253BE72B6EBCF2777C58
            BF1D813D4EC65B48B16CC6254432DF103B6E174981C7D2F4EC1398B5CBA93DE0
            3092EF96706E788FA10706D8E83B0E25DE8FE6B7AFC7D7B79DCA1DC650681036
            5DB6948193C4B4F69E4465E444D6BF74172D5FBD46FDB1C3C5D41E40FCB937A9
            EEDF466894CA8AF91E3AD7B751565264F24AD74D18BACBC610498B2756D83930
            AA5853A3B9C932FBC3460A2BD462AE5B84D9DF89638701D4D65F208EA4169721
            6C926CA669CE0CEC6B1651EE9717F05451D1EB4202919D09F875B484295ED285
            A99AB845C22319A7F8A42656BE7F1F0B3F7A9BB73E88B2D71E55DD80E979BA6A
            4FA94D2EDF77234B4A65DE9C3156ECCD9E4234029688E573AC47D958FF4EEB7F
            7C4FFBF772DF56AE733507EC73349FAFDD42749887C76F8B30B1EBDF2F73B338
            9DE3A8935BC550DB511CC21812C9FBECD68FFA0927D2DB3F8E26BB47E2F8FFA3
            EE3DC0A4AAB2EFEDB772ECEA9C130D4DCE413282282A881147C5117318D3E860
            420CA860C43CA2082A634445C58428203948CEB1810ED0395557CEF5ED5BDD25
            CC8CCEE88CCEEFFFDDE7A9A7A1EA8673CF5967EFB54ED8DB4B6AB312A869299E
            8C2234ED87618DF8D16974F8FDFB28F9E865C2F51BC93AEF220C39D793642D22
            AA6AC4A1CC7BADFA1A6BEA1E663D7111EDD22E8F555278FB16167EFE1E9F6CAB
            C195334614DA52D22BD693335C80907711D5EB6AC8777C4BC1F80154EE4CE3F8
            B655A474F3621B3C8184C63E6C17E594663D4EE2884ED4978A6B28DDCCB0F16A
            1A1326E0D44FE2F827E2DEAA36907845712C26D0C1F7D6919B1640A3F171B856
            8333AA2C64F78B92126EE68B502575715BA6962B73B5625522684351DEB7C3E7
            52172ABF8024D948A7B166AC995712088D446F4EA55EE5C4B8FA2B1C9B3EC150
            E0A5A9B381DCC23118CDD7A23259620957722C11222A1D2D4A54B24437692214
            3856CBBA2F9EA1E2C036167E53CC2983556DEE27DAE6B69423224A2FC22D671E
            A7D4DAC2B74BFF28DFCDF9A5CDFDDB82C7D1D0C0ED179EC3A26DBBB10E4DE5B5
            A9B98C15F6D62244DA2E3273DA25757CDD20EE481344499497D4C54087916791
            987B39565F268D728EC9D7C2FE2FA70AA7A925FDF43FA1EB722A96A8115B9219
            43FD56D6CF9E414E760D69E75F8BC93A098FD12005D6E1DEF82A75EEB5CC7EFE
            76BA654FE0C7F528E2DAD67DF7154B3FFB8A955BB7B3FF480D851D54645F7C11
            A1B2542ABF7B8FCCB1A9686D02AE2F3FA673623DC7C78D274FF507F67CFEBA90
            EE3D245F902E8AAE0387BEDB4D871E6279069F87397C21651F4EC75DB78EE4B1
            C5A486DB73F0BB5D44D48D31C51912606885AC277531929C9944930058D9A676
            47BE9E4949611C42377C6A1576A9883F5745B1A5CAFB658905EE5A4CBB4E8FE0
            D0A588726AC429D6A64E409C681177D2D140B4502C69FE9DA4A76411283916DB
            18A02DCA274B78A2B659B895278037CD4ACAF1ED6C79730A3FB4D859BEB81D43
            07288110826DD6271E145C8F7FAD9B31579561EDAEE39B2F2F93EF9EFFBF014F
            A0A582572EB99A67D76F42DF358DB9C38D8CE916E2406F513CCA28F1741FA3D7
            D68AE551A3970A4E19904CDEF09124E75F85CA2EC430E8266030D0B0E91BAABE
            7F967CE9A509638458670EC3604D213F5B88F4976F4A83FF8DAC3313300D7A48
            5C642FD421238EEA23EC5EF41AEFCECDA257F7E7F8278510B4B3F2EB6FF961E1
            D77CBE6611D11E5DB1E9FA52B1651986811EB146D750F9DA37744B2A4773FE60
            82A10B38FCD532B202F22EA3CC78EAFB51BF6D0BED463B08655D81CD3988DDDF
            BF406AD3518249EA18F01D4D4AD8174F6CE96C9226CAE8B384FBB4CBC3B944CD
            E6D2DD0C4988F270B68EEEDA08D552CD2DC260F38473BCDAA463A15F4BE67013
            E99D6FC66619467D920D4BD5418E2F7C136DD301749D82B8BBE450A0B9196F52
            2F7CBE2338168BAC6FAAC734EC4AF28A078A1B3312B51885384368FF6AD67DF0
            1405BDB4BCF9561A45057A4E641B8C67248CE27BAE96B1AFF9E8787D1273A65C
            27DF4DFE3F004F40ACC9B30FF1F4B78B787D5F0D21AB96D7CF347391203E78B6
            22A72DEC9B59C5C4BFB51052B6FB8A194FEA97429FD3C690927B254D3536E9FD
            CA08BA2FB6F6C7BEEA232A57BD4F5A473DF9E7DC842BF1D4D83E26AB2B223D7C
            368163DF601A338CBC0E5345D958A5B2D338F4E15FE964F89AA79E7B437A62FF
            9F29A787FD3F6C62FF17EFF2C1FAEDECDA6B47DD574CFFA0513816EEA54FFA71
            B22F19C85ECDA5942E5A8AB5E47BD287D908FAFA51B16B07BDCE70612E9888B7
            A4882DABDE24EC2D251C50E38C04627BAE92B2D418B53A865B74244F4C627F49
            3ECD4BC42D34D9098A5BBEAB30C2D5096AD4C2658E4B55B713907DE451F14248
            45EEB0DE58326E2435BDA358E0008716BD2CAE722399263F8621265CDDAF459F
            7409C1434771ACF900E7E12522185C24764EA560E82D628106A151A561108E58
            BD7236ABE7CFE781A7D3993C59AC8E4ADFD6B46DC9C6627F4DEC7CA486BB3F6D
            E2F677BB725E9F27F935BB267E3BF008EF289DF12423FEFA266A5D10A72AC813
            93CCFCE9A67C31E52134561D0737B9B8E1E66AF607BC44226AD27B5BE93EE26C
            7143D7E3F7A9A9F6ABD07AC2A416A413F2D929FDFA05D4DB1748C5F42478CA5D
            A499FBD16C71A16A2863DF7B8F9220CA23F1D29BA4C1C6E0DE5F812AD2CCDEBD
            FBE9D5C9C3D41B6FA567EF613F5FDEA803CF9A257CF0EA3C3EDEF6033E6B22A1
            88B8CE9A523A8E4C152E369183DF54E0DDBA98B40989E8EB3BB16FDD66BA8E4A
            C0176987778F9B72E1783EB78760581DDB93559469A0685432DB3607B831334C
            CD9024766DCEA16EC751323354EC6DF060F63A795224F1995A257C948A66AD86
            B92D51968BD4CE8E26A1EE3188AC7E17A229ABE2E09259A854CD187A46A5A39D
            2FF52AAED621966DEDDBA24FF60B561D587A0A272C1E447AD155A8DD1DD11B4C
            382BF77170E1A31C2939CCDB1F6671DE85599CC8A4130FC71B22EA0BF2F6643B
            6FAD6DE6FDAFFA925FA8C4ED29FC3F008F1C4EB79367264EE0D5959B501BD49C
            3FCEC6439766909D1E4663F6E2F798B87F6239F39C51CC62A9AC0312E939EA6C
            F4427EFD4E2B5AB74BA4AC168BA19A244BA232AFCDCE05CFA0AF5E4BFAA0E168
            CFB8069DA720B664A06ED712FC6B5E21929340D6904954AED942A0F2208513AE
            A1A9BE16EFA6CFF8C3C4F319D57E0003CE90DE94F3D395E26C2E25B0792F078E
            ACE0F58FBF64F53E0FE1A406DAFFE16282FB12518B0B2DB828816A473E554BF7
            919C12A25E24B6D71124165230A826BB9709DDC120F9DD3498F34C942C0A71ED
            8C7C8E07BDAC78CB40C07F4CDCAC95DA034E8EAF6B664C6E22CF6484382E00FA
            4424F52A7F6C7F2159E110B9838D54EBD268D82A6EB7F918B9BD22388ADB9354
            24EACB2FEFF0C37B42EE5712895661ED6D20AF5B3E96DCC944345DF135B6C4B6
            1E855B76B1F183E730EAEDCC7E3385214315BEA328AC93B7DF0488AEF371D7DD
            B5CC3FECE1F2B3B3683F78223D4E3D87613D07FE9BA9D0DF013CCA7170CD62CE
            BEEC46A93027493D1259F07217BA29DB5E94F5D6A22A3EBAA2891BF6BBB0E8DC
            587A275038F82CB2526F1759AE23922A3EB8F6280D4B3F4615085374C54DB13C
            E6D5F3A651E0FD81E0B997E1CCBA56AECDC298A2A6F4CD27F1962D22EDF4D369
            6C4EA461C55206F5169D75F6DDEC5BB18D3D6BDE6160661EC9ED721939721017
            5D751D49A9C5182CC69F28798886C3ABA8DE53C6CA8FDEE72BB79F6387D4845D
            07693FD04AB4DACA913265A540BD709AD608A47E758461BD6CA8B38C54AE0F93
            DBD3478B3E91848D7ECEBA4DC74AB7865DEF68C9CB7362EDA6A276958FAA0617
            6260999CA3E1E68E165E2F7332D71E223F68449B6B43D34F4D644F90E6237EAC
            C51AD47D52C82CBE5AEA6108A16DDF716CFD7CF4512F293DC2F8FB7626473A5E
            345280C669A6511FC5A8F1625FFB37562EFC845BEE4EE1B1475263F36227D6F1
            9C143D4C28C484E9F56C09463145D5D4D53A30F6EACC6B2F4FE1FCA117F2EF46
            967F73F0345457F1D8CD7FE2DBADEBD0698D3CF5A88DF1A38D445292F0D7B4B0
            78720BD72C778A7A8F60E86E267FD8E924E75C814923EE407A61AAC8FAC6CF5F
            E4C08E4FC81ADD8D76C39F10AEEBA1E99D0749551DC53BE2428CBD6F27233503
            D7FE03947C375DCCC7212CA78CA4AEC489B66C03F9170DC06299C881F75E2292
            5923EAC440D5F6460CFA3CFA77EECFA5678DA2C7E9A791D1A1FD4FBC81546C4B
            392DDFEEE44B51695F6CDEC8FEA63A8E857418C222FFC51DE77633627649FF6D
            12804F4CA6B1C447DD86007D4FD1B2C91165407D90F4D36C6C2A31726CA78F9C
            4E513419619A578450B733D2EC119ED5E2E5CA6C234BFD3A2AC455F7153C170C
            49E5684D90A6120D3DBB99A9CD6A425D3096A8F11612F77D47CDFA77A8165132
            6A5002CDDDDBE1B75C4C82AA336E9D05BDCA843E6410D775801D1FCEA0E4680D
            2F3E6FE1CA9B73F9FB58856D99743C4ED64F7372CB9B76663C9B4407A11197DD
            D94C55AEB8B2B77B336EF05FE5BC3EFF5BF02847C5B2EFB8F3CFB7521F119008
            DFB9FDBD7CCE920A775546F9FEE92A6EFC4C388FDC55DB51C7D0B1E790DCE18F
            D4D55BD107A581C42FFBC4951C5B359748D93A3247F62171DCC3A8CAEB68F9F0
            215C1A07E6315791DEFE629252D2681613BEF5ED07E9DC492FBDA62F5BBEDE4E
            FB740FD9175D81676F801D8B3EA5C73989945446F0EF6D880557F0680BE9AC4F
            A2E380CE5C3268249D470D04DB4FE42A17371CD9BA9E653BBFE38B77BF60F181
            3ACCC5160A26F4C5BD4B2F60D845EA7829F1D128F5D5D0AB6F847D3BFCE45B02
            5887D82815EE136E0E62964EE2144B6276EB4939CB405D6984D21FEC8413BC24
            984DE489EAEA39C04299925674B51F8B5147D29028016B11ED0A1EC47BA48443
            CBDFC61C11CB90D34444DCBD21FB26A24E7147DFBD4A20E54CB2CE1F4B281CC6
            BA69155F7F3C97BE2342BCF15C1EE91D4F5EBF136F5AB13AEBBC4CBBA381D9B5
            6EF6AFCB40F50EF47FAA8131D7F898FDD76BE4CC69725EF2FF1E3C78BD7CF6B7
            0F993DFB798E348ADF2E36F2FEFD49E41FB3F0E1374DDCBCA13916574753A4A3
            CFF93D28C89A41757D98608285A4888E404043D4D348F5570F6071ED227BC848
            223DAFA566FF11D2F7BC4C82D643DDE977A0EE309E349F81C3CB5EA165C347A2
            8A7A73B4C245DAB123E48DEF407DC639383E5A81D97A90489155D44984BE2259
            9B4F399DB2E5B594ACFA98C1A7B6C3922816A96018D75C730EA9455D3027A5FF
            C30B093F38B281CDDFAEA7BA6913C7EA74CCFFC1C991A33B68373E89943D5013
            68C1DAC98673AF8BD4540D99A9496CDBEAA0A0402BD25EFAFE0FC2E0448A6714
            864549AAF1D7FBA9D73663F14618D5C346D6D0443E5BEAC4511E25A3AF9E686D
            0857B498EC1E67E2D9F1259A865D843A5BD0F495730BAF46536BE6F0926578CB
            7740FB309DCE3C07A3E14C91F673D9B1632733A62570E3D4CC366BA390E57854
            0F2541BC87AA057EAEBFA39ACC09665E7B309395777AB86E690DF7DEA5E78EA9
            CA94C40DBFB8B97F9738CC33674CE7A5679F44932BA010B774676F13656A0F1F
            2DF26057A255E8FD149C5348BB8E0F635577A659E5C3ADD18A1CF79164CBC4D9
            B099A36F3F4C5AB409F399A7A23DF54F7856ACC4BF6C0E29ED53880E798040D2
            201CAEDDD42E7D9D848612924FCFE1F8EA5A72B401426386127016E2FCE20386
            8E31B3EF405488B99BBCAB47E06F3A93D2B90F92749A361613A76C8D1B734232
            ED5273F9F3E513E8307400ED7B2B43F3276F7E730A652827EA2A67E1FBCB78FF
            F5AF0826DA29A94E4063F2A111EE93222A2C6F4C3275CD5A5CBB8374B95847F9
            6A070D0E0DE9520663B596E6F511D28A851FD983A4A8839C3D329D77773B711E
            0860EB28EE27494BED2E1F26B58A468F8F3491FD49FDB4040A6C14645C82A331
            9BC6451F81FD80C8733F497D52B17618877B4B94959FBF47BF9E06BE9D9F202E
            4F59B71C5F7EA1BC475BA48C323B73EF6EE6BEC51E566F48A7478B9E0BAFA9A6
            29D7C3ABAF8EA07BF767E5BC5F9EF4ED77014FC51B73B871DA53D887EBB8A04F
            94CFDE56DC181C16B5A5568769718979CF36D0EE8253C92EB89BE0F1402C7B8C
            3ED18A29598DBEC582E7C85AF62F9B45FBCC2314F4BF843A9B7C567F80BD6C31
            39DD0AD10DBF5124EC305AEA3751FDF913E466B86949EA48709B28A32ED99885
            53557EFC031DADA568322D6C3FDA40AF618558BAFC81F26F85DB1C9D4F724126
            878F8462298D5C3E3761BD8E811D3238E38C7338FDD4110C1935423A6ED63FBC
            9D93D0F6451CDAB69D77DEFA844F2B1AF16BCD0C3279E97C6A2ADF1C0AD35E08
            B3698096DD4B45455ACCE4E6AA701C0A88E5D06233E9A939D4429784309EE204
            766E09909EA6419FAAA3B6C4416E4A843AA709AFD383AD8B588B6EC968534791
            72389BDAEDCB89B84B84330A872A5616CEDF8CD79743CDC2A7A8B5EF61E683D9
            5C746D3227C2E0FD7DC8DFC8222753EF68646E0B7CFA7C0A4507D48C985BC390
            8BFD7CF4AAB272F0897F84C1FF1E3C7CF52513FF3C951FCCD5AC7D33833DA516
            1EBCBF8A838D2E8C096A7401552C2EA125CB2C2A682851E13C5AEF6174ED8660
            E8399654633ABAB4346A372C25B0E60532038D30EE0AAC39A77264D1ABD88EAD
            A65DBFFE34F69B8C3AA72F47D7CE15CB349FF6229D0F944748703731FAA2C16C
            3EAC15E9BE85DC7E7A0E1D14505A1BC93B6B104DBB3A52B5693E6A6314B7704A
            65E0CE6051A3B24749EBA9A25E6FC372D445974E3D183CF0742EBD613C9929ED
            5199FF3E5F43F8C80FECFC7E099F6F5BC886EF1B11FECA01BB9BBE7D12C44A40
            DD312FBD461773D4D384659310EEEE3A1A2B456D8A65E9D45BCF92A55EE15C06
            514E2A3C757EB18E2A5252F41CB347484E0D91D6DF88DB3C52386E314D9B9792
            EC3F8C4FB84C538B86A2DC41E8FA5C4668ED1276AE5840AF811ABEFA2E5B5AF1
            E4055C7100C9A73EC2BA5B6B98B8AC91266F90FC2C3D4942B6CBA23E5E782197
            CB2E50B61C4FFA55CDFCFB80A7AA8A3F5E7B23AB2AD6F2F6AC5C869E9640B5F0
            807B6F75B262BF571A2D885AC86234182631254AD78C4421C62176195C240D3D
            97C2536E272812DE282A4C5FBA943D5F3E455AA29EAC4BFE48BDA7332D2B3EC5
            54B711C369FD31747D0053388DB22F1E43DFBC92CC8E69946F7593D11F324F39
            87A3DF94911DDA854BA5A1A2C54191C94665401AA8A11E8D285265919D46A7A3
            CBE8146ABF68A2E7301B2DC9567609374AD2F9B1259868F0E838F7FC0B1873C1
            B9F4CE2E26B95DD1492FEB1737B2875D9FAE60E9C1A57CFCD52EE904E03AA2C3
            D64E45C71189EC7EDF2BD6458BD91414D9EFE2F42E16F6B7046321F7B2A503B9
            4241015B8854715B55023A5DD8474AB28660BF2EA45A06E3DEB89BE696E3D83A
            096754DB08960563A1847D39C51C2B3940C05FCFBAB78BC91F1B5FF0F50F4758
            85734933F7DC5ECFC10C15A7F697FA3AD0C09E2D4DF41F94C89C6FCF929366C8
            A7E81735EF6F0F9EAA23C2CFA435DA65C7FEBBEEAD99DCFBD4EB4C7ED1CA8471
            09501260CB96200FCEAB61E3FA20466B84B092A7D3A2E1FE3F6730718099FB9E
            3EC6172279FBF79A8435F3225A6C1692F5A2D6567C40D596792476359031FA56
            82B5E9D47D3D9BF4C4DDD8CEBA087FD25D442AF651BAEA15728CA5624DB4D435
            B8C839B707AE5A1BC9DBB68A9289B0DE1122A0ECB50A6B50A923B1885A193DC4
            8D547948CFB4D252E2A7A87F3209E97ED62D710BB0E5F9F9510E6DACC7D8295D
            C0A6A19B3B9791679CC188A15DE973FA28FE5E991C61E7AA6FA95FBA86A7DE5F
            4D95182A6BBE0EFB362FA9D96642113F676934D8C565EFAAF09028C00CBAC1E1
            F6A3890A18FC117C5A1546AD00525CA1393D0BAFB2E6BA59B860B186802F80FA
            68805C01A23312A1D6EFA7ACC1C77D37A470C70C25B7573C96E23F6403B47B58
            714D1DE7AFF233E7A5642E9B3455E45D36653BCA10472B02249368A7B9BF3A0F
            CE6F039E6D2BF961DE228E0CD633F1B25EA835978AF272F2DC8DB7F0D7158B18
            3BD0C8E8CC64BAF711F2D66CE789F7552CAF73C6A62A9454919D86DB78E58154
            D6CD7130737133C9110B19DDBA623CF762B491FE240B4FAADEF139AE756FD1AB
            D084FFA207B04B0F6DF9783A855127FEF326E1EE7C0D6C5842FDD679A4EA9BA9
            A8095290144167EBC0EEE32D18832D38845785436192F22C58A3567476AFC86F
            330756DAB1340B9895F40102D6BC8E564A8EB6882212CB9715A1B9DC27EA2799
            A04DCB91157634113799560305855D3963D418CEB9EC1CB2F3BBA031B60D42BA
            6AF8FEEA73B964F121B40601AADC37D564402FCF3EAB83589D26F195F27D86D5
            CAEE430EAC9A10CDDA202A6F341643D190A626D9221DA0CC8B4A3892A9C88C2A
            18C05C22C0CA085397AD25B12ACA5E016071BE322B9E85294791E6F189CF368B
            1883830BCF2C2FD7BE24BF0EAC62D6AC91D86C2F4A6BB75999C68DBC73FB0C8E
            9D7336F75C7A1D7AADF11737FBAF074F432351B51F554AEBF848A46A2F47E7BC
            C97B6B57927569237FBA41098AF89034E4F72C78FE35EE5DBC26B69B4121C23D
            72F4F4D6A9D8D810649F5B54976205E42911E94563C55D18DC6AF6B5F8E8926A
            607D790369E79D4E9EF94FA892F20869221CFFE11D342B5E23B36737FC673D80
            F3D05EFC5FFD0D4DA11BD398C9E2C387D1B86D31C1BD6FC542D2ED693188DBF1
            D3E0F2D3225CC0262ECA2A0A3665600229C5C522F5ABC8CD72E0AE975EEFF492
            95A9A6B24A4BE7BE560E5735A16F32A11643EAABF162E967236A4820B2CE495E
            9A877D4D6E424E3D5ABD16B7C1C0B94306F0C7B1E3E8367430895BB773E3A353
            58562FD64F67A239E4C52F6EDA20843C4789D621601A909FC8C65237A9CAAA48
            299343233C50ABE4EAD2919BA4A7BACA8B31CD842DC980BB4E99428C905D18A2
            A19309CF36E974879D18925CCC999747DFC1CAF2947836E478B45663EBFF0F06
            F8F44E2F0F9436F1CA6CAB805D91E327719B9A033C7BEE581E92F7FFFCE3599C
            D56BC2EF089EB56B59FEE932126E4FE794F6A7E37D73391B8FEDA4B6F2208E3F
            3AB8E154B1006B3BF0E5AC0F78F2D03A6EFBA3812D0BE1ADFD8DB180EA01A9B8
            440C4474D293E4FD1CCE702CE756D70C0B7FB92181AE43B5E44A0F1D735B0DEE
            9E3DE870CA2DA81DF96883063439662A96BC887FE3E7A2C07AA2EB773D550777
            1212B9DE6B4836F543A610163750F5CE43C25302E8222ADC4A863D8B4D2C4F84
            42252B9F2A8A375B45F6D93DD8BB2440424519399DA31C3CA0C46C0EE2164B58
            9467A6B4568901A441678AD0541FA57DA18186A0B8E57A3FA3B3FDAC6E5400A9
            47A711D7E3B2130ABAD0464D742D2EA07D40CDC28A7A51833E6C4A6A3571493D
            92B5AC6E92F715D763B3A948B099D13A94115335FE808F6433B160976AB1682D
            D5A2A6323524E65AB18BD58B368825EA25C8CA53A1AAD550BE5BBC4EA39D571E
            B772D13549684CFFB8CB41D56A793C41EA1F7131E19328E79C63E7BEBF2AA0B9
            5F3E993F9EE990CE3FF7EA2B78EFC861FEF0E070A65EF386B45F05DF971FA7FF
            A56793A4FDF975CCBF1E3CDB3732F5A29B08DFDDC45343FFC0876F5BE833A492
            8F16AEA6C3D51D99D4713CF3262F65EAFA15DC3AD4C2D8C9E9E46843FCF94FB5
            2C2A0D9154608C657BF1C7648E34A42722E051E18AAA197B51120B6667A31100
            8C1D5ACA816C2B3DC7DC287D6804569D96404483DB578BFBBB99341F5945F6A0
            91447B5C44C386B5A41F5D4C52661A8D863C4AF7975027D25BAF0D233482813D
            12E5ED127056B930477C1C9767761990487D9D91D263756425E968690E906414
            3725E5CA308709A9CCF894D0B7A6A8004E4DAEB48FCAA7E6889887625398F270
            9866A9A163EE502C7361B2DA88D3A7C51EB4E30D85C4CAD9621CC7273DA63041
            4307BD581E79CFD304381F57853826600E440C021A2D11BD179D58B091993A76
            0B5003E91AB2724C1CDFE122312CD6A3AB0D47BA8E2C251AFEC128479B3C3CF0
            670B37DE69C0608807FF8FAF55D6C6AC4F543AA46A8E87DB5EAA66B9CEC1D615
            2330A588BBFA711CA7751CA862DF4AD6BE374D2C7B2D6FEC77F2CE6377619957
            CB1F3EFA1B67BD7421F75FA88CFDFC34807E3578EC9BBEE28E4937B0B3939E77
            7A25F279F834AEBF6C3B6B5E398276E230268C7A82AF3FDFCDFB4F3C8ACE7F94
            F3AE6FC7C577A6B0674703375D67E7B02805BD39825F59F51FF0A38EAF5552A6
            5D0251A64F4BE3CFB72732F7B63A9E5863A7E788D3C9D48C8F65BE89D88AE4DA
            0A019C9DDAEFBE25F5C857140C1B49F5195750FAF602B487571112C259ADD589
            E43512690890A10912D269B0F64DA5666B13569558125F98044B0AC586082961
            077A699F6C6548C5A4968F8A2471A351954AA4B7211654536B90061672AF8E2A
            019D3484E5775520844F6A6889C8EB127734D66C87A4FCC750C7826EBA955842
            5125C0B89FB05F2500810146151709D9DD21523C53ACEEDFEA4378E439A94A7C
            EA34331E7F088B4D130BA5776C4788449D074D1F21CEC989988FA9D87BC0CD91
            2A3B8FDD93C8ADD314DAE0E4C43662C56D292154DA42E86E72F3E90375DCB05E
            5957EEE7E69B073169C28B74EED6ABAD2503B1CB8ECE7F93EFCABE64484F1753
            1F3CCCA5A7154B876B8763FB5A4ACF2DE0957B670A3006FE36E059F5DD672C7C
            E5613C6E37E5C7A39C31339FC9835CAC7AC4C3A14BFAF2A7D1CFA004448CEEDF
            CFBBDFFE8DD9F33E143918E6BAA905A4AC0B72F91D47D92E156FB2E8318A990E
            05A471F4422AA31A5CDE500C47AFBE93C769F95AC69D7F94A0464FD06B449D98
            4CA1708AF4762309D893B105AAF9E1CB1748A8DD4CDAF80B484C1B4DC5D2F750
            D5EDA2A0BD05CD99978BFA3A8267D7D778D52632A4719A9D7E25F202131235B4
            979E97273A7DA098418B9210C4A0E41795670948C2B1B0C76A21C0F29D126C5C
            D4904AA3C6986523D0E04625BF059C1E74563D1A2595A3F0145C1E2A432AB6B9
            62991158268029098A920BFAC4AA4611DA4548409B2672BCB300D410D2B1DEE5
            1515ADA39F28B17A8F87BC443D6121ACD5C79C14E58BEB2C96F71620161D3312
            6A10B777D0CE1FCF09F3F8AC74B4297062003072D25F79788597032F3AB8EC7D
            07BDF30D84C5FA2DDEEFA25DAFEEBC3C6B06C37A9F4A6BBCE900DBEE7A90B77C
            DF09486C3C7269296FBB9D7CF8D2607A6EADE131E9184F3C3143EA62FC6F039E
            CF3EFE80DD875F628490B53F3D5ACDAB4BF339A310DEBB3940CDB999DC3DF161
            396BF48FE7978B4CFE78DA74BEF2EEA4A7F8E10A31BD2AE11107AB022251D5F8
            C2514CD63026A39AB0A80DBB3D446AE704A64E4B65FD53F5AC6F11D7E1D5505D
            E7C5705E3679A73D89C9D505A32F82AB6ABF58A097490E1D24EFFCF1D49B4651
            BEE015523425E49E3D819ABA74762EFE4C94550B8344B15D5E64A07D244C8136
            4A42AA45C99426EA462A579874A0CE219CCA2A2E53ACA25A18ACA898A8F0A684
            42732CD148A4481AFC1421CC2B4415ED0EE10EF90835063148E7D774101757E5
            C76630298334448FB9A86B89D0228DBBDC13E5BDFA303E254DB7B8AEBAB08FA0
            58BF961635F96601468A907AB386149BB870E92865875D24E7EAF10F48960611
            CE75D8CCE1DDCDF81C5E265D6964EA23268CC98A1B8987890BB67D125A9BB041
            DCE68B4126BDE3A0A5878A85CF25D2F4818FB366351335AB78674E27068E535C
            D130A27E079BAFFE0BDFE554F1D0F42AE63DD0885338DC4D8F58F1CAF5AFDA93
            9872FFBD029E4B7F1BF07CBD60252587EEE12F0F44F95E8858EF1146E94D6136
            3DE56057918FEBAF54761A5EF7F71795ECE1810BAFE6735F099D526D5C76B189
            B7BE70B36377008D4549081BC5203E5D99CBF34B8304C2D0A1771263CFB2D135
            3DC0A9E253263FDEC8166394AE45A7A3C9FE03C1E41CACA2CAF46B16B0EB9BD7
            689F25EE70D8786A42C5347EF31E7A8D93F6E6244E118B3122D745DF0142480D
            225D938CAD512374D24B6D8A39D0E06B1FC658436C096D4494A44E5C1E0A416D
            11829A203D54A36F6BAC706B430977893687096E8F4AFF8D10EA6E22B235804A
            3896182A34021C5C62019A02729E8A43E2D69A0F3A9873504555503892515CA7
            2B42AF0C0D3552CD092E294F6622FE66275DBAE938D2552CA73719D3BE08FB0E
            345156E1E3D95B555C3F335524BE89134B4A4D6DC009B77E17D4E178CFCDCD8F
            35B2D7ECE6B36F73695FA562C67DF5FCEDB086275FB4F18709E3E454255D6412
            CEA31B78FEE17B38F506B1F423F7122CD1A25342FAA56B697AA1994F4C5AAEBF
            49048BEAB6DF063C5F0A78AA8EDCCF9FA658DB5E201CABCC0D9F3978FFDBE33C
            34F701E1F277FFFD45C78FF3E2C59358DF670F4F5E99C6CEA5615159511E9FEF
            C01E92C652AB95B459D2706D9379F264BF414F7A5733578D3631F5EE249E7EA8
            96E75E74922A159F3A7814A653C763B38BC4DEFE1D0D8776E2F09761B02660E9
            D80BFF811AF2522AB9EFD6348674900A4F9272F630117284D1DA948A3672221F
            553C4B5EEBAE825690C47386C6F73BC503629FBC36E6E481B8B8DB8867028C9E
            F82B0D8A12FEBF32C8E13A1FD54BBDCCFCD2434D584352829AB26621E8691A1A
            1ABCF41E2DBEA89F0DDF2E719DE56AD66F6BA058C8FBED9313B8FCCE0434AAB6
            CC82B172C533D4B4A5C8F63B09CEF731F5052F3F08A5983F2785BC4C3DF3EF74
            30794333775D6FE2EE172F9073A7CA273F7665ED8BB3B86FF5BBCCF89B863C9B
            D296F18C3E66EC2FD7B34094F17537DD2AE0B9FDB701CFF6C52B58F6E9DD5C3E
            2D81DC7C15F13185B2AD0EFE72670513669ECF15839505D519272E12E9DDB26A
            258FCDB81F57FF1A6E1C9640FF5E666EBAA6922F0EFA63F5AC5652290AF751C6
            7C424191CD996A22162D6AE9B58F3C2F3EFE0707D3663A5027885B4933D061C4
            99E8CB2C9494ECE3A927B50CEA7B3EDECD1E4AAB97F08D8073E8303B86BC3AFA
            BB54E4A60897D12710D08468728BC510EB1275A8D18A4FF72A39D3959D791916
            B4195AACF911F4596A12D566F4CAE0B126C889DC0D5256B79658A4F2A0A8B0A8
            5740AF21B66D21A2C327E457257FB56A378D1EB3B2A083407523DADD4152B442
            DA0B60BD70BCB7370789EC14C99F9345FFE139188626B0F2E51A96373770BC36
            4CE52E037E879BE15D43DC757F167DCEB37062B7E78945ECAD6095B2882BE475
            272F7C10E0C13DCD4C999CCC43E79AD9F64A88CBBEAAA3E7B96ADE7BB63FA664
            C55DF5686BE00025B74EE6F1631BF9DB27429E0D367E5CC61151E378BE910542
            D4AFBD768A70BCDFC86D85366CE495D76751F41717E7F7AE6EFB561BDB2735EF
            713B7BA5C29E7CE439E9ABE7FDD3B5FE4DDB796DDA0CBE0D6D62DACBB9145538
            187E6503DE88A811A3A260D4CAC02BBE500093C8114BB185C6250D24F6B6D051
            9EA17685B8EE5C130F2EB24B5B5950356771DA7976664CBF52D49362EDE2B255
            C95EB395A0732BD15D1E94F6C5EA12D26A6747BD5D3C8A0ABB47130366B5DD2E
            6ACA4A6A82C874579518733B49C5D0B15E2E116E56211ABDBD252C5E4E4FA056
            CBC61D4E9A9AB5741380E4889CD6397D31EC442D51EA934342844358CD06368B
            526B56EBF06A4D24065474B6D928CACB2594D72EB6DE5815B3664A430E6C0385
            817D77DDC2B9AF7F0269593C76AD813FFE511AB4C389144D2772A7C7ADA2AFF5
            FBCF1B79E1E9661EDEE6C1203C2AA593852BD3747CB3DD4F726F359FBE5D8031
            43B13817FDD816E1D5DF32E385C7308C823BAF8A6054963BC7EED73AB8B86972
            033FF4CCE0F66B1E92B29EFFDB80873DBB99F3CC7324DEE0E6D211C1B6860AC7
            5EE6F0F70E66BE5CCEA4999319DE49198CFA89101DE5154CBDF116163A3673C7
            F45C4C3BA23CF478057E9DC85A5590B05A2BCF161E24C54911B3EB979EE81417
            97289275EEC3898C1AA2E3F633ABF8709F97A16333797DD6B9E4A6DD2C37EEC0
            BF3A224A7CC398B48DE58E39E97595EFE23B2A95CCC6EE5825469D2DF82A2A28
            6FD98876C526E69505189EA5256D44028D096914DB7A53909A854AC9ABAEE480
            B72A39B02C4AEE04E94BD2124AF475254F54ECDEB636602B2997327FB68CDE2D
            BBB863CAB58CB9D5CE1F2ECC219EA9E6EF1555A0ED6CB97FA358E12F9C3C35AF
            9905CD5E9E1145EB386EE39557F6B3B93A48519189CFE617D0ADBFC271E29DB9
            15749EC79FE5B24FDEE295E56914242BE573B4D58981D0F1461E9CEC64F0F8CE
            5C70A5B293F4A7274C7F3D783C0DCC9E3687C401EB987869A0AD31DA86C5037E
            3E7CBC81ADA10C1E79FC39F1A03FBD05C6336F0E7D6EBE87681F2D0F5D93C7F2
            779A58221642896AA557E20B074CA8F43E94C479FEA02616012222BF3D373B83
            4967EA5937B181DBB6BB9839AD3D674C54D6A09CC5EF7738F06CDDC2BEEA0514
            0C56F88912765671C959F01F67E7FCE943A9F0C62D9F52DBF221F9A79708E414
            5E199F6A5080145FD825875D3AD5DB211E9AED62ABD9CE2BD30BE83DEE5AF9E1
            326ABFDCC0B24F66D1F5C606FA0D57C2C3FD431EADADCB7953DAC7997E94DBFE
            9A8B56AF7498F8789186F0BBF55CF87E03AFCE1B465EF6DBB486E1FDE7E33F9A
            185D31778120FB19AEBD4FC91E1CCFBDD94A225D7B5C4CBEEF383DAF1ACFED97
            3CCD4FF6345F03CFCD7C863767BF85BA9D9ECEC261AAF73B29778838151514F2
            0BF75107D18A2A52496F53A9A2B8849FE464EB79E05A1BFB363AC83F45C58D53
            943528B7F16B1630FDBA4311034AA48216B1264A0751CCFA2F4BEAF11F1F010F
            F56B67D194378FCE9D92E2ADC109322F40DA5EC7F14F5DDCF685B8A9AC08331F
            6D17DBFC070A78E2C1098ED29A784E19143C69BEDC594FED2B337868C15A1EFC
            C242417E4ADB79F1CD81610E3FDFC4C3CBEB99FDC985D88C3FBF87FD3F9B552F
            DBC513B39F60C4A45246748FA7608EAB143F3B36789836BD89890F5FC16531F2
            FC53B92BFDB150F79F3EF31A0B6A0FC4D2E244824AFA9F006121CF01E12446BD
            3248178C45398F4AA5F89520016A0DC3C65BF9E0E97384173D22F749E7F73BE2
            BB0F9420430A7014379CF15FDDF1171DB587A9FBF25E82A71F23B7BDAEAD5E95
            0C77528EC5526FF39AB85D0877FF9156663ED0115BB1620D1525F5EF765D495B
            2D9DCFA3F73C4EF11FF45C222A5667387991BCBCEF760F8F3EE2A0C3F5855C3E
            FE7A515A7FFCD9BBFD874B32A22C9AF912E4BEC598CB8CE2EBF59CD891D87AAB
            AF9E69E0E5151E663E7F3B7DBADEF3B3770AD51D67D1FB6FF2DCCB6F73D05E8D
            336AA4439295515DE0A3B5410C497E51305A822A51337E1F05EDD47CFE625F8A
            862B56ADDFEFDF9002672522B4922E401BE32E69FF8B47E25DB18650D5C3244C
            8CB662A2CE8D6BBE93AF3FB7739F00A7C21FE4F1E9454C9DFC94FC388E13CD17
            0F95FB8FE151E43E6B97F2D95F9FE560D6316E9B66232125EE169573FDB13038
            BC1EE2D297EB78746957BAE6BFCBBFDA49FA9FAFE7D9B18717E7DDCF84FB8F93
            9F65E64474F113FBA257BED1C2B70B5D9C31F92F9C71BAE2776D3F7B3BFFAE75
            BC3BFD299E5EB6117D869AE9D352D9B92ACA4BEFD7633487880A7882A610739F
            4862C2E58A72F875F930FFF3860CE1F556E21435951193C799FFF52D7FD92116
            F8A3E768E66BD23A1A58F36A254F2D6BA13649C3C433D3D8BDB49A4F6B7DDCFF
            F8ADDC71F95D580C7150C7D3619F2456C251C2DF2FE4BB45DFB33B729489B735
            53D059014C3CC46EDB84EA41271F4FB373A0BD91DBEFBF8CE484C7F857317AFE
            ABC56025AFCC66AB7A1617DC988851AB143A9E595739141266A36A450D9F7FE0
            6477DA10AE94461FD2B3EFCFDF5064F35FEFB99597BFFC0644F6DE7E412A8756
            A8F9A2D443832FC063F724F197C957A0B528913A53FE376D28E089388F113286
            D0C7C642FE57E091A3BE919573AEE6ABF9EB58E1D372563F2D7FBC218D1E55F0
            F8EBB54C1717D3699C964573AF203FE5597E92C0FB5A887CB588CD6B36F28DFA
            10D7FEA58EC2C2B8FB55F2A4B6CD4A0B581DEFF998F6D76626BD994DBF1E0A51
            FED7C94CFEBB95842E0F9B673E84F6A2E5F4ED1D5F8116B73CF1C1B510E13A1F
            6FCFAAE1EBED858C3D7D3CA32FBB960E99593F794BAFCB45C3F637983B6F2D6B
            4A3693E2F4505EA7C12CCA6CC15BFDC9CC52265E3BFFEF1A50C9CAE63E2E9CD3
            A32409952F72FEEB5BFE9AE3F8170BB87FCA43DC78B58A11E3CCB8E7BB79F893
            3A3E680973F9501337DEDD9E0E43CE132EA884483979BB90B2B1FF0887177ECB
            9EC37B05F3258CBEC68D2D55699BDCD6DF63C32C91D677DC1162FE332E1A8BDD
            5C7FF7648CC977FFDBB2FDD7CB5083FBF6F2D55777D1F7CFC729329D2CE9E297
            C737D9ABD9B3DCCE82B9356C719DC275F7DCCB45A72AB3BB3F9F08BE61DF42A6
            5FF108DF469A98373399A1635E916F4FFD9F361E4A0E0D4F2D616BB3BC896279
            F2FFB7CF97A3E99377A83DFE383BD67A796DA7975A6780A97F3272D56465C7AB
            92ADE68CBFBFC02740DFB78AF5DFACE640E80803CEF6D16BF0315A2D4C1C6027
            CDC4D77AD933C5C7E7011F13A7A7D3A1BD6275FEFDFEADDF640DB36FDD6A761D
            7A947E573BD0AAE29BEA95DB891F8E28E978BD4A3611E2C46CEBB27A9E7E2FC2
            39132FE3AAB394EDAD3F335EB2733DDFBEFC29DB4F2FE5B6CB4691A0BE857FAF
            287EE3E3FF01F02861619E987829B3BE5CC9D9A2B0A63C904BC7A1E749755E29
            3F16FFFDB99E46A25BBE67F5B7DB719CBA8B315D2B31162A75D6366F15EBCCF1
            7939E9B8DE204DAFD999B1C8C3D07B0C5C7CB632B87BE52FAAE7DF6CF7C4D1CF
            66B3EDC81CC6DFAA1382ABB830052899ADE3245191B9E16AF92B951F1B900A73
            E4B672DEC8C860C6C32FCA2B8CFAE71B5655B1F381C77886A3DCF968267DC337
            A12D18FEAF0CD5EF732826DDA364C18D4F09FCCEE33CFF78F81CB150C4656FBE
            CFB3F31EE1E6B9B974EFFF1794C1C09F1CDFDAB9854F9E9C8DFA925A2EBCB00A
            954A1133CAC8B63296A30047A97FE5BBD6B53FE18F7DBC37BB01FB302F373F32
            09BD46591591F48B8AF6DB6DBD914A5EFFCAB37CBAFD356EB924890E63C53CAA
            1429A8203ED8F657716BE267BF39CC86B5510E8D323369CC3DA85597FDFDBDCA
            F7E1FD740DEF6F5A4F60E00E060D194EFB5A2D9EE45E24078A31DBE4E5077697
            FBFFB25020FFD5A10405F23489E5094A752B59C0B27FEF078A35102B5D522F7D
            CF865DE7C3D8D880A140CDE2D767726443237D6FBD87E1C37F66547DF94A3E7D
            F125B2667818D64B199F8AF7B67873B6A58CF48A2C5F1262D162B13C454E265D
            DF5330A62C53EDF88B4BFADB81A7A682AD8BBFE6EE773F24A9720F5D472672E5
            E9E9749E1046A55540636A2DFFA6060EEF73F396DFC39F2FEF4C96ED4D4E9050
            A9B42F17B171C1B7BC1B74306A4C888BAF1B2BDF4F944F137595DBB11DDB81C7
            E96087339946758091E14252CC45F80776111556804159ABA37CD4BFAAF43F7F
            84DBC093A0CC916BC498FF16E011800443B1D96B256F785425C03C5E4A78DB41
            F47DD2096447F1EFAD2621CB883357252C45C013734F05347EB890175F7F81A3
            05C3B8F5BA3B18346C606CE5E28F871259E3D3F7D09FBF8EC2CEB5D2A8CAD280
            F88467DB2CFCD6661C5FF879728197C3A7A85930AB87585665BCA8C7AF7A8BDF
            063C253B096EDDCC068393E4821524E86A5836DFC9D6ED0E8A538D5CF8540AED
            B3E40D37B550B947CD224B98D34EEB4AC75C45218C38E94641A207D770F78CE7
            D95DF63D97E4E4D1A9E78598070EA3B8A82F49B9CA1683D64DFC0EE76ABCFE95
            24D51EE3F8BE2CD6872A68175263118BE6C9CF473BF0344CD9DDC9D64AF5E9A3
            E8ACC6D6A5174A16C24401B3C1F2CBDE2D1426DC524B2855C9B1AC98F35F3848
            E8117ED1E288814389DB48C015CB361851B9D9B5BB1455590D59A11A32127368
            EAA6C6DB4EF8626D940C65F7ACB5213631AC89D58D347C8DB2EC2299066388CA
            6D7B593B632EAFEC5AC2B0899D98F6E055E4E728F35727DE27B86E139547A792
            764923568339F65B540966571AC6BDC6C5DABD61D688253748F9942528DAC167
            72D58437B1197E1D27F8EFC163AFC1FBFA5BAC9542741DB081BC4E55C4E6529A
            D404234E3E78BE99A56B429C799E9E76593A8EDBC28C183C8CFC4C65ACE6E782
            08ED23B26F19DBB6D4B3B87623A965E5E45618A9B714E1EED5973EDD7AD2AF57
            0712DA2BE3108A1956F8C81691A61BD9BDBC9E251AA928673989F50EFA566B68
            2A15B9EFB3E009EA48C8C9C19561C2D8A10BC3DB67D125BF4049C1F3F3EFA734
            7CBD28955C656E4B01CF4F0D31881B387A583E75826B1F2DFE5A96AD3B4A5545
            19215146894635AA9A06FA7431D1A1A791CFDAA762CA33D237A99A0E9E4184F2
            82E86C09622C95D1DCBCD689FE432EDC62F556BB9BB0AFD94E628990F68C2ACA
            FB47B1C877C3F3AC741C2956D0ACCC5DDDC0DFCD5F0954A26BD68ACE7F9096B3
            A324255B63DB692A3E8EF049208AA950C784894632DA0509B56878EB251707B4
            E3B8E3862914A6FFF2E997FF1A3C8EB9B37975E5728AEEF37269AF5A5A7B4084
            F0B1406C9BAB26CBCCA717D5716F6380BBA7A772E5F993B068AFE397923261CE
            D2EB2AA8DD75946DB54771EC7E97E695CA6A1D2BB902A41CAB8953F59964F63A
            03DDC8C15863C34D0A9894894169CCC620E565473850771C77E030969400AEA3
            1E0E7F51CAB152277AB164A67EC3E855D89BD1630663EBD21783E1A4F112014F
            58C01312F76188B980B6722B1BC47CB504566FA371CB7E7E283FC0FA0387F1DA
            AB30A44768A7E439EF6622D24D2F163095E4680EF98622B2F3D2D1E60B5FFB31
            46A0002018C6BEAD9EE09E1A54D126F65B5CEC3F28BF94ACC67AAA9FF029516C
            81443AAB3348EC2B40D7E5B581B81DFF3233CDEE2534EC7D89AA8E25049EF132
            D7A363EC9FF55C70AA29B663B5D595C92B0642CC79B9067D97CBB966FC943655
            F93F004FDDAB73B9FB9B7778F6031719B6F8BA98B6258D5BECD877FB7979AE9D
            0F7609C7796228575CF808367527629BB794F52E7AF1FD5EE9B94A7250BFB204
            B24DE62B894A5353E436FFE85E9A08357B39EE5841A46215FB9734B2ED70552C
            90815A95488F9099BCE18349EE3F922E59B9E8DB65B5BAAB1F8F96D6FB4BEFAD
            1377E4F06EC1B77C2D2B36D5B03B1AE68CC17DE8D1650CEDBA8FC2AC2C340F8A
            2BADAE205C6088F1078DA2542A8FC09E6D6C11395C917588957515F475BA1831
            A907E1A22CCC864401CA20B10A0236ADD2C0CA68785B44D2BA96D8AA436FA899
            83DF961338BC11BFAA861D1D4C9457EDA79F47C598D3F50406D9B07AB3484C10
            A0991512AB7C7E59C4AEBF3B767CC5C6579EE4A6D58739ED8A245E7838EE76E3
            4B6A5B738EB2BE852D6546722E7D8A1CCDD8FF0D78FC410F736FBB157BFE3A1E
            7C50A9A4B61C0707A3D2B06ECAB2A25437A8D0FA42D41DD510DC908036278384
            3403D91D728936FB08A6E5101139EA6CAC2620E63A50578ECA17C0D7B73D673C
            F027FA773C85782FF98912C847DC4AF3618E7EB39505A53F504F09E9BBA55ACA
            A4C1BB74C03A6434C5195D19592415D7B73B3F3D86218DEA3F4065C952366FDB
            4A618B8D847E13281E76AEB8AD3A22E962E21B7DE8AB1B39B2BF0C97F7077685
            4B19D617DAF751CAA77C14F777B2FB90C63924757BA41CBB48FDDA9A3AB66DAF
            447DBC8C1E1D2DEC1CE2C5D37C9C8EA213868D118BD44E018852BEAEB48A88F8
            A0AB32E92CD67483BC548B9CAC6CF4F3FA5A7F322B1D503ED999902E4DE8918E
            E213AB785C54ADA38E25DB767064DD1E16EFDE488F6170F99424BAF74E90C656
            80A36C3A906BD636D1685011EE1E26C33C45AAE76A7EC93297DF843087F7EDE6
            893BEEC1326E3F936F93975E12E0E38D5E2A72C25C39D64246A180CAE5880D48
            EDDF291F25796D9D1BEB9E284777A87177B2913DD2882DBD1341551DC168B954
            52945D73EC6C33A732EDD93BE99BA74C84FE1242A7E492DA4F502A6F67A9F8F9
            962FD06CAC64E7CE30A1F4449233BAD13962A27B517FCCC3BA92D0A1134693AD
            D5D29D042447C90AF6BCF9058703498CBF781C29EDD3888AC5D96FC8C163DD4B
            B66E3BB9B9CAC8EE28629645698BB0B2C6B916FBF2AD44CA2AF09ABD6CF4F9D9
            565E87AE662B67F635131C914044AF618031136B0FE12B2A052C596D9F9F7317
            02EC0FDEE0FBED3B585FDD84C915A5A5A1127F58D96396884EA7C3D4A51D66AB
            8A607EA108163F9E0A37A902DCE2417518C769E8A30B507ED0C1A1F521021D0D
            8CBC3C8534AB80F27D3B5BD704293D07469F7B1A296A65D036EF17B5FB6F26D5
            ABB6EDE6E127FF422FFD1EF21C56DEB56A78F259335D72A542C25EA2215D2C5A
            44EBD1E69ABC0286B0B82A957C6F517886B20B20180BBDAB68EDC38FD732767E
            3553DE18C675E35EE59F46537FD1A1F01F0F9E960334F877105A55CE9ED57BD8
            E02A8B6D77B63A32E893DC1DE390FE140E1A4CB155384DB6F0109DF4E0483353
            EEFC0B3B766E66CAFD1730F8ECD384CBFA456F0550F985685766B6AAA9C61D94
            6C3ECCB1DDB524FA1CAC6BE7C59F5449E49893EE795A7A8CEB8DD11624D3D01B
            95AD37AD2EC8CC2F0D598B6B1B9FDF34992737EEE789E9D90CEAABC29F2A96C2
            1AC15F1F26B2DC270241CED318E5B93A8CDDA2A8DA6BD109A0330DC23D2DF1FC
            13D2818442BEFE640D9BCD26A6E4AB39F24D9003035AB8E9AED1581395F40BB9
            BFB8667FD3E04EC78E94F1D043F7F2F9D7CB98FB62167F8885388B67973B79B9
            463C8946A4B5028F8A992D09B58E964B25ACDEE3C31D8A622ED6F2EE27CD680A
            D5CC7C720E9996B3FF03F0FC646BC867B5D4E56E762C2C67BD48E786A33BD01C
            4AC5A833A3ED5E8CB57757C616F425DD7F84B10F3F429F4BD27876BC7081E35D
            63DB5C761E38C6AEE3765C4A88943CE130DD42F8BB68C8F5D573E6295DB0766C
            27CF5056102823D24AE85ED37F5CDAE87B73B97AD66B040CC7E89168A4A0A315
            752703B9C97E0665AA300D968AD32BF757F88BB3B54E7F5CDD194F11194F5E22
            8728ACE9D71D63C59600DD2FD0F0D7E706C84FCA3297C1BFAA5CBF7964B0BAC6
            E33C78DB7DF43B7F23D79E971E73C7AD937181B60A6C0B241D96DB6F0DD2B22E
            C8C1262FCBC4FFA6577A1890A62372B59580CA42E76C0BFAAD655CF7581D57BD
            7E2BE3BA3CC43FF11565104FD44A6CA44C2972D82E2A4FB85353189FC24DECA2
            B89C3EA2C211A2CA33A32E3411B146FA3C6A830E023A97D0873D98EB5C02880A
            7686347C2AB2B8A5D943BFF434DA69ADECF7BAD0A6681862113E13B251D558C9
            FE48187F611ADDA31E4E11B7D1334B43BB6ED9444D892446BBA15365123267A0
            493461EC2A7CC61C459B9583CE9A8C56AD906F43ABABD46AFF35BD90FBFB9E9C
            C9BDCB9673EF6B49F8DD010E359563DA10E4E8AE00A52D6AD4D9113273CD9C73
            A18E82530C6DB76B8D43D8AA7EE3BB4BDB5209D445583DBD96BF963879FA8D11
            B4CF7B9C5F3B40F8BB80473942411F07E63F4F56F44BDC9DEBC84F4D8FC5FF43
            A721AA8A489D49632FF4B1E15080D7ED114659438CB9311D5DBE9684A01F53AA
            B1ED6523B10A78E98126696437F75C395BBEEAD5FABDCA1E5B6753B14D784D69
            2D9E23C75105A5F76B5C94382B69F6EAA8510917C8B4B7A6AB3C544E382D82A7
            418F355F30562580B098090BFFECA464602E16CED1EC20DDA1A539D1154BD5AD
            7146C8EAAAC3511924E0D59328D7D785E4E308A2AED470DC1BA17D8E86F44E2A
            C1672AF52D1134C27B34D2FB55E511118ED658C63F4D561ED1262B15413549DA
            1089E263FAA4B4232749886B7621BABE1DC8C94D223D258934BDB80D8DBCBB4D
            809A2A047FDB525E7DE8298EF66AE0C92793A58B29A0F0C642C5457C2AEABD6E
            EA5F77F1F6F680C884289D938D4C7EDC4666467C4D72EBA6C0A8589E48850F4D
            7D80FAFD019ABA44C9E89A46B24509DA7DCA7FD4CEBF4F4CC2B6C35FBD865DDF
            BF2DC67B39B55A3DA579118A9CC27D7E70B1784B848FFC11A64D4F64D8108528
            2A8F53CC6E5B7A9F5A01D8E1606C5B4BF9F75EEE7EBB8AC2013D294C32E21232
            18697661D40728E8958153945BADE7404CA04417874972EB89A484C91BA4E2EC
            643DC604719FD23BA996FB6508304F917FEF15D7A5007A958AB743213A0E3622
            54819D9F0668C890FF5BD524E75889F48E52B821C0B6636A0C97DA44A9C8B5DB
            9C7C3DBD850F8EEA685FA8E3F4091A4EB3EAF1160B58DDD2B3ABA5A7DBE4AFC7
            45C8A2A3F21B0FDE84109B5323B85C5A02EA306EBFC0E020340988EB9D61744E
            2B61938A84B055A4B20DD3C0F6984674236F7B2DD3DF5DC803371B1977473AA4
            85DBEA29BE0527407CAF55CDC110CF4D75522E4D37E3F9043A09FF0997FA84C7
            4789EA8CA8952191460F473A1BC8E962117A7E17AD533FFFD9F1BB82E7C7970B
            6CC71170D060D84C7AA09CC8AE835C7BDB119C062D5F3C632654A9162F16C55F
            A754B814C31444E7F2B227A06693DF48F96E0F4E5167C54202BB0F4F45D54D1A
            52E522C564A64752148B4DAEC9969EA6CEA6F28683BCB0CD835A6988AE513A89
            1D5857017DCEB1D2B0CCCF1E5F44B87098C46E5AD2044CD51521563745B83055
            C863BA8904878A15F2BC1439274D08E525F2CCA2A096EBD7BA49EC6B62D63B69
            F49306B9FCDE46B68B95CA5687E8A432889509E1B206490D59080985F30C31D2
            333940973E260A577998E70A704BCF046CC92A5A722314EF157F9E20403C4D23
            EA324AA523428D3472639387F0311FFA32153B0F45D8D068A2DEE1A66F170311
            BB91A1BD12E89DE620C52256AEB338A5DE299813C36874CA5A6701518D97FB6F
            B2B353C9E7354559E110156BA7451F31A3EE250055C6AAA2C2DD54CAB042AFFF
            AA65FF07E0F9C7C3170354C55B1F72FEF4074955F6A47736D2B95023BC424534
            4B49F3E8A457928A8E1DB5240F1370A55949D4F849D68939374A3175CAA8AA62
            ADDA92ADD244CC95850C6C9C7294F3BF709322E63BD2A8C2260D5B266E64540F
            AD107A2D75DE2085C6209A3435D1637A9285637530FB19D253CB3AB1841DFB1B
            D8F983571A438FBD4ECA255CB74366900D1BA5DC453AAEBE31893EEDA3CC9A65
            6764371345A798D930A7894F167B6351B4BEDAE5A245AD25CBAC26D1ECA3AE32
            4476070387A4238C88EA287578A80A0504F83AFA8D4EE0E919A924A7C7D740C5
            974C283B25E4BD7C3E9AC3E22285E0D61F0D51B94C872FE263A73D4879202456
            A5F50AB34545BE48AB4ED90692C4A27D56EAA5A94F80C7A70C907B2B996C94B3
            14A5AA004619C8FDB5A12BFF9F014FEB11117EF2E4D8D17CA73BCC4317A4D2B5
            9D96BC3E5284CCF84E0CE56F7C8764A4EDA5436DDF2B95A1A898601B709ADA7E
            F353B152DCC34A3705A3AC9429D12A8424FB2D6AF2CC1A96CE6B4665D530F90A
            532C06E061511BC34688AB51F0AC8FC6C2AA90A870ADB6C0073BA41C6F783960
            0BA01B954087330D6DCF89071A509E6F26D0D04C955897760635F3E743795735
            A37B8431271859B50BD23BCAF5D55A2A6B43A8F70A016E0CD390A56282A8D1FE
            A39481C0F87662DADE3DFE695B3EF1335B8D9DEBD4EC39E4E140284873A98ADA
            C5765654891C2F32F2DE9C62BAF5523644FEFA246CFFCF83475146D54B5772F3
            4B93B86F4E014372E304392E31C39CB02CF17CE0F105F6426E943CD06191A586
            CA938ADE3605A0243235C5B7E9C603032859D2E4372541BDFEE40813ADE7D95B
            F4EC3EE267443F55EBA32BA5B1541A567E1CE4AB2F9DA48F5373DBBDA9586369
            3A95A91555EBD4CA8F5B8123B1C68DD444516719DACA1F57386DB9CC95B228CB
            86630BFAE49CACF83BC73B8B8F136A52F92EBEEA2FBE64D4DFF637BEB437BE19
            30141B80754F6EE1CE037ECEF84B16978E7B546E35EE776DC2FF3BF028CF105E
            F3F5FD77B2B2F3529EBA2D43AAE4E411E4789892F83658A511CCFCB83625DA06
            0E557C635EFCDC78A5D25AA94A636CF052BF3A84E3FC443A74916B1A5CB8DEF1
            5091A4A6DBB562C2770739F07E00D7293A068C51E11351B772750BBBBC210226
            2B3D2E0E33E44C23B6B5610E7E1FE2F031BF789520EDAF49A0E7C509A8D7FAA9
            2D13827D919C6356F3E3263DA5C8C75BA4C8F26F715DB188E13F82203E26130F
            0917E4C770293F6E9D099F5417F17DEB6DEFF4E35252E55A2FC1D96EDEF8D887
            7B780B773FA6ECDD9FC6BF9C34FDFF3B7894A37AEB369E9E3691F1CF1839A35B
            7C6235DE1BE36E221EFB46D7061E3D27928F19FEA19294EFE3634A4A006C1D75
            0F353379A99D4D195A9E7A2D998BC36ADEB9B19EA9A52EAE9C9CCE9F85C44E9A
            E3A4DD08334FE56B98FAAE281791D5A7740BC4C8FADA042DAF5D9E817AA9976B
            F63918DD4B8FA121CCC26A0DB7DE62E0AC808A1BE49ADB1F4FE29A09F1290629
            5BAD8AA3B735F3DCC626726ECAE6BA3B52C9B26A69B5A4F1778957BBFEA4B2C7
            67F5DBA29AC6EA40799F78E788EFB76ADBA5F2FFB5772E305295571CFFCDBDF3
            DCC7CCEECCEEB24359585C6189B64AB626682D0DD194D6F86C9AFA8868D248AD
            B4A4D5C644A1298FD02A2BB446229AB22561AD1674E3B3E203B4D6B6165B8895
            6229AD0F58BAC0BE666777765E77EECCDC9E6F98BBB36934294496493BFF6432
            999B993BDF77BEFF3DAFFB9D73FF1867C7862CDB5B12FCEADE4BA99EAE0A224F
            FDB18FA78AB34E1ED2064F3FF808BBC636F393F575344C942EDB5A4809CAAE87
            2FD66A4FF80476374C7B217C941262C5ECEAABA3FC68D5305B8F2689271C5C79
            7B334FDC16E4FE65BDACD99FC491D3B9E1523F6FFF23C1829078084137CBF624
            78E9E126AEF0FA78B77B88779D160DED3E36758F93EFF0F04C7713FE51B8F96B
            C73822DAE92A89A2D6BD12E181CDCD2C5F5ACCAACB79239B86B87BF3384FF68B
            133CC3C74B3B66B268FEE4F218C7A4B915EF6E4F681FBB89D4E46651B63C6C33
            29C1C4DF930C6C1C67D591182BB7CDA7AD4515EA7D7C03CA4F1B679F3C4A647F
            3BC48ACEEFF2F9DB8759F2452FA57C4FF10EBD0CCDCC8AB3A979D0355BE05052
            E3B6E0ED0E5FC5C5B0D2180F0EF3CDCD71DE3072CCCC4B381EF0B17D691DC7F7
            8C70D77B592EAAD738DC2F262B0E975FE6654EB3CE9A4D519ED8369DC5F2FDD5
            0F9CE04F556E9AC3751CD913E502315FDBEE9D89FBD018F76C18E68DF13C5F69
            0EF0E83BC3FCECC78DDCBAB449E26719CB61837DCB935CF7CE28D3FC2EA22359
            96ACA967E5B79BF03AFF9338F6E7FCA479D873B24D9ADDC12CC384231D95B93F
            6470E76FE39C7B9B9FE5B7A89AF5EF4DD5B295077914FED0B5859EBD9DDCBD21
            484BC045E90A4C1586666472E8BA07A73E7998F6F3C26D6753FD4E2F1D7F3FC3
            B3F70CB25AC26C154C2DF06B3C15CD71D5453E0212D2FEF2238367D68778757B
            824DCF45587C8D9FB52B4274AE1B60DF01219344449984C18E2107D77EBD910E
            4F86F53B225C3F2B802AF37EAE2FCFE5ED2116CE4A71C7E3C35C395F4CD897BC
            CC16F337E3B5043FE8196357C4A2B5D14742426BABA38697B7863937688FD1BE
            CF0725E7DD3E6E6B517BEFB1AD7D6C9325EF8F45E9EA8EF1D6EC1C5B1EBD09B7
            4B99ABA92B4D2A1BF230749CFBBEFF1D3A6E7D8F2F7F3528E2B17D80C915A879
            4AFD046D73666209B11C29CFC92D114A78EAF6C7581673578A1F6E4DF29A10A6
            F373D59CD7A8F3D487491EEB1D67BEDB85A6E7B9F38A7A3C47B36CFCDD00CDF5
            3A775CE6239F75F2FAFE387F8E64690DE8841B5C2CBCB08E5028CDCEE7C7D82D
            E62F2B7F7FAD4FE70B0B1B894452ACDC1D23AE6B852E67AE7A274B82B53C7C60
            94A5573770F1755E9EDE1261F75E93677BA6D372BEF364634AB7ED10DB5AC898
            441A3B65615F44B6AF671536E23BFE92E0CD9F8E717F22C37D9DE7D131E71772
            9AA92D0B2A1FF208065FFC352B7A56B16EA304E3AA3BEA44A86A0F4FED36B4C8
            F5A6D0D34E952C8251938CC781255AA0776F96E18C8E366650978A63B53A48CD
            F3D067E631C26EA6B5EB1C3A54CB50C4A429E711FAC96254079826E4C9675C8C
            38F2D4C75DCC6CAB22F8198D60C64F8D4734863F4B6ED4C0355BFEAEB0113127
            11BF4EDF504A4C90854F4870209666341BA356C63C96171B98CDE39570BFEDC2
            042DA61B7D6F9AC1813CB9E93E929A9C6F8617479D1BAF98D3D6795E9CAAEB6A
            CE3CB9C5232C73733B28F97776F7D393217F2E22FED443E3DCF5FB388B56F8F9
            D66295CFB97AAA97ABBCC8A3B073F52A3EF075B3444C487D95A72050EBA0866E
            E6301B2DF25E075ADE283CCCE358DAC4F458CC6DF5E16CA8E2AF23351CCBF8D0
            FAEB086B2DCC0D37E29FA5B2A901B9A0F3C57DBBAA9F8F9A9A72CC95EF505F7C
            77532AC7754E7A1985DE4059068516A1A27064911DEA7B514ADDBAD4360FD59A
            4D69441582AB45CF14BFA36189F92336C0FBBE0122BD691C663F66EC18D5C713
            840F5AECFF20415486170DC9D8DA741AEAE0028F8B790DEA22D1316B3CB8DA8A
            392C91C7E32F8ED33707962FBB919A2AD5FBFACC86E51F87B2230F9111DEEAF9
            3987733BB9A67D80AA1A11BCAE7330A91110673718AAA5361C20ED0C11B35AE5
            070B444354E3720A09743B9C55DB10A6A88BC629436910255A4530752B228531
            18A3F7C43F4939E3A45CC7E5F051CCDF9C20B22FCA87A323445D06E3B3AAF8EC
            F9592E3947236E65C938FD5C7CC9377057A99CCE996C70F5C9283FF214914C7F
            24A6E105B4F808D45A18AE36A1C50C7935E2B0E6CA68EDFEC8FF8B300B26D9CC
            8C88A3DD4BCEFA1796B35F745C04AF27278AC885C7D12E0BA632C8FF6D15CAA7
            8FB2254F05E58F0A792A386D54C853C169E313C9D3D5D5B5E86C0FAE82F2465F
            5FDFDB6BD7AE2D14909DA966C615FC1FA0429E0A4E1BFF06CC7F1A2765B01388
            0000000049454E44AE426082}
          HightQuality = False
          Transparent = True
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 394.960885000000000000
          Top = 63.472480000000000000
          Width = 257.008040000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '                Rep'#195#186'blica de Angola'
            '                 Minist'#195#169'rio da Sa'#195#186'de'
            'Instituto Nacional de Luta Contra o Sida')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baCenter
          Left = 343.937230000000000000
          Top = 118.504020000000000000
          Width = 359.055350000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'MAPA M'#195#8240'DICO')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 15.118120000000000000
          Top = 158.740260000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Munic'#195#173'pio')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 15.118120000000000000
          Top = 181.417440000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Prov'#195#173'ncia')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 264.567100000000000000
          Top = 154.960730000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Unidade')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 264.567100000000000000
          Top = 181.417440000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Medico')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 544.252320000000000000
          Top = 154.960730000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 79.370130000000000000
          Top = 158.740260000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DS_MUNICIPIO'
          DataSet = fxdbMapa
          DataSetName = 'Mapa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Mapa."DS_MUNICIPIO"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 79.370130000000000000
          Top = 181.417440000000000000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DS_PROVINCIA'
          DataSet = fxdbMapa
          DataSetName = 'Mapa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Mapa."DS_PROVINCIA"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 317.480520000000000000
          Top = 154.960730000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DS_UNIDADE'
          DataSet = fxdbMapa
          DataSetName = 'Mapa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Mapa."DS_UNIDADE"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 317.480520000000000000
          Top = 181.417440000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NM_MEDICO'
          DataSet = fxdbMapa
          DataSetName = 'Mapa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Mapa."NM_MEDICO"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 597.165740000000000000
          Top = 154.960730000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DT_MAPA'
          DataSet = fxdbMapa
          DataSetName = 'Mapa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Mapa."DT_MAPA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 430.866420000000000000
        Width = 1046.929810000000000000
        object Shape3: TfrxShapeView
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
        end
        object Memo9: TfrxMemoView
          Left = 84.929190000000000000
          Top = 1.779530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd/mm/yyyy 00:00'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DATE]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779530000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Data/Hora:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 159.740260000000000000
          Top = 2.000000000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'hh:mm am/pm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[TIME]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 998.795920000000000000
          Top = 2.000000000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[PAGE#]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 943.882500000000000000
          Top = 1.779530000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Pagina:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 340.157700000000000000
        Width = 1046.929810000000000000
        DataSet = fxdbPaciente
        DataSetName = 'Paciente'
        RowCount = 0
        object Shape2: TfrxShapeView
          Width = 1046.929810000000000000
          Height = 30.236240000000000000
          ShowHint = False
        end
        object Memo23: TfrxMemoView
          Left = 0.779530000000000000
          Top = 5.999975590000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Paciente."CODIGO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 29.708720000000000000
          Top = 2.999975590000000000
          Width = 132.283550000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NM_PACIENTE'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."NM_PACIENTE"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 193.889763779528000000
          Top = 0.118120000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line30: TfrxLineView
          Left = 29.102362200000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line31: TfrxLineView
          Left = 162.897637800000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line32: TfrxLineView
          Left = 321.393669060000000000
          Top = 0.118120000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo24: TfrxMemoView
          Left = 164.299320000000000000
          Top = 3.023622050000000000
          Width = 11.338590000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'FL_SEXO'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."FL_SEXO"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 382.999941420000000000
          Top = 0.118120000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 404.165322600000000000
          Top = 0.118120000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line13: TfrxLineView
          Left = 436.291306850000000000
          Top = 0.118120000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line24: TfrxLineView
          Left = 468.661410000000000000
          Top = 0.118120000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          Left = 178.527568820000000000
          Top = 3.023622050000000000
          Width = 15.118120000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NR_IDADE_ANOS'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."NR_IDADE_ANOS"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 470.118430000000000000
          Top = 2.999975590000000000
          Width = 39.685039370000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'DT_PRIMEIRO_TARV'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."DT_PRIMEIRO_TARV"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 511.252320000000000000
          Top = 2.999975590000000000
          Width = 68.787401570000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_PRIMEIRO_ESQUEMA'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_PRIMEIRO_ESQUEMA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 194.535560000000000000
          Top = 3.779530000000000000
          Width = 37.795275590000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NR_PROCESSO'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."NR_PROCESSO"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 343.275820000000000000
          Top = 3.779530000000000000
          Width = 39.685039370000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'DT_PRIMEIRA_CONSULTA'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."DT_PRIMEIRA_CONSULTA"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 383.630180000000000000
          Top = 3.779530000000000000
          Width = 18.897635350000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_ESTADIO_PC'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_ESTADIO_PC"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 404.645950000000000000
          Top = 3.779530000000000000
          Width = 30.236220470000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_CD4_PC'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_CD4_PC"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 437.779840000000000000
          Top = 3.779530000000000000
          Width = 30.236220470000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_CV_PC'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_CV_PC"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 509.850369290000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 580.535425750000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo39: TfrxMemoView
          Left = 581.566858350000000000
          Top = 1.779530000000000000
          Width = 68.787401570000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_ULTIMA_ESQUEMA'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_ULTIMA_ESQUEMA"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 691.433520000000000000
          Top = 3.779530000000000000
          Width = 18.897635350000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_ESTADIO_UC'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_ESTADIO_UC"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 711.228820000000000000
          Top = 3.779530000000000000
          Width = 26.456690470000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_CD4_UC'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_CD4_UC"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 779.701300000000000000
          Top = 3.779530000000000000
          Width = 30.236220470000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_CV_UC'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_CV_UC"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 924.102970000000000000
          Top = 3.779530000000000000
          Width = 68.787401570000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_TARV_PADRAO'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_TARV_PADRAO"]')
          ParentFont = False
        end
        object Line23: TfrxLineView
          Left = 650.078732830000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 711.449290000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 778.480830000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 876.189550000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 923.323440000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo57: TfrxMemoView
          Left = 304.362400000000000000
          Top = 3.779530000000000000
          Width = 15.118120000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_RASTREIO_TB'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_RASTREIO_TB"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 872.410020000000000000
          Top = 2.000000000000000000
          Width = 51.023622050000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Paciente."VL_NITM"]')
          ParentFont = False
        end
        object Line29: TfrxLineView
          Left = 303.362172990000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo61: TfrxMemoView
          Left = 235.330860000000000000
          Top = 3.779530000000000000
          Width = 11.338582680000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_GESTANTE'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_GESTANTE"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 248.228304960000000000
          Top = 3.779530000000000000
          Width = 39.685039370000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'DT_PREV_GESTACAO'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."DT_PREV_GESTACAO"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 288.362400000000000000
          Top = 3.779530000000000000
          Width = 15.118110240000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NR_MESES'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."NR_MESES"]')
          ParentFont = False
        end
        object Line39: TfrxLineView
          Left = 234.196821100000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line40: TfrxLineView
          Left = 248.338541180000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line41: TfrxLineView
          Left = 287.472389690000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line43: TfrxLineView
          Left = 852.551154250000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo66: TfrxMemoView
          Left = 854.953310000000000000
          Top = 3.779530000000000000
          Width = 18.897625590000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_DIAGNOSTICO_TB'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_DIAGNOSTICO_TB"]')
          ParentFont = False
        end
        object Line45: TfrxLineView
          Left = 342.936976140000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo69: TfrxMemoView
          Left = 325.039580000000000000
          Top = 3.779530000000000000
          Width = 15.118120000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_RASTREIO_ITS'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_RASTREIO_ITS"]')
          ParentFont = False
        end
        object Line47: TfrxLineView
          Left = 810.708622360000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo71: TfrxMemoView
          Left = 811.598950000000000000
          Top = 3.779530000000000000
          Width = 39.685039370000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'DT_CV_UC'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."DT_CV_UC"]')
          ParentFont = False
        end
        object Line35: TfrxLineView
          Left = 738.008350000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          Left = 738.008350000000000000
          Top = 3.779530000000000000
          Width = 39.685039370000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'DT_CD4_UC'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."DT_CD4_UC"]')
          ParentFont = False
        end
        object Line48: TfrxLineView
          Left = 177.637910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line51: TfrxLineView
          Left = 994.016390000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo77: TfrxMemoView
          Left = 995.016390000000000000
          Top = 3.779530000000000000
          Width = 26.456661180000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_PRESCRICAO_IONIZADA'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_PRESCRICAO_IONIZADA"]')
          ParentFont = False
        end
        object Line53: TfrxLineView
          Left = 1019.582684490000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo78: TfrxMemoView
          Left = 1020.693570000000000000
          Top = 3.779530000000000000
          Width = 26.456661180000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'VL_PRESCRICAO_COTROMIXAZOL'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."VL_PRESCRICAO_COTROMIXAZOL"]')
          ParentFont = False
        end
        object Line55: TfrxLineView
          Left = 690.519685039370100000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo80: TfrxMemoView
          Left = 650.079160000000000000
          Top = 3.779530000000000000
          Width = 39.685039370000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'DT_ULTIMA_CONSULTA'
          DataSet = fxdbPaciente
          DataSetName = 'Paciente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Paciente."DT_ULTIMA_CONSULTA"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 38.551181100000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        object Shape1: TfrxShapeView
          Left = 1.000000000000000000
          Top = 0.779530000000000000
          Width = 1046.929346220000000000
          Height = 37.795300000000000000
          ShowHint = False
          Color = 13750737
        end
        object Line2: TfrxLineView
          Left = 321.393669060000000000
          Top = 15.118110240000000000
          Height = 23.811028500000000000
          ShowHint = False
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 404.205010000000000000
          Top = 15.118110240000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 303.031432600000000000
          Top = 15.118110240000000000
          Width = 744.566929133858300000
          ShowHint = False
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          Left = 345.055350000000000000
          Top = 0.779530000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Primeira Consulta')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 404.952741260000000000
          Top = 21.456710000000000000
          Width = 30.236220470000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CD4')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 436.323130000000000000
          Top = 15.118110240000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Left = 437.441250000000000000
          Top = 21.456710000000000000
          Width = 30.236215590000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CV')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 468.551149370000000000
          Top = 0.779530000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 30.795300000000000000
          Top = 12.118120000000000000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nome')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 162.858380000000000000
          Top = 0.755905510000000000
          Width = 15.118120000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Sexo')
          ParentFont = False
          Rotation = 90
        end
        object Memo5: TfrxMemoView
          Left = 0.165430000000000000
          Top = 12.456710000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nr.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 381.630180000000000000
          Top = 20.677180000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'OMS')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 29.015770000000000000
          Top = 0.779530000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 163.078850000000000000
          Top = 0.779530000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 382.866134410000000000
          Top = 15.118110240000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo54: TfrxMemoView
          Left = 177.976500000000000000
          Top = 0.889754020000000000
          Width = 15.118110236220500000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Idade')
          ParentFont = False
          Rotation = 90
        end
        object Line34: TfrxLineView
          Left = 193.874150000000000000
          Top = 1.000000000000000000
          Height = 37.795275590551200000
          ShowHint = False
          Diagonal = True
        end
        object Memo55: TfrxMemoView
          Left = 194.315090000000000000
          Top = 14.118120000000000000
          Width = 40.062992130000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Processo')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 343.275820000000000000
          Top = 20.897650000000000000
          Width = 37.795270710000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 469.118430000000000000
          Top = 20.897650000000000000
          Width = 39.685039370000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 509.992094250000000000
          Top = 15.118110240000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo18: TfrxMemoView
          Left = 510.252320000000000000
          Top = 20.897650000000000000
          Width = 68.787401570000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Esquema')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 469.897960000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Primeiro TARV')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 580.535425750000000000
          Top = 0.779530000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          Left = 689.874460000000000000
          Top = 20.897650000000000000
          Width = 21.921259840000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'OMS')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 590.386210000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #195#353'ltima Consulta')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 713.228820000000000000
          Top = 20.897650000000000000
          Width = 22.677160470000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CD4')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 779.260360000000000000
          Top = 20.897650000000000000
          Width = 30.236220470000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CV')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 877.189550000000000000
          Top = 20.897650000000000000
          Width = 43.464562050000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'N   I   T   M')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 925.882500000000000000
          Top = 20.897650000000000000
          Width = 65.007871570000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Padr'#195#163'o')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 878.276130000000000000
          Top = 1.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TARV')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 304.141930000000000000
          Top = 20.787404020000000000
          Width = 15.118120000000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TB')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 303.362400000000000000
          Top = 1.133858270000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 876.094473540000000000
          Top = 1.133858270000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 650.078732830000000000
          Top = 15.118120000000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 690.519685039370100000
          Top = 15.118120000000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 778.480830000000000000
          Top = 15.118120000000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 923.338568030000000000
          Top = 15.118120000000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo30: TfrxMemoView
          Left = 580.622450000000000000
          Top = 20.897650000000000000
          Width = 68.031491180000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Esquema')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 234.110390000000000000
          Width = 13.228346460000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Gestante')
          ParentFont = False
          Rotation = 90
        end
        object Memo59: TfrxMemoView
          Left = 248.228510000000000000
          Top = 7.559060000000000000
          Width = 37.795273150000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Prev.'
            'Gest.')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 288.362400000000000000
          Top = 1.000000000000000000
          Width = 15.118120000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          GapY = 2.000000000000000000
          Memo.UTF8 = (
            'Meses')
          ParentFont = False
          Rotation = 90
        end
        object Line36: TfrxLineView
          Left = 234.330701340000000000
          Top = 1.133858270000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Line37: TfrxLineView
          Left = 248.228510000000000000
          Top = 1.133858270000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Line38: TfrxLineView
          Left = 287.622030160000000000
          Top = 1.133858270000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Line42: TfrxLineView
          Left = 852.512370000000000000
          Top = 1.133858270000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo64: TfrxMemoView
          Left = 854.953310000000000000
          Top = 20.787404020000000000
          Width = 18.897625590000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'TB')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 852.953310000000000000
          Top = 1.000000000000000000
          Width = 23.055118110000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Diag.')
          ParentFont = False
        end
        object Line44: TfrxLineView
          Left = 342.936976140000000000
          Top = 1.133858270000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo67: TfrxMemoView
          Left = 301.921460000000000000
          Top = 2.000000000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rastreio')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 323.039580000000000000
          Top = 20.787404020000000000
          Width = 18.897650000000000000
          Height = 11.338582680000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ITS')
          ParentFont = False
        end
        object Line46: TfrxLineView
          Left = 810.708622360000000000
          Top = 15.118120000000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo70: TfrxMemoView
          Left = 811.464542520000000000
          Top = 20.787404020000000000
          Width = 39.685039370000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
        object Line33: TfrxLineView
          Left = 738.007866690000000000
          Top = 15.118120000000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo72: TfrxMemoView
          Left = 738.008350000000000000
          Top = 20.787404020000000000
          Width = 39.685039370000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
        object Line50: TfrxLineView
          Left = 177.637910000000000000
          Top = 0.755905511811024000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo74: TfrxMemoView
          Left = 997.795920000000000000
          Top = 1.133858270000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Prescri'#195#167#195#163'o')
          ParentFont = False
        end
        object Line49: TfrxLineView
          Left = 994.015760240000000000
          Top = 0.755905510000000000
          Height = 37.795275590000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo75: TfrxMemoView
          Left = 995.016390000000000000
          Top = 15.496062990000000000
          Width = 22.677131180000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ioni-zada')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 1018.134510000000000000
          Top = 15.677180000000000000
          Width = 30.236191180000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Cotro-mixazol')
          ParentFont = False
        end
        object Line52: TfrxLineView
          Left = 1019.693570000000000000
          Top = 15.118120000000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 711.307086614173200000
          Top = 15.118120000000000000
          Height = 23.811023620000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo79: TfrxMemoView
          Left = 651.079160000000000000
          Top = 20.787404020000000000
          Width = 39.685039370000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
      end
    end
  end
  object fxdbMapa: TfrxDBDataset
    UserName = 'Mapa'
    CloseDataSource = False
    DataSource = dsControle
    BCDToCurrency = False
    Left = 552
    Top = 254
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Left = 608
    Top = 272
  end
  object fxdbPaciente: TfrxDBDataset
    UserName = 'Paciente'
    CloseDataSource = False
    DataSource = dsMapaLinha
    BCDToCurrency = False
    Left = 552
    Top = 286
  end
  object TB_MAPA_MEDICO: TIBDataSet
    Database = DM.DB
    Transaction = DM.TS
    AfterInsert = TB_MAPA_MEDICOAfterInsert
    AfterOpen = TB_MAPA_MEDICOAfterOpen
    BeforeClose = TB_MAPA_MEDICOBeforeClose
    BeforeDelete = TB_MAPA_MEDICOBeforeDelete
    BeforePost = TB_MAPA_MEDICOBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from "MAPA_MEDICO"'
      'where'
      '  "CD_MAPA" = :"OLD_CD_MAPA"')
    InsertSQL.Strings = (
      'insert into "MAPA_MEDICO"'
      '('
      '  "CD_MAPA"'
      ', "CD_UNIDADE"'
      ', "CD_MEDICO"'
      ', "DT_MAPA"'
      ')'
      'values'
      '('
      '  :"CD_MAPA"'
      ', :"CD_UNIDADE"'
      ', :"CD_MEDICO"'
      ', :"DT_MAPA"'
      ')')
    SelectSQL.Strings = (
      'select "MAPA_MEDICO"."CD_MAPA"'
      '      ,"MAPA_MEDICO"."CD_UNIDADE"'
      '      ,"MAPA_MEDICO"."DT_MAPA"'
      '      ,"MAPA_MEDICO"."CD_MEDICO"'
      '      ,"MEDICO"."NM_MEDICO"'
      '      , UNIDADE.DS_UNIDADE'
      '      , MUNICIPIO.DS_MUNICIPIO'
      '      , PROVINCIA.DS_PROVINCIA'
      'from MAPA_MEDICO'
      '  left outer join   UNIDADE on'
      '  MAPA_MEDICO.CD_UNIDADE    =  UNIDADE.CD_UNIDADE  '
      '  left outer join   PROVINCIA on'
      '  UNIDADE.CD_PROVINCIA    = PROVINCIA.CD_PROVINCIA'
      '  left outer join   MUNICIPIO on'
      '  UNIDADE.CD_MUNICIPIO  =  MUNICIPIO.CD_MUNICIPIO and'
      '  UNIDADE.CD_PROVINCIA =  MUNICIPIO.CD_PROVINCIA '
      '  left outer join   MEDICO on'
      '  MAPA_MEDICO.CD_MEDICO = MEDICO.CD_MEDICO'
      'where  '
      '  "MAPA_MEDICO"."CD_MEDICO" = :CD_MEDICO'
      'and  "MAPA_MEDICO"."DT_MAPA" = :DT_MAPA')
    ModifySQL.Strings = (
      'update "MAPA_MEDICO"'
      'set'
      ' "CD_MAPA" = :"CD_MAPA"'
      ', "CD_UNIDADE" = :"CD_UNIDADE"'
      ', "CD_MEDICO" = :"CD_MEDICO"'
      ', "DT_MAPA" = :"DT_MAPA"'
      'where'
      '  "CD_MAPA" = :"OLD_CD_MAPA"')
    GeneratorField.Field = 'CD_MAPA'
    GeneratorField.Generator = 'GEN_MAPA_MEDICO'
    Left = 736
    Top = 227
    object TB_MAPA_MEDICOCD_MAPA: TIntegerField
      FieldName = 'CD_MAPA'
      Origin = 'MAPA_MEDICO.CD_MAPA'
      Required = True
    end
    object TB_MAPA_MEDICOCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'MAPA_MEDICO.CD_UNIDADE'
      Required = True
    end
    object TB_MAPA_MEDICOCD_MEDICO: TIntegerField
      FieldName = 'CD_MEDICO'
      Origin = 'MAPA_MEDICO.CD_MEDICO'
      OnValidate = TB_MAPA_MEDICOCD_MEDICOValidate
    end
    object TB_MAPA_MEDICONM_MEDICO: TIBStringField
      FieldName = 'NM_MEDICO'
      Origin = 'MEDICO.NM_MEDICO'
      Size = 50
    end
    object TB_MAPA_MEDICODT_MAPA: TDateTimeField
      FieldName = 'DT_MAPA'
      Origin = 'MAPA_MEDICO.DT_MAPA'
      OnValidate = TB_MAPA_MEDICODT_MAPAValidate
    end
    object TB_MAPA_MEDICODS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE.DS_UNIDADE'
      Size = 50
    end
    object TB_MAPA_MEDICODS_MUNICIPIO: TIBStringField
      FieldName = 'DS_MUNICIPIO'
      Origin = 'MUNICIPIO.DS_MUNICIPIO'
      Size = 50
    end
    object TB_MAPA_MEDICODS_PROVINCIA: TIBStringField
      FieldName = 'DS_PROVINCIA'
      Origin = 'PROVINCIA.DS_PROVINCIA'
      Size = 50
    end
  end
  object TB_MAPA_MEDICO_LINHA: TIBDataSet
    Database = DM.DB
    Transaction = DM.TS
    AfterInsert = TB_MAPA_MEDICO_LINHAAfterInsert
    BeforeInsert = TB_MAPA_MEDICO_LINHABeforeInsert
    BeforePost = TB_MAPA_MEDICO_LINHABeforePost
    OnCalcFields = TB_MAPA_MEDICO_LINHACalcFields
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from "MAPA_MEDICO_LINHA"'
      'where'
      '  "CD_MAPA_LINHA" = :"OLD_CD_MAPA_LINHA"')
    InsertSQL.Strings = (
      'insert into "MAPA_MEDICO_LINHA"'
      '('
      '  "CD_MAPA_LINHA"'
      ', "CD_MAPA"'
      ', "NR_PROCESSO"'
      ', "DT_CONSULTA"'
      ', "TP_CONSULTA"'
      ', "NM_PACIENTE"'
      ', "FL_SEXO"'
      ', "NR_IDADE_ANOS"'
      ', "NR_IDADE_MESES"'
      ', "VL_GESTANTE"'
      ', "DT_PRIMEIRA_CONSULTA"'
      ', "VL_ESTADIO_PC"'
      ', "VL_CV_PC"'
      ', "DT_PRIMEIRO_TARV"'
      ', "VL_PRIMEIRO_ESQUEMA"'
      ', "DT_ULTIMA_CONSULTA"'
      ', "VL_ESTADIO_UC"'
      ', "VL_CV_UC"'
      ', "VL_RASTREIO_TB"'
      ', "VL_DIAGNOSTICO_TB"'
      ', "VL_TB_NOVO"'
      ', "VL_TB_RECAIDA"'
      ', "VL_TB_FRACASSADO"'
      ', "VL_TB_REAPARECIDO"'
      ', "VL_TB_SI"'
      ', "CD_UND_REF_TB"'
      ', "VL_N"'
      ', "VL_I"'
      ', "VL_M"'
      ', "VL_T"'
      ', "VL_TARV_PADRAO"'
      ', "VL_PRESCRICAO_IONIZADA"'
      ', "VL_PRESCRICAO_COTROMIXAZOL"'
      ', "DT_ESTADIO_UC"'
      ', "DT_CD4_UC"'
      ', "DT_CV_UC"'
      ', "CD_PACIENTE"'
      ', "CD_AGENDA"'
      ', "VL_CD4_PC"'
      ', "VL_CD4_UC"'
      ', "VL_ULTIMA_ESQUEMA"'
      ', "DT_PREV_GESTACAO"'
      ', "VL_RASTREIO_ITS"'
      ')'
      'values'
      '('
      '  :"CD_MAPA_LINHA"'
      ', :"CD_MAPA"'
      ', :"NR_PROCESSO"'
      ', :"DT_CONSULTA"'
      ', :"TP_CONSULTA"'
      ', :"NM_PACIENTE"'
      ', :"FL_SEXO"'
      ', :"NR_IDADE_ANOS"'
      ', :"NR_IDADE_MESES"'
      ', :"VL_GESTANTE"'
      ', :"DT_PRIMEIRA_CONSULTA"'
      ', :"VL_ESTADIO_PC"'
      ', :"VL_CV_PC"'
      ', :"DT_PRIMEIRO_TARV"'
      ', :"VL_PRIMEIRO_ESQUEMA"'
      ', :"DT_ULTIMA_CONSULTA"'
      ', :"VL_ESTADIO_UC"'
      ', :"VL_CV_UC"'
      ', :"VL_RASTREIO_TB"'
      ', :"VL_DIAGNOSTICO_TB"'
      ', :"VL_TB_NOVO"'
      ', :"VL_TB_RECAIDA"'
      ', :"VL_TB_FRACASSADO"'
      ', :"VL_TB_REAPARECIDO"'
      ', :"VL_TB_SI"'
      ', :"CD_UND_REF_TB"'
      ', :"VL_N"'
      ', :"VL_I"'
      ', :"VL_M"'
      ', :"VL_T"'
      ', :"VL_TARV_PADRAO"'
      ', :"VL_PRESCRICAO_IONIZADA"'
      ', :"VL_PRESCRICAO_COTROMIXAZOL"'
      ', :"DT_ESTADIO_UC"'
      ', :"DT_CD4_UC"'
      ', :"DT_CV_UC"'
      ', :"CD_PACIENTE"'
      ', :"CD_AGENDA"'
      ', :"VL_CD4_PC"'
      ', :"VL_CD4_UC"'
      ', :"VL_ULTIMA_ESQUEMA"'
      ', :"DT_PREV_GESTACAO"'
      ', :"VL_RASTREIO_ITS"'
      ')')
    SelectSQL.Strings = (
      'select "MAPA_MEDICO_LINHA"."CD_MAPA_LINHA"'
      '      ,"MAPA_MEDICO_LINHA"."CD_MAPA"'
      '      ,"MAPA_MEDICO_LINHA"."NR_PROCESSO"'
      '      ,"MAPA_MEDICO_LINHA"."DT_CONSULTA"'
      '      ,"MAPA_MEDICO_LINHA"."TP_CONSULTA"'
      '      ,"MAPA_MEDICO_LINHA"."CD_PACIENTE"'
      '      ,"MAPA_MEDICO_LINHA"."NM_PACIENTE"'
      '      ,"MAPA_MEDICO_LINHA"."FL_SEXO"'
      '      ,"MAPA_MEDICO_LINHA"."NR_IDADE_ANOS"'
      '      ,"MAPA_MEDICO_LINHA"."NR_IDADE_MESES"'
      '      ,"MAPA_MEDICO_LINHA"."VL_GESTANTE"'
      '      ,"MAPA_MEDICO_LINHA"."DT_PRIMEIRA_CONSULTA"'
      '      ,"MAPA_MEDICO_LINHA"."VL_ESTADIO_PC"'
      '      ,"MAPA_MEDICO_LINHA"."VL_CD4_PC"'
      '      ,"MAPA_MEDICO_LINHA"."VL_CV_PC"'
      '      ,"MAPA_MEDICO_LINHA"."DT_PRIMEIRO_TARV"'
      '      ,"MAPA_MEDICO_LINHA"."VL_PRIMEIRO_ESQUEMA"'
      '      ,"MAPA_MEDICO_LINHA"."DT_ULTIMA_CONSULTA"'
      '      ,"MAPA_MEDICO_LINHA"."VL_ESTADIO_UC"'
      '      ,"MAPA_MEDICO_LINHA"."VL_CD4_UC"'
      '      ,"MAPA_MEDICO_LINHA"."VL_CV_UC"'
      '      ,"MAPA_MEDICO_LINHA"."VL_RASTREIO_TB"'
      '      ,"MAPA_MEDICO_LINHA"."VL_DIAGNOSTICO_TB"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TB_NOVO"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TB_RECAIDA"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TB_FRACASSADO"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TB_REAPARECIDO"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TB_SI"'
      '      ,"MAPA_MEDICO_LINHA"."CD_UND_REF_TB"'
      '      ,"MAPA_MEDICO_LINHA"."VL_N"'
      '      ,"MAPA_MEDICO_LINHA"."VL_I"'
      '      ,"MAPA_MEDICO_LINHA"."VL_M"'
      '      ,"MAPA_MEDICO_LINHA"."VL_T"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TARV_PADRAO"'
      '      ,"MAPA_MEDICO_LINHA"."VL_PRESCRICAO_IONIZADA"'
      '      ,"MAPA_MEDICO_LINHA"."VL_PRESCRICAO_COTROMIXAZOL"'
      '      ,"MAPA_MEDICO_LINHA"."DT_ESTADIO_UC"'
      '      ,"MAPA_MEDICO_LINHA"."DT_CD4_UC"'
      '      ,"MAPA_MEDICO_LINHA"."DT_CV_UC"'
      '      ,"MAPA_MEDICO_LINHA"."CD_AGENDA"'
      '      ,"MAPA_MEDICO_LINHA"."VL_ULTIMA_ESQUEMA"'
      '      ,"MAPA_MEDICO_LINHA"."DT_PREV_GESTACAO"'
      '      ,"MAPA_MEDICO_LINHA"."VL_RASTREIO_ITS"'
      'from "MAPA_MEDICO_LINHA"'
      'where '
      '"MAPA_MEDICO_LINHA"."CD_MAPA" = :CD_MAPA')
    ModifySQL.Strings = (
      'update "MAPA_MEDICO_LINHA"'
      'set'
      ' "CD_MAPA_LINHA" = :"CD_MAPA_LINHA"'
      ', "CD_MAPA" = :"CD_MAPA"'
      ', "NR_PROCESSO" = :"NR_PROCESSO"'
      ', "DT_CONSULTA" = :"DT_CONSULTA"'
      ', "TP_CONSULTA" = :"TP_CONSULTA"'
      ', "NM_PACIENTE" = :"NM_PACIENTE"'
      ', "FL_SEXO" = :"FL_SEXO"'
      ', "NR_IDADE_ANOS" = :"NR_IDADE_ANOS"'
      ', "NR_IDADE_MESES" = :"NR_IDADE_MESES"'
      ', "VL_GESTANTE" = :"VL_GESTANTE"'
      ', "DT_PRIMEIRA_CONSULTA" = :"DT_PRIMEIRA_CONSULTA"'
      ', "VL_ESTADIO_PC" = :"VL_ESTADIO_PC"'
      ', "VL_CV_PC" = :"VL_CV_PC"'
      ', "DT_PRIMEIRO_TARV" = :"DT_PRIMEIRO_TARV"'
      ', "VL_PRIMEIRO_ESQUEMA" = :"VL_PRIMEIRO_ESQUEMA"'
      ', "DT_ULTIMA_CONSULTA" = :"DT_ULTIMA_CONSULTA"'
      ', "VL_ESTADIO_UC" = :"VL_ESTADIO_UC"'
      ', "VL_CV_UC" = :"VL_CV_UC"'
      ', "VL_RASTREIO_TB" = :"VL_RASTREIO_TB"'
      ', "VL_DIAGNOSTICO_TB" = :"VL_DIAGNOSTICO_TB"'
      ', "VL_TB_NOVO" = :"VL_TB_NOVO"'
      ', "VL_TB_RECAIDA" = :"VL_TB_RECAIDA"'
      ', "VL_TB_FRACASSADO" = :"VL_TB_FRACASSADO"'
      ', "VL_TB_REAPARECIDO" = :"VL_TB_REAPARECIDO"'
      ', "VL_TB_SI" = :"VL_TB_SI"'
      ', "CD_UND_REF_TB" = :"CD_UND_REF_TB"'
      ', "VL_N" = :"VL_N"'
      ', "VL_I" = :"VL_I"'
      ', "VL_M" = :"VL_M"'
      ', "VL_T" = :"VL_T"'
      ', "VL_TARV_PADRAO" = :"VL_TARV_PADRAO"'
      ', "VL_PRESCRICAO_IONIZADA" = :"VL_PRESCRICAO_IONIZADA"'
      ', "VL_PRESCRICAO_COTROMIXAZOL" = :"VL_PRESCRICAO_COTROMIXAZOL"'
      ', "DT_ESTADIO_UC" = :"DT_ESTADIO_UC"'
      ', "DT_CD4_UC" = :"DT_CD4_UC"'
      ', "DT_CV_UC" = :"DT_CV_UC"'
      ', "CD_PACIENTE" = :"CD_PACIENTE"'
      ', "CD_AGENDA" = :"CD_AGENDA"'
      ', "VL_CD4_PC" = :"VL_CD4_PC"'
      ', "VL_CD4_UC" = :"VL_CD4_UC"'
      ', "VL_ULTIMA_ESQUEMA" = :"VL_ULTIMA_ESQUEMA"'
      ', "DT_PREV_GESTACAO" = :"DT_PREV_GESTACAO"'
      ', "VL_RASTREIO_ITS" = :"VL_RASTREIO_ITS"'
      'where'
      '  "CD_MAPA_LINHA" = :"OLD_CD_MAPA_LINHA"')
    GeneratorField.Field = 'CD_MAPA_LINHA'
    GeneratorField.Generator = 'GEN_MAPA_LINHA'
    DataSource = dsMapaMedico
    Left = 736
    Top = 259
    object TB_MAPA_MEDICO_LINHACD_MAPA_LINHA: TIntegerField
      FieldName = 'CD_MAPA_LINHA'
      Origin = 'MAPA_MEDICO_LINHA.CD_MAPA_LINHA'
      Required = True
    end
    object TB_MAPA_MEDICO_LINHACD_MAPA: TIntegerField
      FieldName = 'CD_MAPA'
      Origin = 'MAPA_MEDICO_LINHA.CD_MAPA'
      Required = True
    end
    object TB_MAPA_MEDICO_LINHANR_PROCESSO: TIBStringField
      FieldName = 'NR_PROCESSO'
      Origin = 'MAPA_MEDICO_LINHA.NR_PROCESSO'
      OnValidate = TB_MAPA_MEDICO_LINHANR_PROCESSOValidate
      Size = 15
    end
    object TB_MAPA_MEDICO_LINHADT_CONSULTA: TDateTimeField
      FieldName = 'DT_CONSULTA'
      Origin = 'MAPA_MEDICO_LINHA.DT_CONSULTA'
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object TB_MAPA_MEDICO_LINHATP_CONSULTA: TIntegerField
      FieldName = 'TP_CONSULTA'
      Origin = 'MAPA_MEDICO_LINHA.TP_CONSULTA'
    end
    object TB_MAPA_MEDICO_LINHANM_PACIENTE: TIBStringField
      FieldName = 'NM_PACIENTE'
      Origin = 'MAPA_MEDICO_LINHA.NM_PACIENTE'
      Size = 50
    end
    object TB_MAPA_MEDICO_LINHAFL_SEXO: TIBStringField
      FieldName = 'FL_SEXO'
      Origin = 'MAPA_MEDICO_LINHA.FL_SEXO'
      FixedChar = True
      Size = 1
    end
    object TB_MAPA_MEDICO_LINHANR_IDADE_ANOS: TIntegerField
      FieldName = 'NR_IDADE_ANOS'
      Origin = 'MAPA_MEDICO_LINHA.NR_IDADE_ANOS'
    end
    object TB_MAPA_MEDICO_LINHANR_IDADE_MESES: TIntegerField
      FieldName = 'NR_IDADE_MESES'
      Origin = 'MAPA_MEDICO_LINHA.NR_IDADE_MESES'
    end
    object TB_MAPA_MEDICO_LINHAVL_GESTANTE: TIBStringField
      FieldName = 'VL_GESTANTE'
      Origin = 'MAPA_MEDICO_LINHA.VL_GESTANTE'
      OnValidate = TB_MAPA_MEDICO_LINHAVL_GESTANTEValidate
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHADT_PRIMEIRA_CONSULTA: TDateTimeField
      FieldName = 'DT_PRIMEIRA_CONSULTA'
      Origin = 'MAPA_MEDICO_LINHA.DT_PRIMEIRA_CONSULTA'
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object TB_MAPA_MEDICO_LINHAVL_ESTADIO_PC: TIBStringField
      FieldName = 'VL_ESTADIO_PC'
      Origin = 'MAPA_MEDICO_LINHA.VL_ESTADIO_PC'
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHAVL_CV_PC: TIBStringField
      FieldName = 'VL_CV_PC'
      Origin = 'MAPA_MEDICO_LINHA.VL_CV_PC'
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHADT_PRIMEIRO_TARV: TDateTimeField
      FieldName = 'DT_PRIMEIRO_TARV'
      Origin = 'MAPA_MEDICO_LINHA.DT_PRIMEIRO_TARV'
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object TB_MAPA_MEDICO_LINHAVL_PRIMEIRO_ESQUEMA: TIBStringField
      FieldName = 'VL_PRIMEIRO_ESQUEMA'
      Origin = 'MAPA_MEDICO_LINHA.VL_PRIMEIRO_ESQUEMA'
      ReadOnly = True
    end
    object TB_MAPA_MEDICO_LINHADT_ULTIMA_CONSULTA: TDateTimeField
      FieldName = 'DT_ULTIMA_CONSULTA'
      Origin = 'MAPA_MEDICO_LINHA.DT_ULTIMA_CONSULTA'
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object TB_MAPA_MEDICO_LINHAVL_ESTADIO_UC: TIBStringField
      FieldName = 'VL_ESTADIO_UC'
      Origin = 'MAPA_MEDICO_LINHA.VL_ESTADIO_UC'
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHADT_ESTADIO_UC: TDateTimeField
      FieldName = 'DT_ESTADIO_UC'
      Origin = 'MAPA_MEDICO_LINHA.DT_ESTADIO_UC'
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object TB_MAPA_MEDICO_LINHADT_CD4_UC: TDateTimeField
      FieldName = 'DT_CD4_UC'
      Origin = 'MAPA_MEDICO_LINHA.DT_CD4_UC'
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object TB_MAPA_MEDICO_LINHAVL_CV_UC: TIBStringField
      FieldName = 'VL_CV_UC'
      Origin = 'MAPA_MEDICO_LINHA.VL_CV_UC'
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHADT_CV_UC: TDateTimeField
      FieldName = 'DT_CV_UC'
      Origin = 'MAPA_MEDICO_LINHA.DT_CV_UC'
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object TB_MAPA_MEDICO_LINHAVL_RASTREIO_TB: TIBStringField
      FieldName = 'VL_RASTREIO_TB'
      Origin = 'MAPA_MEDICO_LINHA.VL_RASTREIO_TB'
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHAVL_DIAGNOSTICO_TB: TIBStringField
      FieldName = 'VL_DIAGNOSTICO_TB'
      Origin = 'MAPA_MEDICO_LINHA.VL_DIAGNOSTICO_TB'
      Size = 1
    end
    object TB_MAPA_MEDICO_LINHAVL_TB_NOVO: TIBStringField
      FieldName = 'VL_TB_NOVO'
      Origin = 'MAPA_MEDICO_LINHA.VL_TB_NOVO'
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHAVL_TB_RECAIDA: TIBStringField
      FieldName = 'VL_TB_RECAIDA'
      Origin = 'MAPA_MEDICO_LINHA.VL_TB_RECAIDA'
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHAVL_TB_FRACASSADO: TIBStringField
      FieldName = 'VL_TB_FRACASSADO'
      Origin = 'MAPA_MEDICO_LINHA.VL_TB_FRACASSADO'
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHAVL_TB_REAPARECIDO: TIBStringField
      FieldName = 'VL_TB_REAPARECIDO'
      Origin = 'MAPA_MEDICO_LINHA.VL_TB_REAPARECIDO'
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHAVL_TB_SI: TIBStringField
      FieldName = 'VL_TB_SI'
      Origin = 'MAPA_MEDICO_LINHA.VL_TB_SI'
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHACD_UND_REF_TB: TIntegerField
      FieldName = 'CD_UND_REF_TB'
      Origin = 'MAPA_MEDICO_LINHA.CD_UND_REF_TB'
    end
    object TB_MAPA_MEDICO_LINHAVL_N: TIBStringField
      FieldName = 'VL_N'
      Origin = 'MAPA_MEDICO_LINHA.VL_N'
      OnValidate = TB_MAPA_MEDICO_LINHAVL_NValidate
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHAVL_I: TIBStringField
      FieldName = 'VL_I'
      Origin = 'MAPA_MEDICO_LINHA.VL_I'
      OnValidate = TB_MAPA_MEDICO_LINHAVL_IValidate
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHAVL_M: TIBStringField
      FieldName = 'VL_M'
      Origin = 'MAPA_MEDICO_LINHA.VL_M'
      OnValidate = TB_MAPA_MEDICO_LINHAVL_MValidate
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHAVL_T: TIBStringField
      FieldName = 'VL_T'
      Origin = 'MAPA_MEDICO_LINHA.VL_T'
      OnValidate = TB_MAPA_MEDICO_LINHAVL_TValidate
      Size = 10
    end
    object TB_MAPA_MEDICO_LINHAVL_TARV_PADRAO: TIBStringField
      FieldName = 'VL_TARV_PADRAO'
      Origin = 'MAPA_MEDICO_LINHA.VL_TARV_PADRAO'
      ReadOnly = True
    end
    object TB_MAPA_MEDICO_LINHAVL_PRESCRICAO_IONIZADA: TIBStringField
      FieldName = 'VL_PRESCRICAO_IONIZADA'
      Origin = 'MAPA_MEDICO_LINHA.VL_PRESCRICAO_IONIZADA'
    end
    object TB_MAPA_MEDICO_LINHAVL_PRESCRICAO_COTROMIXAZOL: TIBStringField
      FieldName = 'VL_PRESCRICAO_COTROMIXAZOL'
      Origin = 'MAPA_MEDICO_LINHA.VL_PRESCRICAO_COTROMIXAZOL'
    end
    object TB_MAPA_MEDICO_LINHACD_PACIENTE: TIntegerField
      FieldName = 'CD_PACIENTE'
      Origin = 'MAPA_MEDICO_LINHA.CD_PACIENTE'
    end
    object TB_MAPA_MEDICO_LINHACD_AGENDA: TIntegerField
      FieldName = 'CD_AGENDA'
      Origin = 'MAPA_MEDICO_LINHA.CD_AGENDA'
    end
    object TB_MAPA_MEDICO_LINHACODIGO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CODIGO'
      Calculated = True
    end
    object TB_MAPA_MEDICO_LINHAVL_NITM: TStringField
      FieldKind = fkCalculated
      FieldName = 'VL_NITM'
      Size = 15
      Calculated = True
    end
    object TB_MAPA_MEDICO_LINHAVL_CD4_PC: TIntegerField
      FieldName = 'VL_CD4_PC'
      Origin = 'MAPA_MEDICO_LINHA.VL_CD4_PC'
    end
    object TB_MAPA_MEDICO_LINHAVL_CD4_UC: TIntegerField
      FieldName = 'VL_CD4_UC'
      Origin = 'MAPA_MEDICO_LINHA.VL_CD4_UC'
    end
    object TB_MAPA_MEDICO_LINHAVL_ULTIMA_ESQUEMA: TIBStringField
      FieldName = 'VL_ULTIMA_ESQUEMA'
      Origin = 'MAPA_MEDICO_LINHA.VL_ULTIMA_ESQUEMA'
      ReadOnly = True
    end
    object TB_MAPA_MEDICO_LINHADT_PREV_GESTACAO: TDateField
      FieldName = 'DT_PREV_GESTACAO'
      Origin = 'MAPA_MEDICO_LINHA.DT_PREV_GESTACAO'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object TB_MAPA_MEDICO_LINHANR_MESES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NR_MESES'
      Calculated = True
    end
    object TB_MAPA_MEDICO_LINHAVL_RASTREIO_ITS: TIBStringField
      FieldName = 'VL_RASTREIO_ITS'
      Origin = 'MAPA_MEDICO_LINHA.VL_RASTREIO_ITS'
      Size = 10
    end
  end
  object dsMapaMedico: TDataSource
    AutoEdit = False
    DataSet = TB_MAPA_MEDICO
    Left = 736
    Top = 292
  end
  object qyPrimeiraConsulta: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      '    VL_CD4_PC'
      '    ,VL_ESTADIO_PC'
      '    ,VL_CV_PC'
      '    ,DT_PRIMEIRA_CONSULTA'
      'from MAPA_MEDICO_LINHA MML'
      'INNER JOIN mapa_medico MM'
      '    ON MM.CD_MAPA = MML.CD_MAPA'
      'where NR_PROCESSO = :NR_PROCESSO'
      'order by DT_MAPA asc')
    Left = 802
    Top = 302
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NR_PROCESSO'
        ParamType = ptUnknown
      end>
    object qyPrimeiraConsultaVL_ESTADIO_PC: TIBStringField
      FieldName = 'VL_ESTADIO_PC'
      Origin = 'MAPA_MEDICO_LINHA.VL_ESTADIO_PC'
      Size = 10
    end
    object qyPrimeiraConsultaVL_CV_PC: TIBStringField
      FieldName = 'VL_CV_PC'
      Origin = 'MAPA_MEDICO_LINHA.VL_CV_PC'
      Size = 10
    end
    object qyPrimeiraConsultaDT_PRIMEIRA_CONSULTA: TDateTimeField
      FieldName = 'DT_PRIMEIRA_CONSULTA'
      Origin = 'MAPA_MEDICO_LINHA.DT_PRIMEIRA_CONSULTA'
    end
    object qyPrimeiraConsultaVL_CD4_PC: TIntegerField
      FieldName = 'VL_CD4_PC'
      Origin = 'MAPA_MEDICO_LINHA.VL_CD4_PC'
    end
  end
  object qyUltimaConsulta: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select FIRST 1'
      '    VL_PRIMEIRO_ESQUEMA'
      '    ,VL_TARV_PADRAO'
      '    ,VL_RASTREIO_TB'
      '    ,VL_DIAGNOSTICO_TB'
      '    ,DT_MAPA'
      'from MAPA_MEDICO_LINHA'
      'join MAPA_MEDICO'
      '    on MAPA_MEDICO.CD_MAPA = MAPA_MEDICO_LINHA.CD_MAPA'
      'where NR_PROCESSO = :NR_PROCESSO'
      '    and CD_MAPA_LINHA < :CD_MAPA_LINHA'
      'order by DT_MAPA desc')
    Left = 802
    Top = 334
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NR_PROCESSO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CD_MAPA_LINHA'
        ParamType = ptUnknown
      end>
    object qyUltimaConsultaVL_PRIMEIRO_ESQUEMA: TIBStringField
      FieldName = 'VL_PRIMEIRO_ESQUEMA'
      Origin = 'MAPA_MEDICO_LINHA.VL_PRIMEIRO_ESQUEMA'
    end
    object qyUltimaConsultaVL_TARV_PADRAO: TIBStringField
      FieldName = 'VL_TARV_PADRAO'
      Origin = 'MAPA_MEDICO_LINHA.VL_TARV_PADRAO'
    end
    object qyUltimaConsultaVL_RASTREIO_TB: TIBStringField
      FieldName = 'VL_RASTREIO_TB'
      Origin = 'MAPA_MEDICO_LINHA.VL_RASTREIO_TB'
      Size = 10
    end
    object qyUltimaConsultaVL_DIAGNOSTICO_TB: TIBStringField
      FieldName = 'VL_DIAGNOSTICO_TB'
      Origin = 'MAPA_MEDICO_LINHA.VL_DIAGNOSTICO_TB'
      Size = 10
    end
    object qyUltimaConsultaDT_MAPA: TDateTimeField
      FieldName = 'DT_MAPA'
      Origin = 'MAPA_MEDICO.DT_MAPA'
    end
  end
  object qyAgenda: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      '  A.CD_AGENDA, '
      '  A.CD_MEDICO, '
      '  A.CD_PACIENTE, '
      '  A.DS_ESQUEMA, '
      '  A.DT_AGENDA, '
      '  A.FL_ESQUEMA, '
      '  A.TP_ESQUEMA, '
      '  A.VL_CD4,'
      '  P.NR_PROCESSO '
      'from AGENDA A'
      '   JOIN PACIENTE P ON'
      '   A.CD_PACIENTE = P.CD_PACIENTE'
      'where '
      ' A.CD_MEDICO = :CD_MEDICO'
      'and A.DT_AGENDA = :DT_AGENDA'
      'and A.FL_CONFIRMADO = 1'
      'and not exists (select CD_AGENDA'
      ' from  MAPA_MEDICO_LINHA'
      ' where CD_AGENDA = A.CD_AGENDA'
      'AND CD_MAPA = :CD_MAPA)'
      'order by DT_CONFIRMACAO asc')
    Left = 802
    Top = 262
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CD_MEDICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_AGENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CD_MAPA'
        ParamType = ptUnknown
      end>
    object qyAgendaCD_AGENDA: TIntegerField
      FieldName = 'CD_AGENDA'
      Origin = 'AGENDA.CD_AGENDA'
      Required = True
    end
    object qyAgendaCD_MEDICO: TIntegerField
      FieldName = 'CD_MEDICO'
      Origin = 'AGENDA.CD_MEDICO'
    end
    object qyAgendaCD_PACIENTE: TIntegerField
      FieldName = 'CD_PACIENTE'
      Origin = 'AGENDA.CD_PACIENTE'
    end
    object qyAgendaDS_ESQUEMA: TIBStringField
      FieldName = 'DS_ESQUEMA'
      Origin = 'AGENDA.DS_ESQUEMA'
      Size = 30
    end
    object qyAgendaDT_AGENDA: TDateTimeField
      FieldName = 'DT_AGENDA'
      Origin = 'AGENDA.DT_AGENDA'
    end
    object qyAgendaFL_ESQUEMA: TIntegerField
      FieldName = 'FL_ESQUEMA'
      Origin = 'AGENDA.FL_ESQUEMA'
    end
    object qyAgendaTP_ESQUEMA: TIntegerField
      FieldName = 'TP_ESQUEMA'
      Origin = 'AGENDA.TP_ESQUEMA'
    end
    object qyAgendaVL_CD4: TIntegerField
      FieldName = 'VL_CD4'
      Origin = 'AGENDA.VL_CD4'
    end
    object qyAgendaNR_PROCESSO: TIntegerField
      FieldName = 'NR_PROCESSO'
      Origin = 'PACIENTE.NR_PROCESSO'
    end
  end
  object qyExport: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    AfterScroll = qyExportAfterScroll
    BeforeOpen = qyExportBeforeOpen
    OnCalcFields = qyExportCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      '       '#39'TODOS'#39' TODOS'
      '      ,"MAPA_MEDICO_LINHA"."CD_MAPA_LINHA"'
      '      ,"MAPA_MEDICO_LINHA"."CD_MAPA"'
      '      ,"MAPA_MEDICO_LINHA"."NR_PROCESSO"'
      '      ,"MAPA_MEDICO_LINHA"."DT_CONSULTA"'
      '      ,"MAPA_MEDICO_LINHA"."TP_CONSULTA"'
      '      ,"MAPA_MEDICO_LINHA"."CD_PACIENTE"'
      '      ,"MAPA_MEDICO_LINHA"."NM_PACIENTE"'
      '      ,"MAPA_MEDICO_LINHA"."FL_SEXO"'
      '      ,"MAPA_MEDICO_LINHA"."NR_IDADE_ANOS"'
      '      ,"MAPA_MEDICO_LINHA"."NR_IDADE_MESES"'
      '      ,"MAPA_MEDICO_LINHA"."VL_GESTANTE"'
      '      ,"MAPA_MEDICO_LINHA"."DT_PRIMEIRA_CONSULTA"'
      '      ,"MAPA_MEDICO_LINHA"."VL_ESTADIO_PC"'
      '      ,"MAPA_MEDICO_LINHA"."VL_CD4_PC"'
      '      ,"MAPA_MEDICO_LINHA"."VL_CV_PC"'
      '      ,"MAPA_MEDICO_LINHA"."DT_PRIMEIRO_TARV"'
      '      ,"MAPA_MEDICO_LINHA"."VL_PRIMEIRO_ESQUEMA"'
      '      ,"MAPA_MEDICO_LINHA"."VL_ULTIMA_ESQUEMA"'
      '      ,"MAPA_MEDICO_LINHA"."DT_ULTIMA_CONSULTA"'
      '      ,"MAPA_MEDICO_LINHA"."VL_ESTADIO_UC"'
      '      ,"MAPA_MEDICO_LINHA"."VL_CD4_UC"'
      '      ,"MAPA_MEDICO_LINHA"."VL_CV_UC"'
      '      ,"MAPA_MEDICO_LINHA"."VL_RASTREIO_TB"'
      '      ,"MAPA_MEDICO_LINHA"."VL_RASTREIO_ITS"'
      '      ,"MAPA_MEDICO_LINHA"."VL_DIAGNOSTICO_TB"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TB_NOVO"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TB_RECAIDA"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TB_FRACASSADO"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TB_REAPARECIDO"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TB_SI"'
      '      ,"MAPA_MEDICO_LINHA"."CD_UND_REF_TB"'
      '      ,"MAPA_MEDICO_LINHA"."VL_N"'
      '      ,"MAPA_MEDICO_LINHA"."VL_I"'
      '      ,"MAPA_MEDICO_LINHA"."VL_M"'
      '      ,"MAPA_MEDICO_LINHA"."VL_T"'
      '      ,"MAPA_MEDICO_LINHA"."VL_TARV_PADRAO"'
      '      ,"MAPA_MEDICO_LINHA"."VL_PRESCRICAO_IONIZADA"'
      '      ,"MAPA_MEDICO_LINHA"."VL_PRESCRICAO_COTROMIXAZOL"'
      '      ,"MAPA_MEDICO_LINHA"."DT_ESTADIO_UC"'
      '      ,"MAPA_MEDICO_LINHA"."DT_CD4_UC"'
      '      ,"MAPA_MEDICO_LINHA"."DT_CV_UC"'
      '      ,"MAPA_MEDICO_LINHA"."CD_AGENDA"'
      '      ,"MAPA_MEDICO_LINHA"."DT_PREV_GESTACAO"'
      '      ,"MAPA_MEDICO"."CD_MAPA"'
      '      ,"MAPA_MEDICO"."CD_UNIDADE"'
      '      ,"MAPA_MEDICO"."DT_MAPA"'
      '      ,"MAPA_MEDICO"."CD_MEDICO"'
      '      ,"MEDICO"."NM_MEDICO"'
      'from "MAPA_MEDICO_LINHA"'
      ' inner join MAPA_MEDICO on'
      '    "MAPA_MEDICO_LINHA"."CD_MAPA" = "MAPA_MEDICO"."CD_MAPA"'
      '  inner join MEDICO on'
      '    "MAPA_MEDICO"."CD_MEDICO" = "MEDICO"."CD_MEDICO"'
      '/*CONDICAO*/'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 354
    Top = 294
    object qyExportNR_MESES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NR_MESES'
      Calculated = True
    end
    object qyExportTODOS: TIBStringField
      FieldName = 'TODOS'
      Required = True
      FixedChar = True
      Size = 5
    end
    object qyExportCD_MAPA_LINHA: TIntegerField
      FieldName = 'CD_MAPA_LINHA'
      Origin = 'MAPA_MEDICO_LINHA.CD_MAPA_LINHA'
      Required = True
    end
    object qyExportCD_MAPA: TIntegerField
      FieldName = 'CD_MAPA'
      Origin = 'MAPA_MEDICO_LINHA.CD_MAPA'
      Required = True
    end
    object qyExportNR_PROCESSO: TIBStringField
      FieldName = 'NR_PROCESSO'
      Origin = 'MAPA_MEDICO_LINHA.NR_PROCESSO'
      Size = 15
    end
    object qyExportDT_CONSULTA: TDateTimeField
      FieldName = 'DT_CONSULTA'
      Origin = 'MAPA_MEDICO_LINHA.DT_CONSULTA'
    end
    object qyExportTP_CONSULTA: TIntegerField
      FieldName = 'TP_CONSULTA'
      Origin = 'MAPA_MEDICO_LINHA.TP_CONSULTA'
    end
    object qyExportCD_PACIENTE: TIntegerField
      FieldName = 'CD_PACIENTE'
      Origin = 'MAPA_MEDICO_LINHA.CD_PACIENTE'
    end
    object qyExportNM_PACIENTE: TIBStringField
      FieldName = 'NM_PACIENTE'
      Origin = 'MAPA_MEDICO_LINHA.NM_PACIENTE'
      Size = 50
    end
    object qyExportFL_SEXO: TIBStringField
      FieldName = 'FL_SEXO'
      Origin = 'MAPA_MEDICO_LINHA.FL_SEXO'
      FixedChar = True
      Size = 1
    end
    object qyExportNR_IDADE_ANOS: TIntegerField
      FieldName = 'NR_IDADE_ANOS'
      Origin = 'MAPA_MEDICO_LINHA.NR_IDADE_ANOS'
    end
    object qyExportNR_IDADE_MESES: TIntegerField
      FieldName = 'NR_IDADE_MESES'
      Origin = 'MAPA_MEDICO_LINHA.NR_IDADE_MESES'
    end
    object qyExportVL_GESTANTE: TIBStringField
      FieldName = 'VL_GESTANTE'
      Origin = 'MAPA_MEDICO_LINHA.VL_GESTANTE'
      Size = 10
    end
    object qyExportDT_PRIMEIRA_CONSULTA: TDateTimeField
      FieldName = 'DT_PRIMEIRA_CONSULTA'
      Origin = 'MAPA_MEDICO_LINHA.DT_PRIMEIRA_CONSULTA'
    end
    object qyExportVL_ESTADIO_PC: TIBStringField
      FieldName = 'VL_ESTADIO_PC'
      Origin = 'MAPA_MEDICO_LINHA.VL_ESTADIO_PC'
      Size = 10
    end
    object qyExportVL_CD4_PC: TIntegerField
      FieldName = 'VL_CD4_PC'
      Origin = 'MAPA_MEDICO_LINHA.VL_CD4_PC'
    end
    object qyExportVL_CV_PC: TIBStringField
      FieldName = 'VL_CV_PC'
      Origin = 'MAPA_MEDICO_LINHA.VL_CV_PC'
      Size = 10
    end
    object qyExportDT_PRIMEIRO_TARV: TDateTimeField
      FieldName = 'DT_PRIMEIRO_TARV'
      Origin = 'MAPA_MEDICO_LINHA.DT_PRIMEIRO_TARV'
    end
    object qyExportVL_PRIMEIRO_ESQUEMA: TIBStringField
      FieldName = 'VL_PRIMEIRO_ESQUEMA'
      Origin = 'MAPA_MEDICO_LINHA.VL_PRIMEIRO_ESQUEMA'
    end
    object qyExportVL_ULTIMA_ESQUEMA: TIBStringField
      FieldName = 'VL_ULTIMA_ESQUEMA'
      Origin = 'MAPA_MEDICO_LINHA.VL_ULTIMA_ESQUEMA'
    end
    object qyExportDT_ULTIMA_CONSULTA: TDateTimeField
      FieldName = 'DT_ULTIMA_CONSULTA'
      Origin = 'MAPA_MEDICO_LINHA.DT_ULTIMA_CONSULTA'
    end
    object qyExportVL_ESTADIO_UC: TIBStringField
      FieldName = 'VL_ESTADIO_UC'
      Origin = 'MAPA_MEDICO_LINHA.VL_ESTADIO_UC'
      Size = 10
    end
    object qyExportVL_CD4_UC: TIntegerField
      FieldName = 'VL_CD4_UC'
      Origin = 'MAPA_MEDICO_LINHA.VL_CD4_UC'
    end
    object qyExportVL_CV_UC: TIBStringField
      FieldName = 'VL_CV_UC'
      Origin = 'MAPA_MEDICO_LINHA.VL_CV_UC'
      Size = 10
    end
    object qyExportVL_RASTREIO_TB: TIBStringField
      FieldName = 'VL_RASTREIO_TB'
      Origin = 'MAPA_MEDICO_LINHA.VL_RASTREIO_TB'
      Size = 10
    end
    object qyExportVL_DIAGNOSTICO_TB: TIBStringField
      FieldName = 'VL_DIAGNOSTICO_TB'
      Origin = 'MAPA_MEDICO_LINHA.VL_DIAGNOSTICO_TB'
      Size = 10
    end
    object qyExportVL_TB_NOVO: TIBStringField
      FieldName = 'VL_TB_NOVO'
      Origin = 'MAPA_MEDICO_LINHA.VL_TB_NOVO'
      Size = 10
    end
    object qyExportVL_TB_RECAIDA: TIBStringField
      FieldName = 'VL_TB_RECAIDA'
      Origin = 'MAPA_MEDICO_LINHA.VL_TB_RECAIDA'
      Size = 10
    end
    object qyExportVL_TB_FRACASSADO: TIBStringField
      FieldName = 'VL_TB_FRACASSADO'
      Origin = 'MAPA_MEDICO_LINHA.VL_TB_FRACASSADO'
      Size = 10
    end
    object qyExportVL_TB_REAPARECIDO: TIBStringField
      FieldName = 'VL_TB_REAPARECIDO'
      Origin = 'MAPA_MEDICO_LINHA.VL_TB_REAPARECIDO'
      Size = 10
    end
    object qyExportVL_TB_SI: TIBStringField
      FieldName = 'VL_TB_SI'
      Origin = 'MAPA_MEDICO_LINHA.VL_TB_SI'
      Size = 10
    end
    object qyExportCD_UND_REF_TB: TIntegerField
      FieldName = 'CD_UND_REF_TB'
      Origin = 'MAPA_MEDICO_LINHA.CD_UND_REF_TB'
    end
    object qyExportVL_N: TIBStringField
      FieldName = 'VL_N'
      Origin = 'MAPA_MEDICO_LINHA.VL_N'
      Size = 10
    end
    object qyExportVL_I: TIBStringField
      FieldName = 'VL_I'
      Origin = 'MAPA_MEDICO_LINHA.VL_I'
      Size = 10
    end
    object qyExportVL_M: TIBStringField
      FieldName = 'VL_M'
      Origin = 'MAPA_MEDICO_LINHA.VL_M'
      Size = 10
    end
    object qyExportVL_T: TIBStringField
      FieldName = 'VL_T'
      Origin = 'MAPA_MEDICO_LINHA.VL_T'
      Size = 10
    end
    object qyExportVL_TARV_PADRAO: TIBStringField
      FieldName = 'VL_TARV_PADRAO'
      Origin = 'MAPA_MEDICO_LINHA.VL_TARV_PADRAO'
    end
    object qyExportVL_PRESCRICAO_IONIZADA: TIBStringField
      FieldName = 'VL_PRESCRICAO_IONIZADA'
      Origin = 'MAPA_MEDICO_LINHA.VL_PRESCRICAO_IONIZADA'
    end
    object qyExportVL_PRESCRICAO_COTROMIXAZOL: TIBStringField
      FieldName = 'VL_PRESCRICAO_COTROMIXAZOL'
      Origin = 'MAPA_MEDICO_LINHA.VL_PRESCRICAO_COTROMIXAZOL'
    end
    object qyExportDT_ESTADIO_UC: TDateTimeField
      FieldName = 'DT_ESTADIO_UC'
      Origin = 'MAPA_MEDICO_LINHA.DT_ESTADIO_UC'
    end
    object qyExportDT_CD4_UC: TDateTimeField
      FieldName = 'DT_CD4_UC'
      Origin = 'MAPA_MEDICO_LINHA.DT_CD4_UC'
    end
    object qyExportDT_CV_UC: TDateTimeField
      FieldName = 'DT_CV_UC'
      Origin = 'MAPA_MEDICO_LINHA.DT_CV_UC'
    end
    object qyExportCD_AGENDA: TIntegerField
      FieldName = 'CD_AGENDA'
      Origin = 'MAPA_MEDICO_LINHA.CD_AGENDA'
    end
    object qyExportDT_PREV_GESTACAO: TDateField
      FieldName = 'DT_PREV_GESTACAO'
      Origin = 'MAPA_MEDICO_LINHA.DT_PREV_GESTACAO'
    end
    object qyExportCD_MAPA1: TIntegerField
      FieldName = 'CD_MAPA1'
      Origin = 'MAPA_MEDICO.CD_MAPA'
      Required = True
    end
    object qyExportCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'MAPA_MEDICO.CD_UNIDADE'
      Required = True
    end
    object qyExportDT_MAPA: TDateTimeField
      FieldName = 'DT_MAPA'
      Origin = 'MAPA_MEDICO.DT_MAPA'
    end
    object qyExportCD_MEDICO: TIntegerField
      FieldName = 'CD_MEDICO'
      Origin = 'MAPA_MEDICO.CD_MEDICO'
    end
    object qyExportNM_MEDICO: TIBStringField
      FieldName = 'NM_MEDICO'
      Origin = 'MEDICO.NM_MEDICO'
      Size = 50
    end
    object qyExportVL_RASTREIO_ITS: TIBStringField
      FieldName = 'VL_RASTREIO_ITS'
      Origin = 'MAPA_MEDICO_LINHA.VL_RASTREIO_ITS'
      Size = 10
    end
  end
  object dsExport: TDataSource
    AutoEdit = False
    DataSet = qyExport
    Left = 389
    Top = 293
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.xls'
    Filter = 'Excel|*.xls'
    Left = 280
    Top = 192
  end
  object qyCD4_Laboratorio: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1'
      #9'VL_RESULTADO,'
      #9'DT_RESULTADO'
      'from MAPA_LAB_PACIENTE'
      'WHERE'
      #9'NR_PROCESSO = :NR_PROCESSO'
      #9'AND TP_EXAME_CD4 = '#39'S'#39
      '                AND DT_RESULTADO <= :DT_MAPA'
      'order by DT_RESULTADO DESC')
    Left = 805
    Top = 373
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NR_PROCESSO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_MAPA'
        ParamType = ptUnknown
      end>
    object qyCD4_LaboratorioVL_RESULTADO: TIBStringField
      FieldName = 'VL_RESULTADO'
      Origin = 'MAPA_LAB_PACIENTE.VL_RESULTADO'
      Size = 50
    end
    object qyCD4_LaboratorioDT_RESULTADO: TDateTimeField
      FieldName = 'DT_RESULTADO'
      Origin = 'MAPA_LAB_PACIENTE.DT_RESULTADO'
    end
  end
  object qyCV_Laboratorio: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1'
      #9'VL_RESULTADO,'
      #9'DT_RESULTADO'
      'from MAPA_LAB_PACIENTE'
      'WHERE'
      #9'NR_PROCESSO = :NR_PROCESSO'
      #9'AND TP_EXAME_CV = '#39'S'#39
      '                AND DT_RESULTADO <= :DT_MAPA'
      'order by DT_RESULTADO DESC')
    Left = 805
    Top = 405
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NR_PROCESSO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_MAPA'
        ParamType = ptUnknown
      end>
    object qyCV_LaboratorioVL_RESULTADO: TIBStringField
      FieldName = 'VL_RESULTADO'
      Origin = 'MAPA_LAB_PACIENTE.VL_RESULTADO'
      Size = 50
    end
    object qyCV_LaboratorioDT_RESULTADO: TDateTimeField
      FieldName = 'DT_RESULTADO'
      Origin = 'MAPA_LAB_PACIENTE.DT_RESULTADO'
    end
  end
  object qyPrimeiroTarv: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select first 1'
      '    DT_PRIMEIRO_TARV'
      '    ,VL_PRIMEIRO_ESQUEMA'
      'from MAPA_MEDICO_LINHA MML'
      'INNER JOIN MAPA_MEDICO MM'
      '    ON MM.CD_MAPA = MML.CD_MAPA'
      'where'
      '    NR_PROCESSO = :NR_PROCESSO'
      '    and DT_PRIMEIRO_TARV is not null'
      '    and VL_PRIMEIRO_ESQUEMA is not null'
      'order by DT_MAPA asc')
    Left = 805
    Top = 437
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NR_PROCESSO'
        ParamType = ptUnknown
      end>
    object qyPrimeiroTarvDT_PRIMEIRO_TARV: TDateTimeField
      FieldName = 'DT_PRIMEIRO_TARV'
      Origin = 'MAPA_MEDICO_LINHA.DT_PRIMEIRO_TARV'
    end
    object qyPrimeiroTarvVL_PRIMEIRO_ESQUEMA: TIBStringField
      FieldName = 'VL_PRIMEIRO_ESQUEMA'
      Origin = 'MAPA_MEDICO_LINHA.VL_PRIMEIRO_ESQUEMA'
    end
  end
  object qyConfereAgendamento: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select                          '
      #9' CD_AGENDA                     '
      'from AGENDA                     '
      'where CD_PACIENTE =:PACIENTE    '
      'and DT_AGENDA in (              '
      '  select DT_AGENDA              '
      '  from AGENDA                   '
      '  where CD_PACIENTE =:PACIENTE  '
      '  and DT_AGENDA < :DATA         '
      '  and CD_MEDICO = :CD_MEDICO)   '
      'order by dt_agenda desc'#9#9)
    Left = 805
    Top = 469
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PACIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PACIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CD_MEDICO'
        ParamType = ptUnknown
      end>
    object qyConfereAgendamentoCD_AGENDA: TIntegerField
      FieldName = 'CD_AGENDA'
      Origin = 'AGENDA.CD_AGENDA'
      Required = True
    end
  end
end
