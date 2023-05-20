
unit inLibWin;

interface

uses
   inMtoPrincipal, Classes, Windows, Forms, sysutils, jpeg, idhttp,
   Vcl.Dialogs, ShellAPI, System.Rtti, System.TypInfo, System.Variants,
   System.StrUtils, inLibUser, cxLabel, cxPC, cxDBEdit, cxButtons, Uni,
   system.math,IdGlobal, IdHash, IdHashMessageDigest;

  function IsOpenMDI(sName: String; Owner : TComponent):boolean; overload;
  function IsOpenMDI(sName: String; Owner : TComponent;
                                        var Found:TComponent):boolean; overload;
  function FindMDIChildOpen(const AParentForm: TForm;
                            const AMDIChildClass: TFormClass;
                            const AMDICaption : string): TForm;
  function EncontrarObjeto(oControl:TComponent;
                           sBusquedaTipo:String):TObject; overload;
  function EncontrarObjeto(oControl:TComponent;
                           sBusquedaTipo:String;
                           sNameObject:String):TObject; overload;
  procedure CargarCaptions(oControl:TComponent; Sender:TComponent);
  procedure SetLabelForm(oControl:TComponent;
                         var oPerfilDic : TProfileDicc );
  procedure GrabarPerfilDatam(dmmModule:TDataModule; Sender:TComponent);
  function GetVolumeID(DriveChar: Char): String;
  function FindFormOwner(oSender: TObject):TComponent;
  procedure SetDateTime(Year, Month, Day, Hour, Minu, Sec, MSec: Word);
  procedure GetImageURL(sUrl: String;
                        var memStream: TMemoryStream);
  procedure ExecuteAndWait(const aCommando: string);
  procedure LoadSQLFromProfile(dmmModule:TDataModule;
                               var oPerfilDic:TProfileDicc);
  function sMD5(const texto:string):string;
  (*function CreateAndOpenClientDataset(AOwner: TComponent;
  AConnection: TConnection; ACommand: string): TClientDataSet;*)

implementation

(* function CreateAndOpenClientDataset(AOwner: TComponent;
  AConnection: TConnection; ACommand: string): TClientDataSet;
var
  MyQuery: TMyQuery;
  Dsp: TDataSetProvider;
begin
  Result := TClientDataSet.Create(AOwner);
  try
    MyQuery := TMyQuery.Create(Result);
    MyQuery.Connection := AConnection;
    MyQuery.SQL.Text := ACommand;

    Dsp := TDataSetProvider.Create(Result);
    Dsp.DataSet := MyQuery;

    Result.SetProvider(Dsp);
    Result.Open;
  except
    Result.Free;
    raise;
  end;
end; *)

function sMD5(const texto:string):string;
var
  idmd5 : TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    result := idmd5.HashStringAsHex(UTF8Encode(texto));
  finally
    idmd5.Free;
  end;
end;

procedure LoadSQLFromProfile(dmmModule:TDataModule;
                             var oPerfilDic:TProfileDicc);
var
  oControl:TComponent;
  i:Integer;
begin
  oControl := dmmModule as TComponent;
  for i := 0 to oControl.ComponentCount - 1 do
    if ( Pos('unqry', oControl.Components[i].Name) > 0  ) then
      (oControl.Components[i] as TUniQuery).SQL.Text :=
           GetPerfilValueTextDef(oPerfilDic,
                                 (oControl.Components[i] as TUniQuery).Name,
                                 (oControl.Components[i] as TUniQuery).SQL.Text)
    else
      if ( Pos('unstrdprc', oControl.Components[i].Name) > 0 )  then
        (oControl.Components[i] as TUniStoredProc).StoredProcName :=
                     GetPerfilValueTextDef(oPerfilDic,
                     (oControl.Components[i] as TUniStoredProc).Name,
                     (oControl.Components[i] as TUniStoredProc).StoredProcName);
end;

procedure ExecuteAndWait(const aCommando: string);
var
  tmpStartupInfo: TStartupInfo;
  tmpProcessInformation: TProcessInformation;
  tmpProgram: String;
