unit ufrmRelGeralCaracterizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmRelPad, OleCtrls, SHDocVw, ComCtrls, RpCon, RpConDS, RpBase,
  RpSystem, RpDefine, RpRave, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Buttons, ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, ugeral,
  uFrameDashBoard, JPEG, IB_PARSE, DBClient, DBLocal, DBLocalI, dxDBGrid,
  dxTL, dxDBCtrl, dxDBTLCl, dxGrClms, RpRenderRTF, RpRenderHTML, RpRender,
  RpRenderPDF;

type
  TfrmRelGeralCaracterizacao = class(TfrmRelPad)
    tsFiltro: TTabSheet;
    Label7: TLabel;
    qyDashBoard: TIBQuery;
    tsGrafico: TTabSheet;
    frameDashBoard1: TframeDashBoard;
    grIndicadores: TdxDBGrid;
    grIndicadoresSEL: TdxDBGridCheckColumn;
    grIndicadoresNOME: TdxDBGridColumn;
    grIndicadoresORDEM: TdxDBGridColumn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cdsIndicadores: TIBClientDataSet;
    cdsIndicadoresSEL: TBooleanField;
    cdsIndicadoresCODIGO: TIntegerField;
    cdsIndicadoresNOME: TStringField;
    cdsIndicadoresORDEM: TIntegerField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btLocUnidade: TdxButtonEdit;
    edUnidade: TdxEdit;
    btLocProvincia: TdxButtonEdit;
    edProvincia: TdxEdit;
    btLocMunicipio: TdxButtonEdit;
    edMunicipio: TdxEdit;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    dtde: TdxDateEdit;
    dtate: TdxDateEdit;
    ckGrafico: TCheckBox;
    dsIndicadores: TDataSource;
    ProgressBar1: TProgressBar;
    procedure btImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btLocUnidadeButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btLocProvinciaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btLocMunicipioButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btLocUnidadeChange(Sender: TObject);
    procedure btLocProvinciaChange(Sender: TObject);
    procedure btLocMunicipioChange(Sender: TObject);
    procedure qyGeralBeforeOpen(DataSet: TDataSet);
    procedure qyGeralAfterOpen(DataSet: TDataSet);
    procedure btLocUnidadeExit(Sender: TObject);
    procedure btLocProvinciaExit(Sender: TObject);
    procedure btLocMunicipioExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriaRelatorioWEB;
    function BMPtoJPG(var BMPpic, JPGpic: string):boolean;
  end;

var
  frmRelGeralCaracterizacao: TfrmRelGeralCaracterizacao;
  sArqWEB, sArqLog, dir:String; sLog:TStringList;

implementation

uses uRelatorioWEB, UGeralSQL, UfrmLocalizar, UDMGERAL, UDM;

{$R *.dfm}


procedure TfrmRelGeralCaracterizacao.btImprimirClick(Sender: TObject);
begin
  inherited;
  ProgressBar1.Visible := true;
  try
   CriaRelatorioWEB;
  except
   on E:Exception do
     ShowMessage(e.Message);
  end;
  //ShowMessage('Gerando Arquivo:'+sArqLog);
  if DirectoryExists(ExtractFilePath(sArqLog)) then
    sLog.SaveToFile(sArqLog)
  else
    ShowMessage('Erro Arquivo:'+sArqLog);
  frmRelatorioWEB := TfrmRelatorioWEB.Create(Application);
  frmRelatorioWEB.relatorio.Navigate(sArqWEB);
  frmRelatorioWEB.ShowModal;
  frmRelatorioWEB.Free;
  ProgressBar1.Visible := false;
end;

