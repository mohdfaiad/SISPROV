inherited frmCadInvestigador: TfrmCadInvestigador
  Left = 397
  Top = 188
  Caption = 'Investigador'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited pgGeral: TPageControl
      ActivePage = tabGeral
      inherited tabLista: TTabSheet
        inherited Panel3: TPanel
          inherited grDados: TdxDBGrid
            Filter.Criteria = {00000000}
            object grDadosCD_INVESTIGADOR: TdxDBGridMaskColumn
              Caption = 'C'#243'digo'
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CD_INVESTIGADOR'
            end
            object grDadosNM_INVESTIGADOR: TdxDBGridMaskColumn
              Caption = 'Nome Completo'
              Width = 257
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NM_INVESTIGADOR'
            end
            object grDadosNM_FUNCAO: TdxDBGridMaskColumn
              Caption = 'Fun'#231#227'o'
              Width = 201
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NM_FUNCAO'
            end
          end
        end
      end
      inherited tabGeral: TTabSheet
        inherited Panel4: TPanel
          Height = 315
          object Label1: TLabel
            Left = 109
            Top = 16
            Width = 104
            Height = 13
            Caption = 'Nome do Investigador'
          end
          object Label2: TLabel
            Left = 32
            Top = 16
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object Label3: TLabel
            Left = 32
            Top = 96
            Width = 36
            Height = 13
            Caption = 'Fun'#231#227'o'
          end
          object Label4: TLabel
            Left = 32
            Top = 56
            Width = 59
            Height = 13
            Caption = 'Nr. Telefone'
          end
          object DBEdit1: TDBEdit
            Left = 109
            Top = 32
            Width = 400
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NM_INVESTIGADOR'
            DataSource = dsControle
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 32
            Top = 32
            Width = 76
            Height = 21
            TabStop = False
            Color = cl3DLight
            DataField = 'CD_INVESTIGADOR'
            DataSource = dsControle
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit3: TDBEdit
            Left = 32
            Top = 112
            Width = 353
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NM_FUNCAO'
            DataSource = dsControle
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 32
            Top = 72
            Width = 353
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NR_TELEFONE'
            DataSource = dsControle
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited dsControle: TDataSource
    DataSet = DMGERAL.TB_INVESTIGADOR
  end
  inherited dsGrid: TDataSource
    DataSet = DMGERAL.TB_INVESTIGADOR
  end
end
