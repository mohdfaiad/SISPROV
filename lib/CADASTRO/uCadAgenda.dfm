inherited frmCadAgenda: TfrmCadAgenda
  Left = 74
  Top = 90
  Caption = 'Agenda do Utente'
  ClientHeight = 561
  ClientWidth = 1028
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPadrao: TStatusBar
    Top = 542
    Width = 1028
  end
  inherited Panel1: TPanel
    Width = 1028
    inherited btPesquisar: TBitBtn
      OnClick = btPesquisarClick
    end
    inherited btgravar: TBitBtn
      Top = 2
      Height = 46
    end
    inherited btimprimir: TBitBtn
      PopupMenu = PopupMenu2
    end
    inherited btfechar: TBitBtn
      Left = 1115
    end
  end
  inherited Panel2: TPanel
    Width = 1028
    Height = 490
    inherited pgGeral: TPageControl
      Width = 1026
      Height = 488
      inherited tabLista: TTabSheet
        OnShow = tabListaShow
        inherited Panel3: TPanel
          Width = 1018
          Height = 460
          inherited grDados: TdxDBGrid
            Width = 1016
            Height = 458
            KeyField = 'CD_AGENDA'
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <
                  item
                    ColumnName = 'grDadosNM_PACIENTE'
                    SummaryField = 'NM_PACIENTE'
                    SummaryFormat = '(TOTAL=0)'
                    SummaryType = cstCount
                  end>
                Name = 'grDadosSummaryGroup1'
              end>
            Filter.Criteria = {00000000}
            GroupPanelColor = 12615680
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
            ShowRowFooter = True
            object grDadosNM_MEDICO: TdxDBGridMaskColumn
              Caption = 'M'#233'dico'
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NM_MEDICO'
            end
            object grDadosNM_PACIENTE: TdxDBGridMaskColumn
              Caption = 'Nome do Utente'
              Width = 131
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NM_PACIENTE'
            end
            object grDadosColumn7: TdxDBGridColumn
              Caption = 'Nr. Processo'
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NR_PROCESSO'
            end
            object grDadosNrCriancaExp: TdxDBGridColumn
              Caption = 'Nr. Proc. Crian'#231'a Exp.'
              ReadOnly = True
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NR_PROCESSO_CRIANCA_EXP'
            end
            object grDadosColumn12: TdxDBGridColumn
              Caption = 'Nr.Lab'
              Width = 57
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NR_LAB'
            end
            object grDadosDT_AGENDA: TdxDBGridDateColumn
              Caption = 'Data'
              Width = 42
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DT_AGENDA'
            end
            object grDadosVL_CD4: TdxDBGridMaskColumn
              Caption = 'CD4'
              Width = 49
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VL_CD4'
            end
            object grDadosColumn6: TdxDBGridColumn
              Caption = 'Esquema'
              Width = 80
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DS_ESQUEMA'
            end
            object grDadosDS_UNIDADE: TdxDBGridMaskColumn
              Caption = 'Unidade'
              Width = 75
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DS_UNIDADE'
            end
            object grDadosColumn8: TdxDBGridColumn
              Caption = 'Confirmado'
              Width = 62
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CONFIRMADO'
            end
            object grDadosColumn9: TdxDBGridColumn
              Caption = 'Realizado'
              Width = 57
              BandIndex = 0
              RowIndex = 0
              FieldName = 'REALIZADO'
            end
            object grDadosColumn10: TdxDBGridColumn
              Caption = 'Remarcado'
              Width = 61
              BandIndex = 0
              RowIndex = 0
              FieldName = 'REMARCADO'
            end
            object grDadosColumn11: TdxDBGridColumn
              Caption = 'Transferido'
              Width = 59
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TRANSFERIDO'
            end
            object grDadosColumn16: TdxDBGridColumn
              Caption = 'Sexo'
              Width = 30
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TP_SEXO'
            end
            object grDadosColumn13: TdxDBGridColumn
              Caption = 'Idade'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IDADE'
            end
            object grDadosColumn15: TdxDBGridDateColumn
              Caption = 'Nascimento'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DT_NASCIMENTO'
            end
            object grDadosColumn14: TdxDBGridColumn
              Caption = 'Telefone'
              Width = 149
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NR_TEL'
            end
          end
        end
      end
      inherited tabGeral: TTabSheet
        Caption = 'Geral'
        inherited Panel4: TPanel
          Width = 1018
          Height = 460
          BevelInner = bvNone
          object pgDados: TPageControl
            Left = 228
            Top = 0
            Width = 790
            Height = 460
            ActivePage = tbagendamento
            Align = alClient
            TabOrder = 0
            OnChange = pgDadosChange
            OnChanging = pgDadosChanging
            object tblista: TTabSheet
              Caption = 'Lista'
              object grAgenda: TdxDBGrid
                Left = 0
                Top = 0
                Width = 782
                Height = 432
                Bands = <
                  item
                    Caption = 'Agendamentos do dia'
                    Width = 912
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'CD_AGENDA'
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
                TabOrder = 0
                OnDblClick = grAgendaDblClick
                BandColor = 8404992
                BandFont.Charset = DEFAULT_CHARSET
                BandFont.Color = clWhite
                BandFont.Height = -13
                BandFont.Name = 'MS Sans Serif'
                BandFont.Style = [fsBold]
                DataSource = dsControle
                Filter.Criteria = {00000000}
                GroupPanelColor = 12615680
                HeaderColor = 15983825
                HeaderFont.Charset = DEFAULT_CHARSET
                HeaderFont.Color = clWindowText
                HeaderFont.Height = -11
                HeaderFont.Name = 'MS Sans Serif'
                HeaderFont.Style = []
                OptionsBehavior = [edgoAnsiSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
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
                object dxDBGridMaskColumn11: TdxDBGridMaskColumn
                  Caption = 'M'#233'dico'
                  Sorted = csUp
                  Visible = False
                  Width = 104
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NM_MEDICO'
                  SummaryFooterType = cstCount
                  SummaryFooterField = 'CD_PACIENTE'
                  SummaryFooterFormat = '(Total 0)'
                  GroupIndex = 0
                  SummaryType = cstCount
                  SummaryField = 'CD_PACIENTE'
                  SummaryFormat = '(Total 0)'
                end
                object dxDBGridMaskColumn20: TdxDBGridMaskColumn
                  Caption = 'Nome do Utente'
                  Sorted = csUp
                  Visible = False
                  Width = 155
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NM_PACIENTE'
                  GroupIndex = 1
                end
                object grAgendaColumn10: TdxDBGridColumn
                  Caption = 'Nr. Processo'
                  Width = 45
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NR_PROCESSO'
                end
                object grAgendaColumn13: TdxDBGridColumn
                  Caption = 'Nr.Lab'
                  Width = 59
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NR_LAB'
                end
                object dxDBGridMaskColumn12: TdxDBGridMaskColumn
                  Caption = 'CD4'
                  Width = 78
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'VL_CD4'
                end
                object dxDBGridColumn2: TdxDBGridColumn
                  Caption = 'Esquema'
                  Width = 117
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DS_ESQUEMA'
                end
                object grAgendaColumn9: TdxDBGridMaskColumn
                  Caption = 'Agendamento'
                  Width = 89
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DT_AGENDA'
                end
                object dxDBGridMaskColumn17: TdxDBGridMaskColumn
                  Caption = 'Remarcado'
                  Width = 78
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DS_REMARCADO'
                end
                object dxDBGridMaskColumn18: TdxDBGridMaskColumn
                  Caption = 'Realizado'
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DS_REALIZADO'
                end
                object grAgendaColumn8: TdxDBGridColumn
                  Visible = False
                  Width = 62
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CD_AGENDA'
                end
                object grAgendaColumn11: TdxDBGridColumn
                  Caption = 'Confirmado'
                  Width = 76
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DS_CONFIRMADO'
                end
                object grAgendaColumn12: TdxDBGridColumn
                  Caption = 'Transferido'
                  Width = 76
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DS_TRANSFERIDO'
                end
                object grAgendaColumn14: TdxDBGridColumn
                  Caption = 'Sexo'
                  Width = 44
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TP_SEXO'
                end
                object grAgendaColumn15: TdxDBGridColumn
                  Caption = 'Nasc.'
                  Width = 69
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DT_NASCIMENTO'
                end
                object grAgendaColumn16: TdxDBGridDateColumn
                  Caption = 'Tel.'
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NR_TEL'
                end
              end
            end
            object tbagendamento: TTabSheet
              Caption = 'Agendamento'
              ImageIndex = 1
              object ScrollBox1: TScrollBox
                Left = 0
                Top = 0
                Width = 782
                Height = 432
                HorzScrollBar.Range = 587
                VertScrollBar.Range = 600
                Align = alClient
                AutoScroll = False
                TabOrder = 0
                object Panel10: TPanel
                  Left = 0
                  Top = 0
                  Width = 587
                  Height = 595
                  BevelOuter = bvNone
                  TabOrder = 0
                  object GroupBox1: TGroupBox
                    Left = 0
                    Top = 0
                    Width = 587
                    Height = 35
                    Align = alTop
                    TabOrder = 0
                    object Label1: TLabel
                      Left = 5
                      Top = 15
                      Width = 75
                      Height = 13
                      Caption = 'Atendimento:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label31: TLabel
                      Left = 80
                      Top = 12
                      Width = 9
                      Height = 24
                      Caption = '*'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -19
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label30: TLabel
                      Left = 454
                      Top = 13
                      Width = 51
                      Height = 13
                      Caption = 'Nr. Lab.:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                      Visible = False
                    end
                    object btLocMedico: TdxDBButtonEdit
                      Left = 91
                      Top = 10
                      Width = 50
                      Hint = '(F5) Localizar'
                      Enabled = False
                      ParentShowHint = False
                      ShowHint = True
                      Style.ButtonStyle = bts3D
                      TabOrder = 0
                      OnExit = btLocMedicoExit
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
                      Left = 142
                      Top = 10
                      Width = 301
                      Color = cl3DLight
                      TabOrder = 1
                      TabStop = False
                      DataField = 'NM_MEDICO'
                      DataSource = dsControle
                      ReadOnly = True
                      StoredValues = 64
                    end
                    object dxDBEdit16: TdxDBEdit
                      Left = 512
                      Top = 9
                      Width = 69
                      Color = cl3DLight
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 2
                      Visible = False
                      DataField = 'NR_LAB'
                      DataSource = dsControle
                      ReadOnly = True
                      StoredValues = 64
                    end
                  end
                  inline framPaciente1: TframPaciente
                    Left = 0
                    Top = 35
                    Width = 587
                    Height = 415
                    Align = alTop
                    AutoScroll = False
                    AutoSize = True
                    TabOrder = 1
                    inherited GroupBox1: TGroupBox
                      Left = 1
                      Top = 356
                      Width = 587
                      Height = 59
                    end
                    inherited GroupBox2: TGroupBox
                      Left = 1
                      Top = 0
                      Width = 587
                      Height = 356
                      inherited Label5: TLabel
                        Top = 49
                      end
                      inherited SpeedButton2: TSpeedButton
                        OnClick = framPaciente1SpeedButton2Click
                      end
                      inherited RxDBComboBox2: TRxDBComboBox
                        Width = 140
                      end
                      inherited DBDateEdit3: TDBDateEdit
                        OnExit = framPaciente1DBDateEdit3Exit
                      end
                      inherited dxDBEdit2: TdxDBEdit
                        OnExit = framPaciente1dxDBEdit2Exit
                      end
                      inherited dxDBEdit3: TdxDBEdit
                        OnExit = framPaciente1dxDBEdit3Exit
                      end
                      inherited dxDBEdit5: TdxDBEdit
                        OnExit = framPaciente1dxDBEdit5Exit
                      end
                      inherited btLocProvincia: TdxDBButtonEdit
                        StoredValues = 64
                        ExistButtons = True
                      end
                      inherited btLocMunicipio: TdxDBButtonEdit
                        StoredValues = 64
                        ExistButtons = True
                      end
                      inherited btLocProvinciaMor: TdxDBButtonEdit
                        StoredValues = 64
                        ExistButtons = True
                      end
                      inherited btLocMunicipioMor: TdxDBButtonEdit
                        StoredValues = 64
                        ExistButtons = True
                      end
                      inherited btLocPais: TdxDBButtonEdit
                        StoredValues = 64
                        ExistButtons = True
                      end
                      inherited btLocOcupacao: TdxDBButtonEdit
                        StoredValues = 64
                        ExistButtons = True
                      end
                      inherited dxDBEdit9: TdxDBEdit
                        StoredValues = 64
                      end
                      inherited dxDBEdit10: TdxDBEdit
                        StoredValues = 64
                      end
                      inherited dxDBEdit11: TdxDBEdit
                        StoredValues = 64
                      end
                      inherited dxDBEdit12: TdxDBEdit
                        StoredValues = 64
                      end
                      inherited dxDBEdit13: TdxDBEdit
                        StoredValues = 64
                      end
                      inherited dxDBEdit14: TdxDBEdit
                        StoredValues = 64
                      end
                      inherited pendereco: TPanel
                        inherited Panel1: TPanel
                          inherited dxDBMemo1: TdxDBMemo
                            Height = 54
                          end
                        end
                      end
                      inherited dxDBEdit16: TdxDBEdit
                        OnExit = framPaciente1dxDBEdit16Exit
                        OnChange = framPaciente1dxDBEdit16Change
                      end
                      inherited pdica: TSecretPanel
                        Left = 100
                        Top = 8
                      end
                      inherited pcriancaexp: TPanel
                        inherited dxDBEdit17: TdxDBEdit
                          StoredValues = 64
                        end
                      end
                    end
                  end
                  object GroupBox2: TGroupBox
                    Left = 0
                    Top = 450
                    Width = 587
                    Height = 37
                    Align = alTop
                    TabOrder = 2
                    object Label2: TLabel
                      Left = 6
                      Top = 16
                      Width = 193
                      Height = 13
                      Caption = 'Unidade Sanit'#225'ria da Notifica'#231#227'o:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label6: TLabel
                      Left = 200
                      Top = 13
                      Width = 9
                      Height = 24
                      Caption = '*'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clRed
                      Font.Height = -19
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object btLocUnidade: TdxDBButtonEdit
                      Left = 211
                      Top = 11
                      Width = 71
                      Hint = '(F5) Localizar Pais'
                      Enabled = False
                      ParentShowHint = False
                      ShowHint = True
                      Style.ButtonStyle = bts3D
                      TabOrder = 0
                      OnExit = btLocUnidadeExit
                      DataField = 'CD_UNIDADE'
                      DataSource = framPaciente1.dsPaciente
                      ReadOnly = False
                      OnChange = btLocUnidadeChange
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
                      OnButtonClick = btLocUnidadeButtonClick
                      StoredValues = 64
                      ExistButtons = True
                    end
                    object edUnidade: TdxDBEdit
                      Left = 282
                      Top = 11
                      Width = 299
                      Color = cl3DLight
                      TabOrder = 1
                      TabStop = False
                      DataField = 'DS_UNIDADE'
                      DataSource = framPaciente1.dsPaciente
                      ReadOnly = True
                      StoredValues = 64
                    end
                  end
                  object GroupBox3: TGroupBox
                    Left = 0
                    Top = 487
                    Width = 587
                    Height = 108
                    Align = alBottom
                    TabOrder = 3
                    object Label3: TLabel
                      Left = 8
                      Top = 64
                      Width = 73
                      Height = 13
                      Caption = 'CD4...........:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label5: TLabel
                      Left = 462
                      Top = 70
                      Width = 103
                      Height = 13
                      Caption = 'Data Remarca'#231#227'o'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label4: TLabel
                      Left = 8
                      Top = 41
                      Width = 72
                      Height = 13
                      Caption = 'Esquema....:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object SpeedButton4: TSpeedButton
                      Left = 81
                      Top = 9
                      Width = 156
                      Height = 22
                      Caption = 'Montar Esquema'
                      Glyph.Data = {
                        76010000424D7601000000000000760000002800000020000000100000000100
                        04000000000000010000130B0000130B00001000000000000000000000000000
                        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                        3333777777777777333333399033333333333337773333333333333903333333
                        3333333773333333333333303333333333333337333333333333}
                      NumGlyphs = 2
                      Visible = False
                      OnClick = SpeedButton4Click
                    end
                    object SpeedButton3: TSpeedButton
                      Left = 240
                      Top = 9
                      Width = 146
                      Height = 22
                      Caption = 'Limpar campo'
                      Glyph.Data = {
                        76010000424D7601000000000000760000002800000020000000100000000100
                        04000000000000010000120B0000120B00001000000000000000000000000000
                        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
                        555557777F777555F55500000000555055557777777755F75555005500055055
                        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
                        5555577FF77577FF555555005050110555555577F757777FF555555505099910
                        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
                        3055577F75F77777575F55005055090B030555775755777575755555555550B0
                        B03055555F555757575755550555550B0B335555755555757555555555555550
                        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
                        50BB555555555555575F555555555555550B5555555555555575}
                      NumGlyphs = 2
                      Visible = False
                      OnClick = SpeedButton3Click
                    end
                    object dxDBEdit1: TdxDBEdit
                      Left = 82
                      Top = 59
                      Width = 121
                      TabOrder = 0
                      DataField = 'VL_CD4'
                      DataSource = dsControle
                    end
                    object dbRemarcacao: TDBDateEdit
                      Left = 462
                      Top = 84
                      Width = 121
                      Height = 21
                      TabStop = False
                      DataField = 'DT_REMARCACAO'
                      DataSource = dsControle
                      ReadOnly = True
                      Color = cl3DLight
                      NumGlyphs = 2
                      TabOrder = 3
                    end
                    object DBCheckBox1: TDBCheckBox
                      Left = 489
                      Top = 12
                      Width = 89
                      Height = 17
                      Alignment = taLeftJustify
                      BiDiMode = bdLeftToRight
                      Caption = 'Confirmado.:'
                      DataField = 'FL_CONFIRMADO'
                      DataSource = dsControle
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBiDiMode = False
                      ParentFont = False
                      TabOrder = 2
                      ValueChecked = '1'
                      ValueUnchecked = '0'
                    end
                    object dxDBButtonEdit1: TdxDBButtonEdit
                      Left = 82
                      Top = 33
                      Width = 305
                      Color = cl3DLight
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      Style.ButtonStyle = bts3D
                      TabOrder = 1
                      Visible = False
                      DataField = 'DS_ESQUEMA'
                      DataSource = dsControle
                      ReadOnly = True
                      Buttons = <>
                      ClickKey = 0
                      OnButtonClick = dxDBButtonEdit1ButtonClick
                      StoredValues = 64
                    end
                    object DBCheckBox2: TDBCheckBox
                      Left = 222
                      Top = 62
                      Width = 166
                      Height = 17
                      Alignment = taLeftJustify
                      BiDiMode = bdLeftToRight
                      Caption = 'N'#227'o faz uso de Esquema.:'
                      DataField = 'FL_ESQUEMA'
                      DataSource = dsControle
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentBiDiMode = False
                      ParentFont = False
                      TabOrder = 4
                      ValueChecked = '1'
                      ValueUnchecked = '0'
                    end
                    object DBLookupComboBox1: TDBLookupComboBox
                      Left = 82
                      Top = 35
                      Width = 246
                      Height = 21
                      DataField = 'DS_ESQUEMA'
                      DataSource = dsControle
                      KeyField = 'DS_SIGLA'
                      ListField = 'DS_SIGLA'
                      ListSource = dsEsquema
                      TabOrder = 5
                    end
                  end
                end
              end
            end
            object tabAgendaMedico: TTabSheet
              Caption = 'Agenda Medico'
              ImageIndex = 2
              TabVisible = False
              object lbPeriodo: TLabel
                Left = 64
                Top = 286
                Width = 74
                Height = 13
                Caption = '< 16 Utentes'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Shape1: TShape
                Left = 48
                Top = 287
                Width = 13
                Height = 13
                Brush.Color = 9292847
              end
              object Label9: TLabel
                Left = 64
                Top = 302
                Width = 74
                Height = 13
                Caption = '> 16 Utentes'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Shape2: TShape
                Left = 48
                Top = 303
                Width = 13
                Height = 13
                Brush.Color = 8421631
              end
              object Label10: TLabel
                Left = 64
                Top = 318
                Width = 68
                Height = 13
                Caption = 'N'#227'o Atende'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Shape3: TShape
                Left = 48
                Top = 319
                Width = 13
                Height = 13
                Brush.Color = 10921638
              end
              object Label11: TLabel
                Left = 12
                Top = 350
                Width = 142
                Height = 13
                Caption = 'Per'#237'odo de Atendimento:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Shape4: TShape
                Left = 48
                Top = 367
                Width = 13
                Height = 13
                Brush.Color = clYellow
              end
              object Shape5: TShape
                Left = 48
                Top = 383
                Width = 13
                Height = 13
                Brush.Color = clBlue
              end
              object Shape6: TShape
                Left = 48
                Top = 399
                Width = 13
                Height = 13
                Brush.Color = clFuchsia
              end
              object Label7: TLabel
                Left = 64
                Top = 366
                Width = 39
                Height = 13
                Caption = 'Manha'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label12: TLabel
                Left = 64
                Top = 382
                Width = 34
                Height = 13
                Caption = 'Tarde'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 64
                Top = 398
                Width = 87
                Height = 13
                Caption = 'Manha e Tarde'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Label13DblClick
              end
              object Label14: TLabel
                Left = 12
                Top = 270
                Width = 115
                Height = 13
                Caption = 'Utentes agendados:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Shape7: TShape
                Left = 48
                Top = 415
                Width = 13
                Height = 13
                Brush.Color = clAqua
              end
              object Label15: TLabel
                Left = 64
                Top = 414
                Width = 46
                Height = 13
                Caption = 'Triagem'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                OnDblClick = Label13DblClick
              end
              object sgCalendario: TStringGrid
                Left = 0
                Top = 35
                Width = 363
                Height = 225
                ColCount = 7
                DefaultColWidth = 50
                DefaultRowHeight = 30
                FixedCols = 0
                RowCount = 7
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
                TabOrder = 0
                OnClick = sgCalendarioClick
                OnDrawCell = sgCalendarioDrawCell
                OnSelectCell = sgCalendarioSelectCell
                ColWidths = (
                  50
                  50
                  50
                  50
                  50
                  50
                  50)
              end
              object DBLookupListBox1: TDBLookupListBox
                Left = 364
                Top = 4
                Width = 260
                Height = 459
                KeyField = 'CD_MEDICO'
                ListField = 'NM_MEDICO'
                ListSource = dsMedico
                TabOrder = 1
                OnClick = DBLookupListBox1Click
              end
              object SecretPanel1: TSecretPanel
                Left = 2
                Top = 4
                Width = 358
                Height = 27
                Lines.Strings = (
                  'Janeiro 2012')
                TextStyle = bvRaised
                Color = clMaroon
                TabOrder = 2
                object SpeedButton1: TSpeedButton
                  Left = 4
                  Top = 4
                  Width = 20
                  Height = 19
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                    33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
                    00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
                    70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
                    70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
                    70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
                    70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
                    70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
                    00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
                  Margin = 0
                  NumGlyphs = 2
                  OnClick = SpeedButton1Click
                end
                object SpeedButton2: TSpeedButton
                  Left = 335
                  Top = 4
                  Width = 19
                  Height = 19
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                    33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
                    00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
                    70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
                    70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
                    70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
                    70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
                    70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
                    00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
                  NumGlyphs = 2
                  OnClick = SpeedButton2Click
                end
                object Label8: TLabel
                  Left = 27
                  Top = 6
                  Width = 302
                  Height = 13
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Janeiro 2012'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
              end
              object DBGrid1: TDBGrid
                Left = 176
                Top = 272
                Width = 177
                Height = 169
                DataSource = DataSource1
                TabOrder = 3
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Visible = False
              end
            end
            object tabMapa: TTabSheet
              Caption = 'Mapa'
              ImageIndex = 3
              TabVisible = False
              object wbMapa: TWebBrowser
                Left = 0
                Top = 29
                Width = 739
                Height = 368
                Align = alClient
                TabOrder = 0
                ControlData = {
                  4C000000614C0000092600000000000000000000000000000000000000000000
                  000000004C000000000000000000000001000000E0D057007335CF11AE690800
                  2B2E12620C000000000000004C0000000114020000000000C000000000000046
                  8000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000100000000000000000000000000000000000000}
              end
              object ToolBar1: TToolBar
                Left = 0
                Top = 0
                Width = 739
                Height = 29
                Caption = 'ToolBar1'
                Images = ImageList1
                TabOrder = 1
                object ToolButton3: TToolButton
                  Left = 0
                  Top = 2
                  Width = 8
                  Caption = 'ToolButton3'
                  ImageIndex = 2
                  Style = tbsSeparator
                end
                object tbPgAnt: TToolButton
                  Left = 8
                  Top = 2
                  Hint = 'Pagina Anterior'
                  Caption = 'tbPgAnt'
                  ImageIndex = 0
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = tbPgAntClick
                end
                object tbPagPrx: TToolButton
                  Left = 31
                  Top = 2
                  Hint = 'Proxima Pagina'
                  Caption = 'tbPagPrx'
                  ImageIndex = 1
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = tbPagPrxClick
                end
              end
            end
            object tabExames: TTabSheet
              Caption = 'Exames'
              ImageIndex = 4
              TabVisible = False
              OnShow = tabExamesShow
              object GroupBox4: TGroupBox
                Left = 0
                Top = 0
                Width = 782
                Height = 91
                Align = alTop
                TabOrder = 0
                object Label16: TLabel
                  Left = 606
                  Top = 9
                  Width = 71
                  Height = 13
                  Caption = 'N'#186' Laborat'#243'rio:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText1: TDBText
                  Left = 608
                  Top = 57
                  Width = 80
                  Height = 24
                  AutoSize = True
                  DataField = 'CALC_STATUS'
                  DataSource = dsControle
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -19
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBText2: TDBText
                  Left = 26
                  Top = 10
                  Width = 80
                  Height = 24
                  AutoSize = True
                  DataField = 'NM_PACIENTE'
                  DataSource = dsControle
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -19
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object CheckListBox1: TCheckListBox
                  Left = 210
                  Top = 48
                  Width = 337
                  Height = 33
                  ItemHeight = 13
                  Items.Strings = (
                    'Plasmodium'
                    'BK')
                  TabOrder = 0
                  Visible = False
                end
                object edNrLab: TdxDBEdit
                  Left = 605
                  Top = 25
                  Width = 103
                  Color = cl3DLight
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  DataField = 'NR_LAB'
                  DataSource = dsControle
                end
                object btConfirmar: TBitBtn
                  Left = 209
                  Top = 16
                  Width = 92
                  Height = 25
                  Caption = 'Confirmar'
                  Default = True
                  TabOrder = 2
                  Visible = False
                  OnClick = btConfirmarClick
                  Glyph.Data = {
                    DE010000424DDE01000000000000760000002800000024000000120000000100
                    0400000000006801000000000000000000001000000000000000000000000000
                    80000080000000808000800000008000800080800000C0C0C000808080000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                    3333333333333333333333330000333333333333333333333333F33333333333
                    00003333344333333333333333388F3333333333000033334224333333333333
                    338338F3333333330000333422224333333333333833338F3333333300003342
                    222224333333333383333338F3333333000034222A22224333333338F338F333
                    8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                    33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                    0000333333333A222433333333333338F338F33300003333333333A222433333
                    333333338F338F33000033333333333A222433333333333338F338F300003333
                    33333333A222433333333333338F338F00003333333333333A22433333333333
                    3338F38F000033333333333333A223333333333333338F830000333333333333
                    333A333333333333333338330000333333333333333333333333333333333333
                    0000}
                  NumGlyphs = 2
                end
                object ckRX: TDBCheckBox
                  Left = 26
                  Top = 48
                  Width = 91
                  Height = 16
                  Caption = 'Exame RX'
                  DataField = 'FL_RX'
                  DataSource = dsControle
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object ckLab: TDBCheckBox
                  Left = 26
                  Top = 64
                  Width = 123
                  Height = 16
                  Caption = 'Exame Laborat'#243'rio'
                  DataField = 'FL_LAB'
                  DataSource = dsControle
                  TabOrder = 4
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
              object GroupBox5: TGroupBox
                Left = 0
                Top = 91
                Width = 782
                Height = 341
                Align = alClient
                TabOrder = 1
                object GroupBox6: TGroupBox
                  Left = 11
                  Top = 16
                  Width = 305
                  Height = 177
                  Caption = 'BIOQUIMICA'
                  TabOrder = 0
                  object CheckBox1: TCheckBox
                    Tag = 1
                    Left = 16
                    Top = 24
                    Width = 133
                    Height = 17
                    Caption = #193'cido '#218'rico (mg/dl)'
                    TabOrder = 0
                  end
                  object CheckBox2: TCheckBox
                    Tag = 2
                    Left = 16
                    Top = 40
                    Width = 133
                    Height = 17
                    Caption = 'Ureia (mg/dl)'
                    TabOrder = 1
                  end
                  object CheckBox3: TCheckBox
                    Tag = 3
                    Left = 16
                    Top = 56
                    Width = 133
                    Height = 17
                    Caption = 'Creatinina (mg/dl)'
                    TabOrder = 2
                  end
                  object CheckBox4: TCheckBox
                    Tag = 4
                    Left = 16
                    Top = 72
                    Width = 133
                    Height = 17
                    Caption = 'Colest Total (mg/dl)'
                    TabOrder = 3
                  end
                  object CheckBox5: TCheckBox
                    Tag = 5
                    Left = 16
                    Top = 88
                    Width = 133
                    Height = 17
                    Caption = 'HDL - Col (mg/dl)'
                    TabOrder = 4
                  end
                  object CheckBox6: TCheckBox
                    Tag = 6
                    Left = 16
                    Top = 104
                    Width = 133
                    Height = 17
                    Caption = 'LDL - Col (mg/dl)'
                    TabOrder = 5
                  end
                  object CheckBox7: TCheckBox
                    Tag = 7
                    Left = 16
                    Top = 120
                    Width = 133
                    Height = 17
                    Caption = 'Triglic (mg/dl)'
                    TabOrder = 6
                  end
                  object CheckBox8: TCheckBox
                    Tag = 8
                    Left = 16
                    Top = 136
                    Width = 133
                    Height = 17
                    Caption = 'AST (TGO) (U/L)'
                    TabOrder = 7
                  end
                  object CheckBox9: TCheckBox
                    Tag = 9
                    Left = 16
                    Top = 152
                    Width = 133
                    Height = 17
                    Caption = 'ALT (TGO) (U/L)'
                    TabOrder = 8
                  end
                  object CheckBox10: TCheckBox
                    Tag = 10
                    Left = 152
                    Top = 24
                    Width = 133
                    Height = 17
                    Caption = 'Bilir Dir (mg/dl)'
                    TabOrder = 9
                  end
                  object CheckBox11: TCheckBox
                    Tag = 11
                    Left = 152
                    Top = 40
                    Width = 133
                    Height = 17
                    Caption = 'Bilir Total (mg/dl)'
                    TabOrder = 10
                  end
                  object CheckBox12: TCheckBox
                    Tag = 12
                    Left = 152
                    Top = 56
                    Width = 133
                    Height = 17
                    Caption = 'Glicemia (mg/dl)'
                    TabOrder = 11
                  end
                  object CheckBox13: TCheckBox
                    Tag = 13
                    Left = 152
                    Top = 72
                    Width = 133
                    Height = 17
                    Caption = 'Amilase (U/L)'
                    TabOrder = 12
                  end
                  object CheckBox14: TCheckBox
                    Tag = 14
                    Left = 152
                    Top = 88
                    Width = 133
                    Height = 17
                    Caption = 'Fosfatase Acida (U/L)'
                    TabOrder = 13
                  end
                  object CheckBox15: TCheckBox
                    Tag = 15
                    Left = 152
                    Top = 104
                    Width = 133
                    Height = 17
                    Caption = 'Fosfatase Alc (U/L)'
                    TabOrder = 14
                  end
                  object CheckBox16: TCheckBox
                    Tag = 16
                    Left = 152
                    Top = 120
                    Width = 133
                    Height = 17
                    Caption = 'Prot. Totais (g/dl)'
                    TabOrder = 15
                  end
                  object CheckBox17: TCheckBox
                    Tag = 17
                    Left = 152
                    Top = 136
                    Width = 133
                    Height = 17
                    Caption = 'S'#243'dio (mEq/L)'
                    TabOrder = 16
                  end
                  object CheckBox18: TCheckBox
                    Tag = 18
                    Left = 152
                    Top = 152
                    Width = 133
                    Height = 17
                    Caption = 'Pot'#225'ssio (mEq/L)'
                    TabOrder = 17
                  end
                end
                object GroupBox7: TGroupBox
                  Left = 324
                  Top = 16
                  Width = 157
                  Height = 80
                  Caption = 'SEROLOGIA'
                  TabOrder = 1
                  object CheckBox19: TCheckBox
                    Tag = 19
                    Left = 12
                    Top = 24
                    Width = 97
                    Height = 17
                    Caption = 'VDRL'
                    TabOrder = 0
                  end
                  object CheckBox20: TCheckBox
                    Tag = 20
                    Left = 12
                    Top = 40
                    Width = 97
                    Height = 17
                    Caption = 'HBsAg'
                    TabOrder = 1
                  end
                  object CheckBox21: TCheckBox
                    Tag = 21
                    Left = 12
                    Top = 56
                    Width = 97
                    Height = 17
                    Caption = 'VHC'
                    TabOrder = 2
                  end
                end
                object GroupBox8: TGroupBox
                  Left = 484
                  Top = 16
                  Width = 141
                  Height = 49
                  Caption = 'HEMATOLOGIA'
                  TabOrder = 2
                  object CheckBox22: TCheckBox
                    Tag = 22
                    Left = 12
                    Top = 24
                    Width = 97
                    Height = 17
                    Caption = 'HEMOGRAMA'
                    TabOrder = 0
                  end
                end
                object GroupBox9: TGroupBox
                  Left = 324
                  Top = 104
                  Width = 157
                  Height = 49
                  Caption = 'CITOMETRIA DE FLUXO'
                  TabOrder = 3
                  object CheckBox23: TCheckBox
                    Tag = 23
                    Left = 12
                    Top = 24
                    Width = 97
                    Height = 17
                    Caption = 'CD4'
                    TabOrder = 0
                  end
                end
                object GroupBox10: TGroupBox
                  Left = 484
                  Top = 104
                  Width = 142
                  Height = 49
                  Caption = 'CARGA VIRAL'
                  TabOrder = 4
                  object CheckBox24: TCheckBox
                    Tag = 24
                    Left = 12
                    Top = 24
                    Width = 97
                    Height = 17
                    Caption = 'CV'
                    TabOrder = 0
                  end
                end
                object GroupBox11: TGroupBox
                  Left = 324
                  Top = 157
                  Width = 303
                  Height = 113
                  Caption = 'OUTRAS AN'#193'LISES SOLICITADAS'
                  TabOrder = 5
                  object CheckBox25: TCheckBox
                    Tag = 25
                    Left = 16
                    Top = 24
                    Width = 97
                    Height = 17
                    Caption = 'Teste Gravides'
                    TabOrder = 0
                  end
                  object CheckBox26: TCheckBox
                    Tag = 26
                    Left = 16
                    Top = 40
                    Width = 97
                    Height = 17
                    Caption = 'URINA II'
                    TabOrder = 1
                  end
                  object CheckBox27: TCheckBox
                    Tag = 27
                    Left = 16
                    Top = 56
                    Width = 97
                    Height = 17
                    Caption = 'Gota Espessa'
                    TabOrder = 2
                  end
                  object CheckBox28: TCheckBox
                    Tag = 28
                    Left = 16
                    Top = 72
                    Width = 97
                    Height = 17
                    Caption = 'Falciforma'#231#227'o'
                    TabOrder = 3
                  end
                  object CheckBox29: TCheckBox
                    Tag = 29
                    Left = 16
                    Top = 88
                    Width = 97
                    Height = 17
                    Caption = 'Outras An'#225'lises'
                    TabOrder = 4
                  end
                end
              end
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 228
            Height = 460
            Align = alLeft
            TabOrder = 1
            DesignSize = (
              228
              460)
            object lbatualizando: TLabel
              Left = 5
              Top = 425
              Width = 152
              Height = 16
              Caption = 'Atualizando Agenda...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Calendario: TMonthCalendar
              Left = 1
              Top = 1
              Width = 226
              Height = 153
              Align = alTop
              Anchors = [akLeft, akTop, akRight, akBottom]
              AutoSize = True
              CalColors.TextColor = clBlack
              CalColors.TitleBackColor = clMaroon
              CalColors.TrailingTextColor = clGray
              Date = 40926.022788067130000000
              TabOrder = 0
              OnClick = CalendarioClick
            end
            object ProgressBar1: TProgressBar
              Left = 4
              Top = 443
              Width = 210
              Height = 13
              TabOrder = 1
              Visible = False
            end
            object BitBtn1: TBitBtn
              Left = 19
              Top = 184
              Width = 190
              Height = 92
              Hint = 'Imprimir'
              Anchors = [akLeft, akTop, akBottom]
              Caption = 'Imprimir Mapa do M'#233'dico'
              ParentShowHint = False
              PopupMenu = PopupMenu2
              ShowHint = True
              TabOrder = 2
              Visible = False
              OnClick = BitBtn1Click
              Glyph.Data = {
                B6250000424DB625000000000000360000002800000050000000280000000100
                18000000000080250000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF7F7F8E8E8E7CECECED2D2D2FEFEFEFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF7F7F7E7E7E7CECECED2D2D2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFDEFEFEFE0E0DED4D4D0D2D2CCD7D7
                D1DDDDD6C4C4BE868686E2E2E3FFFFFFFCFCFCEEEEEECECECEE9E9E9FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFCFCFCEFEFEFDFDFDFD2D2D2D0D0D0D5D5D5DADADAC2C2C286
                8686E2E2E2FFFFFFFCFCFCEEEEEECECECEE9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDDDDDAD6
                D6D1D5D5CFD8D8D2DCDCD6DEDED8E0E0DAE0E0DAE8E8E1E2E2DC737373C2C2C2
                CECECECBCBCBA0A0A0626262A1A2A4F8FBFFFFFFFFF4FCFFE0E7F0EBF1F7FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCD4D4D4D3D3D3D6D6D6
                DADADADCDCDCDEDEDEDEDEDEE5E5E5E0E0E0737373C2C2C2CECECECBCBCBA0A0
                A0626262A2A2A2FBFBFBFFFFFFFBFBFBE8E8E8F2F2F2FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F1F1F1D8D8D6C8C8C2CFCFC8DBDBD5DDDDD7E0E0DAE1E1DBE3E3DDE4E4DEE6E6
                E0E7E7E1E9E9E3EFEFE9E4E4DE969696BCBCBCB9B9B9B1B1B1B1B2B45855557A
                614AA86F32AC5600A955007D4919817F80E0E5E8FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1D7D7D7C6C6
                C6CCCCCCD9D9D9DBDBDBDEDEDEDFDFDFE1E1E1E2E2E2E4E4E4E5E5E5E7E7E7ED
                EDEDE2E2E2969696BCBCBCB9B9B9B1B1B1B2B2B25555555C5C5C636363464646
                4545454040407F7F7FE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFE9E9E8BABAB5B3B3ADC1C1BAD0D0C9DADAD4E3E3DDE3
                E3DDE5E5DFE7E7E1E9E9E3EAEAE4ECECE6EDEDE7EFEFE9F1F1EBFDFDF7A0A09D
                666667939393949495868B92D97400E68407F49213F89C22FFA52EFFAA309950
                095C463BC3CBD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFE8E8E8B8B8B8B1B1B1BEBEBECDCDCDD8D8D8E1E1E1E1E1E1E3E3E3E5E5E5
                E7E7E7E8E8E8EAEAEAEBEBEBEDEDEDEFEFEFFBFBFB9F9F9F6666669393939494
                948C8C8C5C5C5C6969697777778282828B8B8B8F8F8F434343454545CBCBCBFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F5
                E0E0DDD2D2CCD7D7D1E3E3DDE9E9E3EAEAE4ECECE6EDEDE7EFEFE9F0F0EAF2F2
                ECF4F4EEF6F6F0F7F7F1FCFCF5FFFFFA4343444E4E4E707070545D68FD9E24FF
                A730F89E29E49A38D69A3FD9AB56BB852D813900562A0F8F8B89F1F4F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5DFDFDFD0D0D0D5D5
                D5E1E1E1E7E7E7E8E8E8EAEAEAEBEBEBEDEDEDEEEEEEF0F0F0F2F2F2F4F4F4F5
                F5F5F9F9F9FDFDFD4343434E4E4E7070705F5F5F8484848D8D8D858585858585
                8585859696967070703030302626268A8A8AF4F4F4FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E5B0B0B0DBDBD5ECECE6EFEFE9F0
                F0EAF2F2ECF3F3EDF5F5EFF7F7F1F8F8F2FAFAF4FCFCF6FDFDF7FFFFF9FFFFFF
                8888871717170B0B0B0000004E3718B5884AB8AD9FA3A8AEECB333E7A718B370
                0846413B302D2C532103725F52CFD5D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFE4E4E4B0B0B0D9D9D9EAEAEAEDEDEDEEEEEEF0F0F0F1F1F1
                F3F3F3F5F5F5F6F6F6F8F8F8FAFAFAFBFBFBFDFDFDFFFFFF8787871717170B0B
                0B0000003030307A7A7AAAAAAAA9A9A99393938383835858583F3F3F2D2D2D1D
                1D1D5D5D5DD5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                B9B9B9C1C1C1B8B8B9E8E9E5F9F9F3F6F6F0F8F8F2FAFAF4FBFBF6FDFDF7FEFE
                F9FFFFF9FFFFFAFFFFFAFFFFFAFFFFFDFFFFFF1B1B1B2121215151514B4F535A
                5F666E7176606160E69400DF9200B46E0B3B3C3F27292B383F44472A1A532A12
                A1A2A2F6F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9C1C1C1B8B8
                B8E7E7E7F7F7F7F4F4F4F6F6F6F8F8F8F9F9F9FBFBFBFCFCFCFDFDFDFDFDFDFD
                FDFDFDFDFDFEFEFEFFFFFF1B1B1B2121215151514F4F4F606060727272606060
                7171716F6F6F5858583C3C3C2929293F3F3F282828272727A1A1A1F8F8F8FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E8EEA9B1BC8D8F90FFFFFFFF
                FFF9FEFEF8FFFFF9FFFFFAFFFFFAFFFFFAFFFFFAFFFFFCFFFFFDFFFFFFFFFFFF
                FFFFFFCBCBC71A1A1B36363646464641414158595A535252E89000D59731B06A
                123B3B3C2425262C2C2C4B4F514843414A1E08776962EAEBECFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFE9E9E9B3B3B38F8F8FFFFFFFFDFDFDFCFCFCFDFDFD
                FDFDFDFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFC9C9C91A1A
                1A3636364646464141415959595252526E6E6E7F7F7F5757573B3B3B2525252C
                2C2C4F4F4F4242421C1C1C686868EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFE1C59DD08723C86D00926233FFFFFFFFFFFBFFFFFAFFFFFBFFFFFDFFFF
                FEFFFFFDFBFBF7F1F1EDDFDFDACECEC9B8B8B2ADADA773736E0C0C0B00000015
                1515464748413D36C09152A49586AD63143838391E1F202626263B3B3B505151
                55595B3E2F27A6A8A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBC7171
                71565656595959FFFFFFFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEFEFEFEF9F9F9EF
                EFEFDDDDDDCCCCCCB6B6B6ABABAB7171710B0B0B0000001515154747473B3B3B
                8383839292925353533838381F1F1F2626263B3B3B5050505959592E2E2EA8A8
                A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8EFE1E27B00F4931AFFA82C883A00C0
                AA98FFFFFFFFFFFFFFFFFBF7F7F2E6E7E2D7D6D1C3C3BDAEAEA892928C76766F
                5D5D5641413B2525221A1A191212122A2A2A3031322E2A25C58F53A89582A75C
                183A3B3B191A1B2222222C2C2C4848485454545C5D5E6A6A6AFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFEBEBEB6161617979798C8C8C313131A7A7A7FFFFFFFFFFFF
                FDFDFDF5F5F5E5E5E5D4D4D4C1C1C1ACACAC9090907373735A5A5A3F3F3F2424
                241919191212122A2A2A3131312828288383839191915050503A3A3A1A1A1A22
                22222C2C2C4848485454545D5D5D6A6A6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFCB967EF9D31E0A24E92774E3B3C3EC9C9C6E1E1DCC3C3BDAEAEA99493
                8D7B7B745B5B5440403B2626211818170F0F0E1717172B2B2C30303029292923
                2323191A1B171412DC9150B59C84A05E2E3E3C3D1314141E1E1E2424243D3D3D
                4B4B4B585757515152ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A88686
                868F8F8F6D6D6D3C3C3CC8C8C8DFDFDFC1C1C1ACACAC9191917878785858583E
                3E3E2424241717170E0E0E1717172B2B2B3030302929292323231A1A1A131313
                8686869797975757573C3C3C1313131E1E1E2424243D3D3D4B4B4B5757575151
                51ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D896E9A92790918F252A3100
                00001E1E1F5A5A566C6C664F4F492C2C271616141414131A1A1A2626272B2B2C
                2A2A2A2424241D1D1D1818181111110D0D0D030405040000BD825FAB73599E50
                264040400E0F0F1919191F1F1F3232314545455050504D4D4DEEEEEEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFC7C7C78989899090902B2B2B0000001E1E1E585858
                6A6A6A4D4D4D2A2A2A1515151313131A1A1A2626262B2B2B2A2A2A2424241D1D
                1D1818181111110D0D0D0404040000007E7E7E7171714C4C4C4040400E0E0E19
                19191F1F1F3131314545455050504D4D4DEEEEEEFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFA8833A9684617D73641B1C1F0000000000000000000909091414142323
                242D2D2D2727272323231B1B1B1616161111110B0B0B05050502020200000004
                04040C0D0E1C1B1BD66B43CB6B479A50314546470809091414141A1A1A252525
                3C3C3C474747464646EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7171717B7B
                7B6F6F6F1C1C1C0000000000000000000909091414142323232D2D2D27272723
                23231B1B1B1616161111110B0B0B0505050202020000000404040D0D0D1B1B1B
                6B6B6B6B6B6B4F4F4F4646460808081414141A1A1A2525253C3C3C4747474646
                46EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD7D33C582206D675F1A1B1D16
                16162626262C2C2C29292A2424241D1D1D1717171010100A0A0A030303000000
                0000000505050D0D0D1818182323232E2E2E383939414244E28F68DF9D7BA160
                406F6C6C0000001010101616161B1B1B3333333F3F3F3F3F3FEEEEEEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF6C6C6C6C6C6C6565651B1B1B1616162626262C2C2C
                2929292424241D1D1D1717171010100A0A0A0303030000000000000505050D0D
                0D1818182323232E2E2E3838384242428C8C8C9A9A9A5D5D5D6C6C6C00000010
                10101616161B1B1B3333333F3F3F3F3F3FEEEEEEFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFD78926D27D165956532021232424241B1B1B1717171010100A0A0A0505
                050101010303031616162A2A2A1D1D1D2424242F2F2F3B3B3B4A4A4A5D5D5D72
                7272848484898F93F2C5A4F2CBAAD4A7848D71680E1316040404101010141414
                262626373737373737EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7474746767
                675555552121212424241B1B1B1717171010100A0A0A05050501010103030316
                16162A2A2A1D1D1D2424242F2F2F3B3B3B4A4A4A5D5D5D7272728484848F8F8F
                C0C0C0C5C5C5A1A1A17171711313130404041010101414142626263737373737
                37EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD08131C973234D4A48090A0C0C
                0C0C0505050101010000000404040D0D0D1515155959595050503F3F3F444545
                6160607A7A7A929292A1A1A1ACACACAFAFAFACACAC9B9DA0DAC9B3FFEFC9FFF1
                C5985F37736A6E1E262E05070A0C0C0D1919192F2F2F303030EEEEEEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF7272726464644949490A0A0A0C0C0C050505010101
                0000000404040D0D0D1515155959595050503F3F3F4444446060607A7A7A9292
                92A1A1A1ACACACAFAFAFACACAC9D9D9DC4C4C4E5E5E5E5E5E55959596C6C6C27
                27270707070C0C0C1919192F2F2F303030EEEEEEFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFCB783AC36A2D3F3E3C0000000505050F0F0F1A1A1A2424242C2C2C3B3B
                3B4E4E4E676767868686A6A6A6B9B9B9BEBEBEBDBDBDB9B9B9B2B2B2A4A4A490
                90907777775B5B5C444546DCB564E7A929EDAE23B064009E652E645550282C33
                070A0E1D1E1E292929EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E6E6E6161
                613D3D3D0000000505050F0F0F1A1A1A2424242C2C2C3B3B3B4E4E4E67676786
                8686A6A6A6B9B9B9BEBEBEBDBDBDB9B9B9B2B2B2A4A4A49090907777775B5B5B
                454545A1A1A18989898B8B8B4E4E4E5B5B5B5555552D2D2D0A0A0A1D1D1D2929
                29EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC76F42B85B31484544191B1B29
                2929343434494949727272959595B5B5B5C4C5C5CDCDCDCCCCCCC8C8C8C1C1C1
                B4B5B6A6A6A88E8E8E7777774D4D4D4C4C4C6F6F6F9C9C9CD1D2D3EDEFF3ECD3
                9FDD9808E29300E29600C479009B5D176550421F263016191CEBEBEBFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF6B6B6B5959594545451A1A1A292929343434494949
                727272959595B5B5B5C4C4C4CDCDCDCCCCCCC8C8C8C1C1C1B5B5B5A6A6A68E8E
                8E7777774D4D4D4C4C4C6F6F6F9C9C9CD2D2D2EFEFEFC6C6C674747470707071
                71715D5D5D4F4F4F4E4E4E282828191919EBEBEBFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFC66C4AC068467573727C7D7DA8A8A8CECECEE0E0E0DFDFDFDBDBDBD6D6
                D6D1D1D1C5C5C5B7B9BB9DA2AB818792706C695A5B5B8D919DB4B5B6EFEFEFFF
                FFFFFFFFFFF9F9F9EEEEEEE7E8E9DFE3EADBE4F7D7C39BDCA124E29800E69D00
                D38800A25F09442C20EAECEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6C6767
                677272727C7C7CA8A8A8CECECEE0E0E0DFDFDFDBDBDBD6D6D6D1D1D1C5C5C5B9
                B9B9A4A4A48989896B6B6B5A5A5A949494B5B5B5EFEFEFFFFFFFFFFFFFF9F9F9
                EEEEEEE8E8E8E4E4E4E8E8E8B9B9B98282827272727676766767674C4C4C2B2B
                2BECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDD0C1F8E7DDF0EEEDECEDEDE9
                E9E9E5E5E5DFDFDFD5D5D5CACACAB6B6B68585857173756D604B97670CA66C07
                C78627C57F03EED063DCDCD6ECEDEFE4E4E4DEDEDFDBDBDCC9C9C8B4B4B3B3B3
                B0BEBFBFA2A8B38E9196CB8D0CE69800E09100DF8F00C49E6EFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFCECECEE5E5E5EDEDEDECECECE9E9E9E5E5E5DFDFDF
                D5D5D5CACACAB6B6B68585857373735B5B5B515151545454717171616161B2B2
                B2DADADAEDEDEDE4E4E4DEDEDEDBDBDBC8C8C8B3B3B3B2B2B2BEBEBEAAAAAA92
                92926D6D6D7373736E6E6E6D6D6D939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFEFCF9FEF9F3FCF9F6EBEFF7DEE1E7B9B9BA9D9D9D8F8F8F969696ADAD
                ADE6E6E6FFFFFFFEFFFFC5B992CFA444FED57EECBA54DABB3DC0B585C4C5C8B3
                B3B0A5A59F9898919C9C95A3A39CAAAAA3ACAEACB19F75BB7D00C39534806427
                D1C9B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7
                F7F8F8F8F0F0F0E2E2E2B9B9B99D9D9D8F8F8F969696ADADADE6E6E6FFFFFFFE
                FEFEAEAEAE8C8C8CBFBFBFA1A1A1989898A7A7A7C5C5C5B2B2B2A3A3A3959595
                999999A0A0A0A7A7A7ADADAD9494945E5E5E7D7D7D545454C4C4C4FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F0F7DFACECC5759C
                834E818792ECF2FFFFFFFFFFFFFFF4F4F4F2F2F2EEEEEEF7F7F7E5E7EBA8ADB8
                6C7076A9AFB6AAADB4A2A3A2A6A69FACACA6B3B3AEBABAB4C0C0BAC4C4BECACA
                C4CECEC7DCDEDB4B535F8793A9B7BFCCEBEDF1FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D2D2D2B1B1B1767676898989F5F5F5
                FFFFFFFFFFFFF4F4F4F2F2F2EEEEEEF7F7F7E7E7E7AFAFAF717171B0B0B0AEAE
                AEA2A2A2A3A3A3AAAAAAB1B1B1B8B8B8BEBEBEC2C2C2C8C8C8CBCBCBDCDCDC55
                5555989898C1C1C1EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFCFAF5EECC84E7A316DD8900976400A29780C2C7D3E0E5
                EF82868E464A530F11170101020707080000009E9E99C4C4BEC4C4BECACAC4CD
                CDC7D1D1CAD3D3CCD4D4CED4D4CED5D5CFD5D5CFD9DAD5CBC2B5B87613A15C02
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF8F8F8BABABA8080806969694B4B4B919191CACACAE7E7E78787874C4C4C12
                12120101010707070000009C9C9CC2C2C2C2C2C2C8C8C8CBCBCBCECECED0D0D0
                D2D2D2D2D2D2D3D3D3D3D3D3D8D8D8BFBFBF5F5F5F484848FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF9EFD8EFC262DB8900BB75009A721F846219734A005D42083B3834434344
                3A3A3A4F504FE6E6E0D9D9D3DADAD4D9D9D4DADAD4D9D9D4DADAD5DBDBD5DBDB
                D7DCDCD7DDDED7E3E9ECAE6C0DC6851CDDCEC7FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9AAAAAA
                6969695959595D5D5D5050503838383333333737374343433A3A3A4F4F4FE4E4
                E4D7D7D7D8D8D8D7D7D7D8D8D8D7D7D7D8D8D8D9D9D9D9D9D9DADADADBDBDBE9
                E9E95757576D6D6DCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E8C5F7D6
                92FAD993FFEBBEFEF9EDC7C8CBABABABA5A6A8A2998BE7E7E1DDDDD8DDDDD7DD
                DDD8E1E1DCE4E4DEE5E5E0E5E5E1E6E6E1E7E7E1E6E6E2EBF0F1C69F68D8982F
                C9A16EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFC5C5C5C7C7C7DFDFDFF5
                F5F5C8C8C8ABABABA6A6A6959595E5E5E5DBDBDBDBDBDBDBDBDBDFDFDFE2E2E2
                E3E3E3E3E3E3E4E4E4E5E5E5E4E4E4EFEFEF9393937F7F7F969696FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF3DEBECCB892DDDFDDDEDED7DDDDD8DEDED9DFDFD9E2E2DDE5E5DFE7E7
                E3E9E9E4E9E9E4E9EBE8DBCFBBD8972FD49B48FDFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6AEAE
                AEDEDEDEDBDBDBDBDBDBDCDCDCDDDDDDE0E0E0E3E3E3E5E5E5E7E7E7E7E7E7E9
                E9E9CACACA7F7F7F888888FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2A55CE2E7E8E2E2DDE3
                E3DDE4E4DFE5E5DFE6E6E0E5E5E0E7E7E2E7E7E2E9E9E3EAEAE5ECF0F1DEA853
                EDAE47E6DACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF949494E6E6E6E0E0E0E1E1E1E2E2E2E3E3E3
                E4E4E4E3E3E3E5E5E5E5E5E5E7E7E7E8E8E8EFEFEF949494969696D8D8D8FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEAC489E4DFD4E7E8E4E8E8E2E9E9E3E9E9E4EAEAE5EBEBE5ECEC
                E7EDEDE7EEEEE8EEEEE9F1F5F6E7C792FFC85DC6A07CFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6
                B6DCDCDCE6E6E6E6E6E6E7E7E7E7E7E7E8E8E8E9E9E9EAEAEAEBEBEBECECECEC
                ECECF4F4F4BABABAAEAEAE999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEED7EACD9CEDF0EFED
                EDE8EFEFE9EFEFE9F0F0EAF1F1EBF1F1ECF1F1ECF1F1ECF1F1ECF1F2EFEFEBE1
                FEBA47CF9C5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8C1C1C1EFEFEFEBEBEBEDEDEDEDEDED
                EEEEEEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF0F0F0E8E8E89F9F9F8E8E8EFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF8CB80EBF1F3F1F1ECF2F2EDF2F2EDF1F1ECF1F1ECF1F1
                ECF1F1ECF1F1ECF1F1ECF1F1ECEFF2EFFDF4E6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFB9B9B9F0F0F0EFEFEFF0F0F0F0F0F0EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
                EFEFEFEFEFF0F0F0F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0A5DED4C3DF
                E0DDE7E7E2EBEBE7EFEFEBF1F1ECF2F2EDF1F1ECF1F1ECF1F1ECF1F1ECEFEFEA
                F9FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D0D0D0DEDEDEE5E5E5E9E9E9
                EDEDEDEFEFEFF0F0F0EFEFEFEFEFEFEFEFEFEFEFEFEDEDEDF9F9F9FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFE3E0D8CCCCC8D6D6D1DADAD6E0E0DCE4E4E0EAEA
                E5ECECE8EDEDE9EDEDE8EAEAE4E6E6E2EFEFECFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFDDDDDDCACACAD4D4D4D8D8D8DEDEDEE2E2E2E8E8E8EAEAEAEBEBEBEB
                EBEBE8E8E8E4E4E4EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEEEEB2
                B2ADBFBFB9C2C2BCC6C6C1CACAC5CECEC9D2D2CCD6D6D0D8D8D2DBDBD5D9D9D4
                E2E2DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDB0B0B0BDBDBDC0C0C0
                C4C4C4C8C8C8CCCCCCD0D0D0D4D4D4D6D6D6D9D9D9D7D7D7E0E0E0FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF7F7F69E9E98A6A6A0A9A9A3ACACA6AEAEA7B1B1
                ABB3B3ADB7B7B0BCBCB5CDCDC6D8D8D2E6E6E3FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F69C9C9CA4A4A4A7A7A7AAAAAAABABABAFAFAFB1B1B1B4B4B4B9
                B9B9CACACAD6D6D6E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC85
                857E92928CA1A19CB5B5B0CECECBDFDFDCEEEEEDFEFEFEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC8282829090909F9F9F
                B3B3B3CDCDCDDEDEDEEDEDEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEEEEEDFDFDFDFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFEFEFEEDEDEDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              NumGlyphs = 2
            end
            object btGerarNovoProcesso: TBitBtn
              Left = 19
              Top = 248
              Width = 190
              Height = 53
              Caption = 'Gerar Novo Processo'
              TabOrder = 3
              Visible = False
              OnClick = btGerarNovoProcessoClick
              Glyph.Data = {
                76150000424D761500000000000036000000280000002D000000280000000100
                18000000000040150000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBF8F8F8
                F7F7F7F5F5F5F1F1F1EFEFEFEFEFEFEFEFEFECECECE6E6E6E5E5E5E5E5E5E5E5
                E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E8E8E8EEEEEEEFEFEFEFEFEFEF
                EFEFF3F3F3F7F7F7F7F7F7FBFBFBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFD3D3D3C5
                C5C5BEBEBEB7B7B7B3B3B3B3B3B3ADADADABABABABABABACACACABABABA9A9A9
                AAAAAAABABABABABABA9A9A9A9A9A9ABABABABABABAAAAAAA8A8A8A8A8A8ACAC
                ACABABABABABABACACACAFAFAFB4B4B4B5B5B5BCBCBCC1C1C1CCCCCCE3E3E3FD
                FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF3F3F3DCDCDCD1D1D1CACACAC4C4C4BDBDBDBCBCBCBABABAB4B4B4B9B9B9B8
                B8B8AAAAAA9898988F8F8F8888888686868686868686868686868A8A8A919191
                9B9B9BAFAFAFBBBBBBB7B7B7B3B3B3B7B7B7BDBDBDBCBCBCC2C2C2C7C7C7CDCD
                CDD6D6D6EAEAEAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFBFBFBFBFBFBFEFE
                FEFCFCFCC4C4C49292928888888A8A8A8B8B8B8B8B8B8C8C8C8C8C8C8C8C8C8C
                8C8C8B8B8B8B8B8B8989898989899A9A9AD7D7D7FDFDFDFBFBFBFAFAFAFAFAFA
                FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFD8D8D88686868686868B8B8B8D8D8D8D8D8D8D8D8D8D8D8D8D8D
                8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8B8B8B838383949494ED
                EDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFA5A5A58484848D8D8D8F8F8F8F8F8F8F8F8F8F8F8F
                8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F
                8F8F8F8F8C8C8C858585BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F69191918A8A8A90909090909090909090
                9090909090909090909090909090909090909090909090909090909090909090
                909090909090909090909090909090909090858585A8A8A8FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD8D8D8D8E8E8E9292929292
                9292929292929292929292929292929292929292929290909090909090909090
                90909292929292929292929292929292929292929292929292929292928A8A8A
                A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696968F8F8F
                9393939393939393939393939393939393939393939393939393938E8E8E9696
                969B9B9B9B9B9B9595958E8E8E93939393939393939393939393939393939393
                93939393939393938A8A8AAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD
                ADAD8E8E8E949494949494949494949494949494949494949494949494949494
                909090B1B1B10000FF0000FF0000FF0000FFAAAAAA9191919494949494949494
                949494949494949494949494949494949494948A8A8AD3D3D3FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFDDDDDD89898996969696969696969696969696969696969696969696
                96969696969696968C8C8CEDEDED0000FF0000FF0000FF0000FFE7E7E78C8C8C
                9696969696969696969696969696969696969696969696969696969595958989
                89FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF9A9A9A9595959797979797979797979797979797
                979797979797979797979797979797978D8D8DEDEDED0000FF0000FF0000FF00
                00FFE7E7E78D8D8D979797979797979797979797979797979797979797979797
                979797979797929292B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D88F8F8F989898989898989898
                9898989898989898989898989898989898989898989898988F8F8FEDEDED0000
                FF0000FF0000FF0000FFE6E6E68F8F8F98989898989898989898989898989898
                9898989898989898989898989898979797909090F3F3F3FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2A2A29797979A
                9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A
                909090EEEEEE0000FF0000FF0000FF0000FFE7E7E79090909A9A9A9A9A9A9A9A
                9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A939393C6C6C6FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF7F7
                F78E8E8E9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
                9B9B9B9B9B9B9B9B919191EDEDED0000FF0000FF0000FF0000FFE7E7E7929292
                9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B
                9B999999999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFD4D4D49595959C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9A9A
                9A999999999999999999999999999999909090ECECEC0000FF0000FF0000FF00
                00FFE6E6E69191919999999999999999999999999999999A9A9A9C9C9C9C9C9C
                9C9C9C9C9C9C9C9C9C9C9C9C919191F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFBCBCBC9999999E9E9E9E9E9E9E9E9E9E9E9E
                9E9E9E999999A5A5A5B0B0B0AFAFAFAFAFAFAFAFAFAFAFAFA8A8A8F0F0F00000
                FF0000FF0000FF0000FFEBEBEBA8A8A8AFAFAFAFAFAFAFAFAFAFAFAFB0B0B0A3
                A3A39999999E9E9E9E9E9E9E9E9E9E9E9E9E9E9E969696DCDCDCFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFACACAC9C9C9C9E9E9E9E
                9E9E9E9E9E9E9E9E9B9B9BB6B6B60000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FFB0B0B09C9C9C9E9E9E9E9E9E9E9E9E9E9E9E999999CA
                CACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFA7A7
                A79E9E9EA0A0A0A0A0A0A0A0A0A0A0A0999999DDDDDD0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FFD8D8D89A9A9AA0A0A0A0A0A0A0A0
                A0A0A0A09C9C9CBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFA5A5A5A0A0A0A1A1A1A1A1A1A1A1A1A1A1A19A9A9ADCDCDC0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFD6D6D69B9B9B
                A1A1A1A1A1A1A1A1A1A1A1A19E9E9EBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFA9A9A9A3A3A3A2A2A2A3A3A3A3A3A3A3A3A3
                9C9C9CDDDDDD0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
                00FFD8D8D89C9C9CA3A3A3A3A3A3A3A3A3A2A2A2A5A5A5BBBBBBFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFACACACA7A7A7A3A3A3A3
                A3A3A3A3A3A3A3A3A0A0A0B8B8B80000FF0000FF0000FF0000FF0000FF0000FF
                0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
                FF0000FF0000FF0000FFB3B3B3A1A1A1A3A3A3A3A3A3A3A3A3A3A3A3A7A7A7C3
                C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFB6B6
                B6B1B1B1A3A3A3A5A5A5A5A5A5A5A5A5A5A5A5A0A0A0A4A4A4B2B2B2B1B1B1B1
                B1B1B1B1B1B1B1B1AAAAAAF1F1F10000FF0000FF0000FF0000FFECECECABABAB
                B1B1B1B1B1B1B1B1B1B1B1B1B2B2B2A2A2A2A1A1A1A5A5A5A5A5A5A5A5A5A5A5
                A5A3A3A3AAAAAAD6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFC9C9C9B1B1B1A4A4A4A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A4A4
                A4A3A3A3A3A3A3A3A3A3A3A3A3A3A3A39A9A9AEEEEEE0000FF0000FF0000FF00
                00FFE9E9E99C9C9CA3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A4A4A4A5A5A5A5A5A5
                A5A5A5A5A5A5A5A5A5A4A4A4B0B0B0E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFE4E4E4B0B0B0A6A6A6A6A6A6A6A6A6A6A6A6
                A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A69E9E9EEEEEEE0000
                FF0000FF0000FF0000FFEAEAEA9F9F9FA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6
                A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6AEAEAEA6A6A6FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAB1B1B1A6
                A6A6A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7
                9F9F9FEFEFEF0000FF0000FF0000FF0000FFEAEAEAA0A0A0A7A7A7A7A7A7A7A7
                A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A5A5A5B9B9B9B8B8B8FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFC3C3C3C2C2C2A4A4A4A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8
                A8A8A8A8A8A8A8A8A0A0A0F0F0F00000FF0000FF0000FF0000FFEAEAEAA0A0A0
                A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A5A5
                A5BDBDBDDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEFEFEFB7B7B7B0B0B0A7A7A7A9A9A9A9A9A9A9A9A9A9A9
                A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A1A1A1F0F0F00000FF0000FF0000FF00
                00FFEBEBEBA1A1A1A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9
                A9A9A9A5A5A5C1C1C1AEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBECCCCCCA7A7A7AAAAAA
                AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2A2A2EFEFEF0000
                FF0000FF0000FF0000FFE9E9E9A2A2A2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                AAAAAAAAAAAAAAAAA9A9A9AFAFAFC0C0C0DDDDDDFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEAC
                ACACC8C8C8A5A5A5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                A7A7A7BFBFBF0000FF0000FF0000FF0000FFBABABAA7A7A7AAAAAAAAAAAAAAAA
                AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA4A4A4D1D1D1B1B1B1FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFE1E1E1BDBDBDC1C1C1A7A7A7ABABABABABABABABABABABABAB
                ABABABABABABABABABABABA7A7A7A4A4A4A6A6A6A6A6A6A4A4A4A8A8A8ABABAB
                ABABABABABABABABABABABABABABABABABABABABABA6A6A6D0D0D0AFAFAFF8F8
                F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBC6C6C6C1C1C1A6A6A6ABAB
                ABACACACACACACACACACACACACACACACACACACACACACABABABABABABABABABAB
                ABABACACACACACACACACACACACACACACACACACACACACACABABABA5A5A5D1D1D1
                B2B2B2E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C5
                C4C4C4CCCCCCA8A8A8ABABABACACACACACACACACACACACACACACACACACACACAC
                ACACACACACACACACACACACACACACACACACACACACACACACACACACACACA9A9A9AD
                ADADD8D8D8B4B4B4E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFD4D4D4B4B4B4DDDDDDB3B3B3A7A7A7ABABABACACACADADAD
                ADADADADADADADADADADADADADADADADADADADADADADADADADADADACACACAAAA
                AAA7A7A7BFBFBFDCDCDCACACACEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDB0B0B0D1D1D1D7D7D7B8
                B8B8AAAAAAA9A9A9ABABABADADADADADADADADADADADADADADADACACACABABAB
                A8A8A8ADADADBFBFBFDCDCDCC4C4C4B8B8B8FDFDFDFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFD1D1D1AFAFAFCCCCCCDDDDDDD1D1D1C1C1C1B2B2B2ACACACAAAAAAABABABAD
                ADADB6B6B6C5C5C5D7D7D7DCDCDCC2C2C2B2B2B2E0E0E0FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAB9B9B9B7B7B7C3C3C3D1D1D1D9D9
                D9DBDBDBDADADAD7D7D7CECECEC0C0C0B4B4B4C0C0C0E6E6E6FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB
                EEEEEEDEDEDED2D2D2CFCFCFCFCFCFD5D5D5E1E1E1F2F2F2FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
            end
            object btImprimirEtiqueta: TBitBtn
              Left = 19
              Top = 309
              Width = 190
              Height = 53
              Caption = 'Imprimir Etiquetas'
              TabOrder = 5
              Visible = False
              OnClick = btImprimirEtiquetaClick
              Glyph.Data = {
                B6250000424DB625000000000000360000002800000050000000280000000100
                18000000000080250000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF7F7F8E8E8E7CECECED2D2D2FEFEFEFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF7F7F7E7E7E7CECECED2D2D2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFDEFEFEFE0E0DED4D4D0D2D2CCD7D7
                D1DDDDD6C4C4BE868686E2E2E3FFFFFFFCFCFCEEEEEECECECEE9E9E9FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFCFCFCEFEFEFDFDFDFD2D2D2D0D0D0D5D5D5DADADAC2C2C286
                8686E2E2E2FFFFFFFCFCFCEEEEEECECECEE9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDDDDDAD6
                D6D1D5D5CFD8D8D2DCDCD6DEDED8E0E0DAE0E0DAE8E8E1E2E2DC737373C2C2C2
                CECECECBCBCBA0A0A0626262A1A2A4F8FBFFFFFFFFF4FCFFE0E7F0EBF1F7FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEDCDCDCD4D4D4D3D3D3D6D6D6
                DADADADCDCDCDEDEDEDEDEDEE5E5E5E0E0E0737373C2C2C2CECECECBCBCBA0A0
                A0626262A2A2A2FBFBFBFFFFFFFBFBFBE8E8E8F2F2F2FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                F1F1F1D8D8D6C8C8C2CFCFC8DBDBD5DDDDD7E0E0DAE1E1DBE3E3DDE4E4DEE6E6
                E0E7E7E1E9E9E3EFEFE9E4E4DE969696BCBCBCB9B9B9B1B1B1B1B2B45855557A
                614AA86F32AC5600A955007D4919817F80E0E5E8FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1D7D7D7C6C6
                C6CCCCCCD9D9D9DBDBDBDEDEDEDFDFDFE1E1E1E2E2E2E4E4E4E5E5E5E7E7E7ED
                EDEDE2E2E2969696BCBCBCB9B9B9B1B1B1B2B2B25555555C5C5C636363464646
                4545454040407F7F7FE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFE9E9E8BABAB5B3B3ADC1C1BAD0D0C9DADAD4E3E3DDE3
                E3DDE5E5DFE7E7E1E9E9E3EAEAE4ECECE6EDEDE7EFEFE9F1F1EBFDFDF7A0A09D
                666667939393949495868B92D97400E68407F49213F89C22FFA52EFFAA309950
                095C463BC3CBD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFE8E8E8B8B8B8B1B1B1BEBEBECDCDCDD8D8D8E1E1E1E1E1E1E3E3E3E5E5E5
                E7E7E7E8E8E8EAEAEAEBEBEBEDEDEDEFEFEFFBFBFB9F9F9F6666669393939494
                948C8C8C5C5C5C6969697777778282828B8B8B8F8F8F434343454545CBCBCBFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F5
                E0E0DDD2D2CCD7D7D1E3E3DDE9E9E3EAEAE4ECECE6EDEDE7EFEFE9F0F0EAF2F2
                ECF4F4EEF6F6F0F7F7F1FCFCF5FFFFFA4343444E4E4E707070545D68FD9E24FF
                A730F89E29E49A38D69A3FD9AB56BB852D813900562A0F8F8B89F1F4F6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5DFDFDFD0D0D0D5D5
                D5E1E1E1E7E7E7E8E8E8EAEAEAEBEBEBEDEDEDEEEEEEF0F0F0F2F2F2F4F4F4F5
                F5F5F9F9F9FDFDFD4343434E4E4E7070705F5F5F8484848D8D8D858585858585
                8585859696967070703030302626268A8A8AF4F4F4FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E5B0B0B0DBDBD5ECECE6EFEFE9F0
                F0EAF2F2ECF3F3EDF5F5EFF7F7F1F8F8F2FAFAF4FCFCF6FDFDF7FFFFF9FFFFFF
                8888871717170B0B0B0000004E3718B5884AB8AD9FA3A8AEECB333E7A718B370
                0846413B302D2C532103725F52CFD5D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFE4E4E4B0B0B0D9D9D9EAEAEAEDEDEDEEEEEEF0F0F0F1F1F1
                F3F3F3F5F5F5F6F6F6F8F8F8FAFAFAFBFBFBFDFDFDFFFFFF8787871717170B0B
                0B0000003030307A7A7AAAAAAAA9A9A99393938383835858583F3F3F2D2D2D1D
                1D1D5D5D5DD5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                B9B9B9C1C1C1B8B8B9E8E9E5F9F9F3F6F6F0F8F8F2FAFAF4FBFBF6FDFDF7FEFE
                F9FFFFF9FFFFFAFFFFFAFFFFFAFFFFFDFFFFFF1B1B1B2121215151514B4F535A
                5F666E7176606160E69400DF9200B46E0B3B3C3F27292B383F44472A1A532A12
                A1A2A2F6F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9C1C1C1B8B8
                B8E7E7E7F7F7F7F4F4F4F6F6F6F8F8F8F9F9F9FBFBFBFCFCFCFDFDFDFDFDFDFD
                FDFDFDFDFDFEFEFEFFFFFF1B1B1B2121215151514F4F4F606060727272606060
                7171716F6F6F5858583C3C3C2929293F3F3F282828272727A1A1A1F8F8F8FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E8EEA9B1BC8D8F90FFFFFFFF
                FFF9FEFEF8FFFFF9FFFFFAFFFFFAFFFFFAFFFFFAFFFFFCFFFFFDFFFFFFFFFFFF
                FFFFFFCBCBC71A1A1B36363646464641414158595A535252E89000D59731B06A
                123B3B3C2425262C2C2C4B4F514843414A1E08776962EAEBECFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFE9E9E9B3B3B38F8F8FFFFFFFFDFDFDFCFCFCFDFDFD
                FDFDFDFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFC9C9C91A1A
                1A3636364646464141415959595252526E6E6E7F7F7F5757573B3B3B2525252C
                2C2C4F4F4F4242421C1C1C686868EBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFE1C59DD08723C86D00926233FFFFFFFFFFFBFFFFFAFFFFFBFFFFFDFFFF
                FEFFFFFDFBFBF7F1F1EDDFDFDACECEC9B8B8B2ADADA773736E0C0C0B00000015
                1515464748413D36C09152A49586AD63143838391E1F202626263B3B3B505151
                55595B3E2F27A6A8A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBC7171
                71565656595959FFFFFFFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEFEFEFEF9F9F9EF
                EFEFDDDDDDCCCCCCB6B6B6ABABAB7171710B0B0B0000001515154747473B3B3B
                8383839292925353533838381F1F1F2626263B3B3B5050505959592E2E2EA8A8
                A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8EFE1E27B00F4931AFFA82C883A00C0
                AA98FFFFFFFFFFFFFFFFFBF7F7F2E6E7E2D7D6D1C3C3BDAEAEA892928C76766F
                5D5D5641413B2525221A1A191212122A2A2A3031322E2A25C58F53A89582A75C
                183A3B3B191A1B2222222C2C2C4848485454545C5D5E6A6A6AFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFEBEBEB6161617979798C8C8C313131A7A7A7FFFFFFFFFFFF
                FDFDFDF5F5F5E5E5E5D4D4D4C1C1C1ACACAC9090907373735A5A5A3F3F3F2424
                241919191212122A2A2A3131312828288383839191915050503A3A3A1A1A1A22
                22222C2C2C4848485454545D5D5D6A6A6AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFCB967EF9D31E0A24E92774E3B3C3EC9C9C6E1E1DCC3C3BDAEAEA99493
                8D7B7B745B5B5440403B2626211818170F0F0E1717172B2B2C30303029292923
                2323191A1B171412DC9150B59C84A05E2E3E3C3D1314141E1E1E2424243D3D3D
                4B4B4B585757515152ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A88686
                868F8F8F6D6D6D3C3C3CC8C8C8DFDFDFC1C1C1ACACAC9191917878785858583E
                3E3E2424241717170E0E0E1717172B2B2B3030302929292323231A1A1A131313
                8686869797975757573C3C3C1313131E1E1E2424243D3D3D4B4B4B5757575151
                51ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D896E9A92790918F252A3100
                00001E1E1F5A5A566C6C664F4F492C2C271616141414131A1A1A2626272B2B2C
                2A2A2A2424241D1D1D1818181111110D0D0D030405040000BD825FAB73599E50
                264040400E0F0F1919191F1F1F3232314545455050504D4D4DEEEEEEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFC7C7C78989899090902B2B2B0000001E1E1E585858
                6A6A6A4D4D4D2A2A2A1515151313131A1A1A2626262B2B2B2A2A2A2424241D1D
                1D1818181111110D0D0D0404040000007E7E7E7171714C4C4C4040400E0E0E19
                19191F1F1F3131314545455050504D4D4DEEEEEEFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFA8833A9684617D73641B1C1F0000000000000000000909091414142323
                242D2D2D2727272323231B1B1B1616161111110B0B0B05050502020200000004
                04040C0D0E1C1B1BD66B43CB6B479A50314546470809091414141A1A1A252525
                3C3C3C474747464646EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7171717B7B
                7B6F6F6F1C1C1C0000000000000000000909091414142323232D2D2D27272723
                23231B1B1B1616161111110B0B0B0505050202020000000404040D0D0D1B1B1B
                6B6B6B6B6B6B4F4F4F4646460808081414141A1A1A2525253C3C3C4747474646
                46EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD7D33C582206D675F1A1B1D16
                16162626262C2C2C29292A2424241D1D1D1717171010100A0A0A030303000000
                0000000505050D0D0D1818182323232E2E2E383939414244E28F68DF9D7BA160
                406F6C6C0000001010101616161B1B1B3333333F3F3F3F3F3FEEEEEEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF6C6C6C6C6C6C6565651B1B1B1616162626262C2C2C
                2929292424241D1D1D1717171010100A0A0A0303030000000000000505050D0D
                0D1818182323232E2E2E3838384242428C8C8C9A9A9A5D5D5D6C6C6C00000010
                10101616161B1B1B3333333F3F3F3F3F3FEEEEEEFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFD78926D27D165956532021232424241B1B1B1717171010100A0A0A0505
                050101010303031616162A2A2A1D1D1D2424242F2F2F3B3B3B4A4A4A5D5D5D72
                7272848484898F93F2C5A4F2CBAAD4A7848D71680E1316040404101010141414
                262626373737373737EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7474746767
                675555552121212424241B1B1B1717171010100A0A0A05050501010103030316
                16162A2A2A1D1D1D2424242F2F2F3B3B3B4A4A4A5D5D5D7272728484848F8F8F
                C0C0C0C5C5C5A1A1A17171711313130404041010101414142626263737373737
                37EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD08131C973234D4A48090A0C0C
                0C0C0505050101010000000404040D0D0D1515155959595050503F3F3F444545
                6160607A7A7A929292A1A1A1ACACACAFAFAFACACAC9B9DA0DAC9B3FFEFC9FFF1
                C5985F37736A6E1E262E05070A0C0C0D1919192F2F2F303030EEEEEEFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF7272726464644949490A0A0A0C0C0C050505010101
                0000000404040D0D0D1515155959595050503F3F3F4444446060607A7A7A9292
                92A1A1A1ACACACAFAFAFACACAC9D9D9DC4C4C4E5E5E5E5E5E55959596C6C6C27
                27270707070C0C0C1919192F2F2F303030EEEEEEFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFCB783AC36A2D3F3E3C0000000505050F0F0F1A1A1A2424242C2C2C3B3B
                3B4E4E4E676767868686A6A6A6B9B9B9BEBEBEBDBDBDB9B9B9B2B2B2A4A4A490
                90907777775B5B5C444546DCB564E7A929EDAE23B064009E652E645550282C33
                070A0E1D1E1E292929EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E6E6E6161
                613D3D3D0000000505050F0F0F1A1A1A2424242C2C2C3B3B3B4E4E4E67676786
                8686A6A6A6B9B9B9BEBEBEBDBDBDB9B9B9B2B2B2A4A4A49090907777775B5B5B
                454545A1A1A18989898B8B8B4E4E4E5B5B5B5555552D2D2D0A0A0A1D1D1D2929
                29EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC76F42B85B31484544191B1B29
                2929343434494949727272959595B5B5B5C4C5C5CDCDCDCCCCCCC8C8C8C1C1C1
                B4B5B6A6A6A88E8E8E7777774D4D4D4C4C4C6F6F6F9C9C9CD1D2D3EDEFF3ECD3
                9FDD9808E29300E29600C479009B5D176550421F263016191CEBEBEBFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF6B6B6B5959594545451A1A1A292929343434494949
                727272959595B5B5B5C4C4C4CDCDCDCCCCCCC8C8C8C1C1C1B5B5B5A6A6A68E8E
                8E7777774D4D4D4C4C4C6F6F6F9C9C9CD2D2D2EFEFEFC6C6C674747470707071
                71715D5D5D4F4F4F4E4E4E282828191919EBEBEBFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFC66C4AC068467573727C7D7DA8A8A8CECECEE0E0E0DFDFDFDBDBDBD6D6
                D6D1D1D1C5C5C5B7B9BB9DA2AB818792706C695A5B5B8D919DB4B5B6EFEFEFFF
                FFFFFFFFFFF9F9F9EEEEEEE7E8E9DFE3EADBE4F7D7C39BDCA124E29800E69D00
                D38800A25F09442C20EAECEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6C6767
                677272727C7C7CA8A8A8CECECEE0E0E0DFDFDFDBDBDBD6D6D6D1D1D1C5C5C5B9
                B9B9A4A4A48989896B6B6B5A5A5A949494B5B5B5EFEFEFFFFFFFFFFFFFF9F9F9
                EEEEEEE8E8E8E4E4E4E8E8E8B9B9B98282827272727676766767674C4C4C2B2B
                2BECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDD0C1F8E7DDF0EEEDECEDEDE9
                E9E9E5E5E5DFDFDFD5D5D5CACACAB6B6B68585857173756D604B97670CA66C07
                C78627C57F03EED063DCDCD6ECEDEFE4E4E4DEDEDFDBDBDCC9C9C8B4B4B3B3B3
                B0BEBFBFA2A8B38E9196CB8D0CE69800E09100DF8F00C49E6EFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFCECECEE5E5E5EDEDEDECECECE9E9E9E5E5E5DFDFDF
                D5D5D5CACACAB6B6B68585857373735B5B5B515151545454717171616161B2B2
                B2DADADAEDEDEDE4E4E4DEDEDEDBDBDBC8C8C8B3B3B3B2B2B2BEBEBEAAAAAA92
                92926D6D6D7373736E6E6E6D6D6D939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFEFCF9FEF9F3FCF9F6EBEFF7DEE1E7B9B9BA9D9D9D8F8F8F969696ADAD
                ADE6E6E6FFFFFFFEFFFFC5B992CFA444FED57EECBA54DABB3DC0B585C4C5C8B3
                B3B0A5A59F9898919C9C95A3A39CAAAAA3ACAEACB19F75BB7D00C39534806427
                D1C9B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7
                F7F8F8F8F0F0F0E2E2E2B9B9B99D9D9D8F8F8F969696ADADADE6E6E6FFFFFFFE
                FEFEAEAEAE8C8C8CBFBFBFA1A1A1989898A7A7A7C5C5C5B2B2B2A3A3A3959595
                999999A0A0A0A7A7A7ADADAD9494945E5E5E7D7D7D545454C4C4C4FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9F0F7DFACECC5759C
                834E818792ECF2FFFFFFFFFFFFFFF4F4F4F2F2F2EEEEEEF7F7F7E5E7EBA8ADB8
                6C7076A9AFB6AAADB4A2A3A2A6A69FACACA6B3B3AEBABAB4C0C0BAC4C4BECACA
                C4CECEC7DCDEDB4B535F8793A9B7BFCCEBEDF1FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6D2D2D2B1B1B1767676898989F5F5F5
                FFFFFFFFFFFFF4F4F4F2F2F2EEEEEEF7F7F7E7E7E7AFAFAF717171B0B0B0AEAE
                AEA2A2A2A3A3A3AAAAAAB1B1B1B8B8B8BEBEBEC2C2C2C8C8C8CBCBCBDCDCDC55
                5555989898C1C1C1EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFCFAF5EECC84E7A316DD8900976400A29780C2C7D3E0E5
                EF82868E464A530F11170101020707080000009E9E99C4C4BEC4C4BECACAC4CD
                CDC7D1D1CAD3D3CCD4D4CED4D4CED5D5CFD5D5CFD9DAD5CBC2B5B87613A15C02
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF8F8F8BABABA8080806969694B4B4B919191CACACAE7E7E78787874C4C4C12
                12120101010707070000009C9C9CC2C2C2C2C2C2C8C8C8CBCBCBCECECED0D0D0
                D2D2D2D2D2D2D3D3D3D3D3D3D8D8D8BFBFBF5F5F5F484848FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF9EFD8EFC262DB8900BB75009A721F846219734A005D42083B3834434344
                3A3A3A4F504FE6E6E0D9D9D3DADAD4D9D9D4DADAD4D9D9D4DADAD5DBDBD5DBDB
                D7DCDCD7DDDED7E3E9ECAE6C0DC6851CDDCEC7FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9AAAAAA
                6969695959595D5D5D5050503838383333333737374343433A3A3A4F4F4FE4E4
                E4D7D7D7D8D8D8D7D7D7D8D8D8D7D7D7D8D8D8D9D9D9D9D9D9DADADADBDBDBE9
                E9E95757576D6D6DCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E8C5F7D6
                92FAD993FFEBBEFEF9EDC7C8CBABABABA5A6A8A2998BE7E7E1DDDDD8DDDDD7DD
                DDD8E1E1DCE4E4DEE5E5E0E5E5E1E6E6E1E7E7E1E6E6E2EBF0F1C69F68D8982F
                C9A16EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFC5C5C5C7C7C7DFDFDFF5
                F5F5C8C8C8ABABABA6A6A6959595E5E5E5DBDBDBDBDBDBDBDBDBDFDFDFE2E2E2
                E3E3E3E3E3E3E4E4E4E5E5E5E4E4E4EFEFEF9393937F7F7F969696FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF3DEBECCB892DDDFDDDEDED7DDDDD8DEDED9DFDFD9E2E2DDE5E5DFE7E7
                E3E9E9E4E9E9E4E9EBE8DBCFBBD8972FD49B48FDFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6AEAE
                AEDEDEDEDBDBDBDBDBDBDCDCDCDDDDDDE0E0E0E3E3E3E5E5E5E7E7E7E7E7E7E9
                E9E9CACACA7F7F7F888888FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2A55CE2E7E8E2E2DDE3
                E3DDE4E4DFE5E5DFE6E6E0E5E5E0E7E7E2E7E7E2E9E9E3EAEAE5ECF0F1DEA853
                EDAE47E6DACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF949494E6E6E6E0E0E0E1E1E1E2E2E2E3E3E3
                E4E4E4E3E3E3E5E5E5E5E5E5E7E7E7E8E8E8EFEFEF949494969696D8D8D8FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFEAC489E4DFD4E7E8E4E8E8E2E9E9E3E9E9E4EAEAE5EBEBE5ECEC
                E7EDEDE7EEEEE8EEEEE9F1F5F6E7C792FFC85DC6A07CFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6
                B6DCDCDCE6E6E6E6E6E6E7E7E7E7E7E7E8E8E8E9E9E9EAEAEAEBEBEBECECECEC
                ECECF4F4F4BABABAAEAEAE999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEED7EACD9CEDF0EFED
                EDE8EFEFE9EFEFE9F0F0EAF1F1EBF1F1ECF1F1ECF1F1ECF1F1ECF1F2EFEFEBE1
                FEBA47CF9C5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8C1C1C1EFEFEFEBEBEBEDEDEDEDEDED
                EEEEEEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFF0F0F0E8E8E89F9F9F8E8E8EFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF8CB80EBF1F3F1F1ECF2F2EDF2F2EDF1F1ECF1F1ECF1F1
                ECF1F1ECF1F1ECF1F1ECF1F1ECEFF2EFFDF4E6FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFB9B9B9F0F0F0EFEFEFF0F0F0F0F0F0EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
                EFEFEFEFEFF0F0F0F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0A5DED4C3DF
                E0DDE7E7E2EBEBE7EFEFEBF1F1ECF2F2EDF1F1ECF1F1ECF1F1ECF1F1ECEFEFEA
                F9FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1D0D0D0DEDEDEE5E5E5E9E9E9
                EDEDEDEFEFEFF0F0F0EFEFEFEFEFEFEFEFEFEFEFEFEDEDEDF9F9F9FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFE3E0D8CCCCC8D6D6D1DADAD6E0E0DCE4E4E0EAEA
                E5ECECE8EDEDE9EDEDE8EAEAE4E6E6E2EFEFECFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFDDDDDDCACACAD4D4D4D8D8D8DEDEDEE2E2E2E8E8E8EAEAEAEBEBEBEB
                EBEBE8E8E8E4E4E4EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEEEEB2
                B2ADBFBFB9C2C2BCC6C6C1CACAC5CECEC9D2D2CCD6D6D0D8D8D2DBDBD5D9D9D4
                E2E2DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDB0B0B0BDBDBDC0C0C0
                C4C4C4C8C8C8CCCCCCD0D0D0D4D4D4D6D6D6D9D9D9D7D7D7E0E0E0FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFF7F7F69E9E98A6A6A0A9A9A3ACACA6AEAEA7B1B1
                ABB3B3ADB7B7B0BCBCB5CDCDC6D8D8D2E6E6E3FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF6F6F69C9C9CA4A4A4A7A7A7AAAAAAABABABAFAFAFB1B1B1B4B4B4B9
                B9B9CACACAD6D6D6E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC85
                857E92928CA1A19CB5B5B0CECECBDFDFDCEEEEEDFEFEFEFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC8282829090909F9F9F
                B3B3B3CDCDCDDEDEDEEDEDEDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEEEEEDFDFDFDFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFEFEFEEDEDEDFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              NumGlyphs = 2
            end
            object BitBtn2: TBitBtn
              Left = 20
              Top = 367
              Width = 188
              Height = 53
              Caption = 'Confirmar Presen'#231'a'
              Default = True
              TabOrder = 4
              OnClick = BitBtn2Click
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333330000333333333333333333333333F33333333333
                00003333344333333333333333388F3333333333000033334224333333333333
                338338F3333333330000333422224333333333333833338F3333333300003342
                222224333333333383333338F3333333000034222A22224333333338F338F333
                8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                0000333333333A222433333333333338F338F33300003333333333A222433333
                333333338F338F33000033333333333A222433333333333338F338F300003333
                33333333A222433333333333338F338F00003333333333333A22433333333333
                3338F38F000033333333333333A223333333333333338F830000333333333333
                333A333333333333333338330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
          end
        end
      end
    end
  end
  inherited dsControle: TDataSource
    DataSet = DMGERAL.TB_AGENDA
    Left = 381
    Top = 445
  end
  inherited dsGrid: TDataSource
    DataSet = qyAgenda
    Left = 413
    Top = 445
  end
  object qyAgenda: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyAgendaBeforeOpen
    OnCalcFields = qyAgendaCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      'AGENDA.*, '
      'IIF(FL_CONFIRMADO=1,'#39'SIM'#39','#39'NAO'#39') CONFIRMADO,'
      'IIF(FL_REALIZADO=1,'#39'SIM'#39','#39'NAO'#39') REALIZADO,'
      'IIF(FL_REMARCADO=1,'#39'SIM'#39','#39'NAO'#39') REMARCADO,'
      'IIF(FL_TRANSFERIDO=1,'#39'SIM'#39','#39'NAO'#39') TRANSFERIDO,'
      'PACIENTE.*,'
      '(PACIENTE.NR_TEL_1 || '#39' '#39' || PACIENTE.NR_TEL_2) NR_TEL,'
      '(select DS_UNIDADE from UNIDADE'
      'where CD_UNIDADE = PACIENTE.CD_UNIDADE)DS_UNIDADE,'
      '(select NM_MEDICO from MEDICO'
      'where CD_MEDICO = AGENDA.CD_MEDICO)NM_MEDICO'
      'from "AGENDA",  PACIENTE, UNIDADE, MEDICO'
      'WHERE PACIENTE.CD_PACIENTE = AGENDA.CD_PACIENTE'
      'AND AGENDA.CD_UNIDADE = UNIDADE.CD_UNIDADE'
      'AND AGENDA.CD_MEDICO = MEDICO.CD_MEDICO')
    Left = 342
    Top = 443
    object qyAgendaCD_AGENDA: TIntegerField
      FieldName = 'CD_AGENDA'
      Origin = 'AGENDA.CD_AGENDA'
      Required = True
    end
    object qyAgendaCD_PACIENTE: TIntegerField
      FieldName = 'CD_PACIENTE'
      Origin = 'AGENDA.CD_PACIENTE'
    end
    object qyAgendaDT_AGENDA: TDateTimeField
      FieldName = 'DT_AGENDA'
      Origin = 'AGENDA.DT_AGENDA'
    end
    object qyAgendaCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'AGENDA.CD_UNIDADE'
    end
    object qyAgendaCD_MEDICO: TIntegerField
      FieldName = 'CD_MEDICO'
      Origin = 'AGENDA.CD_MEDICO'
    end
    object qyAgendaFL_REMARCADO: TIntegerField
      FieldName = 'FL_REMARCADO'
      Origin = 'AGENDA.FL_REMARCADO'
    end
    object qyAgendaFL_REALIZADO: TIntegerField
      FieldName = 'FL_REALIZADO'
      Origin = 'AGENDA.FL_REALIZADO'
    end
    object qyAgendaTP_ESQUEMA: TIntegerField
      FieldName = 'TP_ESQUEMA'
      Origin = 'AGENDA.TP_ESQUEMA'
    end
    object qyAgendaVL_CD4: TIntegerField
      FieldName = 'VL_CD4'
      Origin = 'AGENDA.VL_CD4'
    end
    object qyAgendaNM_PACIENTE: TIBStringField
      FieldName = 'NM_PACIENTE'
      Size = 50
    end
    object qyAgendaDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Size = 50
    end
    object qyAgendaNM_MEDICO: TIBStringField
      FieldName = 'NM_MEDICO'
      Size = 50
    end
    object qyAgendaCD_UND: TIntegerField
      FieldName = 'CD_UND'
      Origin = 'AGENDA.CD_UND'
      Required = True
    end
    object qyAgendaDT_REMARCACAO: TDateTimeField
      FieldName = 'DT_REMARCACAO'
      Origin = 'AGENDA.DT_REMARCACAO'
    end
    object qyAgendaCD_BAIRRO: TIntegerField
      FieldName = 'CD_BAIRRO'
      Origin = 'PACIENTE.CD_BAIRRO'
    end
    object qyAgendaCD_PAIS: TIntegerField
      FieldName = 'CD_PAIS'
      Origin = 'PACIENTE.CD_PAIS'
    end
    object qyAgendaCD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'PACIENTE.CD_MUNICIPIO'
    end
    object qyAgendaCD_MOR_MUNICIPIO: TIntegerField
      FieldName = 'CD_MOR_MUNICIPIO'
      Origin = 'PACIENTE.CD_MOR_MUNICIPIO'
    end
    object qyAgendaCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'PACIENTE.CD_PROVINCIA'
    end
    object qyAgendaCD_COMUNA: TIntegerField
      FieldName = 'CD_COMUNA'
      Origin = 'PACIENTE.CD_COMUNA'
    end
    object qyAgendaDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      Origin = 'PACIENTE.DT_NASCIMENTO'
      Required = True
    end
    object qyAgendaIDADE: TSmallintField
      FieldName = 'IDADE'
      Origin = 'PACIENTE.IDADE'
      Required = True
    end
    object qyAgendaNM_MAE: TIBStringField
      FieldName = 'NM_MAE'
      Origin = 'PACIENTE.NM_MAE'
      Required = True
      Size = 50
    end
    object qyAgendaCD_MORADA_PERM: TIBStringField
      FieldName = 'CD_MORADA_PERM'
      Origin = 'PACIENTE.CD_MORADA_PERM'
      FixedChar = True
      Size = 1
    end
    object qyAgendaCD_ESCOLARIDADE: TSmallintField
      FieldName = 'CD_ESCOLARIDADE'
      Origin = 'PACIENTE.CD_ESCOLARIDADE'
    end
    object qyAgendaDS_ESCOLARIDADE: TIBStringField
      FieldName = 'DS_ESCOLARIDADE'
      Origin = 'PACIENTE.DS_ESCOLARIDADE'
      Size = 50
    end
    object qyAgendaTP_SEXO: TIBStringField
      FieldName = 'TP_SEXO'
      Origin = 'PACIENTE.TP_SEXO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qyAgendaMESES: TIntegerField
      FieldName = 'MESES'
      Origin = 'PACIENTE.MESES'
    end
    object qyAgendaESTADO_CIVIL: TIntegerField
      FieldName = 'ESTADO_CIVIL'
      Origin = 'PACIENTE.ESTADO_CIVIL'
    end
    object qyAgendaCD_NAR_PROVINCIA: TIntegerField
      FieldName = 'CD_NAR_PROVINCIA'
      Origin = 'PACIENTE.CD_NAR_PROVINCIA'
    end
    object qyAgendaCD_PACIENTE_ORACLE: TIntegerField
      FieldName = 'CD_PACIENTE_ORACLE'
      Origin = 'PACIENTE.CD_PACIENTE_ORACLE'
    end
    object qyAgendaCD_OCUPACAO: TIntegerField
      FieldName = 'CD_OCUPACAO'
      Origin = 'PACIENTE.CD_OCUPACAO'
    end
    object qyAgendaCD_DOCUMENTO: TIntegerField
      FieldName = 'CD_DOCUMENTO'
      Origin = 'PACIENTE.CD_DOCUMENTO'
    end
    object qyAgendaTP_DOCUMENTO: TIBStringField
      FieldName = 'TP_DOCUMENTO'
      Origin = 'PACIENTE.TP_DOCUMENTO'
    end
    object qyAgendaNR_DOCUMENTO: TIBStringField
      FieldName = 'NR_DOCUMENTO'
      Origin = 'PACIENTE.NR_DOCUMENTO'
    end
    object qyAgendaNR_TEL_1: TIBStringField
      FieldName = 'NR_TEL_1'
      Origin = 'PACIENTE.NR_TEL_1'
    end
    object qyAgendaNR_TEL_2: TIBStringField
      FieldName = 'NR_TEL_2'
      Origin = 'PACIENTE.NR_TEL_2'
    end
    object qyAgendaDS_ENDERECO: TIBStringField
      FieldName = 'DS_ENDERECO'
      Origin = 'PACIENTE.DS_ENDERECO'
      Size = 200
    end
    object qyAgendaFL_GESTANTE: TIntegerField
      FieldName = 'FL_GESTANTE'
      Origin = 'PACIENTE.FL_GESTANTE'
    end
    object qyAgendaFL_NOTIFICACAO: TIntegerField
      FieldName = 'FL_NOTIFICACAO'
      Origin = 'PACIENTE.FL_NOTIFICACAO'
    end
    object qyAgendaNR_MESES_GESTANTE: TIntegerField
      FieldName = 'NR_MESES_GESTANTE'
      Origin = 'PACIENTE.NR_MESES_GESTANTE'
    end
    object qyAgendaFL_RESULTADO: TIBStringField
      FieldName = 'FL_RESULTADO'
      Origin = 'PACIENTE.FL_RESULTADO'
      FixedChar = True
      Size = 1
    end
    object qyAgendaDS_ESQUEMA: TIBStringField
      FieldName = 'DS_ESQUEMA'
      Origin = 'AGENDA.DS_ESQUEMA'
      Size = 30
    end
    object qyAgendaNR_PROCESSO: TIntegerField
      FieldName = 'NR_PROCESSO'
      Origin = 'PACIENTE.NR_PROCESSO'
    end
    object qyAgendaFL_CONFIRMADO: TIntegerField
      FieldName = 'FL_CONFIRMADO'
      Origin = 'AGENDA.FL_CONFIRMADO'
    end
    object qyAgendaFL_TRANSFERIDO: TIntegerField
      FieldName = 'FL_TRANSFERIDO'
      Origin = 'AGENDA.FL_TRANSFERIDO'
    end
    object qyAgendaCONFIRMADO: TIBStringField
      FieldName = 'CONFIRMADO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qyAgendaREALIZADO: TIBStringField
      FieldName = 'REALIZADO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qyAgendaREMARCADO: TIBStringField
      FieldName = 'REMARCADO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qyAgendaTRANSFERIDO: TIBStringField
      FieldName = 'TRANSFERIDO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qyAgendaNR_LAB: TIntegerField
      FieldName = 'NR_LAB'
      Origin = 'AGENDA.NR_LAB'
    end
    object qyAgendaFL_PARECER: TIntegerField
      FieldName = 'FL_PARECER'
      Origin = 'AGENDA.FL_PARECER'
    end
    object qyAgendaNR_TEL: TIBStringField
      FieldName = 'NR_TEL'
      Size = 41
    end
    object qyAgendaNR_PROCESSO_CRIANCA_EXP: TIBStringField
      FieldName = 'NR_PROCESSO_CRIANCA_EXP'
      Origin = 'PACIENTE.NR_PROCESSO_CRIANCA_EXP'
      Size = 15
    end
  end
  object qyPacienteExistente: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select PACIENTE.*, AGENDA.*,'
      '(select DS_UNIDADE from UNIDADE'
      'where CD_UNIDADE = PACIENTE.CD_UND)DS_UNIDADE,'
      '(select NM_MEDICO from MEDICO'
      'where CD_MEDICO = AGENDA.CD_MEDICO)NM_MEDICO'
      'from PACIENTE'
      'Left outer join AGENDA'
      'on(AGENDA.CD_PACIENTE = PACIENTE.CD_PACIENTE'
      'and AGENDA.DT_AGENDA in (select MAX(dt_agenda) from AGENDA A'
      'where A.cd_paciente = paciente.cd_paciente))'
      
        'WHERE (PACIENTE.FL_NOTIFICACAO = 1 or PACIENTE.FL_CRIANCA_EXPOST' +
        'A = '#39'S'#39')')
    Left = 340
    Top = 413
    object qyPacienteExistenteCD_PACIENTE: TIntegerField
      FieldName = 'CD_PACIENTE'
      Origin = 'PACIENTE.CD_PACIENTE'
      Required = True
    end
    object qyPacienteExistenteCD_UND: TIntegerField
      FieldName = 'CD_UND'
      Origin = 'PACIENTE.CD_UND'
      Required = True
    end
    object qyPacienteExistenteNM_PACIENTE: TIBStringField
      FieldName = 'NM_PACIENTE'
      Origin = 'PACIENTE.NM_PACIENTE'
      Required = True
      Size = 50
    end
    object qyPacienteExistenteDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      Origin = 'PACIENTE.DT_NASCIMENTO'
      Required = True
    end
    object qyPacienteExistenteNM_MAE: TIBStringField
      FieldName = 'NM_MAE'
      Origin = 'PACIENTE.NM_MAE'
      Required = True
      Size = 50
    end
    object qyPacienteExistenteNR_PROCESSO: TIntegerField
      FieldName = 'NR_PROCESSO'
      Origin = 'PACIENTE.NR_PROCESSO'
    end
    object qyPacienteExistenteCD_AGENDA: TIntegerField
      FieldName = 'CD_AGENDA'
      Origin = 'AGENDA.CD_AGENDA'
    end
    object qyPacienteExistenteDT_AGENDA: TDateTimeField
      FieldName = 'DT_AGENDA'
      Origin = 'AGENDA.DT_AGENDA'
    end
    object qyPacienteExistenteCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'AGENDA.CD_UNIDADE'
    end
    object qyPacienteExistenteCD_MEDICO: TIntegerField
      FieldName = 'CD_MEDICO'
      Origin = 'AGENDA.CD_MEDICO'
    end
    object qyPacienteExistenteDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Size = 50
    end
    object qyPacienteExistenteNM_MEDICO: TIBStringField
      FieldName = 'NM_MEDICO'
      Size = 50
    end
    object qyPacienteExistenteNR_PROCESSO_CRIANCA_EXP: TIBStringField
      FieldName = 'NR_PROCESSO_CRIANCA_EXP'
      Origin = 'PACIENTE.NR_PROCESSO_CRIANCA_EXP'
      Size = 15
    end
  end
  object dsPacienteExistente: TDataSource
    AutoEdit = False
    DataSet = qyPacienteExistente
    Left = 285
    Top = 431
  end
  object qyAgendamento: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyAgendamentoBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      ' CD_AGENDA'
      ',CD_PACIENTE'
      ',DT_AGENDA'
      'from AGENDA'
      'where CD_PACIENTE =:PACIENTE'
      'and DT_AGENDA in ('
      '  select DT_AGENDA'
      '  from AGENDA '
      '  where CD_PACIENTE =:PACIENTE '
      '  and DT_AGENDA < :DATA'
      '  /*LISTAMEDICO*/)'
      'order by dt_agenda desc'
      '')
    Left = 356
    Top = 501
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
      end>
    object qyAgendamentoCD_AGENDA: TIntegerField
      FieldName = 'CD_AGENDA'
      Origin = 'AGENDA.CD_AGENDA'
      Required = True
    end
    object qyAgendamentoCD_PACIENTE: TIntegerField
      FieldName = 'CD_PACIENTE'
      Origin = 'AGENDA.CD_PACIENTE'
    end
    object qyAgendamentoDT_AGENDA: TDateTimeField
      FieldName = 'DT_AGENDA'
      Origin = 'AGENDA.DT_AGENDA'
    end
  end
  object qyAtendimento: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyAtendimentoBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT '
      '  TP_PERIODO'
      '  ,DT_ATENDIMENTO'
      'FROM ATENDIMENTO'
      'WHERE CD_MEDICO = :CD_MEDICO'
      'AND DT_ATENDIMENTO BETWEEN  :DE AND :ATE')
    Left = 454
    Top = 435
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CD_MEDICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATE'
        ParamType = ptUnknown
      end>
  end
  object qyTotalDia: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyTotalDiaBeforeOpen
    OnCalcFields = qyAgendaCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT count(*) CNT, DT_AGENDA, CD_MEDICO'
      'FROM  AGENDA'
      'WHERE CD_MEDICO = :CD_MEDICO'
      'AND  DT_AGENDA between :DE and :ATE'
      'group by CD_MEDICO, DT_AGENDA')
    Left = 270
    Top = 395
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CD_MEDICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATE'
        ParamType = ptUnknown
      end>
  end
  object PopupMenu2: TPopupMenu
    Left = 421
    Top = 501
    object Lista1: TMenuItem
      Caption = 'Lista'
    end
    object Mapa1: TMenuItem
      Caption = 'Mapa'
      object ConfigurarImpresso1: TMenuItem
        Caption = 'Configurar Impress'#227'o'
      end
      object VizualisarImpresso1: TMenuItem
        Caption = 'Vizualisar Impress'#227'o'
      end
      object Imprimir1: TMenuItem
        Caption = 'Imprimir'
      end
      object TMenuItem
      end
    end
  end
  object qyMedico: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CD_MEDICO, NM_MEDICO, DT_ATIVO, FL_ATIVO, NR_ATENDIMENTO '
      'from MEDICO')
    Left = 436
    Top = 405
    object qyMedicoCD_MEDICO: TIntegerField
      FieldName = 'CD_MEDICO'
      Origin = 'MEDICO.CD_MEDICO'
      Required = True
    end
    object qyMedicoNM_MEDICO: TIBStringField
      FieldName = 'NM_MEDICO'
      Origin = 'MEDICO.NM_MEDICO'
      Size = 50
    end
    object qyMedicoDT_ATIVO: TDateTimeField
      FieldName = 'DT_ATIVO'
      Origin = 'MEDICO.DT_ATIVO'
    end
    object qyMedicoFL_ATIVO: TIntegerField
      FieldName = 'FL_ATIVO'
      Origin = 'MEDICO.FL_ATIVO'
    end
    object qyMedicoNR_ATENDIMENTO: TIntegerField
      FieldName = 'NR_ATENDIMENTO'
      Origin = 'MEDICO.NR_ATENDIMENTO'
    end
  end
  object dsMedico: TDataSource
    AutoEdit = False
    DataSet = qyMedico
    Left = 461
    Top = 463
  end
  object qyAtendimentoDia: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT '
      '  TP_PERIODO'
      'FROM ATENDIMENTO'
      'WHERE CD_MEDICO = :CD_MEDICO'
      'AND DT_ATENDIMENTO = :DATA')
    Left = 513
    Top = 435
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CD_MEDICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = qyTotalDia
    Left = 509
    Top = 493
  end
  object qyTotalDia2: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT count(*) CNT FROM  AGENDA'
      'WHERE CD_MEDICO = :CD_MEDICO'
      'AND  DT_AGENDA =:DATA'
      '')
    Left = 310
    Top = 395
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CD_MEDICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
  end
  object qyPacienteAgendado: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CD_AGENDA, DT_AGENDA, CD_PACIENTE, CD_MEDICO from'
      'AGENDA'
      'where DT_AGENDA =:DATA'
      'and CD_PACIENTE =:PACIENTE'
      'and CD_MEDICO =:MEDICO')
    Left = 309
    Top = 469
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PACIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MEDICO'
        ParamType = ptUnknown
      end>
    object qyPacienteAgendadoDT_AGENDA: TDateTimeField
      FieldName = 'DT_AGENDA'
      Origin = 'AGENDA.DT_AGENDA'
    end
    object qyPacienteAgendadoCD_PACIENTE: TIntegerField
      FieldName = 'CD_PACIENTE'
      Origin = 'AGENDA.CD_PACIENTE'
    end
    object qyPacienteAgendadoCD_MEDICO: TIntegerField
      FieldName = 'CD_MEDICO'
      Origin = 'AGENDA.CD_MEDICO'
    end
    object qyPacienteAgendadoCD_AGENDA: TIntegerField
      FieldName = 'CD_AGENDA'
      Origin = 'AGENDA.CD_AGENDA'
      Required = True
    end
  end
  object ImageList1: TImageList
    Left = 253
    Top = 501
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B00840000008400000084000000840000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B008400000084000000840000007B7B7B007B7B7B0084000000840000008400
      00007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF007B7B
      7B007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00840000008400
      0000840000008400000084000000000000000000000084000000840000008400
      000084000000840000007B7B7B00000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B0000000000FFFF
      FF007B7B7B007B7B7B0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007B7B7B007B7B7B000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000007B7B7B0000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000FFFFFF00000000007B7B7B007B7B7B0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF007B7B7B007B7B7B0000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0084000000840000008400000084000000840000008400
      0000840000007B7B7B00000000000000000000000000000000007B7B7B008400
      00008400000084000000840000008400000084000000840000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF000000000000000000000000007B7B7B007B7B7B0000000000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF007B7B7B007B7B7B00000000000000000000000000000000007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000007B7B
      7B00840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000008400
      0000840000008400000084000000840000008400000084000000840000008400
      00007B7B7B000000000000000000000000000000000000000000000000007B7B
      7B0000000000FFFFFF00000000000000000000000000000000007B7B7B007B7B
      7B0000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000000000000000000000000000007B7B7B00840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000007B7B7B000000000000000000FFFFFF00FFFFFF00FFFF
      FF007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B7B007B7B7B00FFFFFF00FFFFFF00000000007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000000000007B7B7B007B7B7B007B7B7B0000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00007B7B7B00000000000000000000000000000000000000000000000000FFFF
      FF007B7B7B007B7B7B000000000000000000000000007B7B7B007B7B7B000000
      0000FFFFFF00FFFFFF00000000000000000000000000000000007B7B7B000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00FFFFFF0000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B0000000000FFFFFF00FFFFFF000000000000000000000000007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000FFFFFF007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B0000000000FFFFFF00FFFFFF00000000007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B000000
      000000000000FFFFFF007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B7B7B007B7B7B0000000000FFFFFF00FFFF
      FF007B7B7B0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF0000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B00FFFFFF00FFFF
      FF007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B000000
      0000FFFFFF007B7B7B00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF0000000000000000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B0000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF9FFFFFFCFFF81FFF07FFFFF1
      FFE007FF89FFFFC1FF8181FFA27FFF1BFE03C07FD49FFC77F803C01FE727F1E7
      E007E007EBC9C7EF800FF0018000800000000000000C6001C00FF003F7E393D7
      F007E00FE78FE4E7FC07E03FEE3FF92BFF03C0FFD8FFFE45FFC183FF83FFFF91
      FFF18FFF8FFFFFE0FFFC3FFF3FFFFFF900000000000000000000000000000000
      000000000000}
  end
  object qyExamesAgenda: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    Left = 555
    Top = 473
  end
  object qyEtiqueta: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select a.dt_agenda, a.nr_lab, p.nr_processo '
      'from agenda a, paciente p'
      'where p.cd_paciente = a.cd_paciente'
      'and a.cd_medico = :MEDICO'
      'and a.dt_agenda = :DATA')
    Left = 157
    Top = 445
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MEDICO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object qyEtiquetaDT_AGENDA: TDateTimeField
      FieldName = 'DT_AGENDA'
      Origin = 'AGENDA.DT_AGENDA'
    end
    object qyEtiquetaNR_LAB: TIntegerField
      FieldName = 'NR_LAB'
      Origin = 'AGENDA.NR_LAB'
    end
    object qyEtiquetaNR_PROCESSO: TIntegerField
      FieldName = 'NR_PROCESSO'
      Origin = 'PACIENTE.NR_PROCESSO'
    end
  end
  object RvDataSetConnectionEtiqueta: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qyEtiqueta
    Left = 125
    Top = 445
  end
  object RvEtiqueta: TRvProject
    Engine = RvSystemEtiqueta
    Left = 93
    Top = 445
  end
  object RvSystemEtiqueta: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormWidth = 54
    SystemPreview.FormHeight = 17
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 61
    Top = 445
  end
  object qyEsquema: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    AfterOpen = qyEsquemaAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select DS_SIGLA from ESQUEMA')
    Left = 652
    Top = 405
  end
  object dsEsquema: TDataSource
    AutoEdit = False
    DataSet = qyEsquema
    Left = 653
    Top = 442
  end
end
