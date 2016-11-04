unit uCadCriancaExpostaUnidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmCadPadSG, dxExEdtr, RpRave, RpBase, RpSystem, RpDefine, RpCon,
  RpConDS, DBClient, DB, IBCustomDataSet, IBQuery, DBGrids, Grids,
  dxCntner, dxEditor, dxEdLib, StdCtrls, RxLookup, dxTL, dxDBCtrl,
  dxDBGrid, ComCtrls, Buttons, ExtCtrls, ib_parse, UfrmCadPad, Mask,
  ToolEdit, Menus;

type
  TfrmCadCriancaExpostaUnidade = class(TfrmCadPadSG)
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
    sgCriancaExposta: TStringGrid;
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
    qyCriancaExposta: TIBQuery;
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
    procedure sgCriancaExpostaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure btIncluirClick(Sender: TObject);
    procedure sgCriancaExpostaSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure btgravarClick(Sender: TObject);
    procedure sgCriancaExpostaSetEditText(Sender: TObject; ACol,
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
    procedure CarregaGrid(TB_CRIANCAS_EXP:TDataSet);
    procedure Limpar; override;
  end;

type
  TMes = Record
    gr:TRect;
    sMesclado:String;
end;

var
  frmCadCriancaExpostaUnidade: TfrmCadCriancaExpostaUnidade;
  bMesclando, bEdit, bConsolidado:Boolean;
  Mes:array[0..7] of TMes;
  sArq, sSQLCriancaExposta:string;
  Unidade, Provincia, Municipio:Integer;
  Ano:String;
  PSQL, MSQL, USQL:string;

implementation

uses UDMGERAL, UDM, DateUtils, Ugeral, uRelatorioWEB;

{$R *.dfm}

procedure TfrmCadCriancaExpostaUnidade.GeraXML;
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
      sXML.Add('<?xml-stylesheet type="text/xsl" href="CRIANCAEXPOSTA.xslt"?>');
      sXML.Add('<Programa>');
      sXML.Add('  <Parametros>');
      sXML.Add('    <MUNICIPIO>'+leMunicipio.Text+'</MUNICIPIO>');
      sXML.Add('    <PROVINCIA>'+leProvincia.Text+'</PROVINCIA>');
      sXML.Add('    <UNIDADE>'+leUnidade.Text+'</UNIDADE>');
      sXML.Add('  </Parametros>');
      sXML.Add('  <Dados>');

      GridXML(sgCriancaExposta);

      sXML.Add('  </Dados>');
      sXML.Add(' </Programa>');

      sXML.SaveToFile(sArq);
   finally
      FreeAndNil(sXML);
   end;
end;


procedure TfrmCadCriancaExpostaUnidade.CarregaComboAno;
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


procedure TfrmCadCriancaExpostaUnidade.CriaGrid;
var r,c:integer;  data:TDateTime; i,iDe,iAte, calc:integer;
begin
  for r:=0 to 12 do
   for c:=0 to 4 do
     sgCriancaExposta.Cells[c,r] := '';

  sgCriancaExposta.RowCount := 13;
  sgCriancaExposta.ColCount := 5;
  sgCriancaExposta.FixedCols := 1;
  sgCriancaExposta.FixedRows := 2;
  sgCriancaExposta.Cells[2,0]  := 'N. de Diagn�stico Definitivo de Crian�as Expostas';
  sgCriancaExposta.Cells[0,0]  := 'Ano';
  sgCriancaExposta.Cells[1,0]  := 'Nr. de Gravidez que fizeram PTV';
  sgCriancaExposta.Cells[2,1]  := 'Crian�as expostas result +';
  sgCriancaExposta.Cells[3,1]  := 'Crian�as expostas result -';
  sgCriancaExposta.Cells[4,1]  := 'Ccas Exposta sem informa��o';

  sgCriancaExposta.Cells[0,12] := 'Total';

  sgCriancaExposta.DefaultColWidth := 100;
  sgCriancaExposta.DefaultRowHeight := 22;
  sgCriancaExposta.RowHeights[1] := 22;
  sgCriancaExposta.ColWidths[0] := 50;
  sgCriancaExposta.ColWidths[1] := 200;
  sgCriancaExposta.ColWidths[2] := 160;
  sgCriancaExposta.ColWidths[3] := 160;
  sgCriancaExposta.ColWidths[4] := 320;

  data := dm.GetDateTime;
  iAte := StrToInt(FormatDateTime('yyyy',data));
  iDe := (iAte - 9);

  calc := 1;
  for i:= iDe to iAte do
  begin
    sgCriancaExposta.Cells[0,(calc + 1)]  := IntToStr(i);
    calc := calc + 1;
  end;
  sgCriancaExposta.Repaint;

end;



procedure TfrmCadCriancaExpostaUnidade.Varregrid;
var i:integer;
    cdUnidade, cdProvincia, cdMunicipio:Integer;
    sAno:String;
begin
  if (leProvincia.LookupValue = '') then
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

  cdProvincia := strtoint(leProvincia.LookupValue);
  sAno := cbAno.Text;

  if leMunicipio.Text <> '' then
    cdMunicipio := StrtoInt(leMunicipio.LookupValue);

  if leUnidade.Text <> '' then
    cdUnidade := strtoInt(leUnidade.LookupValue);

  for i:=2 to 11 do
  begin
      //if (sgCriancaExposta.Cells[0,i] = cbAno.text ) then
      Begin
         begin
           if not (dmGeral.TB_CRIANCAS_EXP.State in [dsEdit,dsInsert]) then
             dmGeral.TB_CRIANCAS_EXP.Insert;

           if cdUnidade <> null then
             dmGeral.TB_CRIANCAS_EXPCD_UNIDADE.AsInteger := cdUnidade;

           dmGeral.TB_CRIANCAS_EXPCD_PROVINCIA.AsInteger := cdProvincia;

           if cdMunicipio <> null then
             dmGeral.TB_CRIANCAS_EXPCD_MUNICIPIO.AsInteger := cdMunicipio;

           sAno := sgCriancaExposta.Cells[0,i];
           dmGeral.TB_CRIANCAS_EXPVL_ANO.AsString := sAno;
           dmGeral.TB_CRIANCAS_EXPVL_Y.AsInteger := i;
           dmGeral.TB_CRIANCAS_EXPDT_REGISTRO.AsDateTime := dm.GetDateTime;

           dmGeral.TB_CRIANCAS_EXPVL_GRAVIDAS.AsString := sgCriancaExposta.Cells[1,i];
           dmGeral.TB_CRIANCAS_EXPVL_CRI_POSITIVA.AsString := sgCriancaExposta.Cells[2,i];
           dmGeral.TB_CRIANCAS_EXPVL_CRI_NEGATIVA.AsString := sgCriancaExposta.Cells[3,i];
           dmGeral.TB_CRIANCAS_EXPVL_CRI_SEM_INFORMACAO.AsString := sgCriancaExposta.Cells[4,i];

           dmGeral.TB_CRIANCAS_EXP.Post;
         end;
       end;
  end;
end;

procedure TfrmCadCriancaExpostaUnidade.AbreConsultas;
begin
  PSQL := qyProvincia.sql.text;
  MSQL := qyMunicipio.sql.text;
  USQL := qyUnidade.sql.text;
  qyProvincia.Open;
  qyMunicipio.Open;
  qyUnidade.Open;
end;

procedure TfrmCadCriancaExpostaUnidade.FechaConsultas;
begin
  qyProvincia.Close;
  qyMunicipio.Close;
  qyUnidade.Close;
end;

procedure TfrmCadCriancaExpostaUnidade.CalculaTotal;
var r,c:integer; tl,tc,tg:real;
begin
  for c:=1 to 4 do
  begin
      tc :=
         Valor(sgCriancaExposta.Cells[c,2]) +
         Valor(sgCriancaExposta.Cells[c,3]) +
         Valor(sgCriancaExposta.Cells[c,4]) +
         Valor(sgCriancaExposta.Cells[c,5]) +
         Valor(sgCriancaExposta.Cells[c,6]) +
         Valor(sgCriancaExposta.Cells[c,7]) +
         Valor(sgCriancaExposta.Cells[c,8]) +
         Valor(sgCriancaExposta.Cells[c,9]) +
         Valor(sgCriancaExposta.Cells[c,10])+
         Valor(sgCriancaExposta.Cells[c,11]);
      sgCriancaExposta.Cells[c,12] := FloatToStr(tc);
      tg := tc;
  end;
end;

procedure TfrmCadCriancaExpostaUnidade.CarregaGrid(TB_CRIANCAS_EXP:TDataSet);
var rAux:real; y:integer;
begin
    CriaGrid;
    dmGeral.TB_CRIANCAS_EXP.First;
    while Not dmGeral.TB_CRIANCAS_EXP.Eof do
    begin
      //raux := valor(sgCriancaExposta.Cells[0,dmGeral.TB_CRIANCAS_EXPVL_Y.AsInteger]) +
      //        valor(dmGeral.TB_CRIANCAS_EXPVL_ANO.AsString);
      //sgCriancaExposta.Cells[0,dmGeral.TB_CRIANCAS_EXPVL_Y.AsInteger] := floattostr(raux);
     y := sgCriancaExposta.Cols[0].IndexOf(dmGeral.TB_CRIANCAS_EXPVL_ANO.AsString);

      raux := valor(sgCriancaExposta.Cells[1,y]) +
              valor(dmGeral.TB_CRIANCAS_EXPVL_GRAVIDAS.AsString);
      sgCriancaExposta.Cells[1,y] := floattostr(raux);

      raux := valor(sgCriancaExposta.Cells[2,y]) +
              valor(dmGeral.TB_CRIANCAS_EXPVL_CRI_POSITIVA.AsString);
      sgCriancaExposta.Cells[2,y] := floattostr(raux);

      raux := valor(sgCriancaExposta.Cells[3,y]) +
              valor(dmGeral.TB_CRIANCAS_EXPVL_CRI_NEGATIVA.AsString);
      sgCriancaExposta.Cells[3,y] := floattostr(raux);

      raux := valor(sgCriancaExposta.Cells[4,y]) +
              valor(dmGeral.TB_CRIANCAS_EXPVL_CRI_SEM_INFORMACAO.AsString);
      sgCriancaExposta.Cells[4,y] := floattostr(raux);

      dmGeral.TB_CRIANCAS_EXP.Next;
    end;

    sgCriancaExposta.Repaint;
    CalculaTotal;

end;


procedure TfrmCadCriancaExpostaUnidade.FormShow(Sender: TObject);
begin
  inherited;
  qyGrid.Open;
  CriaGrid;
  pgGeral.ActivePageIndex := 1;
end;

procedure TfrmCadCriancaExpostaUnidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FechaConsultas;
  dmGeral.TB_CRIANCAS_EXP.SelectSQL.Text := sSQLCriancaExposta;

end;

procedure TfrmCadCriancaExpostaUnidade.sgCriancaExpostaDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var Conteudo:String; x,y,hf,hw,t,calc,i:integer; c:TColor;   r:TRect;
begin
  inherited;
  Conteudo := sgCriancaExposta.Cells[ACol,ARow];
  hf := sgCriancaExposta.Canvas.TextHeight('Lj');
  //SetTextAlign(sgCriancaExposta.Canvas.Handle, TA_CENTER);

  //Mesclar: Negrito, Centro, Borda
  if (ARow = 0) and (ACol > 1) then
  begin
      if ACol = 2 then
      begin
        Mes[4].gr := Rect;
        Mes[4].sMesclado := Conteudo;
      end;

      if (ACol = 4) then
      begin
        r.Left := Mes[4].gr.Left;
        r.Top := Mes[4].gr.Top;
        r.Bottom := Mes[4].gr.Bottom;
        r.Right := Rect.Right;

        sgCriancaExposta.Canvas.Font.Style:=[fsbold];
        sgCriancaExposta.Canvas.FillRect(r);
        t := sgCriancaExposta.Canvas.TextWidth(Mes[4].sMesclado);
        x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
        sgCriancaExposta.Canvas.TextRect(r,x,y,Mes[4].sMesclado);
        DesenhaBordas(sgCriancaExposta.Canvas,r);
      end;

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

        sgCriancaExposta.Canvas.Font.Style:=[fsbold];
        sgCriancaExposta.Canvas.FillRect(r);
        t := sgCriancaExposta.Canvas.TextWidth(Mes[1].sMesclado);
        x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
        sgCriancaExposta.Canvas.TextRect(r,x,y,Mes[1].sMesclado);

        //DrawText(sgCriancaExposta.Canvas.Handle,Pchar(Mes[1].sMesclado),-1,r,DT_WORDBREAK+DT_CENTER+DT_VCENTER);
        DesenhaBordas(sgCriancaExposta.Canvas,r);
      end;
  end;


  //Mesclar: Negrito, Centro, Borda
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

        sgCriancaExposta.Canvas.Font.Style:=[fsbold];
        sgCriancaExposta.Canvas.FillRect(r);
        t := sgCriancaExposta.Canvas.TextWidth(Mes[2].sMesclado);
        x := r.Left + (((r.Right - r.Left)-t)  div 2);
        y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
        sgCriancaExposta.Canvas.TextRect(r,x,y,Mes[2].sMesclado);
        //DrawText(sgCriancaExposta.Canvas.Handle,Pchar(Mes[2].sMesclado),-1,r,DT_WORDBREAK+DT_CENTER+DT_VCENTER);
        DesenhaBordas(sgCriancaExposta.Canvas,r);
      end;
  end;

  //Titulo: Negrito, Centro, Borda
  if ((ACol in [0]) and (ARow >1))or
     ((ACol > 1) and (ARow = 1))then
  begin
     if not((ARow in [0])and(ACol=0)) then
     begin
       r := Rect;
       sgCriancaExposta.Canvas.Font.Style := [fsbold];
       sgCriancaExposta.Canvas.FillRect(r);
       t := sgCriancaExposta.Canvas.TextWidth(Conteudo);
        x := r.Left + (((r.Right - r.Left)-t)  div 2);
       y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
       sgCriancaExposta.Canvas.TextRect(r,x,y,Conteudo);
       //DrawText(sgCriancaExposta.Canvas.Handle,Pchar(Conteudo),-1,r,DT_WORDBREAK+DT_CENTER+DT_VCENTER);
       DesenhaBordas(sgCriancaExposta.Canvas,r);
     end;
  end;


  //Linhas Ano sem preenchimento: Cor
{
  if DMGERAL.TB_CRIANCAS_EXP.State in [dsEdit, dsInsert] then
  begin
    for i:=2 to 11 do
    begin
      if (sgCriancaExposta.Cells[0,i] <> cbAno.text ) then
      Begin
        if ((ARow in [i]) and (ACol >0 ))then
        begin
           r := Rect;
           sgCriancaExposta.Canvas.Brush.Color := cl3DLight;
           sgCriancaExposta.Canvas.Font.Style := [fsbold];
           sgCriancaExposta.Canvas.FillRect(r);
           t := sgCriancaExposta.Canvas.TextWidth(Conteudo);
           x := r.Left + (((r.Right - r.Left)-t)  div 2);
           y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
           sgCriancaExposta.Canvas.TextRect(r,x,y,Conteudo);
        end;
      end;
    end;
  end;
 } 
  //Total: Negrito, Centro, Cor
  if ((ARow in [12]) and (ACol >0 ))then
  begin
     r := Rect;
     sgCriancaExposta.Canvas.Brush.Color := cl3DLight;
     sgCriancaExposta.Canvas.Font.Style := [fsbold];
     sgCriancaExposta.Canvas.FillRect(r);
     t := sgCriancaExposta.Canvas.TextWidth(Conteudo);
     x := r.Left + (((r.Right - r.Left)-t)  div 2);
     y := r.Top  - ((r.Top + hf - r.Bottom) div 2);
     sgCriancaExposta.Canvas.TextRect(r,x,y,Conteudo);
  end;
end;


procedure TfrmCadCriancaExpostaUnidade.FormCreate(Sender: TObject);
begin
  inherited;
  FbPermiteMudarPagina := False;
  AbreConsultas;
  CarregaComboAno;
  bCarregaGrid := True;
  sSQLCriancaExposta := dmGeral.TB_CRIANCAS_EXP.SelectSQL.Text;

end;

procedure TfrmCadCriancaExpostaUnidade.btIncluirClick(Sender: TObject);
begin
  pgGeral.ActivePageIndex := 1;
  dmGeral.TB_CRIANCAS_EXP.Close;
  dmGeral.TB_CRIANCAS_EXP.Open;

  inherited;
  leProvincia.Text := '';
  leUnidade.Text := '';
  leMunicipio.Text := '';
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
      sql.Add('VALUES 	(GEN_ID(GEN_AUDITORIA,1),'+QuotedStr(prmUnidade)+','+QuotedStr(DM.qyLoginCD_USUARIO.AsString)+', ''NOW'', ''REGISTRO_CRIANCAS_EXP'', ''I'')');
      ExecSQL;
      close;
      free;
    end;
}
end;

