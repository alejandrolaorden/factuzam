unit inLibDevExp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, cxGridExportLink,
  ExtCtrls, Grids, DBGrids, ComCtrls, Buttons, Mask,
  cxControls, cxContainer, cxEdit, inLibUser,
  cxTextEdit, cxMaskEdit, cxDBEdit, cxNavigator, cxLookAndFeelPainters,
  cxButtons, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxImage, jpeg, cxCalendar, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid,  cxGridCardView, cxSpinEdit,
  cxGridDBCardView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGroupBox, cxLabel, cxRadioGroup, cxListBox, inMtoPrincipal,
  cxCheckBox, cxMemo, cxCurrencyEdit, ExtDlgs, OleServer, AxCtrls,
  OleCtrls, DBOleCtl, cxLookAndFeels, System.Generics.Collections, TypInfo;

  procedure BusqAllGrid(var dbTvGen: TcxGridDBTableView; sDatoBusq:String);
  procedure GrabarGrids(frmMto:TComponent);
  procedure CancelarGrids(frmMto:TComponent);
  procedure SetCaseTcxTextProperty(oControl:TComponent; sCase:TEditCharCase);
  procedure SaveColumnsStateActiveWindow;
  procedure RecoverColumnsStateActiveWindow;
  procedure ResetColumnsStateActiveWindow;
  procedure GetSettingsColumn(cxgrdtvVista: TcxGridDBTableView;
                              sName:String; Sender:TComponent);
  procedure PonerAnchosTitulos(cxgrdtvVista: TcxGridDBTableView;
                               sDes: string;
                               var oPerfilDic: TProfileDicc);
  procedure ExportarExcel(cxGrd:TcxGrid; sNomFile:string);
implementation

uses  inLibWin, inLibtb, inLibDir, inLibGlobalVar;//, DuckTypeUtilsU;

procedure ExportarExcel(cxGrd:TcxGrid; sNomFile:string);
var
  saveDialog : tsavedialog;
begin
  saveDialog := TSaveDialog.Create(nil);
  saveDialog.Title := 'Guardar listado a Excel';
  saveDialog.InitialDir :=  GetSpecialFolderPath(CSIDL_MYDOCUMENTS);
  saveDialog.Filter := 'Archivo Excel|*.xlsx';
  saveDialog.DefaultExt := 'xlsx';
  saveDialog.FilterIndex := 1;
  saveDialog.FileName := sNomFile;
  if ( saveDialog.Execute ) then
    ExportGridToXLSX(saveDialog.FileName, cxGrd);
  saveDialog.Free;
end;

procedure GetSettingsColumn(cxgrdtvVista: TcxGridDBTableView;
                            sName:String; Sender:TComponent);
  var
    i:Integer;
    oColumn : TcxGridDBColumn;
    sVistaName, sColumnName, sValue:string;
begin
  for i:=0 to cxgrdtvVista.ColumnCount-1 do
  begin
    oColumn := cxgrdtvVista.Columns[i];
    sColumnName := oColumn.DataBinding.FieldName;
    sVistaName := cxgrdtvVista.Name;
    if ( BoolToStr(oColumn.Visible) = '-1') then
      sValue := 'True'
    else
      sValue := 'False';
    (Sender as TfrmOpenApp).FdmDataPerfiles.GrabarPerfil('Todos', sName,
                                   sVistaName + '_' + sColumnName + '_Visible',
                                   sValue);
    sValue := IntToStr(oColumn.Index);
    (Sender as TfrmOpenApp).FdmDataPerfiles.GrabarPerfil('Todos', sName,
                                   sVistaName + '_' + sColumnName + '_Index',
                                   sValue );
    if oColumn.Visible then
    begin
      sValue := IntToStr(oColumn.Width);
      (Sender as TfrmOpenApp).FdmDataPerfiles.GrabarPerfil('Todos', sName,
                                     sVistaName + '_' + sColumnName + '_Width',
                                     sValue );
      sValue := oColumn.Caption;
      (Sender as TfrmOpenApp).FdmDataPerfiles.GrabarPerfil('Todos', sName,
                                    sVistaName + '_' + sColumnName + '_Caption',
                                    sValue );
    end;
  end;
