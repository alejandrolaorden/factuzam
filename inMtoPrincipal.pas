{*******************************************************}
{                                                       }
{       FactuZam                                        }
{                                                       }
{       Copyright (C) 2023 Alejandro Laorden Hidalgo    }
{                                                       }
{*******************************************************}

unit inMtoPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus, UniDataConn, UniDataPerfiles, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels,MemDS, DBAccess, Uni,
  cxLookAndFeelPainters, inMtoLogon,
  dxSkinsCore, dxSkinBlue, dxStatusBar, DADump, UniDump, Vcl.StdCtrls,
  DASQLMonitor, UniSQLMonitor, dxSkinsDefaultPainters, Data.DB, cxContainer,
  cxEdit, cxTextEdit, cxMemo;

type
  TfrmOpenApp = class(TForm)
    mnMenuPrin: TMainMenu;
    mnuArchivo: TMenuItem;
    mnArchivoSalir: TMenuItem;
    mnuUtilidades: TMenuItem;
    mnuClientes: TMenuItem;
    mnuVentas: TMenuItem;
    mnuContadores: TMenuItem;
    mnuFacturas: TMenuItem;
    mnuArticulos: TMenuItem;
    mnuPresupuestos: TMenuItem;
    dxstsbr1: TdxStatusBar;
    mnuEmpresas: TMenuItem;
    mnuParmetrosdeEntorno: TMenuItem;
    CopiasdeSeguridad1: TMenuItem;
    mnuEjecutarScript: TMenuItem;
    N1: TMenuItem;
    tmr1: TTimer;
    mnuImpuestoIVA: TMenuItem;
    mnuProveedores: TMenuItem;
    mnuFamilias: TMenuItem;
    mnuGruposdeIVA: TMenuItem;
    undmp1: TUniDump;
    mnuUsuariosGruposPermisos: TMenuItem;
    mnuUsuarios: TMenuItem;
    mnuGrupos: TMenuItem;
    mnuPerfiles: TMenuItem;
    mnuTarifas: TMenuItem;
    mnuGenerador: TMenuItem;
    mnuTablasauxiliares: TMenuItem;
    mnuFormasdepago: TMenuItem;
    cxMemo1: TcxMemo;
    procedure sbAppCreatePanelClass(Sender: TCustomStatusBar;
      var PanelClass: TStatusPanelClass);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mnuClientesClick(Sender: TObject);
    procedure mnArchivoSalirClick(Sender: TObject);
    procedure mnuFacturasClick(Sender: TObject);
    procedure mnuArticulosClick(Sender: TObject);
    procedure mnuContadoresClick(Sender: TObject);
    procedure mnuEmpresasClick(Sender: TObject);
    procedure CopiasdeSeguridad1Click(Sender: TObject);
    procedure CopiaSeguridad;
    procedure mnuEjecutarScriptClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mnuImpuestoIVAClick(Sender: TObject);
    procedure mnuProveedoresClick(Sender: TObject);
    procedure mnuFamiliasClick(Sender: TObject);
    procedure mnuGruposdeIVAClick(Sender: TObject);
    procedure mnuUsuariosClick(Sender: TObject);
    procedure mnuGruposClick(Sender: TObject);
    procedure mnuPerfilesClick(Sender: TObject);
    procedure mnuTarifasClick(Sender: TObject);
    procedure mnuGeneradorClick(Sender: TObject);
    procedure mnuFormasdepagoClick(Sender: TObject);
  private
    FException:boolean;
    procedure AppException(Sender: TObject; E: Exception);
  public
    FDmConn:TdmConn;
    FdmDataPerfiles : TdmPerfiles;
    { Public declarations }
  end;

  procedure ShowMtoPrin(Owner       : TComponent);

var

  frmOpenApp: TfrmOpenApp;

implementation

uses inLibUser,
     inLibWin,
     inLibtb,
     inLibGlobalVar,
     inMtoClientes,
     inMtoEmpresas,
     inMtoIvas,
     inMtoIvasGrupos,
     inMtoProveedores,
     inMtoFamilias,
     inMtoArticulos,
     inMtoFacturas,
     inMtoUsuarios,
     inMtoGrupos,
     inMtoContadores,
     inMtoFormasdePago,
     inMtoTarifas,
     inMtoUsuariosPerfiles,
     inMtoGeneradorProcesos;

{$R *.dfm}

procedure ShowMtoPrin(Owner       : TComponent); overload;
var
  frmOpenApp : TfrmOpenApp;
begin
  try
    frmOpenApp := nil;
    frmOpenApp := TfrmOpenApp.Create(nil);
    //frmOpenApp.FormStyle := fsMDIForm;
    frmOpenApp.Show();
// Application.CreateForm(TfrmOpenApp, frmOpenPrincipal);
    if (frmLogon <> nil) then
    begin
      frmLogon.Hide;
      //FreeAndNil(frmLogon);
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Error al crear la ventana principal. E:' + E.ClassName +
                  ' Mensaje:' + E.Message);
      raise;
      Exit;
    end;
  end;
