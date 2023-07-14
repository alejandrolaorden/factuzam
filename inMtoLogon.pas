{*******************************************************}
{                                                       }
{       FactuZam                                        }
{                                                       }
{       Copyright (C) 2023 Alejandro Laorden Hidalgo    }
{                                                       }
{*******************************************************}

unit inMtoLogon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons,
  UniDataConn, inLibUser, ImgList, Buttons, cxControls, cxContainer,
  Vcl.ExtCtrls, Data.DB, DBAccess, Uni, UniProvider, MySQLUniProvider, DADump,
  UniDump, MemDS, cxGraphics, cxLookAndFeels, Vcl.Menus, cxEdit, cxCheckBox,
  cxTextEdit, dxSkinsCore;

type
  EInvalidUser = Class(Exception);

  TfrmLogon = class(TForm)
    lblUsuario: TLabel;
    lblContrasena: TLabel;
    btnAceptar: TcxButton;
    btnSalir: TcxButton;
    edtUser: TcxTextEdit;
    edtPass: TcxTextEdit;
    edtGrupo: TcxTextEdit;
    btnConf: TcxButton;
    edtHostName: TcxTextEdit;
    lblHostBBDD: TLabel;
    Bevel1: TBevel;
    lblNomBBDD: TLabel;
    edtNomBD: TcxTextEdit;
    lblUserBBDD: TLabel;
    edtUserBD: TcxTextEdit;
    lblPasswordBBDD: TLabel;
    edtPassBD: TcxTextEdit;
    edtPortBD: TcxTextEdit;
    lblPortHost: TLabel;
    btnTest: TcxButton;
    MySQLUniProvider1: TMySQLUniProvider;
    ucConexion: TUniConnection;
    btnSubirScript: TcxButton;
    btnCopiaSeguridad: TcxButton;
    udDump: TUniDump;
    btnRecover: TcxButton;
    chkRememberPassword: TcxCheckBox;
    chkRememberUser: TcxCheckBox;
    tbUsers: TUniTable;
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure edtUserExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rfbAbrirCarpetaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfClick(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure btnSubirScriptClick(Sender: TObject);
    procedure btnCopiaSeguridadClick(Sender: TObject);
    procedure btnRecoverClick(Sender: TObject);
    procedure ucConexionError(Sender: TObject; E: EDAError; var Fail: Boolean);
  private
    procedure leerini;
    procedure escribirini;
    procedure SetIniValues;
    procedure GetIniValues;
    function ExisteUser(sNom:String; f:TUniConnection):Boolean;
    function LoginCorrecto(sNom, sPass:String; f:TUniConnection):Boolean;
    function GetGrupo(sUser: String; conn:TUniConnection;
                                               var EsGrupoAdmin:String): String;
  public
//    function getMd5(const vValue: string): string;
    { Public declarations }
  end;
  procedure ShowMtoLogon(Owner       : TComponent);
  //procedure ShowMtoPrin(Owner        : TComponent);
  //function sMD5(const texto:string):string;
var
  frmLogon: TfrmLogon;


implementation

uses  inLibWin, //md5,
      //inLibDate,
      inLibGlobalVar,
      inlibtb,
      inLibDir,
      inMtoPrincipal;

{$R *.dfm}

procedure ShowMtoLogon(Owner       : TComponent);
var
  FfrmLog : TfrmLogon;
begin
    Application.CreateForm(TfrmLogon, FfrmLog);
end;

procedure TfrmLogon.FormCreate(Sender: TObject);
var
 sFolder, sUser:String;
begin
  Self.Position := poScreenCenter;
  Self.Width := 338;
  edtUser.Text := '';
  leerini;
  GetIniValues;
  if ( (chkRememberUser.Checked = True) and
       (chkRememberPassword.Checked = True)
     ) then
       btnAceptarClick(Self);
end;

procedure TfrmLogon.btnConfClick(Sender: TObject);
begin
  Self.Width := 772;
end;

procedure TfrmLogon.btnCopiaSeguridadClick(Sender: TObject);
var
  savedialog : TSaveDialog;
  s, sPass, sPassEn:String;
  MyText: TStringlist;
begin
  sPassEn := leCadINI('ConnData','PasswordEn', 'x');
  try
    sPass := DecriptAES(sPassEn);
  except
    on E: Exception do
    begin
      ShowMessage('Password erroneo. E:' + E.ClassName +
                  ' Mensaje:' + E.Message);
      raise;
      Exit;
    end;
  end;
  ConstruirConexion(ucConexion, edtUserBD.Text,
                                sPass,
                                edtHostName.Text,
                                edtPortBD.Text,
                                edtNomBD.Text);
  try
    ucConexion.Connect;
  except
    on E: Exception do
    begin
      ShowMessage('Conexión fallida. Revise conexíón BBDD E:' + E.ClassName +
                  ' Mensaje:' + E.Message);
      raise;
      Exit;
    end;
  end;
  savedialog := TSaveDialog.Create(Self);
  saveDialog.Title := 'Guardar copia de seguridad';
  saveDialog.InitialDir := GetUserDeskFolder;
  savedialog.FileName := 'copia_seguridad_' + sPassEn + '_'
                         + FormatDateTime('_dd_mm_yy__hh_mm', Now) + '.sql';
  if (saveDialog.Execute = True)
  then
  begin
    udDump.Backup;
    s:=EncriptAESPass(udDump.SQL.Text, sPass);
    MyText:= TStringlist.create;
    MyText.Text := s;
    saveDialog.InitialDir := GetUserDeskFolder;
    MyText.SaveToFile(saveDialog.FileName);
    MyText.Free;
    ShowMessage('La copia se guardó exitosamente');
  end
  else
    ShowMessage('La copia se canceló');
  FreeAndNil(savedialog);
  ucConexion.Disconnect;
end;

procedure TfrmLogon.btnSubirScriptClick(Sender: TObject);
var
      openDialog : topendialog;
begin
  ConstruirConexion(ucConexion, edtUserBD.Text,
                                EncriptAES(edtPassBD.Text),
                                edtHostName.Text,
                                edtPortBD.Text,
                                edtNomBD.Text);
  try
    ucConexion.Connect;
  except
    on E: Exception do
    begin
      ShowMessage('Conexión fallida. Revise conexíón BBDD E:' + E.ClassName +
                  ' Mensaje:' + E.Message);
      raise;
      Exit;
    end;
  end;
  opendialog := TOpenDialog.Create(Self);
  opendialog.Title := 'Cargar script';
  openDialog.InitialDir := GetUserDeskFolder;
  if openDialog.Execute
  then
  begin
    udDump.RestoreFromFile(opendialog.FileName);
    ShowMessage('El script se ejecutó exitosamente');
  end
  else ShowMessage('El script no fue ejecutado');
  FreeAndNil(opendialog);
  ucConexion.Disconnect;
end;

procedure TfrmLogon.btnTestClick(Sender: TObject);
var
  sPass, sPassEn:String;
begin
  escribirini;
  if edtPassBD.Text = '' then
  begin
    sPassEn := leCadINI('ConnData','PasswordEn', 'x');
    sPass := DecriptAES(sPassEn);
  end
  else
    sPass := edtPassBD.Text;
  ConstruirConexion(ucConexion, edtUserBD.Text,
                                sPass,
                                edtHostName.Text,
                                edtPortBD.Text,
                                edtNomBD.Text);
  try
    ucConexion.Connect;
  except
    on E: Exception do
    begin
      ShowMessage('Error al conectar BBDD. Revise parámetros. E:'
                  + E.ClassName + ' Mensaje:' + E.Message);
      raise;
      Exit;
    end;
  end;
  ucConexion.DisConnect;
  ShowMessage('La conexión se estableció exitosamente. Arranque de nuevo.');
  Exit;
end;

procedure TfrmLogon.btnRecoverClick(Sender: TObject);
var
      openDialog : topendialog;
      MyText : TSTringList;
      s:STring;
begin
  ConstruirConexion(ucConexion, edtUserBD.Text,
                                edtPassBD.Text,
                                edtHostName.Text,
                                edtPortBD.Text,
                                edtNomBD.Text);
  try
    ucConexion.Connect;
  except
    on E: Exception do
    begin
      ShowMessage('Error al conectar BBDD. Revise parámetros. E:'
                  + E.ClassName + ' Mensaje: ' + E.Message );
      raise;
      Exit;
    end;
  end;
  opendialog := TOpenDialog.Create(Self);
  opendialog.Title := 'Cargar copia';
  openDialog.InitialDir := GetUserDeskFolder;
  if openDialog.Execute
  then
  begin
    MyText:= TStringlist.create;
    MyText.LoadFromFile(opendialog.FileName);
    s:= MyText.Text;
    MyText.Free;
    try
      udDump.SQL.Text := DecriptAESPass(s, edtPassBD.Text);
    except
      on E: Exception do
      begin
        ShowMessage('Contraseña incorrecta.E:' + E.ClassName +
                  ' Mensaje:' + E.Message);
        raise;
        Exit;
      end;
    end;
    udDump.Restore;
    ShowMessage('El script se ejecutó exitosamente.');
  end
  else
    ShowMessage('Se canceló la carga del script.');
  FreeAndNil(opendialog);
  ucConexion.Disconnect;
end;

procedure TfrmLogon.btnSalirClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;

function TfrmLogon.GetGrupo(sUser: String; conn:TUniConnection;
                            var EsGrupoAdmin:String): String;
var
  qryGrupo:TUniQuery;
  sResult : String;
begin
  qryGrupo := TUniQuery.Create(Self);
  qryGrupo.SQL.Text :=  'SELECT GRUPO_USUARIO, ESGRUPOADMINISTRADOR_GRUPO ' +
                        '  FROM VI_USUARIOS  ' +
                        ' WHERE USUARIO_USUARIO = ' + QuotedStr(sUser);
  qryGrupo.Connection := conn;
  qryGrupo.Open;
  sResult := qryGrupo.Fields[0].AsString;
  EsGrupoAdmin := qryGrupo.Fields[1].AsString;
  qryGrupo.Close;
  FreeAndNil(qryGrupo);
  Result := sResult;
end;

procedure TfrmLogon.btnAceptarClick(Sender: TObject);
var
  sPassEn, sPass, sGrupoAdmin:String;
begin
  sPassEn := leCadINI('ConnData','PasswordEn', 'x');
  try
    if sPAssEn <> 'x' then
      sPass := DecriptAES(sPassEn)
    else
      ShowMessage('No hay clave válida para esta conexión, ' +
                  ' inserte password en Password BBDD');
  except
    on E: Exception do
    begin
      ShowMessage('Clave no válida. E:' + E.ClassName +
                  ' Mensaje:' + E.Message);
      raise;
      Exit;
    end;
  end;
  if (ucConexion.Connected = false) then
  begin
    ConstruirConexion(ucConexion, edtUserBD.Text,
                                  sPass,
                                  edtHostName.Text,
                                  edtPortBD.Text,
                                  edtNomBD.Text);
    try
      ucConexion.Connect;
    except
      on E: Exception do
      begin
        ShowMessage('Conexión fallida. Usuario, password, ' +
                  'host, puerto o Nombre de la BBDD no es válido. E:' +
                  E.ClassName + ' Mensaje: ' + E.Message);
        raise;
        Exit;
      end;
    end;
  end;
  if not ExisteUser(edtUser.Text, ucConexion) then
  begin
    edtuser.SetFocus;
    edtUser.SelectAll;
    Raise EInvalidUser.Create('El nombre de usuario no existe');
  end
  else
    if not LoginCorrecto(edtuser.text, edtPass.Text, ucConexion) then
    begin
      Raise EInvalidUser.Create('La contraseña no es correcta');
    end
    else
    begin
      tbUsers.Edit;
      tbUsers.FieldByName('ULTIMOLOGIN_USUARIO').AsDateTime := Now;
      tbUsers.Post;
      tbUsers.Close;
      oUser := edtUser.Text;
      oGroup := GetGrupo(edtUser.Text, ucConexion, sGrupoAdmin);
      orootGroup := sGrupoAdmin;
      ModalResult := mrOk;
    end;
end;

function TfrmLogon.ExisteUser(sNom: String; f:TUniConnection): Boolean;
begin
  tbUsers.Open;
  tbUsers.First;
  Result := tbUsers.Locate('USUARIO_USUARIO', sNom, []);
end;

function TfrmLogon.LoginCorrecto(sNom, sPass: String;
                                 f:TUniConnection): Boolean;
var
  sPassEn:String;
  sPassBD:String;
begin
  if sPass <> '' then
  begin
    sPassEn := sMd5(sPass);
  end;
  tbUsers.Locate('USUARIO_USUARIO', sNom, []);
  sPAssBD := tbUsers.FindField('PASSWORD_USUARIO').AsString;
  if sPassEn = sPassBD then
    Result := True
  else
    Result := False;
end;

procedure TfrmLogon.edtUserExit(Sender: TObject);
var
  sFolder:String;
begin

end;

procedure TfrmLogon.escribirini;
begin
  esCadIni ('ConnData', 'HostName',   edtHostName.Text);
  esCadIni ('ConnData', 'Database',   edtNomBD.Text);
  esCadIni ('ConnData', 'User',       edtUserBD.Text);
  esCadIni ('ConnData', 'Puerto',     edtPortBD.Text);
  if (edtPassBD.Text <> '') then
    esCadIni ('ConnData', 'PasswordEn',  EncriptAES(edtPassBD.Text));
end;

procedure tfrmLogon.leerini;
begin
  edtHostName.Text  := leCadIni ('ConnData', 'HostName',    '127.0.0.1');
  edtNomBD.Text     := leCadIni ('ConnData', 'Database',    'factuzam');
  edtUserBD.Text    := leCadIni ('ConnData', 'User',        'root');
  edtPortBD.Text    := leCadIni ('ConnData', 'Puerto',      '3306');
end;

procedure TfrmLogon.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ( ((ORD(key) = VK_F12) or (ord(key) = VK_RETURN)) and
       (btnAceptar.Enabled = true) ) then
    btnAceptar.Click
  else
    if ORD(key) = VK_ESCAPE then
      btnSalir.click;
end;

procedure TfrmLogon.rfbAbrirCarpetaClick(Sender: TObject);
var
  sSelFolder:String;
begin
end;

procedure TfrmLogon.SetIniValues;
begin
  if chkRememberUser.Checked = True then
  begin
    esCadINIDir('UserInfo', 'RememberUser', 'Yes', GetUserFolder);
    esCadINIDir('UserInfo', 'NomUser', edtUser.Text, GetUserFolder);
  end;
  if chkRememberPassword.Checked = True then
  begin
    esCadINIDir('UserInfo', 'RememberPassword', 'Yes', GetUserFolder);
    esCadINIDir('UserInfo', 'PasswordEn',
                                       EncriptAES(edtPass.Text), GetUserFolder);
  end;
end;

procedure TfrmLogon.ucConexionError(Sender: TObject; E: EDAError;
  var Fail: Boolean);
begin
  Fail := False;
end;

procedure TfrmLogon.GetIniValues;
var
  sRememberUser,
  sRememberPassword,
  sNomUser,
  sPasswordEn : String;
begin
  sRememberUser := leCadINIDir('UserInfo',
                               'RememberUser',
                               'No',
                               GetUserFolder);
  sRememberPassword := leCadINIDir('UserInfo',
                                   'RememberPassword',
                                   'No',
                                   GetUserFolder);
  if sRememberUser <> 'No' then
  begin
    chkRememberUser.Checked := True;
    edtUser.Text := leCadINIDir('UserInfo',
                                'NomUser',
                                '',
                                GetUserFolder);
  end;
  if sRememberPassword <> 'No' then
  begin
    chkRememberPassword.Checked := True;
    edtPass.Text := DecriptAES(leCadINIDir('UserInfo',
                                           'PasswordEn',
                                           '',
                                           GetUserFolder));
  end;
end;

procedure TfrmLogon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SetIniValues;
  Action := caFree;
end;

end.