end;

procedure PonerAnchosTitulos(cxgrdtvVista: TcxGridDBTableView;
                             sDes: string;
                             var oPerfilDic : TProfileDicc);
  var
    iAux:Integer;
    oColumn : TcxGridDBColumn;
    sValue, sKey:string;
    i:Integer;
    sName, sColumnName, sSubKey, sProperties:string;
begin
    for i:=0 to cxgrdtvVista.ColumnCount - 1 do
    begin
      oColumn := cxgrdtvVista.Columns[i];
      sColumnName := oColumn.DataBinding.FieldName;
      sName := cxgrdtvVista.Name;
      sSubKey := sName + '_' + sColumnName;
      oColumn.Visible :=
               StrToBool(GetPerfilSubKeyValueDef(oPerfilDic,
                                    sSubKey,
                                    'Visible',
                                    'True'));
      if oColumn.Visible then
      begin
        oColumn.Caption :=
               GetPerfilSubKeyValueDef(oPerfilDic,
                                    sSubKey,
                                    'Caption',
                                    oColumn.Caption);
        oColumn.Width :=
               StrToInt(GetPerfilSubKeyValueDef(oPerfilDic,
                                    sSubKey,
                                    'Width',
                                    IntToStr(oColumn.Width)));
        if  ((Pos('EUR', UpperCase(sColumnName)) = 1) or
             (Pos('TOTAL', UpperCase(sColumnName)) = 1) or
             (Pos('PRECIO', UpperCase(sColumnName)) = 1)) then
        begin
          sProperties  := (GetPerfilSubKeyValueDef(oPerfilDic,
                                           sSubKey,
                                           'PropertiesClass',
                                           ''));
          oColumn.PropertiesClassName := 'TcxCurrencyEditProperties';
         end
         else
           if ( (Pos('ES', sColumnName) = 1) or
                (Pos('ACTIVO', sColumnName) = 1)) then
             begin
               sProperties  := (GetPerfilSubKeyValueDef(oPerfilDic,
                                                sSubKey,
                                                'PropertiesClass',
                                                ''));
               oColumn.PropertiesClassName := 'TcxCheckBoxProperties';
               TcxCheckBoxProperties(oColumn.Properties).ValueChecked := 'S';
               TcxCheckBoxProperties(oColumn.Properties).ValueUnChecked := 'N';
             end
             else
             if (Pos('FECHA', sColumnName) = 1) then
             begin
               sProperties  := (GetPerfilSubKeyValueDef(oPerfilDic,
                                                sSubKey,
                                                'PropertiesClass',
                                                ''));
               oColumn.PropertiesClassName := 'TcxDateEditProperties';
               TcxDateEditProperties(oColumn.Properties).Kind := ckDate;
             end;
             if (Pos('PORCEN', sColumnName) = 1) then
             begin
               sProperties  := (GetPerfilSubKeyValueDef(oPerfilDic,
                                                sSubKey,
                                                'PropertiesClass',
                                                ''));
               oColumn.PropertiesClassName := 'TcxSpinEditProperties';
               with TcxSpinEditProperties(oColumn.Properties) do
               begin
                 AssignedValues.MinValue := True;
                 DisplayFormat := '0.00 %';
                 EditFormat := '0.00 %';
                 Increment := 0.100000000000000000;
                 LargeIncrement := 1.000000000000000000;
                 MaxValue := 100.000000000000000000;
                 MinValue := 0;
                 ValueType := vtFloat;
               end;
             end;
             if (Pos('ORDEN', sColumnName) = 1) or
                (Pos('N_', sColumnName) = 1) then
             begin
               sProperties  := (GetPerfilSubKeyValueDef(oPerfilDic,
                                                sSubKey,
                                                'PropertiesClass',
                                                ''));
               oColumn.PropertiesClassName := 'TcxSpinEditProperties';
               with TcxSpinEditProperties(oColumn.Properties) do
               begin
                 AssignedValues.MinValue := True;
                 DisplayFormat := '0';
                 EditFormat := '0';
                 Increment := 1;
                 LargeIncrement := 1;
                 //MaxValue := 100.000000000000000000;
                 MinValue := 0;
                 ValueType := vtInt;
               end;
             end;
               (*Column.PropertiesClass := TcxBlobEditProperties;
                Properties := Column.Properties AS TcxBlobEditProperties;
                Properties.BlobEditKind := bekMemo;*)
      end;
    end;
    (*for i:=0 to cxgrdtvVista.ColumnCount - 1 do
    begin
      oColumn := cxgrdtvVista.Columns[i];
      sColumnName := oColumn.DataBinding.FieldName;
      sName := cxgrdtvVista.Name;
      sSubKey := sName + '_' + sColumnName;
      oColumn.Index :=
             StrToInt(GetPerfilSubKeyValueDef(oPerfilDic,
                                  sSubKey,
                                  'Index',
                                  IntToStr(oColumn.Index)));
    end;*)