end;

procedure TfrmOpenApp.sbAppCreatePanelClass(Sender: TCustomStatusBar;
  var PanelClass: TStatusPanelClass);
begin
  //sbApp := GetAppFolder;
end;

procedure TfrmOpenApp.tmr1Timer(Sender: TObject);
var
  ADateStr:string;
  ATimeStr:string;
begin
   ADateStr := DateToStr(Now);
   ATimeStr := FormatDateTime('hh:mm', Now);
   dxstsbr1.Panels.Items[3].Text := '' + ADateStr + ' ' + ATimeStr;
end;

procedure TfrmOpenApp.mnArchivoSalirClick(Sender: TObject);
begin
  Application.Terminate;
end;

//procedure TfrmOpenApp.SetPermisosMenu(Menu: TMainMenu; sUser,
//  sGrupo: String);
//var i, j, k:Integer;
//    AMenu, BMenu: TMenuItem;
//begin
//  for i:= 0 to Menu.Items.Count - 1 do
//  begin
//    Menu.Items[i].Visible := GetPermisoMenu(Menu.Items[i].Name, sUser, sGrupo);
//    AMenu := Menu.Items[i];
//    if AMenu.Count > 0 then
//    for j:= 0 to AMenu.Count - 1 do
//    begin
//      AMenu[j].Visible := GetPermisoMenu(AMenu[j].Name, sUser, sGrupo);
//      BMenu := AMenu[j];
//      if Bmenu.Count > 0 then
//      for k:= 0 to BMenu.Count - 1 do
//      begin
//        BMenu[k].Visible := GetPermisoMenu(BMenu[k].Name, sUser, sGrupo);
//      end;
//    end;
//  end;
//end;

//function TfrmOpenApp.GetPermisoMenu(sMenu, sUser, sGrupo: String): boolean;
//var
//  sPermiso:String;
//begin
//  sPermiso := '1';
//  if zqryPermisoMenu.Locate('Entidad;Menu', VarArrayOf([sUser, sMenu]), [] ) then
//    sPermiso := zqryPermisoMenu.FindField('PermisoAcceso').AsString;
//  if sPermiso <> '0' then
//    if zqryPermisoMenu.Locate('Entidad;Menu', VarArrayOf([sGrupo, sMenu]), [] ) then
//      sPermiso := zqryPermisoMenu.FindField('PermisoAcceso').AsString;
//  if sPermiso = '0' then Result := false
//  else Result := True;
//end;

procedure TfrmOpenApp.FormCreate(Sender: TObject);
var
  sDis : String;
begin
  //oUser := rkUser.Caption;
  FormStyle := fsMDIForm;
  Application.OnException := AppException;
  sDis := '';
  FdmConn := TdmConn.Create(Self);
  FdmConn.conUni.Connect;
  FdmDataPerfiles := TdmPerfiles.Create(Self);
  oPerfiles := FdmDataPerfiles;
  oConn := FdmConn.conUni;
  FdmDataPerfiles.unqryPerfiles.Connection := FdmConn.ConUni;
  FdmDataPerfiles.unstdGrabarPerfil.connection := FdmConn.ConUni;
  dxstsbr1.Panels[1].Text :=  FdmConn.conUni.Server + ':'
                            + IntToStr(fdmconn.conUni.Port)
                            + ' (' + FdmConn.conUni.Database + ')';
  if oRootGroup = 'S' then
    sDis := ' ✪';
  dxstsbr1.Panels[2].Text := oUser + '  (' + oGroup + ')' + sDis;
  frmOpenApp.Caption := oAppName + ' ' + oVersion;
//  zqryPermisoMenu.Connection := FdmConn.ZconnGlent;
//  zqryPermisoMenu.SQL.Text := 'SELECT Entidad, Menu, PermisoAcceso, PermisoListado, PermisoEscritura ' +
//                         '  FROM glt_user_permisos ' +
//                         ' WHERE Entidad = ' + QuotedStr(oUser) +
//                         '    OR Entidad = ' + QuotedStr(oGroup) +
//                         '  ORDER BY Menu, PermisoAcceso';
//  zqryPermisoMenu.Open;
//  SetPermisosMenu(mnMenuPrin, oUser, oGroup);
//  zqryPermisoMenu.Close;
end;

procedure TfrmOpenApp.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Self.Close;
end;

procedure TfrmOpenApp.mnuTarifasClick(Sender: TObject);
begin
  if (mnuTarifas.Visible = True) then
    ShowMtoTarifas(Self);
end;

procedure TfrmOpenApp.AppException(Sender: TObject; E: Exception);
begin
  //('ERROR de clase:' + E.ClassName + ' with Message: ' + E.Message);
  //Exit;
end;

procedure TfrmOpenApp.CopiasdeSeguridad1Click(Sender: TObject);
begin
   CopiaSeguridad;
