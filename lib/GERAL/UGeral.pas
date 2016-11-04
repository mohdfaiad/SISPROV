unit UGeral;

interface

uses
  udm, Registry, windows, printers, messages, dialogs, Controls;

const
  STRING_INDEFINIDO = '-999';
  NUMERO_INDEFINIDO = -999;
  //Parametros
  nParUnidade = 1; //O Valor deste parametro contera o codigo da unidade
  nParVersao = 2; //O Valor deste parametro contera a vers�o do sistema
  nParMaxDataAgenda = 3; //O Valor deste parametro contera data maxima para bloqueio da agenda
  nParMaxAtendAgenda = 4; //O Valor deste parametro contera data maxima para bloqueio da agenda
  nParDocPadrao = 5; //Documento modelo padrao
  nParGruPadrao = 6; //Grupo padrao paracer
  nParPastaParecer = 11;
  nParMedicoPadraoAgenda = 12;
  nParLstNaoTransfAgenda = 13;
  nParMedicoIntegraLab = 14;
  nParImgFundo = 15;
  nParGrupoForm1 = 16;
  nParGrupoForm2 = 17;
  nParGrupoForm3 = 18;
  nParGrupoForm4 = 19;
  nParUrlRX = 20;
  nParGrupoExames = 21;
  nParSGEmpresa = 22;
  nParTabRespLab = 23;
  nParUltimoNrProcesso = 24;
  nParAgendaSabDom = 25;
  nParSistemaUnidades = 26;
  nParUnidadeCentral = 27;
  nParConfirmaEDI = 28;
  nParBloqueio = 29;
  nParAgendaLaboratorio = 30;
  nParAgendaFarmacia = 31;
  nParAgendaTesteRapido = 32;
  nParAgendaCriancaExposta = 33;

  nParImpressora = 999; //O Valor deste parametro contera porta da impressora

  sVersaoSistema = '2.1.0'; //Versao Atual da Compilacao do Sistema
  sRevisao = '25';

  //Sigla Empresas
  cvCNO = 'CNO';
  cvHE  = 'HE';
  cvINLS = 'INLS';

  //Constante SIM/NAO
  cvSim = 'S';
  cvNao = 'N';
  cvFlSim = 1;
  cvFlNao = 0;
  cvESim = 'SIM';
  cvENao = 'NAO';

  //Constante Sexo
  cvMasculino = 'M';
  cvFeminino  = 'F';

  //Faixa Etaria
  cvFaixaEtaria1 = 1;  // 0-2 anos
  cvFaixaEtaria2 = 2;  // 3-14 anos
  cvFaixaEtaria3 = 3;  //15-24 anos
  cvFaixaEtaria4 = 4;  //25-49 anos
  cvFaixaEtaria5 = 5;  //50 ou mais
  cvFaixaEtaria6 = 6;  //15 ou mais
  cvFaixaEtaria7 = 7;  //menor de 18 meses
  cvFaixaEtaria8 = 8;  //18 meses a 4 anos
  cvFaixaEtaria9 = 9;  //5 a 14 anos
  cvFaixaEtaria10 = 10;  //15 a 19 anos
  cvFaixaEtaria11 = 11;  //20 a 29 anos
  cvFaixaEtaria12 = 12;  //30 a 39 anos
  cvFaixaEtaria13 = 13;  //40 a 49 anos
  cvFaixaEtaria14 = 14;  //50 a 59 anos
  cvFaixaEtaria15 = 15;  //60 anos ou mais
  cvFaixaEtaria16 = 16;  //18 meses a 14 anos
  cvFaixaEtaria17 = 17;  //menor de 15 anos
  cvFaixaEtaria18 = 18;  //0-4 anos
  cvFaixaEtaria19 = 19;  //4-14 anos

  //Partos
  cvPartos1 = 1; //Institucionais
  cvPartos2 = 2; //Domiciliar

  //Constantes Pessoas
  cvCliente = 'CL';
  cvFornecedor = 'FO';
  cvFuncionario = 'FU';
  cvTransportadora = 'TR';
  cvEmpresa = 'EM';

  //
  cvPositivo = 1;
  cvNegativo = 2;
  cvIndeterminado = 3;

  //Tabelas
  cvATV = 1;
  cvPTV = 2;
  cvTARV = 3;
  cvTARVESQ = 4;
  cvTARVCD4 = 5;
  cvACOMP = 6;
  cvPROG = 7;
  cvCOINFECCAO = 8;

  // numero de dias que � considerado abandono
  nDiasAbandono = 180;

  //Relatorios
  cvGERALPROGRAMA = 9;

  //Tipos de Protocolos
  Protocolo : array[1..8]of string=(
    'Relat�rio de ATV',
    'Relat�rio de PTV',
    'Relat�rio de TARV',
    'Relat�rio de TARV Esquema',
    'Relat�rio de TARV CD4',
    'Relat�rio de Acompanhamento',
    'Relat�rio do Programa',
    'Relat�rio de Coinfec��o');

  //Tabelas de Protocolos
  TabelaProtocolo : array[1..8]of string=(
    'REGISTRO_ATV',
    'REGISTRO_PTV',
    'REGISTRO_TARV',
    'REGISTRO_TARV_ESQUEMA',
    'REGISTRO_TARV_CD4',
    'REGISTRO_TARV_ACOMP',
    'REGISTRO_PROGRAMA',
    'REGISTRO_COINFECCAO');