procedure TfrmRelGeralCaracterizacao.CriaRelatorioWEB;
var Row,Col1,Col2,Col3,Rel:TStrings;
nTotal, nPerc, nCnt:Real;  i:integer;
arq, sBMP, sJPG, sStyle, sSQL:String;
sMunicipio, sUnidade, sProvincia:String;
vTotal:array of Real;
begin
   ProgressBar1.Position := 10;
   Col1 := TStringList.Create;
   Col2 := TStringList.Create;
   Col3 := TStringList.Create;
   Row := TStringList.Create;
   Rel := TStringList.Create;
   try
     sMunicipio := 'Todos';
     sUnidade := 'Todas';
     sProvincia := 'Todas';
     ProgressBar1.Position := 20;
     if (edMunicipio.Text<>'') then
       sMunicipio := edMunicipio.Text;
     if (edProvincia.Text<>'') then
       sProvincia := edProvincia.Text;
     if (edUnidade.Text<>'') then
       sUnidade := edUnidade.Text;
     ProgressBar1.Position := 30;
     sSQL := qyGeral.Sql.Text;
     //qyGeral.Open;
     //nCnt := qyGeral.FieldByName('TOTAL').AsFloat;
     //qyGeral.Close;
     sStyle := 'style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;"';
     Rel.Add('<table align="center" ' + sStyle + '>');
     Rel.Add('<tr>');
	   Rel.Add('<td height="40" align="right"><input name="" type="button" value="Imprimir" onclick="window.print()"/></td>');
	   Rel.Add('</tr>');
     Rel.Add('<tr>');
     Rel.Add('<th align="center" bgcolor="#EEEEEE" height="25"><b>Relat�rio demonstrativo geral de caracteriza��es</b></th>');
     Rel.Add('</tr>');
     Rel.Add('<tr><td>');
     Rel.Add('Emitido por : Administrador do Sistema, em ' +
     FormatDateTime('dd/mm/yyyy - hh:mi:ss', dm.GetDateTime) + '<br />');
     Rel.Add('Per�odo: <strong>'+dtDe.Text+'</strong> (inicial) -  <strong>'+dtAte.Text+'</strong> (final) <br />');
     Rel.Add('Pa�s: <strong>Angola</strong><br />');
     Rel.Add('Unidade: <strong>'+sUnidade+'</strong><br />');
     Rel.Add('Prov�ncia: <strong>'+sProvincia+'</strong> - Munic�pio : <strong>'+sMunicipio+'</strong> <br />');
     Rel.Add('Caracteriza��es = <strong>' + FloatToStr(nCnt)+ '</strong><br />');
     Rel.Add('</td></tr>');
     Rel.Add('<tr><td>');
     Rel.Add('<hr width="100%" size="1" noshade="noshade"/>');
     Rel.Add('</td></tr>');
     ProgressBar1.Position := 40;
     qyDashBoard.Open;
     while not qyDashBoard.Eof do
     begin
       qyGeral.Close;
       qyGeral.Sql.Text := qyDashBoard['TX_DASHBOARD'];
       qyGeral.Open;
       SetLength(vTotal, 0);
       nTotal := -1;
       if qyGeral.FindField('TOTAL') <> nil then
       begin
         qyGeral.First;
         while not qyGeral.Eof do
         begin
           nTotal := nTotal + qyGeral.FieldByName('TOTAL').AsFloat;
           qyGeral.Next;
         end;
       end;
       ProgressBar1.Position := 50;
       Rel.Add('<tr><td>' + qyDashBoard['NM_DASHBOARD'] + '</td></tr>');
       if nTotal > 0 then
         Rel.Add('<tr><td>(Total analisado = ' + FloatToStr(nTotal) + ')</td></tr>');

       Col1.Clear;
       Col2.Clear;
       Col3.Clear;
       Row.Clear;
       qyGeral.First;
       //Cabecalho
       if qyDashBoard['TP_TABELA']='H' then
       begin
         for i:=0 to qyGeral.Fields.Count-1 do
         begin
           Col1.Add('<th align="center" bgcolor="#EEEEEE">');
           Col1.Add(qyGeral.Fields[i].FieldName);
           Col1.Add('</th>');
         end;
         Row.Add('<tr>');
         Row.Add(Col1.Text);
         Row.Add('</tr>');

         //Tamanho do Array Total
         SetLength(vTotal, qyGeral.Fields.Count);
       end;

       while not qyGeral.Eof do
       begin
         if (qyDashBoard['TP_TABELA']<>'H') then
         begin
           if (qyGeral.FindField('TOTAL') <> nil) then
           begin
             nPerc :=  (qyGeral.FieldByName('TOTAL').AsFloat / nTotal) * 100;
             //Cabecalho
             Col1.Add('<th align="center" bgcolor="#EEEEEE">');
             Col1.Add(qyGeral.FieldByName('ROTULO').AsString);
             Col1.Add('</th>');
             //Dados
             Col2.Add('<td align="right">');
             Col2.Add('<strong>' +  FormatFloat('#,###.00',qyGeral.FieldByName('TOTAL').AsFloat) + '</strong>');
             Col2.Add('</td>');
             //Rodape
             Col3.Add('<td align="right">');
             Col3.Add('<strong>' +  FormatFloat('0.00%',nPerc) + '</strong>');
             Col3.Add('</td>');
           end;
         end
         else
         begin
           for i:=0 to qyGeral.Fields.Count-1 do
           begin
             if qyGeral.Fields[i].DataType = ftString then
             begin
               //Dados
               Col2.Add('<td align="right">');
               Col2.Add('<strong>' +  qyGeral.Fields[i].AsString + '</strong>');
               Col2.Add('</td>');
             end
             else
             begin
               //Dados
               Col2.Add('<td align="right">');
               Col2.Add('<strong>' +  FormatFloat('#,###.00',qyGeral.Fields[i].AsFloat) + '</strong>');
               Col2.Add('</td>');

               vTotal[i] := vTotal[i] + qyGeral.Fields[i].AsFloat;
             end;
           end;
           Row.Add('<tr>');
           Row.Add(Col2.Text);
           Row.Add('</tr>');
           Col2.Clear;
         end;
         qyGeral.Next;
       end;

       //Imprime rodape
       if qyDashBoard['TP_TABELA']='H' then
       begin
         Col2.Clear;
         Col3.Clear;
         //Rodape
         for i:=0 to qyGeral.Fields.Count-1 do
         begin
           if qyGeral.Fields[i].DataType = ftString then
           begin
             Col2.Add('<td align="left" bgcolor="#EEEEEE"><strong>Total</strong></td>');
             //Col3.Add('<td align="left" bgcolor="#EEEEEE"><strong>Percent.</strong></td>');
           end
           else
           begin
             Col2.Add('<td align="right" bgcolor="#EEEEEE">');
             Col2.Add('<strong>' +  FormatFloat('#,###.00',vTotal[i]) + '</strong>');
             Col2.Add('</td>');
             {
             nPerc := (vTotal[i] / nTotal)*100;
             Col3.Add('<td align="right" bgcolor="#EEEEEE">');
             Col3.Add('<strong>' +  FormatFloat('0.00%', nPerc) + '</strong>');
             Col3.Add('</td>');}
           end;
         end;
         //Total
         Row.Add('<tr>');
         Row.Add(Col2.Text);
         Row.Add('</tr>');
         //Percentual
         {Row.Add('<tr>');
         Row.Add(Col3.Text);
         Row.Add('</tr>');}
       end
       else
       begin
         Row.Add('<tr>' + Col1.Text + '</tr>');
         Row.Add('<tr>' + Col2.Text + '</tr>');
         Row.Add('<tr>' + Col3.Text + '</tr>');
       end;

       ProgressBar1.Position := 60;
       qyGeral.Close;
       Rel.Add('<tr><td>');
       Rel.Add('<table border="1" align="center" bordercolor="#000000" ' + sStyle + '>');
       Rel.Add(Row.Text);
       Rel.Add('</table>');
       Rel.Add('</td></tr>');
       ProgressBar1.Position := 80;
       //Grafico
       if ckGrafico.Checked then
       begin
         arq := dir + '\Img' + qyDashBoard.FieldByName('CD_DASHBOARD').AsString;
         frameDashBoard1.dsDash.AutoEdit := false;
         frameDashBoard1.View;
         frameDashBoard1.TB_DASH.Close;
         frameDashBoard1.TB_DASH.ParamByName('CD_DASHBOARD').AsInteger :=
           qyDashBoard.FieldByName('CD_DASHBOARD').AsInteger;
         frameDashBoard1.TB_DASH.Open;
         frameDashBoard1.qyConsulta.Close;
         frameDashBoard1.qyConsulta.Open;
         sBMP := arq+'.bmp';
         sJPG := arq+'.jpg';
         frameDashBoard1.grafico.SaveToBitmapFile(sBMP);
         BMPtoJPG(sBMP,sJPG);
         frameDashBoard1.qyConsulta.Close;
         frameDashBoard1.TB_DASH.Close;
         Rel.Add('<tr><td align="center">');
         arq := ExtractFileName(sJPG);
         Rel.Add('<img src="' + arq + '"/>');
         Rel.Add('</td></tr>');
       end;
       qyDashBoard.Next;
     end;
     Rel.Add('</table>');
     Rel.SaveToFile(sArqWEB);
   finally
     ProgressBar1.Position := 90;
     qyGeral.Sql.Text := sSQL;
     qyDashBoard.Close;
     FreeAndNil(Col1);
     FreeAndNil(Col2);
     FreeAndNil(Col3);
     FreeAndNil(Rel);
     FreeAndNil(Row);
   end;
   ProgressBar1.Position := 100;