begin
  tmpProgram := trim(aCommando);
  FillChar(tmpStartupInfo, SizeOf(tmpStartupInfo), 0);
  with tmpStartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    wShowWindow := SW_HIDE;
  end;

  if CreateProcess(nil, pchar(tmpProgram), nil, nil, true, CREATE_NO_WINDOW,
    nil, nil, tmpStartupInfo, tmpProcessInformation) then
  begin
    // loop every 10 ms
    while WaitForSingleObject(tmpProcessInformation.hProcess, 10) > 0 do
    begin
      Application.ProcessMessages;
    end;
    CloseHandle(tmpProcessInformation.hProcess);
    CloseHandle(tmpProcessInformation.hThread);
  end
  else
  begin
    RaiseLastOSError;
  end;
end;

procedure SetDateTime(Year, Month, Day, Hour, Minu, Sec, MSec: Word);
var
  NewDateTime: TSystemTime;
begin
  FillChar(NewDateTime, SizeOf(NewDateTime), #0);

  NewDateTime.wYear := Year;
  NewDateTime.wMonth := Month;
  NewDateTime.wDay := Day;
  NewDateTime.wHour := Hour;
  NewDateTime.wMinute := Minu;
  NewDateTime.wSecond := Sec;
  NewDateTime.wMilliseconds := MSec;
  SetLocalTime(NewDateTime);
end;

function GetVolumeID(DriveChar: Char): String;
var
   MaxFileNameLength, VolFlags, SerNum: DWord;
begin
   if GetVolumeInformation(PChar(DriveChar + ':\'), nil, 0,
      @SerNum, MaxFileNameLength, VolFlags, nil, 0)
   then
   begin
     Result := IntToHex(SerNum,8);
     Insert('-', Result, 5);
   end
   else
       Result := '';
end;

function FindFormOwner(oSender: TObject):TComponent;
begin
  while not oSender.InheritsFrom(TForm) do
    oSender := TObject((oSender as TComponent).Owner);
  if Assigned(oSender) then
    Result := (oSender as Tcomponent);
end;

function IsOpenMDI(sName: String; Owner : TComponent):boolean; overload;
var
  i       : Integer;
  bfound  : boolean;
begin
  bfound := false;
    for i:= 0 to (Owner as TfrmOpenApp).MDIChildCount - 1 do
      if (Owner as TfrmOpenApp).MDIChildren[i].Name = sName then
      begin
        bFound := true;
        (Owner as TfrmOpenApp).MDIChildren[i].BringToFront  ;
      end;
  Result := bFound;
end;

function IsOpenMDI(sName: String; Owner : TComponent;
                                        var Found:TComponent):boolean; overload;
var
  i       : Integer;
  bfound  : boolean;
begin
  bfound := false;
  i := 0;
  while (not(bfound) and (i < (Owner as TfrmOpenApp).MDIChildCount - 1))  do
  begin
    if (Owner as TfrmOpenApp).MDIChildren[i].Name = sName then
    begin
      bFound := true;
      (Owner as TfrmOpenApp).MDIChildren[i].BringToFront  ;
      Found := (Owner as TfrmOpenApp).MDIChildren[i];
    end;
    i := i + 1;
  end;
  Result := bFound;
end;

function FindMDIChildOpen(const AParentForm: TForm;
                          const AMDIChildClass: TFormClass;
                          const AMDICaption : string): TForm;
var
  i: Integer;
  Child: TForm;
  bfound:boolean;
begin
  Result := nil;
  bfound := false;
  i := Pred(AParentForm.MDIChildCount);
  if (i >  0) then
    while (i >= 0) and not(bfound) do
    begin
      Child := AParentForm.MDIChildren[i];
      if Child.InheritsFrom(AMDIChildClass) and
         (Child.Name = AMDICaption) then
      begin
        Result := Child;
        bfound := true;
      end;
      i := i - 1;
    end
    else
      Result := nil;
end;

function EncontrarObjeto(oControl:TComponent; sBusquedaTipo:String):TObject; overload;
var
  i:Integer;
begin
  for i := 0 to oControl.ComponentCount - 1 do
    if oControl.Components[i].ClassName = sBusquedaTipo then
      Result := oControl.Components[i];
end;

procedure GrabarPerfilDatam(dmmModule:TDataModule; Sender:TComponent);
var
  oControl:TComponent;
  i:Integer;
begin
  oControl := dmmModule as TComponent;
  for i := 0 to oControl.ComponentCount - 1 do
    if ( Pos('unqry', oControl.Components[i].Name) > 0  ) then
      (Sender as TfrmOpenApp).FdmDataPerfiles.GrabarPerfil('Todos', dmmModule.Name,
                                  (oControl.Components[i] as TUniQuery).Name,
                                  'SQL',
                                  (oControl.Components[i] as TUniQuery).SQL.Text)
    else
      if ( Pos('unstrdprc', oControl.Components[i].Name) > 0 )  then
        (Sender as TfrmOpenApp).FdmDataPerfiles.GrabarPerfil('Todos', dmmModule.Name,
                       (oControl.Components[i] as TUniStoredProc).Name,
                       'Procedure',
                       (oControl.Components[i] as TUniStoredProc).StoredProcName);
end;

procedure SetLabelForm(oControl:TComponent; var oPerfilDic : TProfileDicc);
var sName, sCompName:string;
    i:Integer;
    oCon:TComponent;
begin
  sName := oControl.Name;
  for i := 0 to oControl.ComponentCount - 1 do
  begin
    oCon := oControl.Components[i];
    sCompName := oCon.Name;
    if ((Pos('lbl', sCompName) > 0)) then
       (oCon as TcxLabel).Caption :=   GetPerfilSubKeyValueDef(oPerfilDic,
                                                sCompName,
                                                'Caption',
                                                (oCon as TcxLabel).Caption)
    else
      if ((Pos('ts', sCompName) > 0)) then
        (oCon as TcxTabSheet).Caption :=   GetPerfilSubKeyValueDef(oPerfilDic,
                                                sCompName,
                                                'Caption',
                                                (oCon as TcxTabSheet).Caption)
    else
      if ((Pos('chk', sCompName) > 0)) then
        (oCon as TcxDBCheckBox).Caption :=   GetPerfilSubKeyValueDef(oPerfilDic,
                                                sCompName,
                                                'Caption',
                                                (oCon as TcxDBCheckBox).Caption)
      else
        if ((Pos('btn', sCompName) > 0)) then
          (oCon as TcxButton).Caption :=   GetPerfilSubKeyValueDef(oPerfilDic,
                                                sCompName,
                                                'Caption',
                                                (oCon as TcxButton).Caption);
  end;
end;

procedure CargarCaptions(oControl:TComponent; Sender:TComponent);
    function GetComponentPropertyValue(Component: TComponent; APropName: string): string;
    var
      I,X: Integer;
      Count, Size: Integer;
      PropList: PPropList;
      PropInfo: PPropInfo;
      PropTypeInf : PTypeInfo;
      SetList : TStrings;
      SetName,SetVal : string;
    begin
      Count := GetPropList(Component.ClassInfo, tkAny, nil);
      Size  := Count * SizeOf(Pointer);
      GetMem(PropList, Size);
      try
        Count := GetPropList(Component.ClassInfo, tkAny, PropList);
        for I := 0 to Count -1 do
        begin
         PropTypeInf := PropList^[I]^.PropType^;
         PropInfo := PropList^[I];
          if not (PropInfo^.PropType^.Kind = tkMethod) then
          begin
            if SameText(PropInfo^.Name, APropName) then
            begin

              if (PropInfo^.PropType^.Kind = tkSet) then
              begin
                try
                  SetList := TStringList.Create;
                  SetList.CommaText := System.Variants.VarToStr(GetPropValue(Component, PropInfo^.Name));
                  for X := 0 to 255 do
                  begin
                    SetName := GetSetElementName(GetTypeData(PropTypeInf)^.CompType^,X);
                    if ContainsStr(SetName,'UITypes') then break;
                    SetVal := SetName + ' = ' + IfThen(SetList.IndexOf(SetName)<>-1,'True','False');
                    if Result = '' then
                      Result := SetVal else
                      Result := Result + ', ' + SetVal;
                  end;

                finally
                  SetList.Free;
                end;
              end else
                Result := System.Variants.VarToStr(GetPropValue(Component, PropInfo^.Name));
              Exit;
            end;
          end;
        end;
      finally
        FreeMem(PropList);
      end;
    end;
var
  i:Integer;
  sValue, sCompName, sName:string;
begin
  sName := oControl.Name;
  for i := 0 to oControl.ComponentCount - 1 do
  begin
    sCompName := oControl.Components[i].Name;
    if ((Pos('lbl', sCompName) > 0) Or
        (Pos('ts', sCompNAme) > 0) Or
        (Pos('chk', sCompNAme) > 0) Or
        (Pos('btn', sCompName) > 0)) then
    begin
      sValue := GetComponentPropertyValue(oControl.Components[i], 'Caption');
      if (sValue <> '') then
        (Sender as TfrmOpenApp).FdmDataPerfiles.GrabarPerfil('Todos', sName,
                                                sCompName + '_Caption',
                                                sValue );
        sValue := '';
    end;
  end;
end;

function EncontrarObjeto(oControl:TComponent; sBusquedaTipo:String; sNameObject:STring):TObject; overload;
var
  i:Integer;

begin
    for i := 0 to oControl.ComponentCount - 1 do
      if oControl.Components[i].ClassName = sBusquedaTipo then
        if oControl.Components[i].Name = sNameObject then
          Result := oControl.Components[i];
end;

procedure GetImageURL(sUrl: String; var memStream: TMemoryStream);
var
  strStream: String;

  //jpegimg: TJPEGImage;
  idhttp1 : Tidhttp;
begin
  idhttp1 := Tidhttp.Create(nil);
  try
   strStream :=  idhttp1.Get(sUrl);

  except
    Raise Exception.Create('La imagen no existe');
    Exit;
  end;
  memStream := TMemoryStream.Create;
  //jpegimg   := TJPEGImage.Create;
  try
    //memStream.CopyFrom(strStream, );
    memStream.Write(strStream[1], Length(strStream));
    memStream.Position := 0;
    //.Picture.Assign(jpegimg);
  finally
    //memStream.Free;
    //jpegimg.Free;
    idhttp1.Free;
  end;
end;

// This example shows how you can encrypt strings
// using special security string.
// You can decode data only if you know security string.
// I suppose, there is no chance to hack security string, using any analyse algorythms.
// Every time you call this function, you will
// have a new result even if all params are constant
// NOTE: Don`t forget to call "Randomize" proc before using this functions.

const
  Codes64 = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/';

  // you must use this function to generate special
  // security string, which is used in main encode/decode routines.
  // NOTE: you must generate the security string only once and then use it in encode/decode functions.

function GeneratePWDSecurityString: string;
var
  i, x: integer;
  s1, s2: string;
begin
  s1 := Codes64;
  s2 := '';
  for i := 0 to 15 do
  begin
    x  := Random(Length(s1));
    x  := Length(s1) - x;
    s2 := s2 + s1[x];
    s1 := Copy(s1, 1,x - 1) + Copy(s1, x + 1,Length(s1));
  end;
  Result := s2;
end;

// this function generate random string using
// any characters from "CHARS" string and length
// of "COUNT" - it will be used in encode routine
// to add "noise" into your encoded data.

function MakeRNDString(Chars: string; Count: Integer): string;
var
  i, x: integer;
begin
  Result := '';
  for i := 0 to Count - 1 do
  begin
    x := Length(chars) - Random(Length(chars));
    Result := Result + chars[x];
    chars := Copy(chars, 1,x - 1) + Copy(chars, x + 1,Length(chars));
  end;
end;

end.