procedure TfrmCadCriancaExpostaUnidade.sgCriancaExpostaSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
var
  i:integer;
begin
  //for i:=2 to 11 do
  begin
    //if (sgCriancaExposta.Cells[0,i] = cbAno.text ) then
    Begin
      bEdit := (((ARow >=2) and (ARow <=11)) and (ACol >0 ));
      if (bEdit) and (dsControle.DataSet.State in [dsEdit,dsInsert]) then
        sgCriancaExposta.Options := sgCriancaExposta.Options + [goEditing]
      else
        sgCriancaExposta.Options := sgCriancaExposta.Options - [goEditing];
    end
    {else
      if (bEdit) and (dsControle.DataSet.State in [dsEdit,dsInsert]) then
        sgCriancaExposta.Options := sgCriancaExposta.Options + [goEditing]
      else
        sgCriancaExposta.Options := sgCriancaExposta.Options - [goEditing];}
  end;

end;

procedure TfrmCadCriancaExpostaUnidade.btgravarClick(Sender: TObject);
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

procedure TfrmCadCriancaExpostaUnidade.sgCriancaExpostaSetEditText(
  Sender: TObject; ACol, ARow: Integer; const Value: String);
var
  i:integer;

begin
  inherited;

  begin
    //if (sgCriancaExposta.Cells[0,i] = cbAno.text ) then
    Begin
      bEdit := (not(ARow in [0,1,12]) and (ACol >0 ));
      if (bEdit) and (dsControle.DataSet.State in [dsEdit,dsInsert]) then
        sgCriancaExposta.Options := sgCriancaExposta.Options + [goEditing]
      else
        sgCriancaExposta.Options := sgCriancaExposta.Options - [goEditing];
    end
    {else
      if (bEdit) and (dsControle.DataSet.State in [dsEdit,dsInsert]) then
        sgCriancaExposta.Options := sgCriancaExposta.Options + [goEditing]
      else
        sgCriancaExposta.Options := sgCriancaExposta.Options - [goEditing];}
  end;


  CalculaToTal;