end;

procedure TfrmRelGeralCaracterizacao.FormCreate(Sender: TObject);
begin
  inherited;
  dir := sPathGrid + '\Temp';
  if not DirectoryExists(dir) then
     MkDir(dir);

  sArqWEB := dir + '\' + FormatDateTime('ddmmyyyyhhniss',Date) + '.html';
  sArqLog := dir + '\' + FormatDateTime('ddmmyyyyhhniss',Date) + '.txt';
  tsGrafico.TabVisible := False;

  sLog := TStringList.Create;
end;

procedure TfrmRelGeralCaracterizacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if FileExists(sArqWEB) then
    DeleteFile(sArqWEB);

  FreeAndNil(sLog);
end;

function TfrmRelGeralCaracterizacao.BMPtoJPG
   (var BMPpic, JPGpic: string):boolean;
var Bitmap: TBitmap;
    JpegImg: TJpegImage;
begin
  Result:=False;
  Bitmap := TBitmap.Create;
  try
   Bitmap.LoadFromFile(BMPpic) ;
   JpegImg := TJpegImage.Create;
   try
    JpegImg.Assign(Bitmap) ;
    JpegImg.SaveToFile(JPGpic) ;
    Result:=True;
   finally
    JpegImg.Free
   end;
  finally
   Bitmap.Free;
   DeleteFile(BMPpic);
  end;