end;

procedure BusqAllGrid(var dbTvGen: TcxGridDBTableView; sDatoBusq:String);
var
 i:Integer;
begin
  if sDatoBusq <> '' then
   begin
     with dbTvGen.DataController.Filter do
     begin
       BeginUpdate;
       Options := Options + [fcoCaseInsensitive];
       try
         Root.Clear;
         Root.BoolOperatorKind := fboOr;
         for i := 0 to dbTvGen.ColumnCount -1 do
         begin
           if dbTvGen.Columns[i].DataBinding.Field.DataType in [ftSmallint,
                                                                ftInteger,
                                                                ftWord,
                                                                ftCurrency,
                                                                ftBCD,
                                                                ftLargeint,
                                                                ftFMTBcd,
                                                                ftLongWord,
                                                                ftShortint,
                                                                ftString,
                                                                ftWideString,
                                                                ftMemo,
                                                                ftFmtMemo,
                                                                ftWideMemo] then
           begin
             Root.AddItem((dbTvGen.Columns[i] as TObject) ,
                           foLike,
                           '%' + sDatoBusq +'%',
                           '%' +sDatoBusq +'%' );
           end;

         end;
       finally
         EndUpdate;
       end;
       Active := true;
     end;
   end
   else
     dbTvGen.DataController.Filter.Root.Clear;
end;

procedure CancelarGrids(frmMto:TComponent);
var
  i:Integer;
begin
  for i:= 0 to frmMto.Componentcount - 1 do
  begin
    if frmMto.Components[i].ClassNameis('TcxGridDBTableView') then
    begin
     // ShowMessage((frmMto.Components[i] as TcxGridDBTableView).Name);
    if ( (frmMto.Components[i] as
                     TcxGridDBTableView).DataController.DataSource <> nil ) then
      if ( ((frmMto.Components[i] as
      TcxGridDBTableView).DataController.DataSource.DataSet.State = dsInsert) or
           ((frmMto.Components[i] as
           TcxGridDBTableView).DataController.DataSource.DataSet.State = dsEdit)
         ) then
      begin
        (frmMto.Components[i] as
                   TcxGridDBTableView).DataController.DataSource.DataSet.Cancel;
      end;
    end;
  end;
end;

procedure GrabarGrids(frmMto:TComponent);
var
  i:Integer;
begin
  for i:= 0 to frmMto.Componentcount - 1 do
  begin
    if frmMto.Components[i].ClassNameis('TcxGridDBTableView') then
    begin
     // ShowMessage((frmMto.Components[i] as TcxGridDBTableView).Name);
    if ( (frmMto.Components[i] as
                     TcxGridDBTableView).DataController.DataSource <> nil ) then
      if ( ((frmMto.Components[i] as
      TcxGridDBTableView).DataController.DataSource.DataSet.State = dsInsert) or
           ((frmMto.Components[i] as
           TcxGridDBTableView).DataController.DataSource.DataSet.State = dsEdit)
         ) then
      begin
        (frmMto.Components[i] as
                     TcxGridDBTableView).DataController.DataSource.DataSet.Post;
      end;
    end;
  end;
end;