end;

procedure TfrmCadCriancaExpostaUnidade.pgGeralChange(Sender: TObject);
//var  i:integer;
begin
  inherited;
{
  //limpa coluna
  for i:= 2 to 11 do
  begin
    sgCriancaExposta.Cells[0,i]  := '';
  end;

  if pgGeral.ActivePageIndex=1 then
  begin
    if not qyGridCD_PROVINCIA.IsNull then
      cbProvincia.KeyValue := qyGridCD_PROVINCIA.AsInteger;

    if not qyGridCD_MUNICIPIO.IsNull then
      cbMunicipio.KeyValue := qyGridCD_MUNICIPIO.AsInteger;

    if not qyGridCD_UNIDADE.IsNull then
      cbUnidade.KeyValue := qyGridCD_UNIDADE.AsInteger;

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

procedure TfrmCadCriancaExpostaUnidade.btConsultarClick(Sender: TObject);
var sSQLWhere, sSQL, sW:String; nB,nE:Integer;
begin
  inherited;
  if (dmGeral.TB_CRIANCAS_EXP.State in [dsEdit, dsInsert]) then
    Exit;

  dmGeral.TB_CRIANCAS_EXP.Close;
  dmGeral.TB_CRIANCAS_EXP.SelectSQL.Text := sSQLCriancaExposta;
  sSQL := sSQLCriancaExposta;
  if ckConsolidar.Checked then
  begin
    sSQLWhere := '';
    sW := ' where ';

    if leUnidade.lookupValue <> '' then
    begin
      sSQLWhere := sW + 'CD_UNIDADE = :CD_UNIDADE';
      sW := ' and ';
    end;

    if leProvincia.lookupValue <> '' then
    begin
      sSQLWhere := sSQLWhere + sW + 'CD_PROVINCIA = :CD_PROVINCIA';
      sW := ' and ';
    end;

    if leMunicipio.lookupValue <> '' then
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
    dmGeral.TB_CRIANCAS_EXP.SelectSQL.Text := sSQL;
    if (trim(cbAno.Text) <> '') and (trim(cbAte.Text) <> '') then
    begin
      dmGeral.TB_CRIANCAS_EXP.ParamByName('de').AsString := cbAno.text;
      dmGeral.TB_CRIANCAS_EXP.ParamByName('ate').AsString := cbAte.text;
    end;

    bConsolidado := true;
  end
  else
    bConsolidado := false;


  //Leandro 07/05/2013 - Nao � obrigatorio nenhum dos parametros



  if (leProvincia.lookupValue <> '') then
    dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_PROVINCIA').asInteger := strtoint(leProvincia.lookupValue);
  if (leMunicipio.lookupValue <> '') then
    dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_MUNICIPIO').asInteger := strtoint(leMunicipio.lookupValue);
  if (leUnidade.lookupValue <> '') then
    dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_UNIDADE').asInteger := strtoint(leUnidade.lookupValue);

  dmGeral.TB_CRIANCAS_EXP.Open;
  CarregaGrid(dmGeral.TB_CRIANCAS_EXP);
end;

procedure TfrmCadCriancaExpostaUnidade.grDadosDblClick(Sender: TObject);
begin
  inherited;
  Limpar;
  if pgGeral.ActivePageIndex=1 then
  begin
    if not (qyGridCD_PROVINCIA.IsNull) and (qyGridCD_PROVINCIA.asInteger <> 0) then
      leProvincia.LookupValue := qyGridCD_PROVINCIA.AsString;

    if not (qyGridCD_MUNICIPIO.IsNull) and (qyGridCD_MUNICIPIO.asInteger <> 0) then
      leMunicipio.LookupValue := qyGridCD_MUNICIPIO.AsString;

    if not (qyGridCD_UNIDADE.IsNull) and (qyGridCD_UNIDADE.asInteger <> 0) then
      leUnidade.LookupValue := qyGridCD_UNIDADE.AsString;

  //cbAno.Text := qyGridVL_ANO.AsString;
    btConsultarClick(sender);
  end;

end;


procedure TfrmCadCriancaExpostaUnidade.ckConsolidarClick(Sender: TObject);
begin
  inherited;
  lbAte.visible := ckConsolidar.Checked;
  cbAte.visible := ckConsolidar.Checked;
  lbDe.visible := ckConsolidar.Checked;
  cbAno.visible := ckConsolidar.Checked;
  lbPeriodo.visible := ckConsolidar.Checked;
end;

procedure TfrmCadCriancaExpostaUnidade.cbAnoChange(Sender: TObject);
begin
  inherited;
  sgCriancaExposta.Repaint;

end;

procedure TfrmCadCriancaExpostaUnidade.btexcluirClick(Sender: TObject);
var bExisteRegistro: Boolean;
begin
  pgGeral.ActivePageIndex := 1;
  pgGeralChange(sender);


{
  bExisteRegistro:=false;
  with TIBQuery.Create(nil) do // FAZ VERIFICACAO SE OS DADOS DOS CB TEM NA TABELA
    begin
      Database := DM.DB;

      sql.Add('select CD_UNIDADE, CD_PROVINCIA, CD_MUNICIPIO, VL_ANO');
      sql.Add('from REGISTRO_CRIANCAS_EXP');
      sql.Add('where CD_UNIDADE ='+cbUnidade.KeyValue+' and CD_PROVINCIA = '+cbProvincia.KeyValue+' and CD_MUNICIPIO ='+cbMunicipio.KeyValue+' and VL_ANO = '+QuotedStr(cbAno.Text)+'');
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

    dmGeral.TB_CRIANCAS_EXP.Close;
    if leUnidade.LookupValue <> '' then
      dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_UNIDADE').AsInteger := strtoint(leUnidade.LookupValue);
    if leProvincia.LookupValue <> '' then
      dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_PROVINCIA').AsInteger := strtoint(leProvincia.LookupValue);
    if leMunicipio.LookupValue <> '' then
      dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_MUNICIPIO').AsInteger := strtoint (leMunicipio.LookupValue);
    //dmGeral.TB_CRIANCAS_EXP.ParamByName('VL_ANO').AsString := cbAno.Text;
    dmGeral.TB_CRIANCAS_EXP.Open;
{
    dmGeral.TB_CRIANCAS_EXP.First;
    while not dmGeral.TB_CRIANCAS_EXP.Eof do
      dmGeral.TB_CRIANCAS_EXP.Delete;

    dmGeral.TB_CRIANCAS_EXP.Close; dmGeral.TB_CRIANCAS_EXP.Open;
}    
    //if bCarregaGrid then  CarregaGrid(DMGERAL.TB_CRIANCAS_EXP);
{
    //Controle de Usuario (RELATORIOS NAO TEM TRIGGERS) (Operacao DELETE)
        with TIBQuery.Create(nil) do
          begin
            Database := DM.DB;
            sql.Add('INSERT INTO AUDITORIA	(CD_AUDITORIA, CD_UND, CD_USU,DT_AUDITORIA, NM_TABELA, TP_OPERACAO)');
            sql.Add('VALUES 	(GEN_ID(GEN_AUDITORIA,1),'+QuotedStr(prmUnidade)+','+QuotedStr(DM.qyLoginCD_USUARIO.AsString)+', ''NOW'', ''REGISTRO_CRIANCAS_EXP'', ''D'')');
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

procedure TfrmCadCriancaExpostaUnidade.btLimparClick(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmCadCriancaExpostaUnidade.btCancelarClick(Sender: TObject);
begin
  if bConsolidado then
  begin
    MessageDlg('Dados em modo de consolida��o, n�o podem ser modificados!',mtInformation,[mbOK],0);
  end
  else
   inherited;

end;

procedure TfrmCadCriancaExpostaUnidade.bteditarClick(Sender: TObject);
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
    Unidade := dmGeral.TB_CRIANCAS_EXPCD_UNIDADE.AsInteger;
    Provincia := dmGeral.TB_CRIANCAS_EXPCD_PROVINCIA.AsInteger;
    Municipio := dmGeral.TB_CRIANCAS_EXPCD_MUNICIPIO.AsInteger;
    Ano := dmGeral.TB_CRIANCAS_EXPVL_ANO.AsString;
    inherited;
{
    //Controle de Usuario (RELATORIOS NAO TEM TRIGGERS) (Operacao UPDATE)
    with TIBQuery.Create(nil) do
      begin
        Database := DM.DB;
        sql.Add('INSERT INTO AUDITORIA	(CD_AUDITORIA, CD_UND, CD_USU,DT_AUDITORIA, NM_TABELA, TP_OPERACAO)');
        sql.Add('VALUES 	(GEN_ID(GEN_AUDITORIA,1),'+QuotedStr(prmUnidade)+','+QuotedStr(DM.qyLoginCD_USUARIO.AsString)+', ''NOW'', ''REGISTRO_CRIANCAS_EXP'', ''U'')');
        ExecSQL;
        close;
        free;
      end;
}
  end;


end;

procedure TfrmCadCriancaExpostaUnidade.btimprimirClick(Sender: TObject);
begin
  frmRelatorioWEB := TfrmRelatorioWEB.Create(application);
  try
    sArq := sPathConsulta+'RelatorioCRIANCAEXPOSTA'+FormatDateTime('ddmmyyhhnnss',now)+'.xml';
    GeraXML;
    frmRelatorioWEB.relatorio.Navigate(sArq);
    frmRelatorioWEB.ShowModal;
  finally
    frmRelatorioWEB.Free;
    if FileExists(sArq) then
      DeleteFile(sArq);
  end;
end;

function TfrmCadCriancaExpostaUnidade.ValidaExclusao: boolean;
begin
  try
    if dmGeral.TB_CRIANCAS_EXP.State in [dsInsert] then
    begin
      //Primeiro deve Excluir, para depois entao incluir todos
      if dmGeral.TB_CRIANCAS_EXP.State in dsEditModes then
        dmGeral.TB_CRIANCAS_EXP.Cancel;

      dmGeral.TB_CRIANCAS_EXP.Close;
    if leUnidade.LookupValue <> '' then
      dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_UNIDADE').AsInteger := strtoInt(leUnidade.LookupValue);
    if leProvincia.LookupValue <> '' then
      dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_PROVINCIA').AsInteger := strtoint(leProvincia.LookupValue);
    if leMunicipio.LookupValue <> '' then
      dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_MUNICIPIO').AsInteger := StrToInt(leMunicipio.LookupValue);
      //dmGeral.TB_CRIANCAS_EXP.ParamByName('VL_ANO').AsInteger := StrToInt(cbAno.text);
      dmGeral.TB_CRIANCAS_EXP.Open;

      dmGeral.TB_CRIANCAS_EXP.First;
      while not dmGeral.TB_CRIANCAS_EXP.Eof do
        dmGeral.TB_CRIANCAS_EXP.Delete;

      Result := true;
    end;

    if dmGeral.TB_CRIANCAS_EXP.State in [dsEdit] then
    begin
      //Primeiro deve Excluir, para depois entao incluir todos
      if dmGeral.TB_CRIANCAS_EXP.State in dsEditModes then
        dmGeral.TB_CRIANCAS_EXP.Cancel;

      dmGeral.TB_CRIANCAS_EXP.Close;
    if leUnidade.LookupValue <> '' then
        dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_UNIDADE').AsInteger := Unidade;
    if leProvincia.LookupValue <> '' then
        dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_PROVINCIA').AsInteger := Provincia;
    if leMunicipio.LookupValue <> '' then
        dmGeral.TB_CRIANCAS_EXP.ParamByName('CD_MUNICIPIO').AsInteger := Municipio;
      //dmGeral.TB_CRIANCAS_EXP.ParamByName('VL_ANO').AsInteger := StrToInt(cbAno.text);
      dmGeral.TB_CRIANCAS_EXP.Open;

      dmGeral.TB_CRIANCAS_EXP.First;
      while not dmGeral.TB_CRIANCAS_EXP.Eof do
        dmGeral.TB_CRIANCAS_EXP.Delete;

      Result := true;
    end;

  except
    Result := false;
  end;
end;
procedure TfrmCadCriancaExpostaUnidade.Limpar;
begin
  inherited;
  leProvincia.Text:='';
  leMunicipio.Text:='';
  leUnidade.Text:='';
  cbAno.Text := '';
  cbAte.Text := '';
end;

procedure TfrmCadCriancaExpostaUnidade.leProvinciaChange(Sender: TObject);
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

procedure TfrmCadCriancaExpostaUnidade.leMunicipioChange(Sender: TObject);
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

procedure TfrmCadCriancaExpostaUnidade.leUnidadeChange(Sender: TObject);
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
