unit ufrmCorrecao3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDM, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, IBSQL,
  Grids, DBGrids, dxExEdtr, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, ExtCtrls, dxEdLib, dxDBELib, dxEditor, ufrmLocalizar,
  UGeralSQL;

type
  TfrmCorrecao3 = class(TForm)
    qyGeral: TIBQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    grDados: TdxDBGrid;
    ibMapa: TIBDataSet;
    ibMapaCD_MAPA_LINHA: TIntegerField;
    ibMapaNR_PROCESSO: TIBStringField;
    ibMapaNM_PACIENTE: TIBStringField;
    ibMapaCD_PACIENTE: TIntegerField;
    ibMapaCD_AGENDA: TIntegerField;
    ibMapaCD_MAPA: TIntegerField;
    ibMapaDT_MAPA: TDateTimeField;
    ibMapaCD_MEDICO: TIntegerField;
    grDadosCD_MAPA_LINHA: TdxDBGridMaskColumn;
    grDadosNR_PROCESSO: TdxDBGridMaskColumn;
    grDadosNM_PACIENTE: TdxDBGridMaskColumn;
    grDadosCD_PACIENTE: TdxDBGridMaskColumn;
    grDadosCD_AGENDA: TdxDBGridMaskColumn;
    grDadosCD_MAPA: TdxDBGridMaskColumn;
    grDadosDT_MAPA: TdxDBGridDateColumn;
    grDadosCD_MEDICO: TdxDBGridMaskColumn;
    rgTipo: TRadioGroup;
    Label1: TLabel;
    btLocMedico: TdxButtonEdit;
    edMedico: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure btLocMedicoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorrecao3: TfrmCorrecao3;
  sUpMapa:string;

implementation

{$R *.dfm}

procedure TfrmCorrecao3.BitBtn2Click(Sender: TObject);
var
  sSQLPaciente, sSQLAgenda:string;
begin

  sSQLPaciente := 'SELECT CD_PACIENTE FROM PACIENTE' + chr(13) +
          'WHERE NR_PROCESSO = :NR_PROCESSO';

  sSQLAgenda := 'SELECT CD_AGENDA FROM AGENDA' + chr(13) +
          'WHERE CD_MEDICO   = :CD_MEDICO'     + chr(13) +
          'AND   CD_PACIENTE = :CD_PACIENTE'   + chr(13) +
          'AND   DT_AGENDA   = :DT_AGENDA' ;


  ibMapa.Open;
  ibMapa.First;
  while Not ibMapa.Eof do
  begin
    try


      ibMapa.Edit;

      if (ibMapa.FieldByName('CD_MEDICO').AsString = '') then
      begin
        qyGeral.SQL.Text := sUpMapa;
        qyGeral.ParamByName('CD_MEDICO').AsString := btLocMedico.Text;
        qyGeral.ParamByName('CD_MAPA').AsString :=
          ibMapa.FieldByName('CD_MAPA').AsString ;
        qyGeral.ExecSQL;
        ibMapa.FieldByName('CD_MEDICO').AsString := btLocMedico.Text;
      end;

      qyGeral.Close;
      qyGeral.SQL.Text := sSQLPaciente;
      qyGeral.ParamByName('NR_PROCESSO').AsString :=
        ibMapa.FieldByName('NR_PROCESSO').AsString ;
      qyGeral.Open;

      if not(qyGeral.IsEmpty) and (qyGeral.FieldByName('CD_PACIENTE').AsString<>'') then
        ibMapa.FieldByName('CD_PACIENTE').AsString :=
           qyGeral.FieldByName('CD_PACIENTE').AsString ;

      qyGeral.Close;
      qyGeral.SQL.Text := sSQLAgenda;
      qyGeral.ParamByName('CD_MEDICO').AsString :=
        ibMapa.FieldByName('CD_MEDICO').AsString ;
      qyGeral.ParamByName('CD_PACIENTE').AsString :=
        ibMapa.FieldByName('CD_PACIENTE').AsString ;
      qyGeral.ParamByName('DT_AGENDA').AsDateTime :=
        ibMapa.FieldByName('DT_MAPA').AsDateTime ;
      qyGeral.Open;

      if not(qyGeral.IsEmpty) and (qyGeral.FieldByName('CD_AGENDA').AsString<>'') then
        ibMapa.FieldByName('CD_AGENDA').AsString :=
           qyGeral.FieldByName('CD_AGENDA').AsString ;

      ibMapa.Post;
    finally
      ibMapa.Next;
      Application.ProcessMessages;
    end;
  end;

  dm.Commit(ibMapa);
