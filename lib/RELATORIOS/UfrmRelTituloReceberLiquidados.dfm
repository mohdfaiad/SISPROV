inherited frmRelTituloReceberLiquidados: TfrmRelTituloReceberLiquidados
  Left = 350
  Top = 120
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Width = 321
    Height = 48
    Caption = 'Relat'#243'rios'#13#10'Titulos a Receber - (Liquidados)'
  end
  inherited pgFiltros: TPageControl
    ActivePage = TabSheet1
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object GroupBox3: TGroupBox
        Left = 8
        Top = 8
        Width = 418
        Height = 76
        Caption = 'Per'#237'odo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 22
          Width = 48
          Height = 16
          Caption = 'Inicio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 192
          Top = 22
          Width = 40
          Height = 16
          Caption = 'Final'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dtde: TdxDateEdit
          Left = 8
          Top = 40
          Width = 167
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = clBlack
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          Style.HotTrack = False
          Style.Shadow = False
          TabOrder = 0
          Date = -700000.000000000000000000
          UseEditMask = True
          StoredValues = 4
        end
        object dtate: TdxDateEdit
          Left = 192
          Top = 40
          Width = 168
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = clBlack
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsHotFlat
          Style.HotTrack = False
          Style.Shadow = False
          TabOrder = 1
          OnExit = dtateExit
          Date = -700000.000000000000000000
          UseEditMask = True
          StoredValues = 4
        end
      end
    end
  end
  inherited Panel2: TPanel
    inherited btImprimir: TBitBtn
      OnClick = btImprimirClick
    end
  end
  inherited qyGeral: TIBQuery
    BeforeOpen = qyGeralBeforeOpen
    SQL.Strings = (
      'select TITULO_RECEBER.*, EMPRESA.DS_EMPRESA, STATUS.DS_STATUS'
      'from TITULO_RECEBER, EMPRESA, STATUS'
      
        'where TITULO_RECEBER.CD_TITULO_RECEBER = TITULO_RECEBER.CD_TITUL' +
        'O_RECEBER'
      'and TITULO_RECEBER.CD_EMPRESA = EMPRESA.CD_EMPRESA'
      'and TITULO_RECEBER.SG_STATUS = STATUS.SG_STATUS'
      'and TITULO_RECEBER.SG_STATUS = '#39'B'#39
      'AND TITULO_RECEBER.DT_EMISSAO between :de AND :ate')
    Left = 16
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'de'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ate'
        ParamType = ptUnknown
      end>
    object qyGeralCD_TITULO_RECEBER: TIntegerField
      FieldName = 'CD_TITULO_RECEBER'
      Origin = 'TITULO_RECEBER.CD_TITULO_RECEBER'
      Required = True
    end
    object qyGeralNR_TITULO: TIBStringField
      FieldName = 'NR_TITULO'
      Origin = 'TITULO_RECEBER.NR_TITULO'
      Size = 25
    end
    object qyGeralCD_PESSOA: TIntegerField
      FieldName = 'CD_PESSOA'
      Origin = 'TITULO_RECEBER.CD_PESSOA'
    end
    object qyGeralNM_PESSOA: TIBStringField
      FieldName = 'NM_PESSOA'
      Origin = 'TITULO_RECEBER.NM_PESSOA'
      Size = 100
    end
    object qyGeralDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = 'TITULO_RECEBER.DT_EMISSAO'
    end
    object qyGeralDT_REFERENCIA: TDateField
      FieldName = 'DT_REFERENCIA'
      Origin = 'TITULO_RECEBER.DT_REFERENCIA'
    end
    object qyGeralDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'TITULO_RECEBER.DT_VENCIMENTO'
    end
    object qyGeralVL_TITULO: TIBBCDField
      FieldName = 'VL_TITULO'
      Origin = 'TITULO_RECEBER.VL_TITULO'
      Precision = 18
      Size = 2
    end
    object qyGeralCD_NAT_LANCAMENTO: TIntegerField
      FieldName = 'CD_NAT_LANCAMENTO'
      Origin = 'TITULO_RECEBER.CD_NAT_LANCAMENTO'
    end
    object qyGeralDS_NAT_LANCAMENTO: TIBStringField
      FieldName = 'DS_NAT_LANCAMENTO'
      Origin = 'TITULO_RECEBER.DS_NAT_LANCAMENTO'
      Size = 50
    end
    object qyGeralCD_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'CD_FORMA_PAGAMENTO'
      Origin = 'TITULO_RECEBER.CD_FORMA_PAGAMENTO'
    end
    object qyGeralDS_FORMA_PAGAMENTO: TIBStringField
      FieldName = 'DS_FORMA_PAGAMENTO'
      Origin = 'TITULO_RECEBER.DS_FORMA_PAGAMENTO'
      Size = 50
    end
    object qyGeralVL_DESCONTO: TIBBCDField
      FieldName = 'VL_DESCONTO'
      Origin = 'TITULO_RECEBER.VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object qyGeralVL_ACRESCIMO: TIBBCDField
      FieldName = 'VL_ACRESCIMO'
      Origin = 'TITULO_RECEBER.VL_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qyGeralVL_MULTA: TIBBCDField
      FieldName = 'VL_MULTA'
      Origin = 'TITULO_RECEBER.VL_MULTA'
      Precision = 18
      Size = 2
    end
    object qyGeralVL_JUROS: TIBBCDField
      FieldName = 'VL_JUROS'
      Origin = 'TITULO_RECEBER.VL_JUROS'
      Precision = 18
      Size = 2
    end
    object qyGeralVL_TOTAL: TIBBCDField
      FieldName = 'VL_TOTAL'
      Origin = 'TITULO_RECEBER.VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qyGeralCD_EMPRESA: TIntegerField
      FieldName = 'CD_EMPRESA'
      Origin = 'TITULO_RECEBER.CD_EMPRESA'
    end
    object qyGeralDS_OBS: TIBStringField
      FieldName = 'DS_OBS'
      Origin = 'TITULO_RECEBER.DS_OBS'
      Size = 300
    end
    object qyGeralCD_USUARIO: TIntegerField
      FieldName = 'CD_USUARIO'
      Origin = 'TITULO_RECEBER.CD_USUARIO'
    end
    object qyGeralNM_USUARIO: TIBStringField
      FieldName = 'NM_USUARIO'
      Origin = 'TITULO_RECEBER.NM_USUARIO'
      Size = 50
    end
    object qyGeralSG_STATUS: TIBStringField
      FieldName = 'SG_STATUS'
      Origin = 'TITULO_RECEBER.SG_STATUS'
      FixedChar = True
      Size = 2
    end
    object qyGeralCD_BANCO: TIntegerField
      FieldName = 'CD_BANCO'
      Origin = 'TITULO_RECEBER.CD_BANCO'
    end
    object qyGeralDS_BANCO: TIBStringField
      FieldName = 'DS_BANCO'
      Origin = 'TITULO_RECEBER.DS_BANCO'
      Size = 100
    end
    object qyGeralNR_AGENCIA: TIBStringField
      FieldName = 'NR_AGENCIA'
      Origin = 'TITULO_RECEBER.NR_AGENCIA'
    end
    object qyGeralNR_CONTA: TIBStringField
      FieldName = 'NR_CONTA'
      Origin = 'TITULO_RECEBER.NR_CONTA'
    end
    object qyGeralNR_TITULO_BANCO: TIBStringField
      FieldName = 'NR_TITULO_BANCO'
      Origin = 'TITULO_RECEBER.NR_TITULO_BANCO'
      Size = 40
    end
    object qyGeralDT_EXCLUSAO: TDateTimeField
      FieldName = 'DT_EXCLUSAO'
      Origin = 'TITULO_RECEBER.DT_EXCLUSAO'
    end
    object qyGeralDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
      Origin = 'TITULO_RECEBER.DT_BAIXA'
    end
    object qyGeralCD_EMPRESA_ORIGEM: TIntegerField
      FieldName = 'CD_EMPRESA_ORIGEM'
      Origin = 'TITULO_RECEBER.CD_EMPRESA_ORIGEM'
    end
    object qyGeralDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = 'TITULO_RECEBER.DT_CADASTRO'
    end
    object qyGeralCD_NF: TIntegerField
      FieldName = 'CD_NF'
      Origin = 'TITULO_RECEBER.CD_NF'
    end
    object qyGeralCD_VENDA: TIntegerField
      FieldName = 'CD_VENDA'
      Origin = 'TITULO_RECEBER.CD_VENDA'
    end
    object qyGeralDS_EMPRESA: TIBStringField
      FieldName = 'DS_EMPRESA'
      Origin = 'EMPRESA.DS_EMPRESA'
      Size = 30
    end
    object qyGeralDS_STATUS: TIBStringField
      FieldName = 'DS_STATUS'
      Origin = 'STATUS.DS_STATUS'
      Size = 30
    end
  end
  object RvDtCnTituloReceberLiquidados: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qyGeral
    Left = 16
    Top = 254
  end
  object RvDtCnTituloReceberLiquidadosConfRel: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DMRelatorios.qyConfRelatorio
    Left = 56
    Top = 254
  end
  object RvSysTituloReceberLiquidados: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 16
    Top = 286
  end
  object RvPrjTituloReceberLiquidados: TRvProject
    Engine = RvSysTituloReceberLiquidados
    ProjectFile = 'RelTituloReceberAVencer.rav'
    OnCreate = RvPrjTituloReceberLiquidadosCreate
    Left = 16
    Top = 318
  end
end