var
  sUnidadeDefautDescricao: String;
  iProvincia: integer;
  iMunicipio: integer;
  sProvinciaDefautDescricao: String;
  sMunicipioDefautDescricao: String;
  sListagemPaciente, sCadastroPaciente:boolean;
  vS1,vS2,vS3:Double;
  vlCalc:Real;
  sDominio:string = 'www.vertrou.info';
  sLogComputer, sLogUnidade, sLogUsuario, sLogSistema: string;
  sPath, sPathApp,sPathIn,sPathOut,sPathProt:string;
  sPathScript,sPathTemp,sPathLayout,sPathConsulta,sPathGrid,sComputerName:String;
  sLogin,sLoginAuto,sSenhaAuto:String;
  sScreenWidth,sScreenHeigth:String;
  prmDataUpdate:String = '01-01-1900';
  prmUnidade:String = '-999';
  prmDocPadrao:String = '-999';
  prmGruPadrao:String = '-999';
  prmImpressora:String = '-999';
  prmImgFundo:String = '-999';
  prmVersao:String = '-999';
  prmMaxDataAgenda:String = '-999';
  prmMaxAtendAgenda:String = '-999';
  prmPastaParecer:String = '-999';
  prmMedicoPadraoAgenda:String = '-999';
  prmLstNaoTransfAgenda:String = '-999';
  prmMedicoIntegraLab:String = '-999';
  prmURLRX:String = '-999';
  prmSGEmpresa:String = '-999';
  prmTabRespLab:String = '-999';
  prmUltimoNrProcesso:String = '-999';
  prmAgendaSabDom:String = '-999';
  prmSistemaUnidades:String = '-999';
  prmUnidadeCentral:String = '-999';
  prmConfirmaEDI:String = '-999';
  prmBloqueio:String = '-999';
  prmAgendaLaboratorio:String = '-999';
  prmAgendaFarmacia:String = '-999';
  prmAgendaTesteRapido:String = '-999';
  prmAgendaCriancaExposta:String = '-999';

  fLog:TextFile;
  nFatorPreco:Double;
  gbLaboratorio:Boolean;
  gbLiberaQtdeAgenda:Boolean;
  gContraSenhaGlobal:Boolean;
  procedure InicializaParametros;
  function ValorParametro(prmCodigo:Integer):Variant;
  function RetiraAcentos ( str: String ): String;
  function ValidaUsuarioSenha(sLOGIN,sSENHA:String):Boolean;
  function Valor(s:string):Real;
  function ValorInt(s:string):Integer;
  function RPad(s:string;c:char;n:integer):string;
  procedure ChangeDefaultPrinter(APrinterIndex: Integer);
  function PastaArquivoProgramas:string;
  function Existe(piCodigo:integer;psLista:string):boolean;
  procedure AdicionaLog(s:string);
  function ValidaDiretorio(sDir:string):boolean;
  function ValidaAnoAtual(sAno:string):Boolean;
  function ArquivosExternos(sArq:String):string;
  function ValidarMesAno(MesAno:String):Boolean;
  function NomeDoComputador:string;
  function CalculoIdade(data: TDate): integer;
  function CalculoNasc(idade: integer): TDate;
  function CalculoMeses(data: TDate): integer;
  function CalculoMesesNasc(meses: integer): TDate;

