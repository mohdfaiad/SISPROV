inherited frmCadTESTESPOSITIVOS: TfrmCadTESTESPOSITIVOS
  Left = 69
  Top = 124
  Caption = 'Relat'#243'rio N'#250'mero de testes positivos registrados no per'#237'odo'
  ClientHeight = 474
  ClientWidth = 854
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbPadrao: TStatusBar
    Top = 455
    Width = 854
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
    Width = 854
    inherited btfechar: TBitBtn
      Left = 806
    end
    object btLimpar: TBitBtn
      Left = 426
      Top = 3
      Width = 45
      Height = 45
      TabOrder = 10
      OnClick = btLimparClick
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
    end
  end
  inherited Panel2: TPanel
    Width = 854
    Height = 403
    inherited pgGeral: TPageControl
      Width = 852
      Height = 401
      inherited tabLista: TTabSheet
        inherited Panel3: TPanel
          Width = 844
          Height = 373
          inherited grDados: TdxDBGrid
            Width = 842
            Height = 371
            KeyField = 'CHAVE'
            Filter.Criteria = {00000000}
            object grDadosVL_MESANO: TdxDBGridMaskColumn
              Caption = 'MesAno'
              Width = 52
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NR_MESANO'
            end
            object grDadosCD_PROVINCIA: TdxDBGridMaskColumn
              Caption = 'C. Provincia'
              Width = 49
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CD_PROVINCIA'
            end
            object grDadosDS_PROVINCIA: TdxDBGridMaskColumn
              Caption = 'Provincia'
              Width = 151
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DS_PROVINCIA'
            end
            object grDadosCD_MUNICIPIO: TdxDBGridMaskColumn
              Caption = 'C. Municipio'
              Width = 52
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CD_MUNICIPIO'
            end
            object grDadosDS_MUNICIPIO: TdxDBGridMaskColumn
              Caption = 'Municipio'
              Width = 170
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DS_MUNICIPIO'
            end
            object grDadosCD_UNIDADE: TdxDBGridMaskColumn
              Caption = 'C. Unidade'
              Width = 54
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CD_UNIDADE'
            end
            object grDadosDS_UNIDADE: TdxDBGridMaskColumn
              Caption = 'Unidade'
              Width = 234
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DS_UNIDADE'
            end
          end
        end
      end
      inherited tabGeral: TTabSheet
        inherited Panel4: TPanel
          Width = 844
          Height = 373
          object DBGrid1: TDBGrid
            Left = 666
            Top = 76
            Width = 177
            Height = 296
            Align = alRight
            DataSource = dsControle
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Visible = False
          end
          object sgTESTESPOSITIVOS: TStringGrid
            Left = 1
            Top = 76
            Width = 665
            Height = 296
            Align = alClient
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
            TabOrder = 1
            OnDrawCell = sgTESTESPOSITIVOSDrawCell
            OnKeyDown = sgTESTESPOSITIVOSKeyDown
            OnSelectCell = sgTESTESPOSITIVOSSelectCell
            OnSetEditText = sgTESTESPOSITIVOSSetEditText
            RowHeights = (
              24
              24
              24
              24
              24)
          end
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 842
            Height = 75
            Align = alTop
            TabOrder = 2
            object Label21: TLabel
              Left = 5
              Top = 31
              Width = 61
              Height = 13
              Caption = 'Munic'#237'pio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 6
              Top = 9
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
            object Label1: TLabel
              Left = 13
              Top = 53
              Width = 52
              Height = 13
              Caption = 'Unidade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 370
              Top = 7
              Width = 101
              Height = 13
              Caption = 'Per'#237'odo Mes/Ano'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 396
              Top = 30
              Width = 21
              Height = 13
              Caption = 'De:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbAte: TLabel
              Left = 530
              Top = 30
              Width = 24
              Height = 13
              Caption = 'At'#233':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object cbMunicipio: TRxDBLookupCombo
              Left = 69
              Top = 27
              Width = 242
              Height = 21
              DropDownCount = 8
              LookupField = 'CD_MUNICIPIO'
              LookupDisplay = 'DS_MUNICIPIO'
              LookupSource = dsMunicipio
              TabOrder = 0
            end
            object cbProvincia: TRxDBLookupCombo
              Left = 69
              Top = 5
              Width = 242
              Height = 21
              DropDownCount = 8
              LookupField = 'CD_PROVINCIA'
              LookupDisplay = 'DS_PROVINCIA'
              LookupSource = dsProvincia
              TabOrder = 1
            end
            object cbUnidade: TRxDBLookupCombo
              Left = 68
              Top = 49
              Width = 286
              Height = 21
              DropDownCount = 8
              LookupField = 'CD_UNIDADE'
              LookupDisplay = 'DS_UNIDADE'
              LookupSource = dsUnidade
              TabOrder = 2
            end
            object btConsultar: TBitBtn
              Left = 739
              Top = 12
              Width = 98
              Height = 28
              BiDiMode = bdRightToLeft
              Caption = 'Consultar'
              ParentBiDiMode = False
              TabOrder = 3
              OnClick = btConsultarClick
              Glyph.Data = {
                36060000424D3606000000000000360000002800000020000000100000000100
                1800000000000006000000000000000000000000000000000000FF00FF314860
                AB7B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF5251524B4B4B7E7E7E52515252515252515252515252
                51525251525251525251525251525251525251525251525251525084B60B73E0
                31608FB67B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF8B8B8B8484846767677F7F7F52515252515252515252
                515252515252515252515252515252515252515252515252515231A1FF38A1FF
                1173EA31608FB67B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFAEAEAEAEAEAE8787876767677F7F7F52515252515252
                5152525152525152525152525152525152525152525152525152FF00FF38A1FF
                38A1FF0B6AE031608FB67B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF525152AEAEAEAEAEAE7E7E7E6767677F7F7F52515252
                5152525152525152525152525152525152525152525152525152FF00FFFF00FF
                38A1FF31A1FF0B73E031608FAB7B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF525152525152AEAEAEAEAEAE8484846767677E7E7E52
                5152525152525152525152525152525152525152525152525152FF00FFFF00FF
                FF00FF38A1FF31A1FF116AD4405058FF00FF986058B68F84CAA18FC08F84FF00
                FFFF00FFFF00FFFF00FF525152525152525152AEAEAEAEAEAE7B7B7B50505052
                51526262628F8F8FA0A0A0909090525152525152525152525152FF00FFFF00FF
                FF00FFFF00FF38ABFFA1CAEA8F7B73A18473F4E0C0FFFFCAFFFFCAFFFFCAE0D4
                ABC0988FFF00FFFF00FF525152525152525152525152B5B5B5CECECE7A7A7A82
                8282DADADAF2F2F2F2F2F2F2F2F2CBCBCB999999525152525152FF00FFFF00FF
                FF00FFFF00FFFF00FFC0A1A1CAA18FFFEAB6FFFFCAFFFFCAFFFFCAFFFFD4FFFF
                EAF4F4EAA17373FF00FF525152525152525152525152525152A3A3A3A0A0A0DF
                DFDFF2F2F2F2F2F2F2F2F2F4F4F4F9F9F9F1F1F1767676525152FF00FFFF00FF
                FF00FFFF00FFFF00FFB67B73F4D4A1F4CA8FFFF4C0FFFFCAFFFFD4FFFFEAFFFF
                F4FFFFFFD4CAABFF00FF5251525251525251525251525251527D7D7DCACACABF
                BFBFE8E8E8F2F2F2F4F4F4F9F9F9FCFCFCFFFFFFC3C3C3525152FF00FFFF00FF
                FF00FFFF00FFFF00FFD4AB8FFFE098F4C07BFFF4C0FFFFD4FFFFE0FFFFF4FFFF
                F4FFFFEAF4EACAB6847B525152525152525152525152525152A7A7A7D1D1D1B3
                B3B3E8E8E8F4F4F4F7F7F7FCFCFCFCFCFCF9F9F9E3E3E3858585FF00FFFF00FF
                FF00FFFF00FFFF00FFE0B698FFD498EAAB6AF4E0A1FFFFCAFFFFD4FFFFE0FFFF
                E0FFFFD4F4F4CAB69884525152525152525152525152525152B2B2B2C9C9C9A0
                A0A0D2D2D2F2F2F2F4F4F4F7F7F7F7F7F7F4F4F4E9E9E9959595FF00FFFF00FF
                FF00FFFF00FFFF00FFD4AB98FFE0A1EAAB6AF4C07BFFEAB6FFFFD4FFFFD4FFFF
                D4FFFFD4F4EACAB68F84525152525152525152525152525152A9A9A9D3D3D3A0
                A0A0B3B3B3DFDFDFF4F4F4F4F4F4F4F4F4F4F4F4E3E3E38F8F8FFF00FFFF00FF
                FF00FFFF00FFFF00FFB6847BFFEAB6FFEAB6F4CA8FF4C084F4E0A1FFF4C0FFF4
                CAFFFFCAE0D4ABFF00FF525152525152525152525152525152858585DFDFDFDF
                DFDFBFBFBFB5B5B5D2D2D2E8E8E8EAEAEAF2F2F2CBCBCB525152FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFD4B698FFFFFFFFF4EAF4C07BEAAB6AF4C084FFE0
                A1FFF4B6AB8473FF00FF525152525152525152525152525152525152B1B1B1FF
                FFFFF2F2F2B3B3B3A0A0A0B5B5B5D3D3D3E6E6E6838383525152FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFCAABABF4EACAFFEAB6FFE098FFE0A1F4D4
                A1C09884FF00FFFF00FF525152525152525152525152525152525152525152AD
                ADADE3E3E3DFDFDFD1D1D1D3D3D3CACACA969696525152525152FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0987BC09884D4AB8FD4AB8FFF00
                FFFF00FFFF00FFFF00FF52515252515252515252515252515252515252515252
                5152949494969696A7A7A7A7A7A7525152525152525152525152}
              NumGlyphs = 2
            end
            object ckConsolidar: TCheckBox
              Left = 739
              Top = 48
              Width = 97
              Height = 17
              Caption = 'Consolidar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              OnClick = ckConsolidarClick
            end
            object cbMesAno: TdxPickEdit
              Left = 420
              Top = 24
              Width = 84
              TabOrder = 5
              EditMask = '!99/0000;1;_'
              ReadOnly = False
              Text = '  /    '
              StoredValues = 68
            end
            object cbAte: TdxPickEdit
              Left = 556
              Top = 24
              Width = 85
              TabOrder = 6
              Visible = False
              EditMask = '!99/0000;1;_'
              ReadOnly = False
              Text = '  /    '
              StoredValues = 68
            end
          end
        end
      end
      inherited tabVersao: TTabSheet
        inherited Panel6: TPanel
          Width = 844
        end
        inherited grVersao: TdxDBGrid
          Width = 844
          Height = 329
          Filter.Criteria = {00000000}
        end
      end
    end
  end
  inherited dsControle: TDataSource
    DataSet = DMGERAL.TB_TESTES_POSITIVOS
  end
  inherited dsGrid: TDataSource
    DataSet = qyGrid
  end
  object qyTESTESPOSITIVOS: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    Left = 498
    Top = 342
  end
  object qyGrid: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    OnCalcFields = qyGridCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      
        '  P.CD_MUNICIPIO||P.CD_PROVINCIA||P.CD_UNIDADE||P.VL_MESANO CHAV' +
        'E,'
      '  P.*'
      'FROM (select '
      '  distinct '
      '  RT.CD_MUNICIPIO, '
      '  RT.CD_PROVINCIA, '
      '  RT.CD_UNIDADE, '
      '  RT.VL_MESANO,'
      '  U.DS_UNIDADE,'
      '  M.DS_MUNICIPIO,'
      '  P.DS_PROVINCIA'
      'from REGISTRO_TESTES_POSITIVOS RT'
      '   left outer join MUNICIPIO M on'
      '      RT.CD_MUNICIPIO = M.CD_MUNICIPIO'
      '   left outer join PROVINCIA P on'
      '      RT.CD_PROVINCIA = P.CD_PROVINCIA'
      '   left outer join UNIDADE U on'
      '      RT.CD_UNIDADE = U.CD_UNIDADE'
      'order by   RT.CD_PROVINCIA, RT.CD_UNIDADE, RT.VL_MESANO'
      ')P')
    Left = 346
    Top = 230
    object qyGridCD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'REGISTRO_TESTES_POSITIVOS.CD_MUNICIPIO'
      Required = True
    end
    object qyGridCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'REGISTRO_TESTES_POSITIVOS.CD_PROVINCIA'
      Required = True
    end
    object qyGridCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'REGISTRO_TESTES_POSITIVOS.CD_UNIDADE'
      Required = True
    end
    object qyGridVL_MESANO: TIBStringField
      FieldName = 'VL_MESANO'
      Origin = 'REGISTRO_TESTES_POSITIVOS.VL_MESANO'
      Required = True
      Size = 8
    end
    object qyGridDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE.DS_UNIDADE'
      Size = 50
    end
    object qyGridDS_MUNICIPIO: TIBStringField
      FieldName = 'DS_MUNICIPIO'
      Origin = 'MUNICIPIO.DS_MUNICIPIO'
      Size = 50
    end
    object qyGridDS_PROVINCIA: TIBStringField
      FieldName = 'DS_PROVINCIA'
      Origin = 'PROVINCIA.DS_PROVINCIA'
      Size = 50
    end
    object qyGridCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Required = True
      Size = 41
    end
    object qyGridNR_MESANO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NR_MESANO'
      DisplayFormat = '####'#39'/'#39'##'
      Calculated = True
    end
  end
  object qyProvincia: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select CD_PAIS, CD_PROVINCIA, DS_PROVINCIA from PROVINCIA')
    Left = 466
    Top = 222
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
    Left = 497
    Top = 221
  end
  object dsMunicipio: TDataSource
    DataSet = qyMunicipio
    Left = 497
    Top = 251
  end
  object qyMunicipio: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsProvincia
    SQL.Strings = (
      'select CD_MUNICIPIO, CD_PROVINCIA, DS_MUNICIPIO from MUNICIPIO'
      'where CD_PROVINCIA = :CD_PROVINCIA')
    Left = 466
    Top = 252
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CD_PROVINCIA'
        ParamType = ptUnknown
        Size = 4
      end>
    object qyMunicipioCD_MUNICIPIO: TIntegerField
      FieldName = 'CD_MUNICIPIO'
      Origin = 'MUNICIPIO.CD_MUNICIPIO'
      Required = True
    end
    object qyMunicipioCD_PROVINCIA: TIntegerField
      FieldName = 'CD_PROVINCIA'
      Origin = 'MUNICIPIO.CD_PROVINCIA'
      Required = True
    end
    object qyMunicipioDS_MUNICIPIO: TIBStringField
      FieldName = 'DS_MUNICIPIO'
      Origin = 'MUNICIPIO.DS_MUNICIPIO'
      Required = True
      Size = 50
    end
  end
  object qyUnidade: TIBQuery
    Database = DM.DB
    Transaction = DM.TS
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsMunicipio
    SQL.Strings = (
      'select CD_UNIDADE, DS_UNIDADE,FL_ATIVA '
      'from UNIDADE'
      'where CD_MUNICIPIO = :CD_MUNICIPIO'
      'and FL_ATIVA = '#39'S'#39)
    Left = 466
    Top = 283
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CD_MUNICIPIO'
        ParamType = ptUnknown
      end>
    object qyUnidadeCD_UNIDADE: TIntegerField
      FieldName = 'CD_UNIDADE'
      Origin = 'UNIDADE.CD_UNIDADE'
      Required = True
    end
    object qyUnidadeDS_UNIDADE: TIBStringField
      FieldName = 'DS_UNIDADE'
      Origin = 'UNIDADE.DS_UNIDADE'
      Required = True
      Size = 50
    end
  end
  object dsUnidade: TDataSource
    DataSet = qyUnidade
    Left = 497
    Top = 282
  end
end
