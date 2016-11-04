unit ufrmEDI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, StdCtrls, Grids, DBGrids,
  DBClient, DBLocal, DBLocalI, IBSQL, xmldom, Provider, Xmlxform, ComCtrls,
  IBUpdateSQL, FileCtrl, inifiles;

type
  TfrmEDI = class(TForm)
    CDSTabela: TIBClientDataSet;
    DataSource1: TDataSource;
    btOrdem: TButton;
    CDSTabelaORDEM: TIntegerField;
    CDSIndice: TIBClientDataSet;
    DataSource2: TDataSource;
    CDSIndiceTABELA2: TStringField;
    CDSIndiceREL: TStringField;
    cds: TIBClientDataSet;
    cds2: TIBClientDataSet;
    btExportar: TButton;
    TB: TIBClientDataSet;
    oSQL: TIBSQL;
    RichEdit1: TRichEdit;
    Label1: TLabel;
    lbLog: TLabel;
    btLimparDtExp: TButton;
    DataSource3: TDataSource;
    DBGrid1: TDBGrid;
    btImportar: TButton;
    lstArquivos: TFileListBox;
    ibds: TIBDataSet;
    qyCampos: TIBQuery;
    qyCamposNM_CAMPO: TIBStringField;
    qyGENTABELA: TIBQuery;
    CDSTabelaNM_ALIAS: TStringField;
    CDSTabelaFL_ENVIAR: TStringField;
    CDSTabelaFL_RECEBER: TStringField;
    CDSTabelaFL_VALIDAR_RECEBIMENTO: TStringField;
    CDSTabelaNR_ORDEM: TIntegerField;
    CDSTabelaNM_TABELA: TStringField;
    CDSTabelaFL_MARCAR_EXP: TStringField;
    CDSTabelaFL_ATUALIZAR_EDI: TStringField;
    procedure btOrdemClick(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure btLimparDtExpClick(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstArquivosClick(Sender: TObject);
    procedure lstArquivosDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure ValidaCamposEDI(sTabela:String);
    procedure MudaTodasDatasExp;
  public
    { Public declarations }
    procedure CopiaValor(fDe, fPara: TField);
    procedure MontaDataSet(nmTabela: String; ibds: TIBDataSet);
    procedure CarregaArquivosEDI;
    procedure Importar;
  end;

var
  frmEDI: TfrmEDI;
  bExportar, bImportar, bAtualizar, bValidarCampoChave:boolean;
  nTempo:integer;
  sSqlArquivoEDI:string;

implementation

uses UDM, UGeralSQL, uConstanteScript, UGeral, ufrmMenuEDI, RTLConsts,
  UDMGERAL;

{$R *.dfm}

procedure TfrmEDI.btOrdemClick(Sender: TObject);

  procedure OrdenaRel(Tabela:String; x:Integer);
  begin
    CDS2.CloneCursor(CDSTabela,True,True);
    if CDS2.Locate('NM_TABELA', Tabela, []) then
    begin
      if CDS2.FieldByname('ORDEM').AsInteger <= x then
      begin
        inc(x);
        CDS2.Edit;
        CDS2.FieldByname('ORDEM').AsInteger := x;
        CDS2.Post;
      end;
    end;
  end;

  procedure Ordena(Tabela:String; x:Integer);
  begin
    CDS.CloneCursor(CDSIndice,True,True);
    CDS.Filter := 'TABELA = ' + QuotedStr(Tabela);
    CDS.Filtered := True;
    CDS.First;
    while not CDS.Eof do
    begin
      if CDS.FieldByname('REL').AsString <> '' then
        OrdenaRel(CDS.FieldByname('REL').AsString, x);
      CDS.Next;
    end;
  end;

begin
  CDSTabela.Open;
  CDSTabela.IndexFieldNames := 'NR_ORDEM';
  //CDSIndice.Open;
  //CDSTabela.IndexFieldNames := 'ORDEM';
  CDSTabela.First;
  //while not CDSTabela.Eof do
  //begin
  //  i := CDSTabela.FieldByname('ORDEM').AsInteger;
  //  Ordena(CDSTabelaNM_TABELA.AsString, i);
  //  CDSTabela.Next;
  //end;
  //CDSIndice.Close;
end;

procedure TfrmEDI.btExportarClick(Sender: TObject);
var  sTabela, sTabela2,sAlias,sFile:String; j:integer;
begin
  //Ordenar Tabelas por Ordem de Referencia
  btOrdemClick(Self);

  //Exportar em XML
  dm.Transacao(dm.IBD);
  try
    CDSTabela.First;
    frmMenuEDI.pbGeral.Max := CDSTabela.RecordCount;
    frmMenuEDI.pbGeral.Position := 0;
    while not CDSTabela.Eof do
    begin
      if CDSTabelaFL_ENVIAR.AsString = 'N' then
        CDSTabela.Next
      else
      try
        Application.ProcessMessages;
        frmMenuEDI.pbGeral.Position := CDSTabela.RecNo;
        sTabela := trim(CDSTabelaNM_TABELA.AsString);
        sAlias := trim(CDSTabelaNM_ALIAS.AsString);

        sTabela2 := sTabela;
        if sAlias <> '' then
          sTabela2 := sAlias;

        frmMenuEDI.StatusBar1.Panels[2].Text := 'Exportando ' + sTabela + ' ...';

        ValidaCamposEDI(sTabela);

        {if (TB.FindField('CD_UND') = nil) then
        begin
           //Altera Tabela adicionando coluna CD_UND - Unidade
           oSQL.SQL.Clear;
           oSQL.SQL.Add(Format(cvAlterTableDtExp3,[sTabela]));
           oSQL.ExecQuery;
        end;}

        dm.Commit(dm.IBD);
        sFile := ExtractFilePath(Application.ExeName) + 'EDI';
        if not DirectoryExists(sFile) then
           CreateDir(sFile);

        sFile := sFile + '\Out\';
        if not DirectoryExists(sFile) then
           CreateDir(sFile);

        sFile := sFile + sTabela + prmUnidade + FormatDateTime('ddmmyyhhnnss',Now) + '.xml';

        dm.Transacao(dm.IBD);
        //Seleciona Dados para gerar XML de Exporta��o
        MontaDataSet(sTabela,ibds);
        ibds.SelectSQL.Text := Format(cvSelectDadosDtExp,[sTabela]);
        ibds.Open;
        if ibds.RecordCount > 0 then
        begin
          tb.Close;
          tb.CommandText := Format(cvSelectDadosDtExp,[sTabela]) + ' AND 1=2';
          tb.Open;

          while not ibds.Eof do
          begin
             try
               //Atualiza Dados com data de Exporta��o
               ibds.Edit;
               if ibds.FieldByName('CD_EDI').AsString = '' then
                 ibds.FieldByName('CD_EDI').AsInteger := dm.GeraCodigo('GEN_EDI');
               if ibds.FieldByName('CD_UND').AsString = '' then
                 ibds.FieldByName('CD_UND').AsString := prmUnidade;
               ibds.FieldByName('DT_EXP').AsDateTime := dm.GetDate;
               ibds.Post;

               //Insere no Cache Local para Gerar XML de Exportacao
               tb.Insert;
               for j:=0 to tb.FieldCount-1 do
                  CopiaValor(ibds.FieldByName(tb.Fields[j].FieldName),tb.Fields[j]);
               tb.Post;
               ibds.Next;
             except
               on E:Exception do
               begin
                 lbLog.Caption := lbLog.Caption + sTabela + ':' +  e.Message + chr(13);
                 ibds.Next;
               end;
             end;
          end;

          //Salva DS em XML
          tb.SaveToFile(sFile,dfXML);
          dm.Commit(dm.IBD);
          tb.Close;
        end;
        frmMenuEDI.pbGeral.Position := frmMenuEDI.pbGeral.Position + 1;
        CDSTabela.Next;
      except
         on E:Exception do
         begin
           lbLog.Caption := lbLog.Caption + sTabela + ':' +  e.Message + chr(13);
           dm.Rollback(dm.IBD);
           CDSTabela.Next;
         end;
      end;
    end;
  finally
   begin
    frmMenuEDI.pbGeral.Position := 0;
   end;
  end;
  frmMenuEDI.StatusBar1.Panels[2].Text := 'Pronto!';

end;

procedure TfrmEDI.MudaTodasDatasExp;
var sTabela:String;
begin
   dm.Transacao(dm.IBD);
   btOrdemClick(nil);
   CDSTabela.First;
   while not CDSTabela.Eof do
   begin
     try
       sTabela := Trim(CDSTabelaNM_TABELA.AsString);
       oSQL.SQL.Text := Format(cvUpdateDadosDtExp2,[sTabela]);
       oSQL.ExecQuery;
       CDSTabela.Next;
     except
       CDSTabela.Next;
     end;
   end;
   dm.Commit(dm.IBD);
end;

procedure TfrmEDI.btLimparDtExpClick(Sender: TObject);
begin
  MudaTodasDatasExp;
end;

procedure TfrmEDI.btImportarClick(Sender: TObject);
var sTabela,sTabela2,sAlias,sPath,sPath2,sPath3,sPath4,sArquivo,sArquivo2,
sArquivo3,sArquivo4:String;
  j,i,nA,nI,nE:integer;
  Log:TStringList;
  ocds: TIBClientDataSet;
  oibds: TIBDataSet;
  MS: TMemoryStatus;
  //bRegistro:Boolean;
  dtRegistro :TDateTime;

  function RetiraNumero(s,t:string):string;
  var i:integer;
  begin
    result := t;
    for i:=Length(t)+1 to Length(s) do
      if not(s[i] in ['0'..'9']) then
        result := result + s[i];
  end;

  function ValidaCamposChaves:Boolean;
  begin
    Result := bValidarCampoChave and
     (ocds.FindField('CD_UNIDADE')<>nil)and
     (ocds.FindField('CD_PROVINCIA')<>nil)and
     (ocds.FindField('CD_MUNICIPIO')<>nil)and
     (ocds.FindField('VL_MESANO')<>nil);
  end;

begin

  ocds := TIBClientDataSet.Create(self);
  try
    Log := TStringList.Create;
    btOrdemClick(self);
    sPath := ExtractFilePath(Application.ExeName);
    sPath := sPathIn;
    sPath2 := sPath + FormatDateTime('ddmmyy' , date);
    sPath3 := sPath + 'corrompido\' + FormatDateTime('ddmmyy' , date);
    sPath4 := sPath3 + '\Liberado\';

    {if not DirectoryExists(spath2) then
      CreateDir(sPath2);}

    ValidaDiretorio(spath2);
    ValidaDiretorio(spath3);
    ValidaDiretorio(spath4);

    CDSTabela.First;
    frmMenuEDI.pbGeral.Max := CDSTabela.RecordCount;
    frmMenuEDI.pbGeral.Position :=0;
    while not CDSTabela.Eof do
    begin
      if CDSTabelaFL_RECEBER.AsString = 'N' then
        CDSTabela.Next
      else
      try
        dm.Transacao(dm.IBD);
        sTabela := Trim(CDSTabelaNM_TABELA.AsString);
        sAlias := Trim(CDSTabelaNM_ALIAS.AsString);
        ValidaCamposEDI(sTabela);
        ibds.Close;
        sTabela2 := sTabela;

        if (sAlias <>'') then
          sTabela2 := sAlias;

        if (prmConfirmaEDI = cvSim) and
           (CDSTabelaFL_VALIDAR_RECEBIMENTO.AsString = cvSim) and
           (sAlias <>'') then
          sTabela2 := sAlias;

        MontaDataSet(sTabela2, ibds);
        lstArquivos.Directory := sPath;
        lstArquivos.Mask := sTabela + '*.xml';
        frmMenuEDI.StatusBar1.Panels[2].Text := 'Importanto ' + sTabela + ' ...';

        for i:=lstArquivos.Items.Count -1 downto 0 do
        begin
          Application.ProcessMessages;
          sArquivo := lstArquivos.Items[i];
          sArquivo2 := RetiraNumero(sArquivo,sTabela);
          sArquivo2 := StringReplace(sArquivo2,'.xml','',[]);
          if sTabela <> sArquivo2 then
            Continue;

          frmMenuEDI.StatusBar1.Panels[2].Text := frmMenuEDI.StatusBar1.Panels[2].Text + chr(13) +
               'Arquivo :' + sArquivo;

          DataSource3.DataSet := ocds;

          try//AR: Tratar arquivos corrompidos
            ocds.LoadFromFile(sArquivo);
          except
            on E:Exception do
            begin
              sArquivo3 := sPath3 + '\' + ExtractFileName(sArquivo);
              if FileExists(sArquivo3) then DeleteFile(sArquivo3);
                MoveFile(pChar(sArquivo),pChar(sArquivo3));

              if frmMenuEDI.DeleteRefEDI_UNIDADE(sArquivo) <> 'Erro' then
              begin
                sArquivo4 := sPath4 + '\' + ExtractFileName(sArquivo3);
                if FileExists(sArquivo4) then DeleteFile(sArquivo4);
                  MoveFile(pChar(sArquivo3),pChar(sArquivo4));
              end;

              frmMenuEDI.StatusBar1.Panels[2].Text := 'Arquivo corrompido... Reininciando EDI...';
              FreeAndNil(ocds);
              btImportarClick(sender);
            end;
          end;

          Log.Add('Lendo arquivo:' + sArquivo);
          oibds := TIBDataSet.Create(Application);
//          dtRegistro := ocds.FieldValues['DT_REGISTRO'];
          nA:=0; nI:=0; nE:=0;
          while not ocds.Eof do
          begin
            Application.ProcessMessages;
            GlobalMemoryStatus(MS);
            frmMenuEDI.StatusBar1.Panels[2].Text := 'N:' +
             intToStr(ocds.RecNo) + 'x' + intToStr(ocds.RecordCount) +
             FormatFloat(' #,###', MS.dwTotalPhys/1024) +
             FormatFloat(' #,###', MS.dwAvailPhys/1024) ;

            try

              oibds.Close;
              oibds.Database := ibds.Database;
              oibds.SelectSQL := ibds.SelectSQL;
              oibds.ModifySQL := ibds.ModifySQL;
              oibds.InsertSQL := ibds.InsertSQL;
              oibds.DeleteSQL := ibds.DeleteSQL;

              //bRegistro := ValidaCamposChaves;

              {if bRegistro then
              begin
                oibds.SelectSQL.Text := Format(cvSelectDadosImpUK,[sTabela]);
                oibds.ParamByName('CD_UNIDADE').Value  := ocds.FieldValues['CD_UNIDADE'];
                oibds.ParamByName('CD_PROVINCIA').Value  := ocds.FieldValues['CD_PROVINCIA'];
                oibds.ParamByName('CD_MUNICIPIO').Value  := ocds.FieldValues['CD_MUNICIPIO'];
                oibds.ParamByName('VL_MESANO').Value  := ocds.FieldValues['VL_MESANO'];
                oibds.Open;
                oibds.Last;
                oibds.First;
                if oibds.FindField('DT_REGISTRO')<>nil then
                begin
                  //Exclui os Existentes para Entao Inserir Novos
                  while not oibds.Eof do
                  begin
                     if (oibds.FieldByName('DT_REGISTRO').AsDateTime<>dtRegistro) then
                        oibds.Delete
                     else
                        oibds.Next;
                  end;
                end;
                dm.Transacao(dm.IBD);
                oibds.Insert;
                inc(nI);
              end
              else
              }
              begin
              if sTabela2 = 'UNIDADE' then //AR: Antera��es p/ executar o update e n�o mais insert se existir registro.
                begin
                  oibds.SelectSQL.Text := Format(cvSelectDadosImpUND,[sTabela2]);
                  oibds.ParamByName('CD_UNIDADE').Value  := ocds.FieldValues['CD_UNIDADE'];
                  oibds.Open;
                end
                else
                begin
                  oibds.SelectSQL.Text := Format(cvSelectDadosImp,[sTabela2]);
                  oibds.ParamByName('CD_EDI').Value  := ocds.FieldValues['CD_EDI'];
                  oibds.ParamByName('CD_UND').Value  := ocds.FieldValues['CD_UND'];
                  oibds.Open;
                end;
                dm.Transacao(dm.IBD);
                if oibds.RecordCount = 0 then
                begin
                  oibds.Insert;
                  inc(nI);
                end
                else
                begin
                  oibds.Edit;
                  inc(nA);
                end;
              end;

              for j:=0 to ocds.FieldCount-1 do
                CopiaValor(ocds.Fields[j],oibds.FieldByName(ocds.Fields[j].FieldName));

              if oibds.FieldByName('CD_UND').Value <> prmUnidadeCentral then //Somente INLS nao precisa
                oibds.FieldByName('DT_EXP').Value := Null;

  //            if oibds.FindField('DT_REGISTRO')<>nil then
  //              oibds.FieldByName('DT_REGISTRO').AsDateTime := dtRegistro;

              oibds.Post;
              {TODO:Executa Rotina Automatica Associada Tabela}
              dm.Commit(dm.IBD);
              oibds.Close;
              //FreeAndNil(oibds);
              ocds.Next;
              //ocds.Delete;
            except
              on E:Exception do
              begin
                 inc(nE);
                 GlobalMemoryStatus(MS);
                 Log.Add('Erro:' + sTabela +
                    ' Registro :' + intToStr(ocds.RecNo) +
                    ' Total :' + intToStr(ocds.RecordCount) +
                    FormatFloat('"Mem�ria F�sica: " #,###', MS.dwTotalPhys/1024) +
                    FormatFloat('"Mem�ria F�sica: " #,###', MS.dwAvailPhys/1024) +
                    chr(13) + e.Message);
                 oibds.Close;
                 //FreeAndNil(oibds);
                 ocds.Next;
              end;
            end;
          end;

          Log.Add(sArquivo +
                  ' Erros :' + intToStr(nE) +
                  ' Alterados :' + intToStr(nA) +
                  ' Novos :' + intToStr(nI));

          sArquivo2 := sPath2 + '\' + ExtractFileName(sArquivo);
          if FileExists(sArquivo2) then DeleteFile(sArquivo2);
          MoveFile(PChar(sArquivo), pchar(sArquivo2));

          if Log.Text <> '' then
          begin
            sArquivo2 := ExtractFilePath(sArquivo2) + '\' + sTabela +
             FormatDateTime('hhnss',now) + '.log';
            Log.SaveToFile(sArquivo2);
            Log.Clear;
          end;
        end;
        frmMenuEDI.pbGeral.Position := frmMenuEDI.pbGeral.Position + 1;
        CDSTabela.Next;
        dm.Commit(dm.IBD);
      except
        on E:Exception do
        begin
          frmMenuEDI.StatusBar1.Panels[2].Text := sArquivo + chr(13) +
                              sTabela  + chr(13) +
                              'Erro:' + E.Message;
          CDSTabela.Next;
        end;
      end;

    end;
    lstArquivos.Mask := '*.xml';
    frmMenuEDI.StatusBar1.Panels[2].Text := 'Pronto!';
    with TIBQuery.Create(nil) do
    begin
      Database := DM.DB;
      sql.Add('Update PARAMETRO set VALOR = ''Importar!'' ');
      sql.Add('where CD_PARAMETRO = 29');
      ExecSQL;
      DM.Commit(DMGERAL.TB_PARAMETRO);
      close;
      free;
    end;
    FreeAndNil(ocds);
  except
    on E:Exception do
    begin
      frmMenuEDI.StatusBar1.Panels[2].Text := 'Erro:' + E.Message;
      FreeAndNil(ocds);
    end;
  end;
  frmMenuEDI.pbGeral.Position := 0;
end;

procedure TfrmEDI.Importar;
var sTabela,sPath,sArquivo,sAux:String;
  j:integer;
  Log:TStringList;
  ocds: TIBClientDataSet;
  bAceitar,bPendencia,bImportado,bRegistro:Boolean;
  dtRegistro:TDateTime;
  function RetiraNumero(s:string):string;
  var i:integer;
  begin
    result := '';
    for i:=1 to Length(s) do
      if not(s[i] in ['0'..'9']) then
        result := result + s[i];
  end;

  function ValidaCamposChaves:Boolean;
  begin
    Result :=
     (ocds.FindField('CD_UNIDADE')<>nil)and
     (ocds.FindField('CD_PROVINCIA')<>nil)and
     (ocds.FindField('CD_MUNICIPIO')<>nil)and
     (ocds.FindField('VL_MESANO')<>nil);
  end;
begin

  CarregaArquivosEDI;

  ocds := TIBClientDataSet.Create(self);
  try
    Log := TStringList.Create;
    btOrdemClick(self);

    CDSTabela.First;
    frmMenuEDI.pbGeral.Max := CDSTabela.RecordCount;
    frmMenuEDI.pbGeral.Position :=0;
    while not CDSTabela.Eof do
    begin
      if CDSTabelaFL_RECEBER.AsString = 'N' then
        CDSTabela.Next
      else
      try
        dm.Transacao(dm.IBD);
        sTabela := Trim(CDSTabelaNM_TABELA.AsString);
        ValidaCamposEDI(sTabela);
        ibds.Close;
        MontaDataSet(sTabela, ibds);
        frmMenuEDI.StatusBar1.Panels[2].Text := 'Importanto ' + sTabela + ' ...';

        sAux := 'and NM_ARQUIVO like (' + QuotedStr(sTabela+'%') + ')' ;

        dmGeral.TB_ARQUIVO_EDI.Close;
        dmGeral.TB_ARQUIVO_EDI.SelectSQL.Text := StringReplace(sSqlArquivoEDI,'/**/',
          sAux,[]);
        dmGeral.TB_ARQUIVO_EDI.Open;

        while not dmGeral.TB_ARQUIVO_EDI.Eof do
        begin
          Application.ProcessMessages;
          sArquivo := dmGeral.TB_ARQUIVO_EDINM_ARQUIVO.AsString;
          frmMenuEDI.StatusBar1.Panels[2].Text := 'Arquivo :' + sArquivo;

          DataSource3.DataSet := ocds;
          dmGeral.TB_ARQUIVO_EDIBL_ARQUIVO.SaveToFile(sPathTemp + sArquivo);
          ocds.LoadFromFile(sPathTemp + sArquivo);
          bPendencia := False;
          dtRegistro := dm.GetDateTime;
          while not ocds.Eof do
          begin
            try
              //Valida Recebimento
              bAceitar := True;
              bImportado := False;
              if (prmConfirmaEDI = cvSim) and
                 (CDSTabelaFL_VALIDAR_RECEBIMENTO.AsString = cvSim) then
              begin
                bAceitar := False;
                if ocds.FindField('CD_REGISTRO_GERAL') <> nil then
                begin
                   if (not dmGeral.qyPROTOCOLO.Active) or
                      (dmGeral.qyPROTOCOLO.FieldByName('CD_REGISTRO_GERAL').AsInteger <>
                      ocds.FieldValues['CD_REGISTRO_GERAL']) then
                   begin
                      dmGeral.qyPROTOCOLO.Close;
                      dmGeral.qyPROTOCOLO.ParamByName('CD_REGISTRO_GERAL').AsInteger :=
                         ocds.FieldValues['CD_REGISTRO_GERAL'];
                      dmGeral.qyPROTOCOLO.Open;
                   end;
                   bAceitar :=
                     (dmGeral.qyPROTOCOLO.FieldByName('FL_ACEITAR').AsString = cvSim);
                   bImportado :=
                     (dmGeral.qyPROTOCOLO.FieldByName('FL_IMPORTADO').AsString = cvSim);
                end;
              end;

              if not bAceitar then
                bPendencia := true;

              if bAceitar and (not bImportado) then
              begin
                {TODO:Mudar para usar chave e nao mais EDI, Varificar quanto aos demais cadastros alem dos Relatorios}
                ibds.Close;
                bRegistro := ValidaCamposChaves;
                if bRegistro then
                begin
                  ibds.SelectSQL.Text := Format(cvSelectDadosImpUK,[sTabela]);
                  ibds.ParamByName('CD_UNIDADE').Value  := ocds.FieldValues['CD_UNIDADE'];
                  ibds.ParamByName('CD_PROVINCIA').Value  := ocds.FieldValues['CD_PROVINCIA'];
                  ibds.ParamByName('CD_MUNICIPIO').Value  := ocds.FieldValues['CD_MUNICIPIO'];
                  ibds.ParamByName('VL_MESANO').Value  := ocds.FieldValues['VL_MESANO'];
                  ibds.Open;
                  ibds.Last;
                  ibds.First;
                  if ibds.FindField('DT_REGISTRO')<>nil then
                  begin
                    //Exclui os Existentes para Entao Inserir Novos
                    while not ibds.Eof do
                    begin
                       if (ibds.FieldByName('DT_REGISTRO').AsDateTime<>dtRegistro) then
                          ibds.Delete
                       else
                          ibds.Next;
                    end;
                  end;
                  ibds.Insert;
                end
                else
                begin
                  ibds.SelectSQL.Text := Format(cvSelectDadosImp,[sTabela]);
                  ibds.ParamByName('CD_EDI').Value  := ocds.FieldValues['CD_EDI'];
                  ibds.ParamByName('CD_UND').Value  := ocds.FieldValues['CD_UND'];
                  ibds.Open;
                  dm.Transacao(dm.IBD);
                  if ibds.RecordCount = 0 then
                    ibds.Insert
                  else
                    ibds.Edit;
                end;

                for j:=0 to ocds.FieldCount-1 do
                  CopiaValor(ocds.Fields[j],ibds.FieldByName(ocds.Fields[j].FieldName));

                if ibds.FindField('DT_REGISTRO')<>nil then
                  ibds.FieldByName('DT_REGISTRO').AsDateTime := dtRegistro;

                ibds.Post;

                //Vincula Arquivo EDI ao Protocolo
                dmGeral.TB_PROTOCOLO_ENVIO.Close;
                dmGeral.TB_PROTOCOLO_ENVIO.ParamByName('CD_UNIDADE').AsString:=
                  dmGeral.qyPROTOCOLOCD_UNIDADE.AsString;
                dmGeral.TB_PROTOCOLO_ENVIO.ParamByName('CD_PROVINCIA').AsString :=
                  dmGeral.qyPROTOCOLOCD_PROVINCIA.AsString;
                dmGeral.TB_PROTOCOLO_ENVIO.ParamByName('CD_MUNICIPIO').AsString :=
                  dmGeral.qyPROTOCOLOCD_MUNICIPIO.AsString;
                dmGeral.TB_PROTOCOLO_ENVIO.ParamByName('VL_MESANO').AsString :=
                  dmGeral.qyPROTOCOLOVL_MESANO.AsString;
                dmGeral.TB_PROTOCOLO_ENVIO.ParamByName('TP_PROTOCOLO').AsString :=
                  dmGeral.qyPROTOCOLOTP_PROTOCOLO.AsString;
                dmGeral.TB_PROTOCOLO_ENVIO.Open;
                if not dmGeral.TB_PROTOCOLO_ENVIO.IsEmpty then
                begin
                  dmGeral.TB_PROTOCOLO_ENVIO.Edit;
                  dmGeral.TB_PROTOCOLO_ENVIOFL_IMPORTADO.AsString := cvSim;
                  dmGeral.TB_PROTOCOLO_ENVIOCD_ARQUIVO.AsInteger :=
                    dmGeral.TB_ARQUIVO_EDICD_ARQUIVO.AsInteger;
                  dmGeral.TB_PROTOCOLO_ENVIO.Post;
                end;

                dm.Commit(dm.IBD);
              end;
              ocds.Next;
            except
              on E:Exception do
              begin
                 bPendencia := true;
                 Log.Add('Erro:' + sTabela + chr(13) + e.Message);
                 ocds.Next;
              end;
            end;
          end;

          if Not bPendencia then
          begin
            dmGeral.TB_ARQUIVO_EDI.Edit;
            dmGeral.TB_ARQUIVO_EDIFL_IMPORTADO.AsString := cvSim;
            dmGeral.TB_ARQUIVO_EDI.Post;
          end;

          dmGeral.TB_ARQUIVO_EDI.Next;
          if Log.Text <> '' then
          begin
            sPath := sPathIn + '\Log\';
            ValidaDiretorio(sPath);
            sArquivo := sPath + sTabela + '.log';
            Log.SaveToFile(sArquivo);
            Log.Clear;
          end;
        end;
        frmMenuEDI.pbGeral.Position := frmMenuEDI.pbGeral.Position + 1;
        CDSTabela.Next;
        dm.Commit(dm.IBD);
      except
        on E:Exception do
        begin
          frmMenuEDI.StatusBar1.Panels[2].Text := sArquivo + chr(13) +
                              sTabela  + chr(13) +
                              'Erro:' + E.Message;
          CDSTabela.Next;
        end;
      end;

    end;
    frmMenuEDI.StatusBar1.Panels[2].Text := 'Pronto!';
    FreeAndNil(ocds);
    dmGeral.TB_ARQUIVO_EDI.Close;
  except
    on E:Exception do
    begin
      frmMenuEDI.StatusBar1.Panels[2].Text := 'Erro:' + E.Message;
      FreeAndNil(ocds);
    end;
  end;
  frmMenuEDI.pbGeral.Position := 0;
end;

procedure TfrmEDI.CarregaArquivosEDI;
var sPath,sArquivo,sPath2,sArquivo2:String; i:integer;
begin
  try
    sPath := ExtractFilePath(Application.ExeName);
    sPath := sPath + 'EDI\IN\';
    sPath2 := sPath + FormatDateTime('ddmmyy' , date);
    ValidaDiretorio(sPath2);

    //Grava xml
    dmGeral.TB_ARQUIVO_EDI.Open;
    lstArquivos.Directory := sPath;
    lstArquivos.Mask := '*.*';
    for i:=lstArquivos.Items.Count -1 downto 0 do
    begin
      try
        Application.ProcessMessages;
        sArquivo := lstArquivos.Items[i];
        dmGeral.TB_ARQUIVO_EDI.Insert;
        dmGeral.TB_ARQUIVO_EDINM_ARQUIVO.AsString := sArquivo;
        dmGeral.TB_ARQUIVO_EDIBL_ARQUIVO.LoadFromFile(sArquivo);
        dmGeral.TB_ARQUIVO_EDI.Post;

        sArquivo2 := sPath2 + '\' + ExtractFileName(sArquivo);
        if FileExists(sArquivo2) then DeleteFile(sArquivo2);
        MoveFile(pChar(sArquivo),pChar(sArquivo2));
      except
        dmGeral.TB_ARQUIVO_EDI.Cancel;
      end;
      frmMenuEDI.StatusBar1.Panels[2].Text := 'Carregando Arquivos ' +
        ExtractFileName(sArquivo) + ' ...';
    end;
    frmMenuEDI.StatusBar1.Panels[2].Text := 'Pronto!';
    dm.Commit(dmGeral.TB_ARQUIVO_EDI);
    dmGeral.TB_ARQUIVO_EDI.Close;
  except
    on E:Exception do
    begin
      frmMenuEDI.StatusBar1.Panels[2].Text := 'Erro:' + E.Message;
    end;
  end;
end;

procedure TfrmEDI.MontaDataSet(nmTabela: String; ibds: TIBDataSet);
var sName,sSelect,sInsert,sUpdate,sDelete:String;
    sAuxI1, sAuxI2, sAuxU, sAuxW:String;
    i:Integer;
begin
  try
    qyCampos.Close;
    qyCampos.Params.ParamByName('NM_TABELA').Value := nmTabela;
    qyCampos.Open;
    if qyCampos.IsEmpty then
      Raise Exception.Create('Campo Chave nao definido!');

    sSelect := 'SELECT * FROM '+nmTabela+' where 1=2';
    sInsert := 'INSERT INTO '+nmTabela+'(%s) VALUES(%s)';
    sUpdate := 'UPDATE '+nmTabela+' set %s where %s';
    sDelete := 'DELETE FROM '+nmTabela+' where %s';
    sAuxI1 := '';
    sAuxI2 := '';
    sAuxU := '';
    sAuxW := '';

    ibds.Database := qyCampos.Database;
    ibds.Transaction := qyCampos.Transaction;
    
    ibds.Close;
    ibds.SelectSQL.Text := sSelect;
    ibds.InsertSQL.Text := '';
    ibds.ModifySQL.Text := '';
    ibds.DeleteSQL.Text := '';
    ibds.Open;

    for i:=0 to ibds.Fields.Count -1 do
    begin
       sName := ibds.Fields[i].FieldName;
       sAuxI1 := sAuxI1 + sName;
       sAuxI2 := sAuxI2 + ':' + sName;

       sAuxU := sAuxU + sName + ' = :' +sName;

       if (i<>ibds.Fields.Count-1) then
       begin
         sAuxI1 := sAuxI1 + ',';
         sAuxI2 := sAuxI2 + ',';
         sAuxU := sAuxU + ',' + chr(13);
       end;
    end;

    //Campos Chaves
    while not qyCampos.eof do
    begin
       sName := trim(qyCamposNM_CAMPO.AsString);
       sAuxW := sAuxW + sName + ' = :OLD_' +sName;
       qyCampos.Next;
       if not qyCampos.eof then
       begin
         sAuxW := sAuxW + chr(13) + 'and ';
       end;
    end;

    ibds.Close;
    ibds.InsertSQL.Text := Format(sInsert,[sAuxI1,sAuxI2]);
    ibds.ModifySQL.Text := Format(sUpdate,[sAuxU,sAuxW]);
    ibds.DeleteSQL.Text := Format(sDelete,[sAuxW]);
  except
     on E:Exception do
       Raise Exception.Create('Erro:' + nmTabela + chr(13) + e.Message);
  end;
end;

procedure TfrmEDI.CopiaValor(fDe, fPara: TField);
begin
    if fDe.Value = null then
      Exit;

    case fDe.DataType of
      ftFixedChar,ftString,ftWideString: fpara.AsString := fDe.AsString;
      ftSmallint,ftWord,ftInteger: fpara.AsInteger := fDe.AsInteger;
      ftLargeint: fpara.AsString := fDe.AsString;
      ftDate,ftDateTime,ftTimeStamp:  fpara.AsDateTime := fDe.AsDateTime;
      ftFloat:  fpara.AsFloat := fDe.AsFloat;
      ftBoolean: begin
          if fDe.AsBoolean = true then
            fpara.AsInteger := 1
          else
            fpara.AsInteger := 0;
      end;
    else
      fpara.value := fDe.Value;
    end;
end;

procedure TfrmEDI.ValidaCamposEDI(sTabela:String);
var sNome:string;
begin
    TB.Close;
    TB.CommandText := 'SELECT * FROM ' + sTabela + ' WHERE 1=2';
    TB.Open;
    if (TB.FindField('DT_EXP') = nil) then
    begin
       //Altera Tabela adicionando coluna DT_EXP
       oSQL.SQL.Clear;
       oSQL.SQL.Add(Format(cvAlterTableDtExp,[sTabela]));
       oSQL.ExecQuery;

       //Cria indice para coluna DT_EXP
       sNome := copy(sTabela,1,24);
       oSQL.SQL.Clear;
       oSQL.SQL.Add(Format(cvCreateIndexDtExp,[sNome,sTabela]));
       oSQL.ExecQuery;
    end;

    if (TB.FindField('CD_EDI') = nil) then
    begin
       //Altera Tabela adicionando coluna CD_EDI
       oSQL.SQL.Clear;
       oSQL.SQL.Add(Format(cvAlterTableCdEdi,[sTabela]));
       oSQL.ExecQuery;
    end;
end;

procedure TfrmEDI.FormCreate(Sender: TObject);
var sArq, sPath:String; ini:TiniFile;
begin
  sPath := ExtractFilePath(Application.ExeName);
  sPathApp := sPath;
  sPathIN := sPath + 'EDI\IN\';
  ValidaDiretorio(sPathIN);
  sPathOut :=  sPath + 'EDI\OUT\';
  ValidaDiretorio(sPathOut);
  sPathProt :=  sPath + 'EDI\PROT\';
  ValidaDiretorio(sPathProt);
  lstArquivos.Directory := sPathIN;
  lstArquivos.Mask := '*.xml';
  sSqlArquivoEDI := dmGeral.TB_ARQUIVO_EDI.SelectSQL.Text;
  sArq := ExtractFilePath(Application.ExeName) + 'ris.ini';
  ini := TIniFile.Create(sArq);
  bExportar  := ini.ReadString('EDI','Exportar','NAO')  = 'SIM';
  bImportar  := ini.ReadString('EDI','Importar','NAO')  = 'SIM';
  bAtualizar := ini.ReadString('EDI','Atualizar','NAO') = 'SIM';
  bValidarCampoChave := true;
  nTempo := ini.ReadInteger('EDI','Tempo',60);
  if (frmMenuEdi <> nil) then
    frmMenuEdi.tmEDI.Interval := nTempo * 60000;

  prmDataUpdate := ini.ReadString('EDI','Update','01-01-1900');
  {if prmDataUpdate = '' then
  begin
     prmDataUpdate := FormatDateTime('yyyy-mm-dd hh:nn:ss',Now);
     ini.WriteString('EDI','Update',prmDataUpdate);
  end;}

  ini.Free;
end;

procedure TfrmEDI.lstArquivosClick(Sender: TObject);
var sArquivo:string;
begin
  sArquivo := lstArquivos.Directory +'\'+ lstArquivos.Items[lstArquivos.ItemIndex];
  if FileExists(sArquivo) then
    cds.LoadFromFile(sArquivo)
  else
    ShowMessage(intTostr(cds.RecordCount));
end;

procedure TfrmEDI.lstArquivosDblClick(Sender: TObject);
var i:integer;
begin
  for i:=0 to lstArquivos.Count-1 do
  begin
    lstArquivos.Selected[i]:=true;
    lstArquivosClick(sender);
  end;
end;

end.