//procedure AplicarPermisos(frmMto:TComponent);
//var
//  i:Integer;
//begin
//
//  for i:= 0 to frmMto.Componentcount - 1 do
//  begin
//    if frmMto.Components[i].ClassNameis('TcxGridDBTableView') then
//    begin
//     // ShowMessage((frmMto.Components[i] as TcxGridDBTableView).Name);
//    if ( (frmMto.Components[i] as
//                   TcxGridDBTableView).DataController.DataSource <> nil ) then
//      if ( ((frmMto.Components[i] as
//    TcxGridDBTableView).DataController.DataSource.DataSet.State = dsInsert) or
//           ((frmMto.Components[i]
//      as TcxGridDBTableView).DataController.DataSource.DataSet.State = dsEdit)
//         ) then
//      begin
//        ((frmMto.Components[i] as
//TcxGridDBTableView).DataController.DataSource.DataSet as
//                                                    TZquery).ReadOnly := True;
//      end;
//    end;
//  end;
//end;

procedure GrabarConfGrid(frmFormName: TForm;
                         sVistaGridName: String;
                         dsTabla: TDataSource);
var
  i,j     : Integer;

  //qyTabla : TZTable ;
  //spIndex : TADOStoredProc    ;

  //cdIndex : TZTable ;

  sTabla,
  sColumn,
  sTipo,
  sDesc,
  sAncho,
  sUser,
  sMascara: String;
  bPK     : boolean;
  iLong   : Integer;

  bActivos: Boolean;
  bCaps   : Boolean;
  bEdits  : Boolean;

  //FdmDatosg : TdmApi;

  cxgdbVista: TcxGridDBTableView;

begin

  //grabacion de los campos de la bbdd y columnas del grid, máscaras...
  {
  if Assigned(dsTabla.DataSet) then
    if dsTabla.DataSet.ClassName = 'TZTable' then
    begin
      FdmDatosg := TdmApi.Create(Application);

      FdmDatosg.qyDescColumn.Open;

      sTipo := '';
      sTabla := '';
      sUser := oUser;

      qyTabla := (dsTabla.DataSet as TZTable);
      sTabla := qyTabla.tablename;
      if (sTabla <> '') then
      begin
        spIndex := TADOStoredProc.Create(Application);
        cdIndex := TBetterADODataSet.Create(Application);


        //hay problema al asignar la conexi�n
        if EsBBDDPerfil(sTabla) then
          spIndex.Connection := FdmDatosg.qyDescColumn.Connection
        else
          spIndex.Connection := FdmDatosg.qyInq.Connection;

        //Seleccionamos columnas de todos los �ndices.

        spIndex.ProcedureName := 'sp_helpindex';
        spIndex.Parameters.Refresh;
        spIndex.Parameters.ParamByName('@objname').Value := sTabla;

        spIndex.Open;

        cdIndex.Recordset := spIndex.Recordset;

        spIndex.Close;

        spIndex.Destroy;


        for i:= 0 to qyTabla.FieldCount - 1  do
        begin
          iLong := 0;
          sColumn := qyTabla.Fields[i].FieldName;

          if qyTabla.Fields[i].ClassName = 'TWideStringField' then
          begin
            sTipo := 'Texto';
            iLong := qyTabla.Fields[i].Size;
          end
          else
            if qyTabla.Fields[i].ClassName = 'TBooleanField' then
              sTipo := 'Check'
            else
              if (
                   (qyTabla.Fields[i].ClassName = 'TSmallintField') or
                   (qyTabla.Fields[i].ClassName = 'TIntegerField')
                 )
              then
                sTipo := 'Entero'
              else
                if qyTabla.Fields[i].ClassName = 'TMemoField' then
                  sTipo := 'Memo'
                else
                  if qyTabla.Fields[i].ClassName = 'TDateTimeField' then
                    sTipo := 'FechaHora'
                  else
                    sTipo := '';

          cxgdbVista := (EncontrarObjeto(frmFormName,
                                       'TcxGridDBTableView',
                                       sVistaGridName) as TcxGridDBTableView);

  bPK := false; //NO FUNCIONA
  if cdIndex.Locate('index_keys', sColumn, []) then
    if Pos(sTabla + '_PK', cdIndex.FieldByName('index_name').AsString) > 0 then
      bPK := true;




          j := 0;
          while (   ( j <= cxgdbVista.ColumnCount - 1                        )
                and ( cxgdbVista.Columns[j].DataBinding.FieldName <> sColumn )
                ) do
            j := j + 1;

          if (j <= cxgdbVista.ColumnCount - 1) then
          begin
            sDesc := cxgdbVista.Columns[j].Caption;
            sAncho := IntToStr(cxgdbVista.Columns[j].width);
            if cxgdbVista.Columns[j].
                              PropertiesClassName = 'TcxMaskEditProperties' then
            begin
              sTipo := 'Mask';
              sMascara := ((cxgdbVista.Columns[j]).Properties as
                                                TcxMaskEditProperties).EditMask;
            end
            else
              sMascara := '';
          end
          else
            begin
              sDesc := '';
              sAncho := '0';
            end;

          //insertamos info metadatos
          with FdmDatosg do
          begin
            if qyDescColumn.Locate('Usuario;VistaGrid;Form;Columna',
            ArrayOf([sUser,sVistaGridName, frmFormName.Name, sColumn]), []) then
              qyDescColumn.Delete;

            qyDescColumn.Insert;

            qyDescColumnNomTabla.AsString     := sTabla;
            qyDescColumnColumna.AsString      := sColumn;
            qyDescColumnDescripcion.AsString  := sDesc;
            qyDescColumnAncho.AsString        := sAncho;
            qyDescColumnTipo.AsString         := sTipo;
            qyDescColumnUsuario.AsString      := sUser;
            qyDescColumnMascara.AsString      := sMascara;
            qyDescColumnLongitud.AsInteger    := iLong;
            qyDescColumnPK.AsBoolean          := bPK;
            qyDescColumnVistaGrid.AsString    := sVistaGridName;
            qyDescColumnForm.AsString         := frmFormName.Name;

            qyDescColumn.Post;

          end;
        end;
        //CagarIndices(cdIndex, FdmDatosg.tbIndex, sTabla);
      end;

     //Grabaci�n de las caracter�sticas de la ventana y splitters

     //sFormName := frm;
     //bActivos  := chkSoloActivos.Checked;
     //bEdits    := chkEditInList.Checked ;
     //bCaps     := chkCaseM.Checked;

    // sFormName := frmFormName.Name;


 // if ( FdmDatosg.qyParam.Locate('NomUser;Clave', VarArrayOf([oUser, ]), []) )



    end;
    }