end;

procedure TfrmRelGeralCaracterizacao.btLocUnidadeButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  frmLocalizar := TfrmLocalizar.Create(application);
  frmLocalizar.Caption := 'Localizar Unidade';
  frmLocalizar.qyDados := SelectDadosUnidade;

  try
    frmLocalizar.Where := false;
    SetLength(VCampo,2);
    frmLocalizar.KeyField := 'cd_unidade';
    VCampo[0].Titulo  := 'C�d.';
    VCampo[0].Width := 5;
    VCampo[1].Titulo  := 'Unidade';
    VCampo[1].Width := 25;
    VCampo[0].Visivel := True;
    VCampo[1].Visivel := True;
  except
    ShowMessage(frmLocalizar.qyDados.Sql.Text);
  end;
  if frmLocalizar.ShowModal=mrok then
  begin
    btLocUnidade.Text := frmLocalizar.qyDados.FieldByname('cd_unidade').AsString;
    edUnidade.Text := frmLocalizar.qyDados.FieldByname('ds_unidade').AsString;
  end;
  frmLocalizar.qyDados.Close;
  FreeAndNil(frmLocalizar);
end;

procedure TfrmRelGeralCaracterizacao.btLocProvinciaButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  frmLocalizar := TfrmLocalizar.Create(application);
  frmLocalizar.Caption := 'Localizar Provincia';
  frmLocalizar.qyDados := SelectDadosProvincia;
  try
    frmLocalizar.Where := false;
    SetLength(VCampo,2);
    frmLocalizar.KeyField := 'cd_provincia';
    VCampo[0].Titulo  := 'C�d.';
    VCampo[0].Width := 5;
    VCampo[1].Titulo  := 'Provincia';
    VCampo[1].Width := 25;
    VCampo[0].Visivel := True;
    VCampo[1].Visivel := True;
  except
    ShowMessage(frmLocalizar.qyDados.Sql.Text);
  end;
  if frmLocalizar.ShowModal=mrok then
  begin
    btLocProvincia.text := frmLocalizar.qyDados.FieldByname('cd_provincia').AsString;
    edProvincia.text := frmLocalizar.qyDados.FieldByname('ds_provincia').AsString;
    btLocMunicipio.Clear;
    edMunicipio.Clear;
  end;
  frmLocalizar.qyDados.Close;
  FreeAndNil(frmLocalizar);
