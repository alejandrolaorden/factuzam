unit inMtoGen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, UniDataGen,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inMtoFrmBase, dxSkinsCore,
  dxSkinsDefaultPainters, cxPC, dxDockControl, cxControls, dxDockPanel,
  Vcl.ExtCtrls, cxClasses, cxLocalization, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxNavigator, cxDBNavigator, Vcl.StdCtrls, Vcl.Buttons,
  cxContainer, cxEdit, cxLabel, dxBarBuiltInMenu, Vcl.Menus, cxButtons,
  dxSkinsLookAndFeelPainter, cxStyles, dxSkinscxPCPainter, inMtoPrincipal,
  dxSkinsForm, cxCustomData, cxFilter, cxData, cxDataStorage, dxDateRanges,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxmdaset, cxTextEdit, dxBevel,
  inLibDevExp, cxGridExportLink, inLibUser, System.UITypes, UniDataPerfiles,
  Uni, inLibDir, inLibtb, Data.DBCommon, inLibWin, UniDataConn, cxBlobEdit,
  dxCore, dxScrollbarAnnotations, cxRadioGroup;
type
  THackWinControl = class(TWinControl);
  TfrmMtoGen = class(TfrmBase)
    pButtonPage: TPanel;
    pButtonRightBar: TPanel;
    pButtonBDStat: TPanel;
    pButtonGen: TPanel;
    pnTableName: TPanel;
    Panel4: TPanel;
    lblTablaOrigen: TcxLabel;
    lblEditMode: TcxLabel;
    pcPantalla: TcxPageControl;
    tsLista: TcxTabSheet;
    tsFicha: TcxTabSheet;
    btnGrabar: TcxButton;
    btnCancelar: TcxButton;
    btnSalir: TcxButton;
    cxGrdDBTabPrin: TcxGridDBTableView;
    cxGrdLvPrin: TcxGridLevel;
    cxgrdPrincipal: TcxGrid;
    dsTablaG: TDataSource;
    pnlTopPage: TPanel;
    pnlTopGrid: TPanel;
    bvTop: TdxBevel;
    sbExportExcel: TSpeedButton;
    edtBusqGlobal: TcxTextEdit;
    nvNavegador: TcxDBNavigator;
    lblTextoaBuscar: TcxLabel;
    tsPerfil: TcxTabSheet;
    pnlPerfilTop: TPanel;
    edtPerfilBusq: TcxTextEdit;
    lblTextoaBuscarPerfil: TcxLabel;
    pnlPerfilDetail: TPanel;
    cxgrdPerfil: TcxGrid;
    tvPerfil: TcxGridDBTableView;
    cxgrdlvlPerfil: TcxGridLevel;
    btnCargarColumnas: TcxButton;
    btnCargarCaptions: TcxButton;
    btnCargarVblesGlob: TcxButton;
    tvPerfilUSUARIO_GRUPO_PERFILES: TcxGridDBColumn;
    tvPerfilKEY_PERFILES: TcxGridDBColumn;
    tvPerfilSUBKEY_PERFILES: TcxGridDBColumn;
    tvPerfilVALUE_PERFILES: TcxGridDBColumn;
    tvPerfilVALUE_TEXT_PERFILES: TcxGridDBColumn;
    tvPerfilTYPE_BLOB_PERFILES: TcxGridDBColumn;
    tvPerfilVALUE_BLOB_PERFILES: TcxGridDBColumn;
    rbBBDD: TcxRadioButton;
    rbGrid: TcxRadioButton;
    cxstylrpstry: TcxStyleRepository;
    cxstyl: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cxGrdDBTabPrinDblClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dsTablaGStateChange(Sender: TObject);
    procedure sbExportExcelClick(Sender: TObject);
    procedure edtBusqGlobalKeyPress(Sender: TObject; var Key: Char);
    procedure btnCargarColumnasClick(Sender: TObject);
    procedure btnCargarCaptionsClick(Sender: TObject);
    procedure btnCargarVblesGlobClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbGridClick(Sender: TObject);
    procedure rbBBDDClick(Sender: TObject);
    procedure edtPerfilBusqKeyPress(Sender: TObject; var Key: Char);
    procedure pcPantallaPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
  private
    procedure CargarPerfilesComunes;
  public
    tdmDataModule:TdmBase;
    oPerfilDic : TProfileDicc;
    sUso:string;
    procedure ProcesarPerfiles;
    procedure AplicarEtiquetas;     virtual;
    procedure CrearTablaPrincipal;  virtual; abstract;
    procedure AbrirPerfiles(bTabVisible:Boolean);
    procedure CargarPerfilesParticulares; virtual;
  end;