end;


 {
AItemList: TcxFilterCriteriaItemList;
...
  <DataController>.Filter.BeginUpdate;
  try
    <DataController>.Filter.Root.Clear;
    <DataController>.Filter.Root.AddItem(colCustNo, foLess, 1000, '1000');
    AItemList := <DataController>.Filter.Root.AddItemList(fboOr);
    AItemList.AddItemcolName, foLike, 'A%', 'A%');
    AItemList.AddItem(colName, foLike, 'Z%', 'Z%');
  finally
    <DataController>.Filter.EndUpdate;
  end;
                                                   );
  finally
    cxGridDBTableView.DataController.Filter.EndUpdate;
  end;
  cxGridDBTableView.DataController.Filter.Active := True;



  //filter complex
  Never mind, I figured it out. It would be :
  with tvCustomers.DataController.Filter.Root do
  begin
    BoolOperatorKind := fboOr;
    with AddItemList(fboOr) do
    begin
      Clear;
      BoolOperatorKind := fboAnd;
      AddItem(tvCustomersPRODUCTID, foEqual, cExpressQuantumGridID,
'ExpressQuantumGrid');
      AddItem(tvCustomersPAYMENTTYPE, foEqual, cCashID, 'Cash');
    end; //End With
  end; //End With .Root

  with tvCustomers.DataController.Filter.Root do
  begin
    BoolOperatorKind := fboOr;
    with AddItemList(fboOr) do
    begin
      Clear;
      BoolOperatorKind := fboAnd;
      AddItem(tvCustomersPRODUCTID, foEqual, cExpressQuantumGridID,
'XpressQuantumGrid');
      AddItem(tvCustomersPAYMENTTYPE, foEqual, cCashID, 'American Express');
    end; //End With
  end; //End With .Root
    }


