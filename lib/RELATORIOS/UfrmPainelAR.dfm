object frmPainelAR: TfrmPainelAR
  Left = 401
  Top = 157
  Width = 719
  Height = 419
  BorderIcons = [biSystemMenu]
  Caption = 'Gerar Auditoria Anual'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 711
    Height = 96
    Align = alTop
    TabOrder = 0
    object Label20: TLabel
      Left = 8
      Top = 7
      Width = 60
      Height = 13
      Caption = 'Prov'#237'ncia:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 9
      Top = 46
      Width = 27
      Height = 13
      Caption = 'Ano:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 193
      Top = 47
      Width = 103
      Height = 35
      Caption = 'Executar'
      Glyph.Data = {
        060E0000424D060E000000000000360000002800000022000000220000000100
        180000000000D00D0000C30E0000C30E00000000000000000000FFFFFFFFFFFF
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
        FFFFFFFFFFFFD7F8FFABF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFEFFCFF70E9FF38E0FFF7FDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFBFEFF97EFFF14DBFF14DBFFDFFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBF4FF2CDEFF00D8FF04D8FFBBF4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBF9FF50E4FF00D8FF00D8FF00D8FF
        83ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFCFF78EAFF08D9FF00D8FF00
        D8FF00D8FF50E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEFF9BEFFF18DBFF00D8
        FF00D8FF00D8FF00D8FF24DDFFF3FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3F5FF34DFFF
        00D8FF00D8FF00D8FF00D8FF00D8FF0CD9FFD3F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C
        EAFF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FFA7F1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFAFF2FF3CE1FF00D8FF00D8FF00D8FF00D8FF70E9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBF4FF2CDEFF00D8FF00D8FF00D8
        FF40E1FFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFAFF54E4FF00D8FF00D8FF
        00D8FF00D8FF00D8FF50E4FFDBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FDFF7CEAFF08D9FF00
        D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF08D9FFD7F8FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7F1FF1CDC
        FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF04D8FFABF2FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFF7FF
        3CE1FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF04D8
        FFABF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFDFFAFF28DEFF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF
        00D8FF0CD9FFC3F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFBFEFF9BEFFF18DBFF00D8FF00D8FF00D8FF00
        D8FF00D8FF00D8FF0CD9FFC3F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FAFF50E4FF00D8
        FF00D8FF00D8FF00D8FF00D8FF14DBFFC3F5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FDFF83ECFF
        0CD9FF00D8FF00D8FF00D8FF00D8FF00D8FF18DBFFD7F8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3
        F3FF24DDFF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF1CDCFFA7F1FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFDBF9FF48E3FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00
        D8FF00D8FF14DBFFEFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF3FDFF78EAFF04D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8
        FF00D8FF00D8FF00D8FF00D8FFABF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFA3F0FF18DBFF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF
        00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF54E4FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F8FF60E6FF04D8FF00D8FF00D8FF00
        D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF14DBFFEBFBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FB
        FF70E9FF10DAFF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FF00D8FFAB
        F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEFFCFF87ECFF18DBFF00D8FF00D8FF00D8FF00D8
        FF00D8FF54E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FDFF9BEFFF
        28DEFF00D8FF00D8FF14DBFFEBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFAFF2FF3CE1FFABF2FFFFFFFFFFFFFFFFFFFFFFFFFF
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
        FFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object leProvincia: TRxLookupEdit
      Left = 8
      Top = 21
      Width = 287
      Height = 21
      TabStop = False
      LookupDisplay = 'DS_PROVINCIA'
      LookupField = 'CD_PROVINCIA'
      LookupSource = dsProvincia
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      OnChange = leProvinciaChange
    end
    object cbAno: TdxPickEdit
      Left = 8
      Top = 61
      Width = 60
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = bts3D
      Style.ButtonTransparence = ebtInactive
      TabOrder = 1
      EditMask = '!0000;1;_'
      ReadOnly = False
      Text = '    '
      StoredValues = 68
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 96
    Width = 711
    Height = 289
    Align = alClient
    TabOrder = 1
    object dxDBGrid1: TdxDBGrid
      Left = 1
      Top = 1
      Width = 709
      Height = 287
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      DataSource = dsGrid
      Filter.Criteria = {00000000}
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
      object dxDBGrid1ANO: TdxDBGridMaskColumn
        Caption = 'Ano'
        Width = 52
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ANO'
      end
      object dxDBGrid1DS_PROVINCIA: TdxDBGridMaskColumn
        Caption = 'Prov'#237'ncia'
        Width = 304
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DS_PROVINCIA'
      end
      object dxDBGrid1DT_REGISTRO: TdxDBGridDateColumn
        Caption = 'Data de registro'
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DT_REGISTRO'
      end
      object dxDBGrid1DT_EXP: TdxDBGridDateColumn
        Caption = 'Data de Exporta'#231#227'o'
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DT_EXP'
      end
      object dxDBGrid1TIPO: TdxDBGridMaskColumn
        Caption = 'Tipo'
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO'
      end
      object dxDBGrid1Column6: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CD_PROVINCIA'
      end
    end
  end
  object qyATV: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyATVBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano,'
      'sum(vl_aconselhados) TOTAL_ACONSELHADOS1,'
      'sum(vl_positivos) TOTAL_POSITIVOS1,'
      'sum(vl_negativos) TOTAL_NEGATIVOS1,'
      'sum(vl_indeterminados) TOTAL_INDETERMINADO1'
      'from registro_atv'
      'where cd_provincia =:PROVINCIA'
      'and vl_mesano like (:ANO) '
      'group by'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano')
    Left = 13
    Top = 119
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO'
        ParamType = ptUnknown
      end>
    object qyATVCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'REGISTRO_ATV_AR.CD_PROVINCIA'
      Required = True
    end
    object qyATVCD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'REGISTRO_ATV_AR.CD_MUNICIPIO'
      Required = True
    end
    object qyATVCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'REGISTRO_ATV_AR.CD_UNIDADE'
      Required = True
    end
    object qyATVVL_MESANO: TIBStringField
      FieldName = 'VL_MESANO'
      Origin = 'REGISTRO_ATV_AR.VL_MESANO'
      Required = True
      Size = 8
    end
    object qyATVTOTAL_ACONSELHADOS1: TLargeintField
      FieldName = 'TOTAL_ACONSELHADOS1'
    end
    object qyATVTOTAL_POSITIVOS1: TLargeintField
      FieldName = 'TOTAL_POSITIVOS1'
    end
    object qyATVTOTAL_NEGATIVOS1: TLargeintField
      FieldName = 'TOTAL_NEGATIVOS1'
    end
    object qyATVTOTAL_INDETERMINADO1: TLargeintField
      FieldName = 'TOTAL_INDETERMINADO1'
    end
  end
  object qyPTV: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyPTVBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano,'
      'sum(VL_ADMITIDAS_PTV) TOTAL_ADMITIDAS_PTV1,'
      'sum(VL_ADMITIDAS_PARTO) TOTAL_ADMITIDAS_PARTO1,'
      'sum(VL_ADMITIDAS_POS_PARTO) TOTAL_ADMITIDAS_POS_PARTO1,'
      'sum(VL_TERAPIA_COMPLETA) TOTAL_TERAPIA_COMPLETA1,'
      'sum(VL_TERAPIA_OUTRO) TOTAL_TERAPIA_OUTRO1,'
      'sum(VL_TERAPIA_NENHUM) TOTAL_TERAPIA_NENHUM1,'
      'sum(VL_TOTAL_CRIANCA) TOTAL_CRIANCA1'
      'from registro_ptv'
      'where cd_provincia =:PROVINCIA'
      'and vl_mesano like (:ANO) '
      'group by'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano')
    Left = 13
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO'
        ParamType = ptUnknown
      end>
    object qyPTVCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'REGISTRO_PTV_AR.CD_PROVINCIA'
      Required = True
    end
    object qyPTVCD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'REGISTRO_PTV_AR.CD_MUNICIPIO'
      Required = True
    end
    object qyPTVCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'REGISTRO_PTV_AR.CD_UNIDADE'
      Required = True
    end
    object qyPTVVL_MESANO: TIBStringField
      FieldName = 'VL_MESANO'
      Origin = 'REGISTRO_PTV_AR.VL_MESANO'
      Required = True
      Size = 8
    end
    object qyPTVTOTAL_ADMITIDAS_PTV1: TLargeintField
      FieldName = 'TOTAL_ADMITIDAS_PTV1'
    end
    object qyPTVTOTAL_ADMITIDAS_PARTO1: TLargeintField
      FieldName = 'TOTAL_ADMITIDAS_PARTO1'
    end
    object qyPTVTOTAL_ADMITIDAS_POS_PARTO1: TLargeintField
      FieldName = 'TOTAL_ADMITIDAS_POS_PARTO1'
    end
    object qyPTVTOTAL_TERAPIA_COMPLETA1: TLargeintField
      FieldName = 'TOTAL_TERAPIA_COMPLETA1'
    end
    object qyPTVTOTAL_TERAPIA_OUTRO1: TLargeintField
      FieldName = 'TOTAL_TERAPIA_OUTRO1'
    end
    object qyPTVTOTAL_TERAPIA_NENHUM1: TLargeintField
      FieldName = 'TOTAL_TERAPIA_NENHUM1'
    end
    object qyPTVTOTAL_CRIANCA1: TLargeintField
      FieldName = 'TOTAL_CRIANCA1'
    end
  end
  object qyTARV: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyTARVBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano,'
      'sum(VL_ACUMULADOS) TOTAL_ACUMULADOS1,'
      'sum(VL_NOVOS) TOTAL_NOVOS1,'
      'sum(VL_TRANSFERIDOS) TOTAL_TRANSFERIDOS1,'
      'sum(VL_ABANDONOS) TOTAL_ABANDONOS1,'
      'sum(VL_TRANSFERIDOS_PARA) TOTAL_TRANSFERIDOS_PARA1,'
      'sum(VL_OBITOS) TOTAL_OBITOS1'
      'from registro_tarv'
      'where cd_provincia =:PROVINCIA'
      'and vl_mesano like (:ANO) '
      'group by'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano')
    Left = 13
    Top = 183
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO'
        ParamType = ptUnknown
      end>
    object qyTARVCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'REGISTRO_TARV_AR.CD_PROVINCIA'
      Required = True
    end
    object qyTARVCD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'REGISTRO_TARV_AR.CD_MUNICIPIO'
      Required = True
    end
    object qyTARVCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'REGISTRO_TARV_AR.CD_UNIDADE'
      Required = True
    end
    object qyTARVVL_MESANO: TIBStringField
      FieldName = 'VL_MESANO'
      Origin = 'REGISTRO_TARV_AR.VL_MESANO'
      Required = True
      Size = 8
    end
    object qyTARVTOTAL_ACUMULADOS1: TLargeintField
      FieldName = 'TOTAL_ACUMULADOS1'
    end
    object qyTARVTOTAL_NOVOS1: TLargeintField
      FieldName = 'TOTAL_NOVOS1'
    end
    object qyTARVTOTAL_TRANSFERIDOS1: TLargeintField
      FieldName = 'TOTAL_TRANSFERIDOS1'
    end
    object qyTARVTOTAL_ABANDONOS1: TLargeintField
      FieldName = 'TOTAL_ABANDONOS1'
    end
    object qyTARVTOTAL_TRANSFERIDOS_PARA1: TLargeintField
      FieldName = 'TOTAL_TRANSFERIDOS_PARA1'
    end
    object qyTARVTOTAL_OBITOS1: TLargeintField
      FieldName = 'TOTAL_OBITOS1'
    end
  end
  object qyTARVAcomp: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyTARVAcompBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano,'
      'sum(VL_ACUMULADOS) TOTAL_ACUMULADOS1,'
      'sum(VL_NOVOS) TOTAL_NOVOS1,'
      'sum(VL_TRANSFERIDOS) TOTAL_TRANSFERIDOS1,'
      'sum(VL_ABANDONOS) TOTAL_ABANDONOS1,'
      'sum(VL_TRANSFERIDOS_PARA) TOTAL_TRANSFERIDOS_PARA1,'
      'sum(VL_OBITOS) TOTAL_OBITOS1'
      'from registro_tarv_acomp'
      'where cd_provincia =:PROVINCIA'
      'and vl_mesano like (:ANO) '
      'group by'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano')
    Left = 13
    Top = 215
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO'
        ParamType = ptUnknown
      end>
    object qyTARVAcompCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'REGISTRO_TARV_ACOMP.CD_PROVINCIA'
      Required = True
    end
    object qyTARVAcompCD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'REGISTRO_TARV_ACOMP.CD_MUNICIPIO'
      Required = True
    end
    object qyTARVAcompCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'REGISTRO_TARV_ACOMP.CD_UNIDADE'
      Required = True
    end
    object qyTARVAcompVL_MESANO: TIBStringField
      FieldName = 'VL_MESANO'
      Origin = 'REGISTRO_TARV_ACOMP.VL_MESANO'
      Required = True
      Size = 8
    end
    object qyTARVAcompTOTAL_ACUMULADOS1: TLargeintField
      FieldName = 'TOTAL_ACUMULADOS1'
    end
    object qyTARVAcompTOTAL_NOVOS1: TLargeintField
      FieldName = 'TOTAL_NOVOS1'
    end
    object qyTARVAcompTOTAL_TRANSFERIDOS1: TLargeintField
      FieldName = 'TOTAL_TRANSFERIDOS1'
    end
    object qyTARVAcompTOTAL_ABANDONOS1: TLargeintField
      FieldName = 'TOTAL_ABANDONOS1'
    end
    object qyTARVAcompTOTAL_TRANSFERIDOS_PARA1: TLargeintField
      FieldName = 'TOTAL_TRANSFERIDOS_PARA1'
    end
    object qyTARVAcompTOTAL_OBITOS1: TLargeintField
      FieldName = 'TOTAL_OBITOS1'
    end
  end
  object qyTARVEsquema: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyTARVEsquemaBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano,'
      'sum(VL_ANTERIOR_CRIANCA) TOTAL_ANTERIOR_CRIANCA1,'
      'sum(VL_ANTERIOR_ADULTO) TOTAL_ANTERIOR_ADULTO1,'
      'sum(VL_CORRENTE_CRIANCA) TOTAL_CORRENTE_CRIANCA1,'
      'sum(VL_CORRENTE_ADULTO) TOTAL_CORRENTE_ADULTO1'
      'from registro_tarv_esquema'
      'where cd_provincia =:PROVINCIA'
      'and vl_mesano like (:ANO) '
      'group by'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano')
    Left = 13
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO'
        ParamType = ptUnknown
      end>
    object qyTARVEsquemaCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'REGISTRO_TARV_ESQUEMA.CD_PROVINCIA'
      Required = True
    end
    object qyTARVEsquemaCD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'REGISTRO_TARV_ESQUEMA.CD_MUNICIPIO'
      Required = True
    end
    object qyTARVEsquemaCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'REGISTRO_TARV_ESQUEMA.CD_UNIDADE'
      Required = True
    end
    object qyTARVEsquemaVL_MESANO: TIBStringField
      FieldName = 'VL_MESANO'
      Origin = 'REGISTRO_TARV_ESQUEMA.VL_MESANO'
      Required = True
      Size = 8
    end
    object qyTARVEsquemaTOTAL_ANTERIOR_CRIANCA1: TLargeintField
      FieldName = 'TOTAL_ANTERIOR_CRIANCA1'
    end
    object qyTARVEsquemaTOTAL_ANTERIOR_ADULTO1: TLargeintField
      FieldName = 'TOTAL_ANTERIOR_ADULTO1'
    end
    object qyTARVEsquemaTOTAL_CORRENTE_CRIANCA1: TLargeintField
      FieldName = 'TOTAL_CORRENTE_CRIANCA1'
    end
    object qyTARVEsquemaTOTAL_CORRENTE_ADULTO1: TLargeintField
      FieldName = 'TOTAL_CORRENTE_ADULTO1'
    end
  end
  object qyTARVCD4: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyTARVCD4BeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano,'
      'sum(VL_CD4_MENOR_350) TOTAL_CD4_MENOR_3501,'
      'sum(VL_CD4_MAIOR_350) TOTAL_CD4_MAIOR_3501,'
      'sum(VL_ESTADO_CLINICO_1) TOTAL_ESTADO_CLINICO_11,'
      'sum(VL_ESTADO_CLINICO_2) TOTAL_ESTADO_CLINICO_21,'
      'sum(VL_ESTADO_CLINICO_3) TOTAL_ESTADO_CLINICO_31,'
      'sum(VL_ESTADO_CLINICO_4) TOTAL_ESTADO_CLINICO_41'
      'from registro_tarv_cd4'
      'where cd_provincia =:PROVINCIA'
      'and vl_mesano like (:ANO) '
      'group by'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano')
    Left = 13
    Top = 279
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO'
        ParamType = ptUnknown
      end>
    object qyTARVCD4CD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'REGISTRO_TARV_CD4.CD_PROVINCIA'
      Required = True
    end
    object qyTARVCD4CD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'REGISTRO_TARV_CD4.CD_MUNICIPIO'
      Required = True
    end
    object qyTARVCD4CD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'REGISTRO_TARV_CD4.CD_UNIDADE'
      Required = True
    end
    object qyTARVCD4VL_MESANO: TIBStringField
      FieldName = 'VL_MESANO'
      Origin = 'REGISTRO_TARV_CD4.VL_MESANO'
      Required = True
      Size = 8
    end
    object qyTARVCD4TOTAL_CD4_MENOR_3501: TLargeintField
      FieldName = 'TOTAL_CD4_MENOR_3501'
    end
    object qyTARVCD4TOTAL_CD4_MAIOR_3501: TLargeintField
      FieldName = 'TOTAL_CD4_MAIOR_3501'
    end
    object qyTARVCD4TOTAL_ESTADO_CLINICO_11: TLargeintField
      FieldName = 'TOTAL_ESTADO_CLINICO_11'
    end
    object qyTARVCD4TOTAL_ESTADO_CLINICO_21: TLargeintField
      FieldName = 'TOTAL_ESTADO_CLINICO_21'
    end
    object qyTARVCD4TOTAL_ESTADO_CLINICO_31: TLargeintField
      FieldName = 'TOTAL_ESTADO_CLINICO_31'
    end
    object qyTARVCD4TOTAL_ESTADO_CLINICO_41: TLargeintField
      FieldName = 'TOTAL_ESTADO_CLINICO_41'
    end
  end
  object qyCoinfeccao: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyCoinfeccaoBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano,'
      'sum(VL_VIH_POSITIVOS) TOTAL_VIH_POSITIVOS1,'
      'sum(VL_TRATAMENTO_ARVS) TOTAL_TRATAMENTO_ARVS1'
      'from registro_coinfeccao'
      'where cd_provincia =:PROVINCIA'
      'and vl_mesano like (:ANO) '
      'group by'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano')
    Left = 13
    Top = 311
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO'
        ParamType = ptUnknown
      end>
    object qyCoinfeccaoCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'REGISTRO_COINFECCAO.CD_PROVINCIA'
      Required = True
    end
    object qyCoinfeccaoCD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'REGISTRO_COINFECCAO.CD_MUNICIPIO'
      Required = True
    end
    object qyCoinfeccaoCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'REGISTRO_COINFECCAO.CD_UNIDADE'
      Required = True
    end
    object qyCoinfeccaoVL_MESANO: TIBStringField
      FieldName = 'VL_MESANO'
      Origin = 'REGISTRO_COINFECCAO.VL_MESANO'
      Required = True
      Size = 8
    end
    object qyCoinfeccaoTOTAL_VIH_POSITIVOS1: TLargeintField
      FieldName = 'TOTAL_VIH_POSITIVOS1'
    end
    object qyCoinfeccaoTOTAL_TRATAMENTO_ARVS1: TLargeintField
      FieldName = 'TOTAL_TRATAMENTO_ARVS1'
    end
  end
  object qyPrograma: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyProgramaBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano,'
      'sum(VL_ACONSELHADOS) TOTAL_ACONSELHADOS1,'
      'sum(VL_POSITIVOS) TOTAL_POSITIVOS1,'
      'sum(VL_NEGATIVOS) TOTAL_NEGATIVOS1,'
      'sum(VL_INDETERMINADOS) TOTAL_INDETERMINADOS1,'
      'sum(VL_FEMININO_2) TOTAL_FEMININO_21,'
      'sum(VL_MASCULINO_2) TOTAL_MASCULINO_21,'
      'sum(VL_GESTANTE_3) TOTAL_GESTANTE_31,'
      'sum(VL_POS_PARTO_3) TOTAL_POS_PARTO_31,'
      'sum(VL_PARTOS_3) TOTAL_PARTOS_31,'
      'sum(VL_FEMININO_52) TOTAL_FEMININO_521,'
      'sum(VL_MASCULINO_52) TOTAL_MASCULINO_521'
      'from registro_programa'
      'where cd_provincia =:PROVINCIA'
      'and vl_mesano like (:ANO) '
      'group by'
      'cd_provincia,'
      'cd_municipio,'
      'cd_unidade,'
      'vl_mesano'
      '')
    Left = 13
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO'
        ParamType = ptUnknown
      end>
    object qyProgramaCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'REGISTRO_PROGRAMA.CD_PROVINCIA'
    end
    object qyProgramaCD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'REGISTRO_PROGRAMA.CD_MUNICIPIO'
    end
    object qyProgramaCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'REGISTRO_PROGRAMA.CD_UNIDADE'
    end
    object qyProgramaVL_MESANO: TIBStringField
      FieldName = 'VL_MESANO'
      Origin = 'REGISTRO_PROGRAMA.VL_MESANO'
      Size = 8
    end
    object qyProgramaTOTAL_ACONSELHADOS1: TLargeintField
      FieldName = 'TOTAL_ACONSELHADOS1'
    end
    object qyProgramaTOTAL_POSITIVOS1: TLargeintField
      FieldName = 'TOTAL_POSITIVOS1'
    end
    object qyProgramaTOTAL_NEGATIVOS1: TLargeintField
      FieldName = 'TOTAL_NEGATIVOS1'
    end
    object qyProgramaTOTAL_INDETERMINADOS1: TLargeintField
      FieldName = 'TOTAL_INDETERMINADOS1'
    end
    object qyProgramaTOTAL_FEMININO_21: TLargeintField
      FieldName = 'TOTAL_FEMININO_21'
    end
    object qyProgramaTOTAL_MASCULINO_21: TLargeintField
      FieldName = 'TOTAL_MASCULINO_21'
    end
    object qyProgramaTOTAL_GESTANTE_31: TLargeintField
      FieldName = 'TOTAL_GESTANTE_31'
    end
    object qyProgramaTOTAL_POS_PARTO_31: TLargeintField
      FieldName = 'TOTAL_POS_PARTO_31'
    end
    object qyProgramaTOTAL_PARTOS_31: TLargeintField
      FieldName = 'TOTAL_PARTOS_31'
    end
    object qyProgramaTOTAL_FEMININO_521: TLargeintField
      FieldName = 'TOTAL_FEMININO_521'
    end
    object qyProgramaTOTAL_MASCULINO_521: TLargeintField
      FieldName = 'TOTAL_MASCULINO_521'
    end
  end
  object qyGrid: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BeforeOpen = qyGridBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select'
      'substring(vl_mesano from 4 for 6) ano,'
      'provincia.ds_provincia,'
      'registro_atv_are.cd_provincia,'
      'registro_atv_are.dt_registro,'
      'registro_atv_are.dt_exp,'
      #39'ATV'#39' TIPO'
      'from registro_atv_are'
      'left outer join provincia'
      'on registro_atv_are.cd_provincia = provincia.cd_provincia'
      'where registro_atv_are.cd_provincia =:PROVINCIA'
      'union'
      'select'
      'substring(vl_mesano from 4 for 6) ano,'
      'provincia.ds_provincia,'
      'registro_ptv_are.cd_provincia,'
      'registro_ptv_are.dt_registro,'
      'registro_ptv_are.dt_exp,'
      #39'PTV'#39' TIPO'
      'from registro_ptv_are'
      'left outer join provincia'
      'on registro_ptv_are.cd_provincia = provincia.cd_provincia'
      'where registro_ptv_are.cd_provincia =:PROVINCIA'
      'union'
      'select'
      'substring(vl_mesano from 4 for 6) ano,'
      'provincia.ds_provincia,'
      'registro_tarv_are.cd_provincia,'
      'registro_tarv_are.dt_registro,'
      'registro_tarv_are.dt_exp,'
      #39'TARV'#39' TIPO'
      'from registro_tarv_are'
      'left outer join provincia'
      'on registro_tarv_are.cd_provincia = provincia.cd_provincia'
      'where registro_tarv_are.cd_provincia =:PROVINCIA'
      'union'
      'select'
      'substring(vl_mesano from 4 for 6) ano,'
      'provincia.ds_provincia,'
      'registro_tarv_acomp_are.cd_provincia,'
      'registro_tarv_acomp_are.dt_registro,'
      'registro_tarv_acomp_are.dt_exp,'
      #39'TARV ACOMP'#39' TIPO'
      'from registro_tarv_acomp_are'
      'left outer join provincia'
      'on registro_tarv_acomp_are.cd_provincia = provincia.cd_provincia'
      'where registro_tarv_acomp_are.cd_provincia =:PROVINCIA'
      'union'
      'select'
      'substring(vl_mesano from 4 for 6) ano,'
      'provincia.ds_provincia,'
      'registro_tarv_esquema_are.cd_provincia,'
      'registro_tarv_esquema_are.dt_registro,'
      'registro_tarv_esquema_are.dt_exp,'
      #39'TARV ESQUEMA'#39' TIPO'
      'from registro_tarv_esquema_are'
      'left outer join provincia'
      
        'on registro_tarv_esquema_are.cd_provincia = provincia.cd_provinc' +
        'ia'
      'where registro_tarv_esquema_are.cd_provincia =:PROVINCIA'
      'union'
      'select'
      'substring(vl_mesano from 4 for 6) ano,'
      'provincia.ds_provincia,'
      'registro_tarv_cd4_are.cd_provincia,'
      'registro_tarv_cd4_are.dt_registro,'
      'registro_tarv_cd4_are.dt_exp,'
      #39'TARV CD4'#39' TIPO'
      'from registro_tarv_cd4_are'
      'left outer join provincia'
      'on registro_tarv_cd4_are.cd_provincia = provincia.cd_provincia'
      'where registro_tarv_cd4_are.cd_provincia =:PROVINCIA'
      'union'
      'select'
      'substring(vl_mesano from 4 for 6) ano,'
      'provincia.ds_provincia,'
      'registro_coinfeccao_are.cd_provincia,'
      'registro_coinfeccao_are.dt_registro,'
      'registro_coinfeccao_are.dt_exp,'
      #39'COINFEC'#199#195'O'#39' TIPO'
      'from registro_coinfeccao_are'
      'left outer join provincia'
      'on registro_coinfeccao_are.cd_provincia = provincia.cd_provincia'
      'where registro_coinfeccao_are.cd_provincia =:PROVINCIA'
      'union'
      'select'
      'substring(vl_mesano from 4 for 6) ano,'
      'provincia.ds_provincia,'
      'registro_programa_are.cd_provincia,'
      'registro_programa_are.dt_registro,'
      'registro_programa_are.dt_exp,'
      #39'PROGRAMA'#39' TIPO'
      'from registro_programa_are'
      'left outer join provincia'
      'on registro_programa_are.cd_provincia = provincia.cd_provincia'
      'where registro_programa_are.cd_provincia =:PROVINCIA')
    Left = 272
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROVINCIA'
        ParamType = ptUnknown
      end>
    object qyGridANO: TIBStringField
      FieldName = 'ANO'
      Size = 8
    end
    object qyGridDS_PROVINCIA: TIBStringField
      FieldName = 'DS_PROVINCIA'
      Origin = 'PROVINCIA.DS_PROVINCIA'
      Size = 50
    end
    object qyGridDT_REGISTRO: TDateTimeField
      FieldName = 'DT_REGISTRO'
      Origin = 'REGISTRO_ATV_ARE.DT_REGISTRO'
    end
    object qyGridDT_EXP: TDateTimeField
      FieldName = 'DT_EXP'
      Origin = 'REGISTRO_ATV_ARE.DT_EXP'
    end
    object qyGridTIPO: TIBStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 12
    end
    object qyGridCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'REGISTRO_ATV_ARE.CD_PROVINCIA'
    end
  end
  object dsGrid: TDataSource
    DataSet = qyGrid
    Left = 272
    Top = 152
  end
  object qyProvincia: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CD_PAIS, CD_PROVINCIA, DS_PROVINCIA from PROVINCIA')
    Left = 306
    Top = 14
    object qyProvinciaCD_PAIS: TIntegerField
      FieldName = 'CD_PAIS'
      Origin = 'PROVINCIA.CD_PAIS'
      Required = True
    end
    object qyProvinciaCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'PROVINCIA.CD_PROVINCIA'
      Required = True
    end
    object qyProvinciaDS_PROVINCIA: TIBStringField
      FieldName = 'DS_PROVINCIA'
      Origin = 'PROVINCIA.DS_PROVINCIA'
      Required = True
      Size = 50
    end
  end
  object dsProvincia: TDataSource
    DataSet = qyProvincia
    Left = 337
    Top = 13
  end
end
