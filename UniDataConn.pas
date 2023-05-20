unit UniDataConn;

interface

uses
  SysUtils, Classes, DB, ADODB, DBAccess, Uni, inLibUser,
  UniProvider, MySQLUniProvider, DASQLMonitor, UniSQLMonitor;

type
  TdmConn = class(TDataModule)

    conUni: TUniConnection;
    mysqlnprvdr1: TMySQLUniProvider;
    UniSQLMonitor1: TUniSQLMonitor;
    procedure connBeforeConnect(Sender: TObject);
    procedure UniSQLMonitor1SQL(Sender: TObject; Text: string;
      Flag: TDATraceFlag);
  private
    { Private declarations }
  public
    procedure ActualizarUserTimeModif(DataSet:TDataSet);
  end;

var
  dmConn: TdmConn;

implementation

uses inLibDir, inLibtb, inLibWin, inMtoPrincipal, inLibGlobalVar;

{$R *.dfm}

procedure TdmConn.connBeforeConnect(Sender: TObject);
var
  sCodePage         ,
  sDatabase         ,
  sHostName         ,
  sPassword         ,
  sPasswordEn       ,
  sPrueba,
  sPort             ,
  sUser: string;
begin
  sDatabase := leCadINI('ConnData', 'Database','factuzam');
  sHostName :=  leCadINI('ConnData', 'HostName','127.0.0.1');
  //sPassword :=  leCadINI('ConnData', 'Password','x');
  sPasswordEn := DecriptAES(leCadINI('ConnData','PasswordEn', 'x'));
  sPort :=  leCadINI('ConnData', 'Puerto','3307');
  sUser :=  leCadINI('ConnData', 'User', 'root');
  ConstruirConexion(conUni, sUser, sPasswordEn, sHostName, sPort, sDatabase);
end;

procedure TdmConn.UniSQLMonitor1SQL(Sender: TObject; Text: string;
  Flag: TDATraceFlag);
begin
  (Self.owner as TfrmOpenApp).cxMemo1.Lines.Add(Text);
end;

procedure TdmConn.ActualizarUserTimeModif(DataSet:TDataSet);
begin
  if (DataSet.FindField('USUARIOMODIF') <> nil) then
    DataSet.FieldbyName('USUARIOMODIF').AsString:= oUser;
  if DataSet.State = dsInsert then
  begin
    if (DataSet.FindField('INSTANTEALTA') <> nil) then
      DataSet.FieldbyName('INSTANTEALTA').AsDateTime := Now;
    if (DataSet.FindField('USUARIOALTA') <> nil) then
      DataSet.FieldbyName('USUARIOALTA').AsString := oUser;
    if (DataSet.FindField('INSTANTEMODIF') <> nil) then
      DataSet.FieldbyName('INSTANTEMODIF').AsDateTime := Now;
  end;
end;

end.