var
  frmMtoGen: TfrmMtoGen;
  sConsultaO:string;
  sConsultaP:string;

implementation

{$R *.dfm}

uses inMtoGenSearch, inLibGlobalVar;

procedure TfrmMtoGen.AbrirPerfiles(bTabVisible:Boolean);
begin
  if (bTabVisible = true) then
  begin
    if (tdmDataModule = nil) then //es caja de busqueda
    begin
      with (Self as TfrmMtoSearch).unqryPerfiles do
      begin
        Connection := oConn;
        if ((Pos('Nothing', SQL.Text) > 0) or
            (Trim(SQL.Text) = '')
           ) then
        begin
          SQL.Text :='SELECT * '+
                     '  FROM fza_usuarios_perfiles ' +
                     ' WHERE (KEY_PERFILES = :NameFormModule)';
          ParamByName('NameFormModule').AsString := Self.Name;
        end;
        if (Active = false) then
          Open;
      end;
    end
    else //es modulo mantenimiento
      begin
        with (tdmDataModule as TdmBase).unqryPerfiles do
        begin
          tvPerfil.DataController.DataSource :=
                                          (tdmDataModule as TdmBase).dsPerfiles;
          Connection := oConn;
          if ( (Pos('Nothing', SQL.Text) > 0) or
               (Trim(SQL.Text) = '') or
               (Pos(':NameDataModule', SQL.Text ) > 0)
             ) then
          begin
            SQL.Text :=   'SELECT * '+
                          '  FROM fza_usuarios_perfiles ' +
                          ' WHERE (KEY_PERFILES = :NameDataModule) ' +
                          '    OR (KEY_PERFILES = :NameFormModule)';
            ParamByName('NameDataModule').AsString := Self.Name;
            ParamByName('NameFormModule').AsString := tdmDataModule.Name;
          end;
          if (Active = false) then
            Open;
        end;
      end;
  end;
end;

procedure TfrmMtoGen.AplicarEtiquetas;
var
  i:integer;
  cxGrid: TcxGridDBTableView;
begin
  if (DsTablaG.Dataset <> nil) then
    lblTablaOrigen.Caption :=
                GetTableNameFromQuery((dsTablaG.Dataset as TUNIQuery).SQL.Text);
//  if (StrToBool(GetPerfilValueDef(oPerfilDic, 'oCreateItems', 'False'))) then
//  begin
//   for i:= 0 to Self.Componentcount - 1 do
//   begin
//     if Self.Components[i].ClassNameis('TcxGridDBTableView') then
//     begin
//       if ((GetPerfilValueDef(oPerfilDic, 'oApplyWidth', 'False')) = 'True') then
//       begin
//         cxGrid := (Self.Components[i] as TcxGridDBTableView);
//         cxGrid.ClearItems;
//         cxGrid.DataController.CreateAllItems;
//         cxGrid.ApplyBestFit();
//       end;
//     end;
//   end;
//  end;
  if ((GetPerfilValueDef(oPerfilDic, 'oApplyWidth', 'False')) = 'True') then
  begin
    for i:= 0 to Self.Componentcount - 1 do
    begin
      if (Self.Components[i].ClassNameis('TcxGridDBTableView')) then
      begin
        cxGrid := (Self.Components[i] as TcxGridDBTableView);
        if ((GetPerfilValueDef(oPerfilDic, cxGrid.Name + '__oApplyWidth',
                               'False')) = 'True') then
        begin
          PonerAnchosTitulos(  cxGrid,
                             Self.Name,
                             oPerfilDic);
          cxGrid.ApplyBestFit();
        end;
      end;
    end;
  end;
  if ((GetPerfilValueDef(oPerfilDic, 'oApplySkin', 'False')) = 'True') then
    SetSkin(GetPerfilValue(oPerfilDic, 'oSkin'));
  Self.Caption := GetPerfilValueDef(oPerfilDic, 'Caption', Self.Caption);
  if ((GetPerfilValueDef(oPerfilDic,
                         'oRenameComponents', 'False')) = 'True') then
    SetLabelForm(Self, oPerfilDic);
  tsPerfil.TabVisible :=
              StrToBool(GetPerfilValueDef(oPerfilDic, 'MostrarPerfil', 'True'));
  if (tsPerfil.TabVisible = true) then
    AbrirPerfiles(tsPerfil.TabVisible);
end;

procedure TfrmMtoGen.btnCargarCaptionsClick(Sender: TObject);
begin
  inherited;
  CargarCaptions(Self, Self.Owner);
end;

procedure TfrmMtoGen.btnCargarColumnasClick(Sender: TObject);
var
  i:Integer;
  cxGrid : TcxGridDBTableView;