end;

procedure TfrmOpenApp.CopiaSeguridad;
var
   savedialog : TSaveDialog;
   iButtonSel:Integer;
begin
   savedialog := TSaveDialog.Create(Self);
   saveDialog.Title := 'Guardar copia de seguridad';
   saveDialog.InitialDir := GetCurrentDir;
   savedialog.FileName := 'copiaseguridad'+FormatDateTime('_dd_mm', Now)+'.sql';
   undmp1.Connection := FDmConn.conUni;
   if saveDialog.Execute
   then
   begin
     if FileExists(savedialog.FileName) then
     begin
       iButtonSel := MessageDlg('¿Desea reemplazar el fichero existente?',
                                    mtCustom,[mbYes,mbNo], 0);
       if iButtonSel = mrYes    then
       begin
         undmp1.BackupToFile(savedialog.FileName);
         ShowMessage('La copia se guardó exitosamente');
       end;
     end
     else
     begin
       undmp1.BackupToFile(savedialog.FileName);
       ShowMessage('La copia se guardó exitosamente');
     end;
   end;
   FreeAndNil(savedialog);
end;

procedure TfrmOpenApp.mnuFormasdepagoClick(Sender: TObject);
begin
  if mnuFormasdepago.Visible then
    ShowMtoFormasdePago(Self);
end;

procedure TfrmOpenApp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FdmDataPerfiles.unqryPerfiles.Close;
  FreeAndNil(FdmDataPerfiles);
  FdmConn.conUni.Disconnect;
  FreeAndNil(FdmConn);
  Action := caFree;
  Application.Terminate;
  Application.ProcessMessages;
  ExitProcess(0);
  //Halt;
end;

procedure TfrmOpenApp.mnuArticulosClick(Sender: TObject);
begin
   ShowMtoArticulos(Self);
end;

procedure TfrmOpenApp.FormShow(Sender: TObject);
begin
  //si ocurre una excepción durante la carga, se fuerza el cierre de la ventana
  if FException then
  begin
     PostMessage( Handle, wm_Close, 0, 0 );
     Exit;
  end;
end;

procedure TfrmOpenApp.mnuClientesClick(Sender: TObject);
begin
  if (mnuClientes.Visible) then
    ShowMtoClientes(Self);
end;

procedure TfrmOpenApp.mnuContadoresClick(Sender: TObject);
begin
  if (mnuContadores.Visible) then
    ShowMtoContadores(Self);
end;

procedure TfrmOpenApp.mnuEjecutarScriptClick(Sender: TObject);
var
    openDialog : topendialog;
begin
   opendialog := TOpenDialog.Create(Self);
   opendialog.Title := 'Cargar script';
   openDialog.InitialDir := GetCurrentDir;
   undmp1.Connection := FDmConn.conUni;
   if openDialog.Execute
   then
   begin
     undmp1.RestoreFromFile(opendialog.FileName);
     ShowMessage('El script se ejecutó exitosamente');
   end
   else ShowMessage('El script no fue ejecutado');
   FreeAndNil(opendialog);
end;

procedure TfrmOpenApp.mnuFacturasClick(Sender: TObject);
begin
  if (mnuFacturas.Visible) then
    ShowMtoFacturas(Self);
end;

procedure TfrmOpenApp.mnuFamiliasClick(Sender: TObject);
begin
  if (mnuFamilias.Visible) then
    ShowMtoFamilias(Self);
end;

procedure TfrmOpenApp.mnuGeneradorClick(Sender: TObject);
begin
  if (mnuGenerador.Visible) then
    ShowMtoGeneradorProcesos(Self);
end;

procedure TfrmOpenApp.mnuGruposClick(Sender: TObject);
begin
  if (mnuGrupos.Visible) then
    ShowMtoGrupos(Self);
end;

procedure TfrmOpenApp.mnuGruposdeIVAClick(Sender: TObject);
begin
  if (mnuGruposdeIVA.Visible) then
    ShowMtoIvasGrupos(Self);
end;

procedure TfrmOpenApp.mnuImpuestoIVAClick(Sender: TObject);
begin
  if (mnuImpuestoIVA.Visible) then
    ShowMtoIvas(Self);
end;

procedure TfrmOpenApp.mnuEmpresasClick(Sender: TObject);
begin
    if (mnuEmpresas.Visible) then
      ShowMtoEmpresas(Self);
end;

procedure TfrmOpenApp.mnuPerfilesClick(Sender: TObject);
begin
  if (mnuPerfiles.Visible) then
    ShowMtoUsuariosPerfiles(Self);
end;

procedure TfrmOpenApp.mnuProveedoresClick(Sender: TObject);
begin
  if (mnuProveedores.Visible) then
    ShowMtoProveedores(Self);
end;

procedure TfrmOpenApp.mnuUsuariosClick(Sender: TObject);
begin
  if (mnuUsuarios.Visible) then
    ShowMtoUsuarios(Self);
end;

end.