implementation

uses SysUtils, Graphics, Forms,
   StdCtrls, Buttons, DateUtils;

function ValorParametro(prmCodigo:Integer):Variant;
begin
  try
    dm.qyParametro.Close;
    dm.qyParametro.ParamByName('CD_PARAMETRO').AsInteger := prmCodigo;
    dm.qyParametro.Open;
    if not dm.qyParametro.IsEmpty then
      result := dm.qyParametroVALOR.Value
    else
      result := STRING_INDEFINIDO; 
  finally
    dm.qyParametro.Close;
  end;
end;

procedure InicializaParametros;
begin
  if prmUnidade = STRING_INDEFINIDO then
    prmUnidade := ValorParametro(nParUnidade);

  if prmImpressora = STRING_INDEFINIDO then
    prmImpressora := ValorParametro(nParImpressora);

  if prmVersao = STRING_INDEFINIDO then
    prmVersao := ValorParametro(nParVersao);

  if prmMaxDataAgenda = STRING_INDEFINIDO then
    prmMaxDataAgenda := ValorParametro(nParMaxDataAgenda);

  if prmMaxAtendAgenda = STRING_INDEFINIDO then
    prmMaxAtendAgenda := ValorParametro(nParMaxAtendAgenda);

  if prmDocPadrao = STRING_INDEFINIDO then
    prmDocPadrao := ValorParametro(nParDocPadrao);

  if prmGruPadrao = STRING_INDEFINIDO then
    prmGruPadrao := ValorParametro(nParGruPadrao);

  if prmPastaParecer = STRING_INDEFINIDO then
    prmPastaParecer := ValorParametro(nParPastaParecer);

  if prmMedicoPadraoAgenda = STRING_INDEFINIDO then
    prmMedicoPadraoAgenda := ValorParametro(nParMedicoPadraoAgenda);

  if prmLstNaoTransfAgenda = STRING_INDEFINIDO then
    prmLstNaoTransfAgenda := ValorParametro(nParLstNaoTransfAgenda);

  if prmMedicoIntegraLab = STRING_INDEFINIDO then
    prmMedicoIntegraLab := ValorParametro(nParMedicoIntegraLab);

  if prmImgFundo = STRING_INDEFINIDO then
    prmImgFundo := ValorParametro(nParImgFundo);

  if prmURLRX = STRING_INDEFINIDO then
    prmURLRX := ValorParametro(nParUrlRX);

  if prmSGEmpresa = STRING_INDEFINIDO then
    prmSGEmpresa := ValorParametro(nParSGEmpresa);

  if prmTabRespLab = STRING_INDEFINIDO then
    prmTabRespLab := ValorParametro(nParTabRespLab);

  if prmUltimoNrProcesso = STRING_INDEFINIDO then
    prmUltimoNrProcesso := ValorParametro(nParUltimoNrProcesso);

  if prmAgendaSabDom = STRING_INDEFINIDO then
    prmAgendaSabDom := ValorParametro(nParAgendaSabDom);

  if prmSistemaUnidades = STRING_INDEFINIDO then
    prmSistemaUnidades := ValorParametro(nParSistemaUnidades);

  if prmUnidadeCentral = STRING_INDEFINIDO then
  begin
    prmUnidadeCentral := ValorParametro(nParUnidadeCentral);
    if prmUnidadeCentral = STRING_INDEFINIDO then
      prmUnidadeCentral := '31'; //Valor Default
  end;

  if prmConfirmaEDI = STRING_INDEFINIDO then
    prmConfirmaEDI := ValorParametro(nParConfirmaEDI);
	
  if prmBloqueio = STRING_INDEFINIDO then
    prmBloqueio := ValorParametro(nParBloqueio);

  if prmAgendaLaboratorio = STRING_INDEFINIDO then
    prmAgendaLaboratorio := ValorParametro(nParAgendaLaboratorio);

  if prmAgendaFarmacia = STRING_INDEFINIDO then
    prmAgendaFarmacia := ValorParametro(nParAgendaFarmacia);

  if prmAgendaTesteRapido = STRING_INDEFINIDO then
    prmAgendaTesteRapido := ValorParametro(nParAgendaTesteRapido);

  if prmAgendaCriancaExposta = STRING_INDEFINIDO then
    prmAgendaCriancaExposta := ValorParametro(nParAgendaCriancaExposta);