begin
  inherited;
  for i:= 0 to Self.Componentcount - 1 do
  begin
      if (Self.Components[i].ClassNameis('TcxGridDBTableView')) then
    begin
        cxGrid := (Self.Components[i] as TcxGridDBTableView);
        GetSettingsColumn(cxGrid, Self.Name, Self.Owner);
    end;
  end;
end;

procedure TfrmMtoGen.btnCargarVblesGlobClick(Sender: TObject);
begin
  inherited;
  CargarPerfilesComunes;
  CargarPerfilesParticulares;
end;

procedure TfrmMtoGen.btnGrabarClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  GrabarGrids(Screen.ActiveForm);
  if (Self.Owner as TfrmOpenApp).FDmConn.conUni.InTransaction = True then
    (Self.Owner as TfrmOpenApp).FDmConn.conUni.Commit;
  Screen.Cursor := crDefault;
end;

procedure TfrmMtoGen.CargarPerfilesComunes;
begin
  with (Self.Owner as TfrmOpenApp).FdmDataPerfiles do
  begin
    GrabarPerfil('Todos', Self.Name, 'oSkin', 'cxPCPainter' );
    GrabarPerfil('Todos', Self.Name, 'oRenameComponents', 'False' );
    GrabarPerfil('Todos', Self.Name, 'oCreateItems', 'False' );
    GrabarPerfil('Todos', Self.Name, 'oBusqGlobal', 'Grid' );
    GrabarPerfil('Todos', Self.Name, 'oApplySkin', 'False' );
    GrabarPerfil('Todos', Self.Name, 'oApplyWidth', 'True' );
  end;
end;

procedure TfrmMtoGen.CargarPerfilesParticulares;
begin
  if (tdmDataModule <> nil) then
    GrabarPerfilDatam(tdmDataModule, Self.Owner);
end;

procedure TfrmMtoGen.cxGrdDBTabPrinDblClick(Sender: TObject);
begin
  inherited;
  if (tsFicha.TabVisible = True) then
    pcPantalla.ActivePage := tsFicha;
end;

procedure TfrmMtoGen.dsTablaGStateChange(Sender: TObject);
begin
  inherited;
  if ( dsTablaG.Dataset <> nil ) then
  begin
    if ( dsTablaG.DataSet.State = dsInsert ) then
    begin
      lblEditMode.Caption := 'Insertando';
    end;
    if ( dsTablaG.DataSet.State = dsEdit ) then
    begin
      lblEditMode.Caption := 'Editando';
    end;
    if ( dsTablaG.DataSet.State = dsBrowse ) then
    begin
      lblEditMode.Caption := 'Navegando';
    end;
      if ( dsTablaG.DataSet.State = dsInactive ) then
    begin
      lblEditMode.Caption := 'Inactivo';
    end;
  end;
end;

procedure TfrmMtoGen.edtBusqGlobalKeyPress(Sender: TObject; var Key: Char);
var
  sBusq:string;
begin
  inherited;
  if Ord(Key) = VK_RETURN then
  begin
    if (rbBBDD.Checked = true) then
      sBusq := 'Database'
    else
      sBusq := 'Grid';
    if ( sBusq = 'Grid') then
    begin
      //filtro del grid de Developer Express
      BusqAllGrid(cxGrdDBTabPrin,
                  edtBusqGlobal.Text);
    end
    else
      begin
        //filtro desde la consulta sql, a�adiendo las opc de b�squeda al sql
        BusqDataBase( (dsTablaG.DataSet  as TUniQuery),
                       edtBusqGlobal.Text,
                       sConsultaO);
      end;
  end;
  if ((pcPantalla.ActivePage <> tsLista) and (tsLista.TabVisible = true)) then
    pcPantalla.ActivePage := tsLista;
end;

procedure TfrmMtoGen.edtPerfilBusqKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Ord(Key) = VK_RETURN) then
  begin
    BusqDataBase((tdmdatamodule.unqryPerfiles as TUniQuery),
                 edtPerfilBusq.Text,
                 sConsultaP);
  end;
end;

procedure TfrmMtoGen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  sConsultaO := '';
  sConsultaP := '';
//  oPerfilDic.Clear;
//  oPerfilDic.Free;
  Action := caFree;
end;

procedure TfrmMtoGen.FormCreate(Sender: TObject);
var
  sModoBusq:String;
begin
  inherited;
  Self.Position  := poScreenCenter;
  ProcesarPerfiles;
  sModoBusq := GetPerfilValueDef(oPerfilDic, 'oBusqGlobal', 'Database');
  if sModoBusq = 'DataBase' then
  begin
    rbBBDD.Checked := true;
    rbGrid.Checked := false;
  end
  else
  begin
    rbBBDD.Checked := false;
    rbGrid.Checked := true;
  end;
