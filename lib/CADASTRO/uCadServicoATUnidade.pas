unit uCadServicoATUnidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmCadPadSG, dxExEdtr, RpRave, RpBase, RpSystem, RpDefine, RpCon,
  RpConDS, DBClient, DB, IBCustomDataSet, IBQuery, DBGrids, Grids,
  dxCntner, dxEditor, dxEdLib, StdCtrls, RxLookup, dxTL, dxDBCtrl,
  dxDBGrid, ComCtrls, Buttons, ExtCtrls, ib_parse, UfrmCadPad, Mask,
  ToolEdit, Menus;

type
  TfrmCadServicoATUnidade = class(TfrmCadPadSG)
    Panel5: TPanel;
    Label21: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    lbPeriodo: TLabel;
    lbDe: TLabel;
    lbAte: TLabel;
    btConsultar: TBitBtn;
    cbAno: TdxPickEdit;
    cbAte: TdxPickEdit;
    sgServicoAT: TStringGrid;
    DBGrid1: TDBGrid;
    qyProvincia: TIBQuery;
    qyProvinciaCD_PAIS: TIntegerField;
    qyProvinciaCD_PROVINCIA: TIntegerField;
    qyProvinciaDS_PROVINCIA: TIBStringField;
    dsProvincia: TDataSource;
    dsMunicipio: TDataSource;
    qyMunicipio: TIBQuery;
    qyMunicipioCD_MUNICIPIO: TIntegerField;
    qyMunicipioCD_PROVINCIA: TIntegerField;
    qyMunicipioDS_MUNICIPIO: TIBStringField;
    qyUnidade: TIBQuery;
    qyUnidadeCD_UNIDADE: TIntegerField;
    qyUnidadeDS_UNIDADE: TIBStringField;
    dsUnidade: TDataSource;
    qyServicoAT: TIBQuery;
    qyGrid: TIBQuery;
    qyGridCHAVE: TIBStringField;
    qyGridCD_MUNICIPIO: TIntegerField;
    qyGridCD_PROVINCIA: TIntegerField;
    qyGridCD_UNIDADE: TIntegerField;
    qyGridDS_UNIDADE: TIBStringField;
    qyGridDS_MUNICIPIO: TIBStringField;
    qyGridDS_PROVINCIA: TIBStringField;
    grDadosCHAVE: TdxDBGridMaskColumn;
    grDadosCD_MUNICIPIO: TdxDBGridMaskColumn;
    grDadosCD_PROVINCIA: TdxDBGridMaskColumn;
    grDadosCD_UNIDADE: TdxDBGridMaskColumn;
    grDadosDS_UNIDADE: TdxDBGridMaskColumn;
    grDadosDS_MUNICIPIO: TdxDBGridMaskColumn;
    grDadosDS_PROVINCIA: TdxDBGridMaskColumn;
    ckConsolidar: TCheckBox;
    btLimpar: TBitBtn;
    leProvincia: TRxLookupEdit;
    leMunicipio: TRxLookupEdit;
    leUnidade: TRxLookupEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sgServicoATDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure sgServicoATSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
    procedure btgravarClick(Sender: TObject);
    procedure sgServicoATSetEditText(Sender: TObject; ACol,
      ARow: Integer; const Value: String);
    procedure pgGeralChange(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure grDadosDblClick(Sender: TObject);
    procedure leProvinciaChange(Sender: TObject);
    procedure leMunicipioChange(Sender: TObject);
    procedure leUnidadeChange(Sender: TObject);
    procedure ckConsolidarClick(Sender: TObject);
    procedure cbAnoChange(Sender: TObject);
    procedure btexcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure bteditarClick(Sender: TObject);
    procedure btimprimirClick(Sender: TObject);
  private
    { Private declarations }
    bCarregaGrid :Boolean;
  public
    { Public declarations }
    procedure GeraXML;
    procedure CriaGrid; override;
    procedure CarregaComboAno;
    function ValidaExclusao: boolean;
    procedure Varregrid;
    procedure AbreConsultas;
    procedure FechaConsultas;
    procedure CalculaTotal;
    procedure CarregaGrid(TB_SERVICOS_ACOMP:TDataSet);
    procedure Limpar; override;
  end;

type
  TMes = Record
    gr:TRect;
    sMesclado:String;
end;

var
  frmCadServicoATUnidade: TfrmCadServicoATUnidade;

  bMesclando, bEdit, bConsolidado:Boolean;
  Mes:array[0..7] of TMes;
  sArq, sSQLServicoAT:string;
  Unidade, Provincia, Municipio:Integer;
  Ano:String;
  PSQL, MSQL, USQL:string;


implementation

uses UDMGERAL, UDM, DateUtils, Ugeral, uRelatorioWEB;

{$R *.dfm}

procedure TfrmCadServicoATUnidade.GeraXML;
var sXML:TStringList;

  procedure GridXML(sg:TStringGrid);
  var r,c:integer; nome,valor:string;
  begin
    for r:=2 to sg.RowCount do
      for c:=0 to sg.ColCount do
      begin
        nome := sg.Name + '_L' + IntToStr(r) + 'C' + IntToStr(c);
        sXML.Add('<'+nome+'>' + sg.Cells[c,r] + '</'+nome+'>');
      end;
  end;

begin
   sXML := TStringList.Create;
   try
      sXML.Add('<?xml version="1.0" encoding="iso-8859-1"?>');
      sXML.Add('<?xml-stylesheet type="text/xsl" href="SERVICOSAT.xslt"?>');
      sXML.Add('<Programa>');
      sXML.Add('  <Parametros>');
      sXML.Add('    <MUNICIPIO>'+leMunicipio.Text+'</MUNICIPIO>');
      sXML.Add('    <PROVINCIA>'+leProvincia.Text+'</PROVINCIA>');
      sXML.Add('    <UNIDADE>'+leUnidade.Text+'</UNIDADE>');
      sXML.Add('  </Parametros>');
      sXML.Add('  <Dados>');

      GridXML(sgServicoAT);

      sXML.Add('  </Dados>');
      sXML.Add(' </Programa>');

      sXML.SaveToFile(sArq);
   finally
      FreeAndNil(sXML);
   end;
end;


procedure TfrmCadServicoATUnidade.CarregaComboAno;
var data:TDate; i:integer;
begin
  data := dm.GetDateTime;
  cbAno.Items.Add(FormatDateTime('yyyy',data));
  cbAte.Items.Add(FormatDateTime('yyyy',data));
  for i:= 1 to 9 do
  begin
    cbAno.Items.Add(FormatDateTime('yyyy',IncYear(data,-i)));
    cbAte.Items.Add(FormatDateTime('yyyy',IncYear(data,-i)));
  end;
end;

procedure TfrmCadServicoATUnidade.CriaGrid;
var r,c:integer; data:TDateTime; i,iDe,iAte, calc:integer;
begin
  for r:=0 to 12 do
   for c:=0 to 18 do
     sgServicoAT.Cells[c,r] := '';

  sgServicoAT.RowCount := 13;
  sgServicoAT.ColCount := 20;
  sgServicoAT.FixedCols := 1;
  sgServicoAT.FixedRows := 2;
  sgServicoAT.Cells[0,0]  := 'Ano';
  sgServicoAT.Cells[1,0]  := '<18m';
  sgServicoAT.Cells[3,0]  := '>18m � 4a';
  sgServicoAT.Cells[5,0]  := '5 � 14a';
  sgServicoAT.Cells[7,0]  := '15 � 19a';
  sgServicoAT.Cells[9,0]  := '20 � 29a';
  sgServicoAT.Cells[11,0]  := '30 � 39a';
  sgServicoAT.Cells[13,0]  := '40 � 49a';
  sgServicoAT.Cells[15,0]  := '50 � 59a';
  sgServicoAT.Cells[17,0]  := '>60a';
  sgServicoAT.Cells[19,0]  := 'Total';

  sgServicoAT.Cells[1,1]  := 'F';
  sgServicoAT.Cells[2,1]  := 'M';
  sgServicoAT.Cells[3,1]  := 'F';
  sgServicoAT.Cells[4,1]  := 'M';
  sgServicoAT.Cells[5,1]  := 'F';
  sgServicoAT.Cells[6,1]  := 'M';
  sgServicoAT.Cells[7,1]  := 'F';
  sgServicoAT.Cells[8,1]  := 'M';
  sgServicoAT.Cells[9,1]  := 'F';
  sgServicoAT.Cells[10,1]  := 'M';
  sgServicoAT.Cells[11,1]  := 'F';
  sgServicoAT.Cells[12,1]  := 'M';
  sgServicoAT.Cells[13,1]  := 'F';
  sgServicoAT.Cells[14,1]  := 'M';
  sgServicoAT.Cells[15,1]  := 'F';
  sgServicoAT.Cells[16,1]  := 'M';
  sgServicoAT.Cells[17,1]  := 'F';
  sgServicoAT.Cells[18,1]  := 'M';

  sgServicoAT.Cells[0,12] := 'Total';

  sgServicoAT.DefaultColWidth := 40;
  sgServicoAT.DefaultRowHeight := 22;
  sgServicoAT.RowHeights[1] := 22;
  sgServicoAT.ColWidths[0] := 60;





  data := dm.GetDateTime;
  iAte := StrToInt(FormatDateTime('yyyy',data));
  iDe := (iAte - 9);

  calc := 1;
  for i:= iDe to iAte do
  begin
    sgServicoAT.Cells[0,(calc + 1)]  := IntToStr(i);
    calc := calc + 1;
  end;
  sgServicoAT.Repaint;

end;

function TfrmCadServicoATUnidade.ValidaExclusao: boolean;
begin
  try
    if dmGeral.TB_SERVICOS_ACOMP.State in [dsInsert] then
    begin
      //Primeiro deve Excluir, para depois entao incluir todos
      if dmGeral.TB_SERVICOS_ACOMP.State in dsEditModes then
        dmGeral.TB_SERVICOS_ACOMP.Cancel;

      dmGeral.TB_SERVICOS_ACOMP.Close;

      if leUnidade.LookupValue <> '' then
        dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_UNIDADE').AsInteger := strtoint(leUnidade.LookupValue);
      if leProvincia.lookupvalue <> '' then
        dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_PROVINCIA').AsInteger := strtoint(leProvincia.lookupvalue);
      if leMunicipio.LookupValue <> '' then
        dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_MUNICIPIO').AsInteger := strtoint(leMunicipio.LookupValue);
      //dmGeral.TB_SERVICOS_ACOMP.ParamByName('VL_ANO').AsString := cbAno.Text;
      dmGeral.TB_SERVICOS_ACOMP.Open;

      dmGeral.TB_SERVICOS_ACOMP.First;
      while not dmGeral.TB_SERVICOS_ACOMP.Eof do
        dmGeral.TB_SERVICOS_ACOMP.Delete;

      Result := true;
    end;

    if dmGeral.TB_SERVICOS_ACOMP.State in [dsEdit] then
    begin
      //Primeiro deve Excluir, para depois entao incluir todos
      if dmGeral.TB_SERVICOS_ACOMP.State in dsEditModes then
        dmGeral.TB_SERVICOS_ACOMP.Cancel;

      dmGeral.TB_SERVICOS_ACOMP.Close;
      if leUnidade.LookupValue <> '' then
        dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_UNIDADE').AsInteger := Unidade;
      if leProvincia.lookupvalue <> '' then
        dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_PROVINCIA').AsInteger := Provincia;
      if leMunicipio.LookupValue <> '' then
        dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_MUNICIPIO').AsInteger := Municipio;
      //dmGeral.TB_SERVICOS_ACOMP.ParamByName('VL_ANO').AsString := Ano;
      dmGeral.TB_SERVICOS_ACOMP.Open;

      dmGeral.TB_SERVICOS_ACOMP.First;
      while not dmGeral.TB_SERVICOS_ACOMP.Eof do
        dmGeral.TB_SERVICOS_ACOMP.Delete;

      Result := true;
    end;

  except
    Result := false;
  end;
end;

procedure TfrmCadServicoATUnidade.Varregrid;
var i:integer;
    cdUnidade, cdProvincia, cdMunicipio:Integer;
    sAno:String;
begin
  if (leProvincia.lookupvalue = '') then
  begin
    MessageDlg('� necess�rio informar Provincia!',mtInformation,[mbOK],0);
    leProvincia.SetFocus;
    Abort;
  end;

  if (leMunicipio.LookupValue = '') then
  begin
    if MessageDlg('O Municipio n�o foi informada, '#13#10'deseja continuar?',mtConfirmation,
        [mbYes,mbNo],0) = mrNo then
      begin
        leMunicipio.SetFocus;
        Abort;
      end;
  end;

  if (leUnidade.LookupValue = '') then
  begin
    if MessageDlg('A Unidade n�o foi informada, '#13#10'deseja continuar?',mtConfirmation,
        [mbYes,mbNo],0) = mrNo then
      begin
        leUnidade.SetFocus;
        Abort;
      end;
  end;
{
  if (cbAno.ItemIndex = -1) then
  begin
    MessageDlg('� necess�rio informar Ano!',mtInformation,[mbOK],0);
    cbAno.SetFocus;
    Abort;
  end;
}

  cdProvincia := strtoint(leProvincia.lookupvalue);
  sAno := cbAno.Text;

  if leMunicipio.Text <> '' then
    cdMunicipio := strtoint(leMunicipio.LookupValue);

  if leUnidade.Text <> '' then
    cdUnidade := strtoint(leUnidade.LookupValue);

  for i:=2 to 11 do
  begin
    //if (sgServicoAT.Cells[0,i] = cbAno.text ) then
      Begin
         begin
           if not (dmGeral.TB_SERVICOS_ACOMP.State in [dsEdit,dsInsert]) then
             dmGeral.TB_SERVICOS_ACOMP.Insert;

           if cdUnidade <> null then
             dmGeral.TB_SERVICOS_ACOMPCD_UNIDADE.AsInteger := cdUnidade;

           dmGeral.TB_SERVICOS_ACOMPCD_PROVINCIA.AsInteger := cdProvincia;

           if cdMunicipio <> null then
             dmGeral.TB_SERVICOS_ACOMPCD_MUNICIPIO.AsInteger := cdMunicipio;

           sAno := sgServicoAT.Cells[0,i];
           dmGeral.TB_SERVICOS_ACOMPVL_ANO.AsString := sAno;
           dmGeral.TB_SERVICOS_ACOMPVL_Y.AsInteger := i;
           dmGeral.TB_SERVICOS_ACOMPDT_REGISTRO.AsDateTime := dm.GetDateTime;

           dmGeral.TB_SERVICOS_ACOMPVL_F_18.AsString := sgServicoAT.Cells[1,i];
           dmGeral.TB_SERVICOS_ACOMPVL_M_18.AsString := sgServicoAT.Cells[2,i];
           dmGeral.TB_SERVICOS_ACOMPVL_F_18X4.AsString := sgServicoAT.Cells[3,i];
           dmGeral.TB_SERVICOS_ACOMPVL_M_18X4.AsString := sgServicoAT.Cells[4,i];
           dmGeral.TB_SERVICOS_ACOMPVL_F_5X14.AsString := sgServicoAT.Cells[5,i];
           dmGeral.TB_SERVICOS_ACOMPVL_M_5X14.AsString := sgServicoAT.Cells[6,i];
           dmGeral.TB_SERVICOS_ACOMPVL_F_15X19.AsString := sgServicoAT.Cells[7,i];
           dmGeral.TB_SERVICOS_ACOMPVL_M_15X19.AsString := sgServicoAT.Cells[8,i];
           dmGeral.TB_SERVICOS_ACOMPVL_F_20X29.AsString := sgServicoAT.Cells[9,i];
           dmGeral.TB_SERVICOS_ACOMPVL_M_20x29.AsString := sgServicoAT.Cells[10,i];
           dmGeral.TB_SERVICOS_ACOMPVL_F_30x39.AsString := sgServicoAT.Cells[11,i];
           dmGeral.TB_SERVICOS_ACOMPVL_M_30x99.AsString := sgServicoAT.Cells[12,i];
           dmGeral.TB_SERVICOS_ACOMPVL_F_40x49.AsString := sgServicoAT.Cells[13,i];
           dmGeral.TB_SERVICOS_ACOMPVL_M_40x49.AsString := sgServicoAT.Cells[14,i];
           dmGeral.TB_SERVICOS_ACOMPVL_F_50x59.AsString := sgServicoAT.Cells[15,i];
           dmGeral.TB_SERVICOS_ACOMPVL_M_50x59.AsString := sgServicoAT.Cells[16,i];
           dmGeral.TB_SERVICOS_ACOMPVL_F_60.AsString := sgServicoAT.Cells[17,i];
           dmGeral.TB_SERVICOS_ACOMPVL_M_60.AsString := sgServicoAT.Cells[18,i];

           dmGeral.TB_SERVICOS_ACOMP.Post;
         end;
       end;
  end;
end;

procedure TfrmCadServicoATUnidade.AbreConsultas;
begin
  PSQL := qyProvincia.sql.text;
  MSQL := qyMunicipio.sql.text;
  USQL := qyUnidade.sql.text;
  qyProvincia.Open;
  qyMunicipio.Open;
  qyUnidade.Open;
end;

procedure TfrmCadServicoATUnidade.FechaConsultas;
begin
  qyProvincia.Close;
  qyMunicipio.Close;
  qyUnidade.Close;
end;

procedure TfrmCadServicoATUnidade.CalculaTotal;
var l,r,c:integer; tl,tc,tg:real;
begin
  for c:=1 to 18 do
  begin
      tc :=
         Valor(sgServicoAT.Cells[c,2]) +
         Valor(sgServicoAT.Cells[c,3]) +
         Valor(sgServicoAT.Cells[c,4]) +
         Valor(sgServicoAT.Cells[c,5]) +
         Valor(sgServicoAT.Cells[c,6]) +
         Valor(sgServicoAT.Cells[c,7]) +
         Valor(sgServicoAT.Cells[c,8]) +
         Valor(sgServicoAT.Cells[c,9]) +
         Valor(sgServicoAT.Cells[c,10])+
		 Valor(sgServicoAT.Cells[c,11]);
      sgServicoAT.Cells[c,12] := FloatToStr(tc);
      tg := tc;
  end;

  for l:=2 to 12 do
  begin
      tc:=0;
      for c:=1 to 18 do
        tc := tc+ Valor(sgServicoAT.Cells[c,l]);
      sgServicoAT.Cells[19,l] := FloatToStr(tc);
      tg := tc;
  end;
end;

procedure TfrmCadServicoATUnidade.CarregaGrid(TB_SERVICOS_ACOMP:TDataSet);
var rAux:real;  y:integer;
begin
    CriaGrid;
    dmGeral.TB_SERVICOS_ACOMP.First;
    while Not dmGeral.TB_SERVICOS_ACOMP.Eof do
    begin
      //raux := valor(sgServicoAT.Cells[0,dmGeral.TB_SERVICOS_ACOMPVL_Y.AsInteger]) +
      //        valor(dmGeral.TB_SERVICOS_ACOMPVL_ANO.AsString);
      //sgServicoAT.Cells[0,dmGeral.TB_SERVICOS_ACOMPVL_Y.AsInteger] := floattostr(raux);
     y := sgServicoAT.Cols[0].IndexOf(dmGeral.TB_SERVICOS_ACOMPVL_ANO.AsString);
      raux := valor(sgServicoAT.Cells[1,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_F_18.AsString);
      sgServicoAT.Cells[1,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[2,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_M_18.AsString);
      sgServicoAT.Cells[2,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[3,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_F_18X4.AsString);
      sgServicoAT.Cells[3,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[4,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_M_18X4.AsString);
      sgServicoAT.Cells[4,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[5,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_F_5X14.AsString);
      sgServicoAT.Cells[5,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[6,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_M_5X14.AsString);
      sgServicoAT.Cells[6,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[7,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_F_15X19.AsString);
      sgServicoAT.Cells[7,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[8,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_M_15X19.AsString);
      sgServicoAT.Cells[8,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[9,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_F_20X29.AsString);
      sgServicoAT.Cells[9,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[10,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_M_20x29.AsString);
      sgServicoAT.Cells[10,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[11,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_F_30x39.AsString);
      sgServicoAT.Cells[11,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[12,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_M_30x99.AsString);
      sgServicoAT.Cells[12,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[13,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_F_40x49.AsString);
      sgServicoAT.Cells[13,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[14,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_M_40x49.AsString);
      sgServicoAT.Cells[14,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[15,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_F_50x59.AsString);
      sgServicoAT.Cells[15,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[16,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_M_50x59.AsString);
      sgServicoAT.Cells[16,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[17,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_F_60.AsString);
      sgServicoAT.Cells[17,y] := floattostr(raux);

      raux := valor(sgServicoAT.Cells[18,y]) +
              valor(DMGERAL.TB_SERVICOS_ACOMPVL_M_60.AsString);
      sgServicoAT.Cells[18,y] := floattostr(raux);


      dmGeral.TB_SERVICOS_ACOMP.Next;
    end;

    sgServicoAT.Repaint;
    CalculaTotal;

end;

procedure TfrmCadServicoATUnidade.FormShow(Sender: TObject);
begin
  inherited;
  qyGrid.Open;
  CriaGrid;
  pgGeral.ActivePageIndex := 1;
end;

procedure TfrmCadServicoATUnidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FechaConsultas;
  dmGeral.TB_SERVICOS_ACOMP.SelectSQL.Text := sSQLServicoAT;

end;

procedure TfrmCadServicoATUnidade.sgServicoATDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var Conteudo:String; x,y,hf,hw,t,calc,i:integer; c:TColor;   r:TRect;
begin
  inherited;
  Conteudo := sgServicoAT.Cells[ACol,ARow];
  hf := sgServicoAT.Canvas.TextHeight('Lj');
  //SetTextAlign(sgServicoAT.Canvas.Handle, TA_CENTER);

  //Mesclar: Negrito, Centro, Borda
  if (ARow = 0) and (ACol > 0) then
  begin
      //-----MESCLAGEM 1 LINHA 1--------------------------------------------------
      if ACol = 1 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 2) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;

      //-----MESCLAGEM 1 LINHA 2--------------------------------------------------
      if ACol = 3 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 4) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
      //-----MESCLAGEM 1 LINHA 3--------------------------------------------------
      if ACol = 5 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 6) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
      //-----MESCLAGEM 1 LINHA 4--------------------------------------------------
      if ACol = 7 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 8) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
      //-----MESCLAGEM 1 LINHA 5--------------------------------------------------
      if ACol = 9 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 10) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
      //-----MESCLAGEM 1 LINHA 6--------------------------------------------------
      if ACol = 11 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 12) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
      //-----MESCLAGEM 1 LINHA 7--------------------------------------------------
      if ACol = 13 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 14) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
      //-----MESCLAGEM 1 LINHA 7--------------------------------------------------
      if ACol = 15 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 16) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
      //-----MESCLAGEM 1 LINHA 8--------------------------------------------------
      if ACol = 17 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 18) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
      //-----MESCLAGEM 1 LINHA 9 TOTAL--------------------------------------------------
      if ACol = 19 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 19) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
    {  //-----MESCLAGEM 1 LINHA 10 --------------------------------------------------
      if ACol = 19 then
      begin
        Mes[4].gr := Rect; Mes[4].sMesclado := Conteudo;
      end;
      if (ACol = 19) then
      begin
        r.Left := Mes[4].gr.Left;  r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;   r.Right := Rect.Right;
        sgServicoAT.Canvas.Font.Style:=[fsbold]; sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[4].sMesclado);  x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);   sgServicoAT.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;                                        }


  end;


  //Mesclar: Negrito, Centro, Borda
  if (ARow in [0,1]) and (ACol = 0) then
  begin
      if ARow = 0 then
      begin
        Mes[1].gr := Rect;
        Mes[1].sMesclado := Conteudo;
      end;

      if (ARow = 1) then
      begin
        r.Left := Mes[1].gr.Left;
        r.Top := Mes[1].gr.Top;
        r.Bottom := Rect.Bottom;
        r.Right := Mes[1].gr.Right;

        sgServicoAT.Canvas.Font.Style:=[fsbold];
        sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[1].sMesclado);
        x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
        sgServicoAT.Canvas.TextRect(r,x,y,Mes[1].sMesclado);

        //DrawText(sgServicoAT.Canvas.Handle,Pchar(Mes[1].sMesclado),-1,r,DT_WORDBREAK+DT_CENTER+DT_VCENTER);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
  end;


{  //Mesclar: Negrito, Centro, Borda
  if (ARow in [0,1]) and (ACol = 1) then
  begin
      if ARow = 0 then
      begin
        Mes[2].gr := Rect;
        Mes[2].sMesclado := Conteudo;
      end;

      if (ARow = 1) then
      begin
        r.Left := Mes[2].gr.Left;
        r.Top := Mes[2].gr.Top;
        r.Bottom := Rect.Bottom;
        r.Right := Mes[2].gr.Right;

        sgServicoAT.Canvas.Font.Style:=[fsbold];
        sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[2].sMesclado);
        x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
        sgServicoAT.Canvas.TextRect(r,x,y,Mes[2].sMesclado);
        //DrawText(sgServicoAT.Canvas.Handle,Pchar(Mes[2].sMesclado),-1,r,DT_WORDBREAK+DT_CENTER+DT_VCENTER);
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
  end;


 }
{  //Mesclar: Negrito, Centro, Borda
  if (ACol in [0]) and (ARow in [7,8,9]) then
  begin
      if ARow = 7 then
      begin
        Mes[5].gr := Rect;
        Mes[5].sMesclado := Conteudo;
      end;

      if (ARow = 9) then
      begin
        r.Left := Mes[5].gr.Left;
        r.Top := Mes[5].gr.Top;
        r.Bottom := Rect.Bottom;
        r.Right := Mes[5].gr.Right;

        sgServicoAT.Canvas.Font.Style:=[fsbold];
        sgServicoAT.Canvas.FillRect(r);
        t := sgServicoAT.Canvas.TextWidth(Mes[5].sMesclado);
        x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
        sgServicoAT.Canvas.TextRect(r,x,y,Mes[5].sMesclado);
        //
        DesenhaBordas(sgServicoAT.Canvas,r);
      end;
  end;      }

  //Titulo: Negrito, Centro, Borda
  if ((ACol in [0]) and (ARow >1))or
     ((ACol > 0) and (ARow = 1))then
  begin
     if not((ARow in [0])and(ACol=0)) then
     begin
       r := Rect;
       sgServicoAT.Canvas.Font.Style := [fsbold];
       sgServicoAT.Canvas.FillRect(r);
       t := sgServicoAT.Canvas.TextWidth(Conteudo);
        x := r.Left + (((r.Right - r.Left)-t)  div 2);
       y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
       sgServicoAT.Canvas.TextRect(r,x,y,Conteudo);
       //DrawText(sgServicoAT.Canvas.Handle,Pchar(Conteudo),-1,r,DT_WORDBREAK+DT_CENTER+DT_VCENTER);
       DesenhaBordas(sgServicoAT.Canvas,r);
     end;
  end;


  //Total: Negrito, Centro, Cor
  if ((ARow in [12]) and (ACol >0 ))or
     ((ACol in [19]) and (ARow > 1)) then
  begin
     r := Rect;
     sgServicoAT.Canvas.Brush.Color := cl3DLight;
     sgServicoAT.Canvas.Font.Style := [fsbold];
     sgServicoAT.Canvas.FillRect(r);
     t := sgServicoAT.Canvas.TextWidth(Conteudo);
     x := r.Left + (((r.Right - r.Left)-t)  div 2);
     y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
     sgServicoAT.Canvas.TextRect(r,x,y,Conteudo);
  end;
{
  //Linhas Ano sem preenchimento: Cor
  if DMGERAL.TB_SERVICOS_ACOMP.State in [dsEdit, dsInsert] then
  begin
    //for i:=2 to 11 do
    begin
      //if (sgServicoAT.Cells[0,i] <> cbAno.text ) then
      Begin
        if ((ARow>=2)and(ARow<=12) and (ACol >0 ))then
        begin
           r := Rect;
           sgServicoAT.Canvas.Brush.Color := cl3DLight;
           sgServicoAT.Canvas.Font.Style := [fsbold];
           sgServicoAT.Canvas.FillRect(r);
           t := sgServicoAT.Canvas.TextWidth(Conteudo);
           x := r.Left + (((r.Right - r.Left)-t)  div 2);
           y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
           sgServicoAT.Canvas.TextRect(r,x,y,Conteudo);
        end;
      end;

    end;
  end;
}
  //Total: Negrito, Centro, Cor
  if ((ARow in [12]) and (ACol >0 ))then
  begin
     r := Rect;
     sgServicoAT.Canvas.Brush.Color := cl3DLight;
     sgServicoAT.Canvas.Font.Style := [fsbold];
     sgServicoAT.Canvas.FillRect(r);
     t := sgServicoAT.Canvas.TextWidth(Conteudo);
     x := r.Left + (((r.Right - r.Left)-t)  div 2);
     y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
     sgServicoAT.Canvas.TextRect(r,x,y,Conteudo);
  end;

end;

procedure TfrmCadServicoATUnidade.FormCreate(Sender: TObject);
begin
  inherited;
  FbPermiteMudarPagina := False;
  AbreConsultas;
  CarregaComboAno;
  bCarregaGrid := True;
  sSQLServicoAT := dmGeral.TB_SERVICOS_ACOMP.SelectSQL.Text;
end;

procedure TfrmCadServicoATUnidade.btIncluirClick(Sender: TObject);
begin
  pgGeral.ActivePageIndex := 1;
  dmGeral.TB_SERVICOS_ACOMP.Close;
  dmGeral.TB_SERVICOS_ACOMP.Open;

  inherited;
  leProvincia.lookupValue := '';
  leUnidade.lookupValue := '';
  leMunicipio.lookupValue := '';
  cbAno.ItemIndex := -1;
  cbAte.ItemIndex := -1;
  bConsolidado := false;

  CriaGrid;
{
  //Controle de Usuario (RELATORIOS NAO TEM TRIGGERS) (Operacao INSERT)
  with TIBQuery.Create(nil) do
    begin
      Database := DM.DB;
      sql.Add('INSERT INTO AUDITORIA	(CD_AUDITORIA, CD_UND, CD_USU,DT_AUDITORIA, NM_TABELA, TP_OPERACAO)');
      sql.Add('VALUES 	(GEN_ID(GEN_AUDITORIA,1),'+QuotedStr(prmUnidade)+','+QuotedStr(DM.qyLoginCD_USUARIO.AsString)+', ''NOW'', ''REGISTRO_SERVICOS_ACOMP'', ''I'')');
      ExecSQL;
      close;
      free;
    end;
}
end;

procedure TfrmCadServicoATUnidade.sgServicoATSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
var
  i:integer;
begin
  //for i:=2 to 11 do
  begin
    //if (sgServicoAT.Cells[0,i] = cbAno.text ) then
    Begin
      bEdit := (((ARow >=2) and (ARow <=11)) and (ACol >0 ));
      if (bEdit) and (dsControle.DataSet.State in [dsEdit,dsInsert]) then
        sgServicoAT.Options := sgServicoAT.Options + [goEditing]
      else
        sgServicoAT.Options := sgServicoAT.Options - [goEditing];
    end
    {else
      if (bEdit) and (dsControle.DataSet.State in [dsEdit,dsInsert]) then
        sgServicoAT.Options := sgServicoAT.Options + [goEditing]
      else
        sgServicoAT.Options := sgServicoAT.Options - [goEditing];}
  end;

end;

procedure TfrmCadServicoATUnidade.btgravarClick(Sender: TObject);
begin
  if bConsolidado then
  begin
    MessageDlg('Dados em modo de consolida��o, n�o podem ser modificados!',mtInformation,[mbOK],0);
  end
  else
  begin
    ValidaExclusao;
    VarreGrid;
    inherited;
  end;

end;

procedure TfrmCadServicoATUnidade.sgServicoATSetEditText(
  Sender: TObject; ACol, ARow: Integer; const Value: String);
var
  i:integer;

begin
  inherited;

  begin
    //if (sgServicoAT.Cells[0,i] = cbAno.text ) then
    Begin
      bEdit := (not(ARow in [0,1,12]) and (ACol >0 ));
      if (bEdit) and (dsControle.DataSet.State in [dsEdit,dsInsert]) then
        sgServicoAT.Options := sgServicoAT.Options + [goEditing]
      else
        sgServicoAT.Options := sgServicoAT.Options - [goEditing];
    end
    {else
      if (bEdit) and (dsControle.DataSet.State in [dsEdit,dsInsert]) then
        sgServicoAT.Options := sgServicoAT.Options + [goEditing]
      else
        sgServicoAT.Options := sgServicoAT.Options - [goEditing];}
  end;


  CalculaToTal;

end;

procedure TfrmCadServicoATUnidade.pgGeralChange(Sender: TObject);
//var  i:integer;
begin
  inherited;
{

  if pgGeral.ActivePageIndex=1 then
  begin
    if not qyGridCD_PROVINCIA.IsNull then
      leProvincia.lookupvalue := qyGridCD_PROVINCIA.AsInteger;

    if not qyGridCD_MUNICIPIO.IsNull then
      leMunicipio.LookupValue := qyGridCD_MUNICIPIO.AsInteger;

    if not qyGridCD_UNIDADE.IsNull then
      leUnidade.LookupValue := qyGridCD_UNIDADE.AsInteger;

    if not qyGridVL_ANO.IsNull then
      begin
        cbAno.text := qyGridVL_ANO.AsString;
        cbAte.text := qyGridVL_ANO.AsString;
      end
      else
        begin
          cbAno.ItemIndex := -1;
          cbAte.ItemIndex := -1;
        end;

    btConsultarClick(sender);
  end;
}
end;

procedure TfrmCadServicoATUnidade.btConsultarClick(Sender: TObject);
var sSQLWhere, sSQL, sW:String; nB,nE:Integer;
begin
  inherited;
  if (dmGeral.TB_SERVICOS_ACOMP.State in [dsEdit, dsInsert]) then
    Exit;

  dmGeral.TB_SERVICOS_ACOMP.Close;
  dmGeral.TB_SERVICOS_ACOMP.SelectSQL.Text := sSQLServicoAT;
  sSQL := sSQLServicoAT;;
  if ckConsolidar.Checked then
  begin
    sSQLWhere := '';
    sW := ' where ';

    if leUnidade.LookupValue <> '' then
    begin
      sSQLWhere := sW + 'CD_UNIDADE = :CD_UNIDADE';
      sW := ' and ';
    end;

    if leProvincia.lookupvalue <> '' then
    begin
      sSQLWhere := sSQLWhere + sW + 'CD_PROVINCIA = :CD_PROVINCIA';
      sW := ' and ';
    end;

    if leMunicipio.LookupValue <> '' then
    begin
      sSQLWhere := sSQLWhere + sW + 'CD_MUNICIPIO = :CD_MUNICIPIO';
      sW := ' and ';
    end;

    if (trim(cbAno.Text) <> '') and (trim(cbAte.Text) <> '') then
      begin
        sSQLWhere := sSQLWhere + sW + 'VL_ANO between :de and :ate';
        sW := 'and ';
      end;

    SetSQLWhere(sSQL, sSQLWhere);
    dmGeral.TB_SERVICOS_ACOMP.SelectSQL.Text := sSQL;
    if (trim(cbAno.Text) <> '') and (trim(cbAte.Text) <> '') then
    begin
      dmGeral.TB_SERVICOS_ACOMP.ParamByName('de').AsString := cbAno.text;
      dmGeral.TB_SERVICOS_ACOMP.ParamByName('ate').AsString := cbAte.text;
    end;

    bConsolidado := true;
  end
  else
    bConsolidado := false;


  //Leandro 07/05/2013 - Nao � obrigatorio nenhum dos parametros
  if (leProvincia.lookupvalue <> '') then
     dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_PROVINCIA').Value := leProvincia.lookupvalue;
  if (leMunicipio.LookupValue <> '') then
    dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_MUNICIPIO').Value := leMunicipio.LookupValue;
  if (leUnidade.LookupValue <> '') then
    dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_UNIDADE').Value := leUnidade.LookupValue;

  dmGeral.TB_SERVICOS_ACOMP.Open;
  CarregaGrid(dmGeral.TB_SERVICOS_ACOMP);
end;
procedure TfrmCadServicoATUnidade.grDadosDblClick(Sender: TObject);
begin

  if not qyGridCD_PROVINCIA.IsNull then
    leProvincia.lookupvalue := qyGridCD_PROVINCIA.AsString;

  if not qyGridCD_MUNICIPIO.IsNull then
    leMunicipio.LookupValue := qyGridCD_MUNICIPIO.AsString;

  if not qyGridCD_UNIDADE.IsNull then
    leUnidade.LookupValue := qyGridCD_UNIDADE.AsString;

  //cbAno.Text := qyGridVL_ANO.AsString;
  btConsultarClick(sender);
  inherited;

end;
procedure TfrmCadServicoATUnidade.ckConsolidarClick(Sender: TObject);
begin
  inherited;
  lbAte.visible := ckConsolidar.Checked;
  cbAte.visible := ckConsolidar.Checked;
  lbDe.visible := ckConsolidar.Checked;
  cbAno.visible := ckConsolidar.Checked;
  lbPeriodo.visible := ckConsolidar.Checked;
end;
procedure TfrmCadServicoATUnidade.cbAnoChange(Sender: TObject);
begin
  inherited;
  sgServicoAT.Repaint;

end;
procedure TfrmCadServicoATUnidade.btexcluirClick(Sender: TObject);
var bExisteRegistro: Boolean;
begin
  pgGeral.ActivePageIndex := 1;
  pgGeralChange(sender);

{
  bExisteRegistro:=false;
  with TIBQuery.Create(nil) do // FAZ VERIFICACAO SE OS DADOS DOS CB TEM NA TABELA
    begin
      Database := DM.DB;

      sql.Add('select CD_UNIDADE, CD_PROVINCIA, CD_MUNICIPIO, VL_ANO ');
      sql.Add('from REGISTRO_SERVICOS_ACOMP');
      sql.Add('where CD_UNIDADE ='+leUnidade.LookupValue+' and CD_PROVINCIA = '+leProvincia.lookupvalue+' and CD_MUNICIPIO ='+leMunicipio.LookupValue+' and VL_ANO = '+QuotedStr(cbAno.Text)+'');
      Open;
      while not Eof do //S� verificar se encontrou registro
        begin
          bExisteRegistro:=true;
          Last;
        end;
      close;
      free;
    end;
}

  if bConsolidado then
  begin
    MessageDlg('Dados em modo de consolida��o, n�o podem ser modificados!',mtInformation,[mbOK],0);
  end
  else{
  if  not bExisteRegistro then
    begin
      btLimpar.click;
    end
  else}
  begin
    if Application.MessageBox('Deseja Excluir este registro?','Excluir', MB_YESNO+MB_ICONQUESTION) <> IDYES then
      Abort
    else
    begin

    dmGeral.TB_SERVICOS_ACOMP.Close;
    if leUnidade.LookupValue <> '' then
      dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_UNIDADE').AsInteger := strtoInt(leUnidade.LookupValue);
    if leProvincia.lookupvalue <> '' then
      dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_PROVINCIA').AsInteger := strtoInt(leProvincia.lookupvalue);
    if leMunicipio.LookupValue <> '' then
      dmGeral.TB_SERVICOS_ACOMP.ParamByName('CD_MUNICIPIO').AsInteger := strtoInt(leMunicipio.LookupValue);
    //dmGeral.TB_SERVICOS_ACOMP.ParamByName('VL_ANO').AsString := cbAno.Text;
    dmGeral.TB_SERVICOS_ACOMP.Open;
{
    dmGeral.TB_SERVICOS_ACOMP.First;
    while not dmGeral.TB_SERVICOS_ACOMP.Eof do
      dmGeral.TB_SERVICOS_ACOMP.Delete;

    dmGeral.TB_SERVICOS_ACOMP.Close; dmGeral.TB_SERVICOS_ACOMP.Open;
}
    //if bCarregaGrid then  CarregaGrid(DMGERAL.TB_SERVICOS_ACOMP);
{
    //Controle de Usuario (RELATORIOS NAO TEM TRIGGERS) (Operacao DELETE)
        with TIBQuery.Create(nil) do
          begin
            Database := DM.DB;
            sql.Add('INSERT INTO AUDITORIA	(CD_AUDITORIA, CD_UND, CD_USU,DT_AUDITORIA, NM_TABELA, TP_OPERACAO)');
            sql.Add('VALUES 	(GEN_ID(GEN_AUDITORIA,1),'+QuotedStr(prmUnidade)+','+QuotedStr(DM.qyLoginCD_USUARIO.AsString)+', ''NOW'', ''REGISTRO_SERVICOS_ACOMP'', ''D'')');
            ExecSQL;
            close;
            free;
          end;
}
        inherited;

        //pgGeral.ActivePageIndex:=0;
        //pgGeralChange(sender);
    end;
  end;
end;

procedure TfrmCadServicoATUnidade.btLimparClick(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmCadServicoATUnidade.btCancelarClick(Sender: TObject);
begin
  if bConsolidado then
  begin
    MessageDlg('Dados em modo de consolida��o, n�o podem ser modificados!',mtInformation,[mbOK],0);
  end
  else
   inherited;

end;

procedure TfrmCadServicoATUnidade.bteditarClick(Sender: TObject);
begin
  pgGeral.ActivePageIndex := 1;
  if not bConsolidado then
    pgGeralChange(sender);

  if bConsolidado then
  begin
    MessageDlg('Dados em modo de consolida��o, n�o podem ser modificados!',mtInformation,[mbOK],0);
  end
  else
  begin
    Unidade := dmGeral.TB_SERVICOS_ACOMPCD_UNIDADE.AsInteger;
    Provincia := dmGeral.TB_SERVICOS_ACOMPCD_PROVINCIA.AsInteger;
    Municipio := dmGeral.TB_SERVICOS_ACOMPCD_MUNICIPIO.AsInteger;
    Ano := dmGeral.TB_SERVICOS_ACOMPVL_ANO.AsString;
    inherited;
{
    //Controle de Usuario (RELATORIOS NAO TEM TRIGGERS) (Operacao UPDATE)
    with TIBQuery.Create(nil) do
      begin
        Database := DM.DB;
        sql.Add('INSERT INTO AUDITORIA	(CD_AUDITORIA, CD_UND, CD_USU,DT_AUDITORIA, NM_TABELA, TP_OPERACAO)');
        sql.Add('VALUES 	(GEN_ID(GEN_AUDITORIA,1),'+QuotedStr(prmUnidade)+','+QuotedStr(DM.qyLoginCD_USUARIO.AsString)+', ''NOW'', ''REGISTRO_SERVICOS_ACOMP'', ''U'')');
        ExecSQL;
        close;
        free;
      end;
}
  end;


end;
procedure TfrmCadServicoATUnidade.btimprimirClick(Sender: TObject);
begin
  frmRelatorioWEB := TfrmRelatorioWEB.Create(application);
  try
    sArq := sPathConsulta+'RelatorioSERVICOSAT'+FormatDateTime('ddmmyyhhnnss',now)+'.xml';
    GeraXML;
    frmRelatorioWEB.relatorio.Navigate(sArq);
    frmRelatorioWEB.ShowModal;
  finally
    frmRelatorioWEB.Free;
    if FileExists(sArq) then
      DeleteFile(sArq);
  end;
end;

procedure TfrmCadServicoATUnidade.Limpar;
begin
  inherited;
  leProvincia.text:='';
  leMunicipio.text:='';
  leUnidade.text:='';
  cbAno.Text := '';
  cbAte.Text := '';
end;

procedure TfrmCadServicoATUnidade.leProvinciaChange(Sender: TObject);
begin
  inherited;
  if leProvincia.Modified then
  begin
    qyProvincia.Close;
    qyProvincia.SQL.Text := PSQL;
    qyProvincia.SQL.Add('where Upper(ds_provincia) like(''' + '%' + UpperCase(leProvincia.Text) + '%'')');
    qyProvincia.Open;
  end
  else
  begin
    qyProvincia.SQL.Text := PSQL;
    qyProvincia.Open;
  end;

end;

procedure TfrmCadServicoATUnidade.leMunicipioChange(Sender: TObject);
begin
  inherited;
  if leMunicipio.Modified then
  begin
    qyMunicipio.Close;
    qyMunicipio.SQL.Text := MSQL;
    qyMunicipio.SQL.Add('and Upper(ds_municipio) like(''' + '%' + UpperCase(leMunicipio.Text) + '%'')');
    qyMunicipio.Open;
  end
  else
  begin
    qyMunicipio.SQL.Text := MSQL;
    qyMunicipio.Open;
  end;

end;

procedure TfrmCadServicoATUnidade.leUnidadeChange(Sender: TObject);
begin
  inherited;
  if leUnidade.Modified then
  begin
    qyUnidade.Close;
    qyUnidade.SQL.Text := USQL;
    qyUnidade.SQL.Add('and Upper(ds_unidade) like(''' + '%' + UpperCase(leUnidade.Text) + '%'')');
    qyUnidade.Open;
  end
  else
  begin
    qyUnidade.SQL.Text := USQL;
    qyUnidade.Open;
  end;
end;


end.
