inherited frmCadParametro: TfrmCadParametro
  Caption = 'Parametro'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited pgGeral: TPageControl
      inherited tabLista: TTabSheet
        inherited Panel3: TPanel
          inherited grDados: TdxDBGrid
            Filter.Criteria = {00000000}
            object grDadosCD_PARAMETRO: TdxDBGridMaskColumn
              Caption = 'C'#243'digo'
              Width = 74
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CD_PARAMETRO'
            end
            object grDadosDS_PARAMETRO: TdxDBGridMaskColumn
              Caption = 'Descri'#231#227'o Parametro'
              Width = 313
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DS_PARAMETRO'
            end
            object grDadosVALOR: TdxDBGridMaskColumn
              Caption = 'Valor Parametro'
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VALOR'
            end
          end
        end
      end
      inherited tabGeral: TTabSheet
        inherited Panel4: TPanel
          object Label1: TLabel
            Left = 16
            Top = 16
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            FocusControl = DBEdit1
          end
          object Label2: TLabel
            Left = 16
            Top = 56
            Width = 99
            Height = 13
            Caption = 'Descri'#231#227'o Parametro'
            FocusControl = DBEdit2
          end
          object Label3: TLabel
            Left = 16
            Top = 96
            Width = 75
            Height = 13
            Caption = 'Valor Parametro'
            FocusControl = DBEdit3
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 32
            Width = 134
            Height = 21
            DataField = 'CD_PARAMETRO'
            DataSource = dsControle
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 16
            Top = 72
            Width = 400
            Height = 21
            DataField = 'DS_PARAMETRO'
            DataSource = dsControle
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 112
            Width = 400
            Height = 21
            DataField = 'VALOR'
            DataSource = dsControle
            TabOrder = 2
          end
        end
      end
    end
  end
  inherited dsControle: TDataSource
    DataSet = DMGERAL.TB_PARAMETRO
  end
  inherited dsGrid: TDataSource
    DataSet = DMGERAL.TB_PARAMETRO
  end
end