end;

procedure TfrmCorrecao3.rgTipoClick(Sender: TObject);
var sUpdate,sSelect:string;
begin

  sUpMapa :=
    'UPDATE MAPA_MEDICO SET CD_MEDICO = :CD_MEDICO          ' + chr(13) +
    'WHERE CD_MAPA = :CD_MAPA                               ';

  sUpdate :=
    'update MAPA_MEDICO_LINHA                               ' + chr(13) +
    'set CD_PACIENTE = :CD_PACIENTE                         ' + chr(13) +
    '     ,CD_AGENDA = :CD_AGENDA                           ' + chr(13) +
    'where CD_MAPA_LINHA = :CD_MAPA_LINHA                   ';

  sSelect :=
    'select ML.CD_MAPA_LINHA                                ' + chr(13) +
    '     , ML.NR_PROCESSO                                  ' + chr(13) +
    '     , ML.NM_PACIENTE                                  ' + chr(13) +
    '     , ML.CD_PACIENTE                                  ' + chr(13) +
    '     , ML.CD_AGENDA                                    ' + chr(13) +
    '     , MAPA_MEDICO.CD_MAPA                             ' + chr(13) +
    '     , MAPA_MEDICO.DT_MAPA                             ' + chr(13) +
    '     , MAPA_MEDICO.CD_MEDICO                           ' + chr(13) +
    'from MAPA_MEDICO_LINHA ML                              ' + chr(13) +
    'join MAPA_MEDICO                                       ' + chr(13) +
    'on MAPA_MEDICO.CD_MAPA = ML.CD_MAPA     ';

  ibMapa.Close;
  case rgTipo.ItemIndex of
    0:begin
        ibMapa.ModifySQL.Text := sUpdate;
        ibMapa.SelectSQL.Text := sSelect;
        qyGeral.SQL.Text := sUpMapa;
      end;
    1:begin
        ibMapa.ModifySQL.Text :=
          'update MAPA_LAB_PACIENTE                               ' + chr(13) +
          'set CD_PACIENTE = :CD_PACIENTE                         ' + chr(13) +
          '     ,CD_AGENDA = :CD_AGENDA                           ' + chr(13) +
          'where CD_MAPA_PACIENTE = :CD_MAPA_LINHA                ';

        ibMapa.SelectSQL.Text :=
          'select ML.CD_MAPA_PACIENTE CD_MAPA_LINHA               ' + chr(13) +
          '     , ML.NR_PROCESSO                                  ' + chr(13) +
          '     , ML.NM_PACIENTE                                  ' + chr(13) +
          '     , ML.CD_PACIENTE                                  ' + chr(13) +
          '     , ML.CD_AGENDA                                    ' + chr(13) +
          '     , MAPA_LAB.CD_MAPA                                ' + chr(13) +
          '     , MAPA_LAB.DT_MAPA                                ' + chr(13) +
          '     , MAPA_LAB.CD_MEDICO                              ' + chr(13) +
          'from MAPA_LAB_PACIENTE ML                              ' + chr(13) +
          'join MAPA_LAB                                          ' + chr(13) +
          'on MAPA_LAB.CD_MAPA = ML.CD_MAPA                       ';

        sUpMapa :=
          'UPDATE MAPA_LAB SET CD_MEDICO = :CD_MEDICO             ' + chr(13) +
          'WHERE CD_MAPA = :CD_MAPA                               ';

      end;
    2:begin
        ibMapa.ModifySQL.Text :=
          'update MAPA_FARMACIA_LINHA                             ' + chr(13) +
          'set CD_PACIENTE = :CD_PACIENTE                         ' + chr(13) +
          '     ,CD_AGENDA = :CD_AGENDA                           ' + chr(13) +
          'where CD_MAPA_FARMACIA_LINHA = :CD_MAPA_LINHA          ';

        ibMapa.SelectSQL.Text :=
          'select ML.CD_MAPA_FARMACIA_LINHA CD_MAPA_LINHA         ' + chr(13) +
          '     , ML.NR_PROCESSO                                  ' + chr(13) +
          '     , ML.NM_PACIENTE                                  ' + chr(13) +
          '     , ML.CD_PACIENTE                                  ' + chr(13) +
          '     , ML.CD_AGENDA                                    ' + chr(13) +
          '     , MAPA_FARMACIA.CD_MAPA_FARMACIA CD_MAPA          ' + chr(13) +
          '     , MAPA_FARMACIA.DT_MAPA                           ' + chr(13) +
          '     , MAPA_FARMACIA.CD_MEDICO                         ' + chr(13) +
          'from MAPA_FARMACIA_LINHA ML                            ' + chr(13) +
          'join MAPA_FARMACIA                                     ' + chr(13) +
          'on MAPA_FARMACIA.CD_MAPA_FARMACIA = ML.CD_MAPA_FARMACIA';

        sUpMapa :=
          'UPDATE MAPA_FARMACIA SET CD_MEDICO = :CD_MEDICO        ' + chr(13) +
          'WHERE CD_MAPA_FARMACIA = :CD_MAPA                      ';
      end;
    3:begin
        ibMapa.ModifySQL.Text :=
          'update MAPA_TESTE_RAPIDO_PACIENTE                      ' + chr(13) +
          'set CD_PACIENTE = :CD_PACIENTE                         ' + chr(13) +
          '     ,CD_AGENDA = :CD_AGENDA                           ' + chr(13) +
          'where CD_MAPA_PACIENTE = :CD_MAPA_LINHA                ';

        ibMapa.SelectSQL.Text :=
          'select ML.CD_MAPA_PACIENTE CD_MAPA_LINHA               ' + chr(13) +
          '     , ML.NR_PROCESSO                                  ' + chr(13) +
          '     , ML.NM_PACIENTE                                  ' + chr(13) +
          '     , ML.CD_PACIENTE                                  ' + chr(13) +
          '     , ML.CD_AGENDA                                    ' + chr(13) +
          '     , MAPA_TESTE_RAPIDO.CD_MAPA                       ' + chr(13) +
          '     , MAPA_TESTE_RAPIDO.DT_MAPA                       ' + chr(13) +
          '     , MAPA_TESTE_RAPIDO.CD_MEDICO                     ' + chr(13) +
          'from MAPA_TESTE_RAPIDO_PACIENTE ML                     ' + chr(13) +
          'join MAPA_TESTE_RAPIDO                                 ' + chr(13) +
          'on MAPA_TESTE_RAPIDO.CD_MAPA = ML.CD_MAPA              ';

        sUpMapa :=
          'UPDATE MAPA_TESTE_RAPIDO SET CD_MEDICO = :CD_MEDICO    ' + chr(13) +
          'WHERE CD_MAPA = :CD_MAPA                               ';

      end;
  end;
  ibMapa.Open;
end;

procedure TfrmCorrecao3.btLocMedicoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
    frmLocalizar := TfrmLocalizar.Create(application);
    frmLocalizar.Caption := 'Localizar M�dico';
    frmLocalizar.qyDados := SelectDadosMedico;

    try
      frmLocalizar.Where := false;
      SetLength(VCampo,3);
      frmLocalizar.KeyField := 'cd_medico';
      VCampo[0].Titulo  := 'C�d.';
      VCampo[0].Width := 5;
      VCampo[1].Titulo  := 'Nome';
      VCampo[1].Width := 25;
      VCampo[0].Visivel := True;
      VCampo[1].Visivel := True;
      VCampo[2].Visivel := false;
    except
      ShowMessage(frmLocalizar.qyDados.Sql.Text);
    end;
    if frmLocalizar.ShowModal=mrok then
    begin
      btLocMedico.text := frmLocalizar.qyDados.FieldByname('cd_medico').AsString;
      edMedico.text := frmLocalizar.qyDados.FieldByname('nm_medico').AsString;
    end;
    frmLocalizar.qyDados.Close;
    FreeAndNil(frmLocalizar);
end;

end.