end;

function RetiraAcentos ( str: String ): String;
var
 i: Integer;
begin
  for i := 1 to Length ( str ) do
    case str[i] of
      '�': str[i] := 'a';
      '�': str[i] := 'e';
      '�': str[i] := 'i';
      '�': str[i] := 'o';
      '�': str[i] := 'u';
      '�': str[i] := 'a';
      '�': str[i] := 'e';
      '�': str[i] := 'i';
      '�': str[i] := 'o';
      '�': str[i] := 'u';
      '�': str[i] := 'a';
      '�': str[i] := 'e';
      '�': str[i] := 'i';
      '�': str[i] := 'o';
      '�': str[i] := 'u';
      '�': str[i] := 'a';
      '�': str[i] := 'e';
      '�': str[i] := 'i';
      '�': str[i] := 'o';
      '�': str[i] := 'u';
      '�': str[i] := 'a';
      '�': str[i] := 'o';
      '�': str[i] := 'n';
      '�': str[i] := 'c';
      '�': str[i] := 'A';
      '�': str[i] := 'E';
      '�': str[i] := 'I';
      '�': str[i] := 'O';
      '�': str[i] := 'U';
      '�': str[i] := 'A';
      '�': str[i] := 'E';
      '�': str[i] := 'I';
      '�': str[i] := 'O';
      '�': str[i] := 'U';
      '�': str[i] := 'A';
      '�': str[i] := 'E';
      '�': str[i] := 'I';
      '�': str[i] := 'O';
      '�': str[i] := 'U';
      '�': str[i] := 'A';
      '�': str[i] := 'E';
      '�': str[i] := 'I';
      '�': str[i] := 'O';
      '�': str[i] := 'U';
      '�': str[i] := 'A';
      '�': str[i] := 'O';
      '�': str[i] := 'N';
      '�': str[i] := 'C';
      '�': str[i] := '.';
  end;
  Result := str;
end;

function ValidaUsuarioSenha(sLOGIN,sSENHA:String):Boolean;
begin
  Result := False;
  dm.qyGeral.ParamByName('NM_LOGIN').AsString := sLOGIN;
  dm.qyGeral.Open;
  Result := dm.qyGeral.FieldByName('DS_SENHA').AsString = sSENHA;
  dm.qyGeral.Close;
end;

function Valor(s:string):Real;
var d:Double;
begin
  Result := 0;
  if TryStrToFloat(s, d) then
    Result := d;
end;

function ValorInt(s:string):Integer;
var i:integer;
begin
  Result := 0;
  if TryStrToInt(s, i) then
    Result := i;
end;

function RPad(s:string;c:char;n:integer):string;
begin
   s:= s + StringOfChar(c,n-length(s));
   result := s;
end;

function PastaArquivoProgramas:string;
var
  Reg: TRegistry;
  pProgramFilesDir: String;
begin
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  Reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion', False);
  pProgramFilesDir := Reg.ReadString('ProgramFilesDir');
  Reg.CloseKey;
  Reg.Free;
  result := pProgramFilesDir;
end;

procedure ChangeDefaultPrinter(APrinterIndex: Integer);
var
  Device : array[0..255] of char;
  Driver : array[0..255] of char;
  Port : array[0..255] of char;
  hDeviceMode: THandle;
begin
  Printer.PrinterIndex := APrinterIndex;
  Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
  StrCat( Device, ',');
  StrCat( Device, Driver );
  StrCat( Device, ',');
  StrCat( Device, Port );
  WriteProfileString( 'windows', 'device', Device );
  StrCopy( Device, 'windows' );
  SendMessage( HWND_BROADCAST, WM_WININICHANGE, 0, longint( @Device));