{
 View.OnMouseMove:
var HT: TcxCustomGridHitTest;
begin
  HT := TcxGridSite(Sender).ViewInfo.GetHitTest(x,y);
  if (HT is TcxGridColumnHeaderHitTest) then begin
    cxGrid.ShowHint := True;
    cxGrid.Hint := TcxGridColumnHeaderHitTest(HT).Column.Caption;
  end else cxGrid.ShowHint := False;
end;
}



procedure SetCaseTcxTextProperty(oControl:TComponent; sCase:TEditCharCase);
var
  i:Integer;
begin

  for i:= 0 to oControl.Componentcount - 1 do
  begin
    if oControl.Components[i].ClassNameis('TcxDBTextEdit') then
      (oControl.Components[i] as TcxDBTextEdit).Properties.CharCase := sCase;

    if oControl.Components[i].ClassNameis('TcxTextEdit') then
      (oControl.Components[i] as TcxTextEdit).Properties.CharCase := sCase;

    if oControl.Components[i].ClassNameIs('TcxDBMaskEdit') then
      (oControl.Components[i] as TcxDBMaskEdit).Properties.CharCase := sCase;

    if oControl.Components[i].ClassNameIs('TcxDBMemo') then
      (oControl.Components[i] as TcxDBMemo).Properties.CharCase := sCase;

    if oControl.Components[i].ClassNameIs('TcxGridDBColumn') then
      if (oControl.Components[i] as TcxGridDBColumn).PropertiesClassName =
                                                  ('TcxTextEditProperties') then
      begin
           ((oControl.Components[i] as TcxGridDBColumn).Properties as
                                       TcxTextEditProperties).CharCase := sCase;
      end
      else
      begin
        //ShowMessage( ((oControl.Components[i] as
        //TcxGridDBColumn).PropertiesClassName));
      end;

  end;
end;

procedure SaveColumnsStateActiveWindow;
var X:integer;
  GridTV:TcxGridDBTableView;
  Name : string;
  Form : Tform;
begin
  Form := screen.ActiveForm;
  Name := screen.activeform.name;
  for x:=0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[x] is tcxGridDBTableView) then
    begin
      GridTV := TcxGridDBTableView(Form.Components[x]);
      GridTV.storetoIniFile(DirIni + inLibGlobalVar.oUser + '_' + Form.caption +
                            '_' + GridTV.name + '.ini' ) ;
    end;
  end;
end;

procedure RecoverColumnsStateActiveWindow;
var X:integer;
  GridTV:TcxGridDBTableView;
  Name : string;
  Form : Tform;
begin
  Form := screen.ActiveForm;
  Name := screen.activeform.name;
  for x:=0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[x] is tcxGridDBTableView) then
    begin
      GridTV := TcxGridDBTableView(Form.Components[x]);
      If FileExists(DirIni + inLibGlobalVar.oUser +'_'+ Form.Caption + '_' +
                    GridTV.name + '.ini') then
        GridTV.RestoreFromIniFile(DirIni + inLibGlobalVar.oUser +
                              '_' +Form.caption + '_' + GridTV.name + '.ini' ) ;
    end;
  end;
end;

procedure ResetColumnsStateActiveWindow;
var X:integer;
  Grid:TcxGridDBTableView;
  Name : string;
  Form : Tform;
begin
  Form := screen.ActiveForm;
  Name := screen.activeform.name;
  for x:=0 to Form.ComponentCount - 1 do
  begin
    if (Form.Components[x] is tcxGridDBTableView) then
    begin
      Grid := TcxGridDBTableView(Form.Components[x]);
      If FileExists(DirIni + inLibGlobalVar.oUser +
                    '_'+ Form.Caption + '_' + Grid.name + '.ini') then
        DeleteFile(DirIni + inLibGlobalVar.oUser + '_' +
                   Form.caption + '_' + Grid.name + '.ini' ) ;
    end;
  end;
end;

end.