end;

procedure TfrmRelGeralCaracterizacao.btLocMunicipioButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
  inherited;
  frmLocalizar := TfrmLocalizar.Create(application);
  frmLocalizar.Caption := 'Localizar Munic�pio';
  try
    if (btLocProvincia.Text<>'')then
    begin
      frmLocalizar.qyDados := SelectDadosMunicipio(strToInt(btLocProvincia.Text));
      frmLocalizar.Where := true;
    end;
    SetLength(VCampo,2);
    frmLocalizar.KeyField := 'cd_municipio';
    VCampo[0].Titulo  := 'C�d.';
    VCampo[0].Width := 5;
    VCampo[1].Titulo  := 'Munic�pio';
    VCampo[1].Width := 25;
    VCampo[0].Visivel := True;
    VCampo[1].Visivel := True;
  except
    ShowMessage(frmLocalizar.qyDados.Sql.Text);
  end;
  if frmLocalizar.ShowModal=mrok then
  begin
    btLocMunicipio.text := frmLocalizar.qyDados.FieldByname('cd_municipio').AsString;
    edMunicipio.text := frmLocalizar.qyDados.FieldByname('ds_municipio').AsString;
  end;
  frmLocalizar.qyDados.Close;
  FreeAndNil(frmLocalizar);
end;

procedure TfrmRelGeralCaracterizacao.btLocUnidadeChange(Sender: TObject);
begin
  inherited;
  if btLocUnidade.Text = '' then
    edUnidade.Clear
  else if btLocUnidade.Modified then
  begin
    try
      edUnidade.Text := PegaValor('DS_UNIDADE','UNIDADE',['CD_UNIDADE'],
        [btLocUnidade.Text],nil);
    except
      begin
        edUnidade.Clear;
      end;
    end;
  end;
end;

procedure TfrmRelGeralCaracterizacao.btLocProvinciaChange(Sender: TObject);
begin
  inherited;
  if btLocProvincia.Text = '' then
    edProvincia.Clear
  else if btLocProvincia.Modified then
  begin
    try
      edProvincia.Text := PegaValor('DS_PROVINCIA','PROVINCIA',['CD_PROVINCIA'],
        [btLocProvincia.Text],nil);
    except
      begin
        edProvincia.Clear;
      end;
    end;
    btLocMunicipio.Clear;
    edMunicipio.Clear;
  end;

end;

procedure TfrmRelGeralCaracterizacao.btLocMunicipioChange(Sender: TObject);
begin
  inherited;
  if btLocMunicipio.Text = '' then
    edMunicipio.Clear
  else if btLocMunicipio.Modified then
  begin
    if btLocProvincia.text <> '' then
    begin
      try
        edMunicipio.Text := PegaValor('DS_MUNICIPIO','MUNICIPIO',['CD_MUNICIPIO'],
          [btLocMunicipio.Text],nil);
       except
          begin
            edMunicipio.Clear;
          end;
       end;
      end
    else
      begin
        btLocMunicipio.Clear;
        edMunicipio.Clear;
        MessageDlg('� necess�rio incluir uma Provincia!',mtInformation,[mbOK],0);
      end;
  end;

end;

procedure TfrmRelGeralCaracterizacao.qyGeralBeforeOpen(DataSet: TDataSet);
var sWhere:TStringList; sSQLWhere, sSQL, sAux, sWA:String; nB,nE:Integer;
    bCondicao:Boolean;