end;

procedure TfrmMtoGen.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AContainer: TcxCustomEdit;
begin
  inherited;
  if Key = VK_ESCAPE then
  begin
    if ( (dsTablaG.State = dsInsert) or (dsTablaG.State = dsEdit) ) then
      dsTablaG.DataSet.Cancel
    else
      if ((pcPantalla.ActivePage = tsFicha)) then
        pcPantalla.ActivePage := tsLista
      else
        if ( (dsTablaG.State = dsBrowse) and
             (pcPantalla.ActivePage = tsLista)
           ) then
          if ( Application.MessageBox( '¿Desea abandonar la ficha?',
                                   'Mensaje Advertencia',
                                   MB_YESNO ) = ID_YES ) then
         Close;
  end;
  if Key = VK_PRIOR then
     nvNavegador.Buttons.Prior.Click;
  if Key = VK_NEXT then
     nvNavegador.Buttons.Next.Click;
  if Key = VK_INSERT then
    dsTablaG.DataSet.Insert;
  if key = VK_HOME then
    dsTablaG.DataSet.First;
  if key = VK_END then
    dsTablaG.DataSet.Last;
  if ((Key = VK_RETURN) and (Shift <> [ssCtrl])) then
    if Assigned(Parent) then
      THackWinControl(Parent).SelectNext(Self, True, False)
    else
      if not (Screen.ActiveControl.Name = 'edtBusqGlobal') then
        if (Screen.ActiveControl.Parent <> nil) and
           (Screen.ActiveControl.Parent is TcxCustomEdit) then
        begin
          AContainer :=  TcxCustomEdit(Screen.ActiveControl.Parent);
          if not(AContainer.Parent is TcxGridSite) then
            Perform(CM_DIALOGKEY, VK_TAB, 0);
        end
        else
          Perform(CM_DIALOGKEY, VK_TAB, 0);
end;

procedure TfrmMtoGen.FormShow(Sender: TObject);
begin
  inherited;
  if (tsLista.TabVisible = true) then
    pcPantalla.ActivePage := tsLista;
  if (sUso <> 'Busq') then
    Self.WindowState := wsMaximized;
end;

procedure TfrmMtoGen.pcPantallaPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if ( (not NewPage.Visible) and
       (not NewPage.Enabled)
     ) then
  begin
    if (NewPage.Name = 'tsFicha') then
      AllowChange := False;
  end;
end;

procedure TfrmMtoGen.ProcesarPerfiles;
begin
  inLibUser.GetFormUserProfile(oPerfilDic, Self.Name, Self.Owner);
  CrearTablaPrincipal;
  AplicarEtiquetas;
end;

procedure TfrmMtoGen.rbBBDDClick(Sender: TObject);
begin
  inherited;
  if (rbBBDD.Checked = true) then
    rbGrid.Checked := false
  else
    rbGrid.Checked := true;
end;

procedure TfrmMtoGen.rbGridClick(Sender: TObject);
begin
  inherited;
  if rbGrid.Checked = true then
    rbBBDD.Checked := false
  else
    rbBBDD.Checked := true;
end;

procedure TfrmMtoGen.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  CancelarGrids(Screen.ActiveForm);
  Screen.Cursor := crDefault;
end;

procedure TfrmMtoGen.sbExportExcelClick(Sender: TObject);
var
  saveDialog : tsavedialog;
begin
  saveDialog := TSaveDialog.Create(self);
  saveDialog.Title := 'Guardar listado a Excel';
  saveDialog.InitialDir :=  GetSpecialFolderPath(CSIDL_MYDOCUMENTS);
  saveDialog.Filter := 'Archivo Excel|*.xlsx';
  saveDialog.DefaultExt := 'xlsx';
  saveDialog.FilterIndex := 1;
  if ( saveDialog.Execute ) then
    ExportGridToXLSX(saveDialog.FileName, cxGrdPrincipal);
  saveDialog.Free;
end;

procedure TfrmMtoGen.btnSalirClick(Sender: TObject);
begin
  inherited;
  if (dsTablaG.DataSet <> nil) then
    if ( dsTablaG.DataSet.State = dsInsert ) or
       ( dsTablaG.DataSet.State = dsEdit ) then
    begin
       if ( Application.MessageBox( '¿Desea cancelar la entrada de datos?',
                                   'Mensaje Advertencia',
                                   MB_YESNO ) = ID_YES ) then
         Close;
    end
    else
      Close;
end;

end.
