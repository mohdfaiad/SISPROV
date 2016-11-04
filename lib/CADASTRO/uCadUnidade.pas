unit uCadUnidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmCadPad, dxExEdtr, DB, dxCntner, dxTL, dxDBCtrl, dxDBGrid,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, dxEdLib, dxDBELib,
  dxEditor, Menus, dxDBTLCl, dxGrClms;

type
  TfrmCadUnidade = class(TfrmCadPad)
    grDadosColumn1: TdxDBGridColumn;
    grDadosColumn2: TdxDBGridColumn;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    edCodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    btLocProvincia: TdxDBButtonEdit;
    edProvincia: TdxDBEdit;
    Label4: TLabel;
    btLocMunicipio: TdxDBButtonEdit;
    edMunicipio: TdxDBEdit;
    grDadosColumn3: TdxDBGridColumn;
    grDadosColumn4: TdxDBGridColumn;
    ckAtiva: TDBCheckBox;
    tabServicos: TTabSheet;
    dxDBGrid1: TdxDBGrid;
    dsUnidadeServ: TDataSource;
    dxDBGrid1Column1: TdxDBGridColumn;
    dxDBGrid1Column2: TdxDBGridColumn;
    Panel5: TPanel;
    btIncServico: TSpeedButton;
    btGravarServico: TSpeedButton;
    btExcluirServico: TSpeedButton;
    grDadosColumn5: TdxDBGridColumn;
    dxDBGrid1Column3: TdxDBGridDateColumn;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    grDadosColumn6: TdxDBGridColumn;
    procedure btLocProvinciaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btLocProvinciaChange(Sender: TObject);
    procedure btLocProvinciaExit(Sender: TObject);
    procedure btLocMunicipioButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btLocMunicipioChange(Sender: TObject);
    procedure btLocMunicipioExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btgravarClick(Sender: TObject);
    procedure btIncServicoClick(Sender: TObject);
    procedure btGravarServicoClick(Sender: TObject);
    procedure btExcluirServicoClick(Sender: TObject);
    procedure pgGeralChange(Sender: TObject);
    procedure dsControleStateChange(Sender: TObject);
    procedure pgGeralChanging(Sender: TObject; var AllowChange: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUnidade: TfrmCadUnidade;

implementation

uses UDMGERAL, UfrmLocalizar,UGERALSQL, UGeral, uFuncaoContraSenha;

{$R *.dfm}

procedure TfrmCadUnidade.btLocProvinciaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if (dsControle.DataSet.State in [dsEdit, dsInsert]) then
  begin
    frmLocalizar := TfrmLocalizar.Create(application);
    frmLocalizar.Caption := 'Localizar Provincia';
    frmLocalizar.qyDados := SelectDadosProvincia;

    try
      frmLocalizar.Where := false;
      SetLength(VCampo,2);
      frmLocalizar.KeyField := 'cd_provincia';
      VCampo[0].Titulo  := 'Prov';
      VCampo[0].Width := 5;
      VCampo[1].Titulo  := 'Nome da Provincia';
      VCampo[1].Width := 25;
      VCampo[0].Visivel := True;
      VCampo[1].Visivel := True;
    except
      ShowMessage(frmLocalizar.qyDados.Sql.Text);
    end;
    if frmLocalizar.ShowModal=mrok then
    begin
      dmGeral.TB_UNIDADECD_PROVINCIA.AsInteger := frmLocalizar.qyDados.FieldByname('cd_provincia').AsInteger;
      dmGeral.TB_UNIDADEDS_PROVINCIA.AsString := frmLocalizar.qyDados.FieldByname('ds_provincia').AsString;
    end;
    frmLocalizar.qyDados.Close;
    FreeAndNil(frmLocalizar);
  end;
end;

procedure TfrmCadUnidade.btLocProvinciaChange(Sender: TObject);
begin
  inherited;
  if btLocProvincia.Text = ''  then
    DMGERAL.TB_UNIDADEDS_PROVINCIA.Clear
  else if btLocProvincia.Modified then
  begin
    try
      DMGERAL.TB_UNIDADEDS_PROVINCIA.AsString :=
        PegaValor('DS_PROVINCIA','PROVINCIA',['CD_PROVINCIA'],
        [btLocProvincia.Text],nil);
    except
      begin
        DMGERAL.TB_UNIDADEDS_PROVINCIA.Clear;
      end;
    end;
  end;

end;

procedure TfrmCadUnidade.btLocProvinciaExit(Sender: TObject);
begin
  inherited;
  if btLocProvincia.Text <> ''  then
  begin
    try
      DMGERAL.TB_UNIDADEDS_PROVINCIA.AsString :=
        PegaValor('DS_PROVINCIA','PROVINCIA',['CD_PROVINCIA'],
        [btLocProvincia.Text],nil);
    except
      begin
        MessageDlg('Provincia n�o encontrada!',mtWarning,[mbOK],0);
        DMGERAL.TB_UNIDADECD_PROVINCIA.Clear;
        DMGERAL.TB_UNIDADEDS_PROVINCIA.Clear;
      end;
    end;
  end;

end;

procedure TfrmCadUnidade.btLocMunicipioButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if (dsControle.DataSet.State in [dsEdit, dsInsert]) then
  begin
  frmLocalizar := TfrmLocalizar.Create(application);
  frmLocalizar.Caption := 'Localizar Municipio';
  try
    if(dsControle.DataSet.FieldByName('CD_PROVINCIA').AsString<>'')then
    begin
      frmLocalizar.qyDados := SelectDadosMunicipio(dsControle.DataSet.FieldByName('CD_PROVINCIA').AsInteger);
      frmLocalizar.Where := true;
    end;
    SetLength(VCampo,2);
    frmLocalizar.KeyField := 'cd_municipio';
    VCampo[0].Titulo  := 'Municipio';
    VCampo[0].Width := 5;
    VCampo[1].Titulo  := 'Nome do Municipio';
    VCampo[1].Width := 25;
    VCampo[0].Visivel := True;
    VCampo[1].Visivel := True;
  except
    ShowMessage(frmLocalizar.qyDados.Sql.Text);
  end;
  if frmLocalizar.ShowModal=mrok then
  begin
    dmGeral.TB_UNIDADECD_MUNICIPIO.AsInteger := frmLocalizar.qyDados.FieldByname('cd_municipio').AsInteger;
    dmGeral.TB_UNIDADEDS_MUNICIPIO.AsString := frmLocalizar.qyDados.FieldByname('ds_municipio').AsString;
  end;
  frmLocalizar.qyDados.Close;
  FreeAndNil(frmLocalizar);
end;
end;

procedure TfrmCadUnidade.btLocMunicipioChange(Sender: TObject);
begin
  inherited;
  if btLocMunicipio.Text = '' then
    DMGERAL.TB_UNIDADEDS_MUNICIPIO.Clear
  else if btLocMunicipio.Modified then
  begin
    if btLocProvincia.text <> '' then
    begin
      try
        DMGERAL.TB_UNIDADEDS_MUNICIPIO.AsString :=
          PegaValor('DS_MUNICIPIO','MUNICIPIO',['CD_MUNICIPIO'],
           [btLocMunicipio.Text],nil);
       except
          begin
            DMGERAL.TB_UNIDADEDS_MUNICIPIO.Clear;
          end;
       end;
      end
    else
      begin
        DMGERAL.TB_UNIDADECD_MUNICIPIO.Clear;
        DMGERAL.TB_UNIDADEDS_MUNICIPIO.Clear;
        MessageDlg('� necess�rio incluir uma Provincia!',mtInformation,[mbOK],0);
      end;
  end;

end;

procedure TfrmCadUnidade.btLocMunicipioExit(Sender: TObject);
begin
  inherited;
  if (dsControle.DataSet.State in [dsEdit, dsInsert]) then
  begin
    if btLocMunicipio.Text <> '' then
    begin
        try
          DMGERAL.TB_UNIDADEDS_MUNICIPIO.AsString :=
            PegaValor('DS_MUNICIPIO','MUNICIPIO',['CD_MUNICIPIO'],
             [btLocMunicipio.Text],nil);
         except
            begin
              MessageDlg('Municipio n�o encontrado!',mtWarning,[mbOK],0);
              DMGERAL.TB_UNIDADECD_MUNICIPIO.Clear;
              DMGERAL.TB_UNIDADEDS_MUNICIPIO.Clear;
            end;
         end;
     end;
  end;

end;

procedure TfrmCadUnidade.FormCreate(Sender: TObject);
begin
  inherited;
  FbPermiteMudarPagina := True;

  if (prmSistemaUnidades=cvSim) then
  begin
    edCodigo.ReadOnly := false;
    edCodigo.TabStop := true;
    edCodigo.Color := clWhite;
  end
  else
  begin
    edCodigo.ReadOnly := true;
    edCodigo.TabStop := false;
    edCodigo.Color := cl3DLight;
  end;

end;

procedure TfrmCadUnidade.btgravarClick(Sender: TObject);
var sOperacao:string;
begin
  sOperacao := 'Gravar Unidade!';
  if (prmSistemaUnidades=cvNao) then
     inherited
  else if (prmSistemaUnidades=cvSim) and ValidaContraSenha(sOperacao) then
    inherited
  else
    btCancelarClick(Sender);
end;

procedure TfrmCadUnidade.btIncServicoClick(Sender: TObject);
begin
  inherited;
  DMGERAL.TB_UNIDADE_SERVICOS.Insert;

  frmLocalizar := TfrmLocalizar.Create(application);
  frmLocalizar.Caption := 'Localizar Servi�os';
  frmLocalizar.qyDados.SQL.Text := 'select cd_servico, ds_servico from servicos';

  try
    frmLocalizar.Where := false;
    SetLength(VCampo,2);
    frmLocalizar.KeyField := 'cd_servico';
    VCampo[0].Titulo  := 'Cod.';
    VCampo[0].Width := 5;
    VCampo[1].Titulo  := 'Servi�o';
    VCampo[1].Width := 25;
    VCampo[0].Visivel := True;
    VCampo[1].Visivel := True;
  except
    ShowMessage(frmLocalizar.qyDados.Sql.Text);
  end;
  if frmLocalizar.ShowModal=mrok then
  begin
    dmGeral.TB_UNIDADE_SERVICOSCD_UNIDADE.AsInteger := dmGeral.TB_UNIDADECD_UNIDADE.AsInteger;
    dmGeral.TB_UNIDADE_SERVICOSCD_SERVICO.AsInteger := frmLocalizar.qyDados.FieldByname('CD_SERVICO').AsInteger;
    dmGeral.TB_UNIDADE_SERVICOSDS_SERVICO.AsString := frmLocalizar.qyDados.FieldByname('DS_SERVICO').AsString;
  end;
  frmLocalizar.qyDados.Close;
  FreeAndNil(frmLocalizar);

end;

procedure TfrmCadUnidade.btGravarServicoClick(Sender: TObject);
begin
  inherited;
  DMGERAL.TB_UNIDADE_SERVICOS.Post;
end;

procedure TfrmCadUnidade.btExcluirServicoClick(Sender: TObject);
begin
  inherited;
  DMGERAL.TB_UNIDADE_SERVICOS.Delete;
end;

procedure TfrmCadUnidade.pgGeralChange(Sender: TObject);
begin
  inherited;
  DMGERAL.TB_UNIDADE_SERVICOS.Active :=  (pgGeral.ActivePage = tabServicos);
end;

procedure TfrmCadUnidade.dsControleStateChange(Sender: TObject);
begin
  inherited;
  dsUnidadeServ.AutoEdit := (dsControle.DataSet.State in [dsEdit, dsInsert]);
  btIncServico.Enabled := (dsControle.DataSet.State in [dsEdit, dsInsert]);
  btGravarServico.Enabled := (dsControle.DataSet.State in [dsEdit, dsInsert]);
  btExcluirServico.Enabled := (dsControle.DataSet.State in [dsEdit, dsInsert]);
end;

procedure TfrmCadUnidade.pgGeralChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  AllowChange := FbPermiteMudarPagina;
end;

end.