begin
  inherited;
{  sWhere := TStringList.Create;
  sSQL := qyGeral.SQL.Text;
  try
    try
      GetSQLWhere(sSQL,sSQLWhere,nB,nE);
      bCondicao := (Pos('/*CONDICAO*/',sSQL)>0);
      if bCondicao then
        sWA := 'and '
      else if (sSQLWhere='') then
        sWA := 'where '
      else
        sWA := 'and ';

      if (dtDe.Text <> '  /  /    ') and (dtAte.Text <> '  /  /    ') then
      begin
        sWhere.Add(sWA + 'dt_visita between :de and :ate');
        sWA := 'and ';
      end;

      if (btLocUnidade.Text <> '') then
      begin
        sWhere.Add(sWA + 'CD_UNIDADE = :CD_UNIDADE');
        sWA := 'and ';
      end;

      if (btLocProvincia.Text <> '') then
      begin
        sWhere.Add(sWA + 'CD_PROVINCIA = :CD_PROVINCIA');
        sWA := 'and ';
      end;

      if (btLocMunicipio.Text <> '') then
      begin
        sWhere.Add(sWA + 'CD_MUNICIPIO = :CD_MUNICIPIO');
        sWA := 'and ';
      end;

      if (sWhere.Text<>'') then
      begin
        sAux := sSQL;
        if bCondicao then
          sAux := StringReplace(sAux,'/*CONDICAO*/',sWhere.Text,[rfReplaceAll])
        else
        begin
          sWhere.Insert(0,sSQLWhere);
          sSQLWhere := sWhere.Text;
          SetSQLWhere(sAux, sSQLWhere);
        end;
        qyGeral.SQL.Text := sAux;
      end;

      //Parametros
      if (dtDe.Text <> '  /  /    ') then
        qyGeral.ParamByName('DE').AsDate := dtDe.Date;

      if (dtAte.Text <> '  /  /    ') then
        qyGeral.ParamByName('ATE').AsDate := dtAte.Date;

      if (btLocUnidade.Text <> '') then
        qyGeral.ParamByName('CD_UNIDADE').AsString := btLocUnidade.Text;

      if (btLocProvincia.Text <> '') then
        qyGeral.ParamByName('CD_PROVINCIA').AsString := btLocProvincia.Text;

      if (btLocMunicipio.Text <> '') then
        qyGeral.ParamByName('CD_MUNICIPIO').AsString := btLocMunicipio.Text;

     except
        qyGeral.SQL.Text := sSQL;
     end;
   finally
      FreeAndNil(sWhere);
   end;
}
end;

procedure TfrmRelGeralCaracterizacao.qyGeralAfterOpen(DataSet: TDataSet);
Var i:integer;
begin
  inherited;
  sLog.Add('*********************************');
  sLog.Add('*************SQL*****************');
  sLog.Add('Total Registros:' + intToStr(qyGeral.RecordCount));
  sLog.Add('SQL: ' + qyGeral.SQL.Text);
  sLog.Add('**********Parametros*************');
  for i:=0 to qyGeral.ParamCount-1 do
    sLog.Add('Nome:' + qyGeral.Params[i].Name +
             'Valor:' + qyGeral.Params[i].AsString);

end;

procedure TfrmRelGeralCaracterizacao.btLocUnidadeExit(Sender: TObject);
begin
  inherited;
  if btLocUnidade.Text <> '' then
  begin
    try
      edUnidade.Text := PegaValor('DS_UNIDADE','UNIDADE',['CD_UNIDADE'],
        [btLocUnidade.Text],nil);
    except
      begin
        MessageDlg('Unidade n�o encontrada!',mtWarning,[mbOK],0);
        btLocUnidade.Clear;
        edUnidade.Clear;
      end;
    end;
  end;

end;

procedure TfrmRelGeralCaracterizacao.btLocProvinciaExit(Sender: TObject);
begin
  inherited;
  if btLocProvincia.Text <> '' then
  begin
    try
      edProvincia.Text := PegaValor('DS_PROVINCIA','PROVINCIA',['CD_PROVINCIA'],
        [btLocProvincia.Text],nil);
    except
      begin
        MessageDlg('Provincia n�o encontrada!',mtWarning,[mbOK],0);
        btLocProvincia.Clear;
        edProvincia.Clear;
      end;
    end;
  end;

end;

procedure TfrmRelGeralCaracterizacao.btLocMunicipioExit(Sender: TObject);
begin
  inherited;
  if btLocMunicipio.Text <> '' then
    begin
        try
          edMunicipio.Text := PegaValor('DS_MUNICIPIO','MUNICIPIO',['CD_MUNICIPIO'],
            [btLocMunicipio.Text],nil);
         except
            begin
              MessageDlg('Municipio n�o encontrado!',mtWarning,[mbOK],0);
              btLocMunicipio.Clear;
              edMunicipio.Clear;
            end;
         end;
    end;

end;

end.