end;

function Existe(piCodigo:integer;psLista:string):boolean;
var i:integer; sAux:string;
begin
  result := false;
  for i:=1 to Length(psLista) do
  begin
     if not(psLista[i]=',') then
       sAux := sAux + psLista[i];

     if (psLista[i]=',') or (i=Length(psLista)-1) then
     begin
       if piCodigo = strToint(sAux) then
       begin
           result := true;
           break;
       end;
       sAux := '';
     end;
  end;
end;

procedure AdicionaLog(s:string);
var st:string;
begin
   st := FormatDateTime('ddmmyy hhnnss - ',Now) + s;
   WriteLn(fLog,st);
end;

function ValidaDiretorio(sDir:string):boolean;
var i:integer; sAux:string;
begin
  sAux := '';
  for i:=1 to length(sDir) do
  begin
    sAux := sAux + sDir[i];
    if (sDir[i]='\')or(i=length(sDir)) then
     if not DirectoryExists(sAux) then
        mkDir(sAux);
  end;
  Result := DirectoryExists(sAux);
end;


function ValidaAnoAtual(sAno:string):Boolean;
var nAno,nAnoAtual:word;
begin
  try
    sAno := Copy(sAno, length(sAno)-3, length(sAno));
    nAno := strToInt(sAno);
    nAnoAtual := YearOf(dm.GetDate);
    result := (nAno = nAnoAtual);
  except
    result := false;
  end;
end;

function ArquivosExternos(sArq:string):string;
var
  txArqExterno: TextFile;
  sArqExterno, sLinha: string;
begin
  sLinha := '';
  sArqExterno := '';
  AssignFile(txArqExterno, sPathScript + sArq);
  {$I-}
  Reset(txArqExterno);
  {$I+}
  try
    while (not eof(txArqExterno)) do
    begin
      readln(txArqExterno, sLinha);
      sArqExterno := sArqExterno + ' ' + sLinha;
    end;
    result := sArqExterno;
  except
    begin
      MessageDlg('N�o foi encontrado o Scrpt " ' + sArq + ' ".'+ #13#10 +
                 'Favor incluir o Script na pasta c:\compware\script, e' + #13#10 +
                 'abra a tela Script novamente.',mtWarning,[mbOK],0);
      exit;
    end;
  end;
end;

function ValidarMesAno(MesAno:String):Boolean; //AR: Valida��o para todas as Fichas
var i:Integer;
begin
  result := false;
  if MesAno <> '' then
  begin
    i := StrToInt(Copy(MesAno, 1, 2));
    if i > 12 then
    begin
      showMessage('M�s Inv�lido!');
      result := true;
    end;

    i := StrToInt(Copy(MesAno,4,Length(MesAno)-2));
    if i > StrToInt(FormatDateTime('yyyy',date)) then
    begin
      showMessage('Ano n�o pode ser maior que o Ano Atual!');
      result := true;
    end
    else
    if i < 2000 then
    begin
      showMessage('Ano Inv�lido!');
      result := true;
    end;

  end;
end;

function NomeDoComputador:string;
var
   Computer: PChar;
   CSize: Cardinal;
begin
  Computer:=#0;
  CSize:=MAX_COMPUTERNAME_LENGTH + 1;
  try
      GetMem(Computer,CSize);
      if Windows.GetComputerName(Computer,CSize ) then
          result := Computer;
  finally
      FreeMem(Computer);
  end;
end;


function CalculoIdade(data: TDate): integer;
begin
  result := YearsBetween(date,data);
end;

function CalculoNasc(idade: integer): TDate;
var n:integer;
begin
  n := (idade*12)*-1;
  result := IncMonth(date,n);;
end;

function CalculoMeses(data: TDate): integer;
begin
  result := MonthsBetween (date,data);
end;

function CalculoMesesNasc(meses: integer): TDate;
var n:integer;
begin
  n := (meses*30)*-1;
  result := IncDay(date,n);;
end;

end.
