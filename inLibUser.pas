unit inLibUser;

interface

uses Windows, Classes, System.Hash, System.Generics.Collections,
     System.SysUtils, Generics.Defaults, ShlObj, Uni;

type
  TProperty = (User, Group, All);
  TDictUserKey = record
    sUser:String;
    sGroup:String;
    oProperty: TProperty ;
    sKey:string;
    sSubkey:String;
  end;
  TComponent_Prop_Value = record
    sKey:string;
    sSubkey:String;
    sValue:String;
  end;
  TDictValue = record
    sValue:String;
    sValueText:WideString;
    //typevalueblob:string;
    //valueblob:Variant;
  end;

  TProfileUserDicc = TDictionary<TDictUserKey,
                                 TDictValue>;
  TProfileDicc = TDictionary<String, TDictValue>;
  function GetPerfilValue(var oPerfilDic:TProfileDicc ;sSubKey: string): String;
  function GetPerfilValueText(var oPerfilDic:TProfileDicc ;
                              sSubKey: string): WideString;
  procedure FilterProfileUserGroup(var oPerfilUserDic:TProfileUserDicc;
                                   var oPerfilDic:TProfileDicc);
  procedure GetFormUserProfile(var oPerfilDic: TProfileDicc;
                             sFormName:string; Sender:TComponent);
  function GetPerfilSubKeyValueDef(var oPerfilDic:TProfileDicc ;
                           sSubKey: string;
                           sSubSubKey:String;
                           sValueDef:String): String;
  function GetPerfilValueTextDef(var oPerfilDic:TProfileDicc ;
                                 sSubKey: string;
                                 sValueDef:WideString): WideString;
  function GetPerfilValueDef(var oPerfilDic:TProfileDicc ;
                                 sSubKey: string;
                                 sValueDef:String): String;
  function GetPerfilValueDefNoDic(sKey:string ;
                                 sSubKey: string;
                                 sValueDef:String): String;
  procedure GetDictionaryKeySubKey(var oPerfilDic:TProfileDicc;
                                 var oPerfilKeySub:TList<TComponent_Prop_Value>;
                                 sFieldName, sColumnName, sGridViewName:String);
//  procedure AbrirPerfiles(bTabVisible:Boolean; unqryPerfiles:TUniQuery; Sender:TComponent);

implementation

uses
  inLibDir, inLibWin, inMtoPrincipal, inLibGlobalVar;

procedure FilterProfileUserGroup(var oPerfilUserDic:TProfileUserDicc;
                                 var oPerfilDic:TProfileDicc);
var
  oPerfilUserDicCopy: TProfileUserDicc;
  oDictUKey,
  oDictUKeyCopy: TDictUserKey;
  oDictValue:TDictValue;
begin
  oPerfilUserDic.TrimExcess;
  oPerfilDic := TProfileDicc.Create;
  oPerfilUserDicCopy := TProfileUserDicc.Create
  (
      TEqualityComparer<TDictUserKey>.Construct
      (
          function(const Left, Right: TDictUserKey): Boolean
          begin
            Result := (Left.sUser = Right.sUser) and
                    (Left.sGroup = Right.sGroup) and
                    (Left.sKey = Right.sKey) and
                    (Left.sSubKey = Right.sSubKey) and
                    (Left.oProperty = Right.oProperty);
          end,
          function(const Value: TDictUserKey): Integer
          begin
              Result := THashBobJenkins.GetHashValue(
                          PChar(Value.sUser)^,
                          Length(Value.sUser) * SizeOf(Char), 0);
              Result := THashBobJenkins.GetHashValue(
                          PChar(Value.sGroup)^,
                          Length(Value.sGroup) * SizeOf(Char), 0);
              Result := THashBobJenkins.GetHashValue(
                          PChar(Value.sKey)^,
                          Length(Value.sKey) * SizeOf(Char), 0);
              Result := THashBobJenkins.GetHashValue(
                          PChar(Value.sSubKey)^,
                          Length(Value.sSubkey) * SizeOf(Char), 0);
              Result := THashBobJenkins.GetHashValue(
                          Value.oProperty,
                          SizeOf(TProperty), Result);
          end
      )
  );
  for oDictUKey in oPerfilUserDic.Keys do
  begin
    oPerfilUserDic.TryGetValue(oDictUKey, oDictValue);
    oPerfilUserDicCopy.Add(oDictUKey, oDictValue);
  end;
  for oDictUKey in oPerfilUserDic.Keys do
  begin
    oDictUKeyCopy := oDictUKey;
    oPerfilUserDic.TryGetValue(oDictUKey, oDictValue);
    if (oDictUKey.oProperty = User) then
    //si hay user, no me lo pienso y lo inserto
    begin
      oPerfilDic.AddOrSetValue(oDictUKey.sSubkey, oDictValue);
    end
    else
      if (oDictUKey.oProperty = Group) then
      //si hay grupo, busco el mismo key-subkey para user
      begin
        oDictUKeyCopy.oProperty := User;
        if (not(oPerfilUserDicCopy.ContainsKey(oDictUKeyCopy)))  then
        //si no hay user con el mismo key, lo añado
          oPerfilDic.AddOrSetValue(oDictUKey.sSubkey, oDictValue);
          //añado al perfil por defecto para el grupo
      end
      else
        if (oDictUKey.oProperty = All) then
        //si hay todos, y no hay user o grupo, añado
        begin
          oDictUKeyCopy.oProperty := User;
          if (not(oPerfilUserDicCopy.ContainsKey(oDictUKeyCopy))) then
          begin
            oDictUKeyCopy.oProperty := Group;
            if (not(oPerfilUserDicCopy.ContainsKey(oDictUKeyCopy))) then
              oPerfilDic.AddOrSetValue(oDictUKey.sSubkey, oDictValue)
              //añado al perfil por defecto
          end;
        end;
  end;
  oPerfilUserDic.Free;
end;

procedure GetFormUserProfile(var oPerfilDic: TProfileDicc;
                             sFormName:string; Sender:TComponent);
var
  oPerfilUserDic:TProfileUserDicc;
begin
  oPerfiles.Assign_Profile_Dict(sFormName,
                                oPerfilUserDic);
  FilterProfileUserGroup(oPerfilUserDic, oPerfilDic);
end;

function GetPerfilValue(var oPerfilDic:TPRofileDicc ;
                        sSubKey: string): String;
var
  oDictValue: TDictValue;
begin
   oPerfilDic.TryGetValue(sSubKey,
                          oDictValue);
  Result := oDictValue.sValue;
end;

procedure GetDictionaryKeySubKey(var oPerfilDic:TProfileDicc;
                                 var oPerfilKeySub:TList<TComponent_Prop_Value>;
                                 sFieldName,
                                 sColumnName,
                                 sGridViewName:String);
var
  oDictValue: TDictValue;
  oDictKey: String;
  iLastDelimiter:Integer;
  pCPV: TComponent_Prop_Value;
  ta_esult : TArray<string>;
  sProperty: string;
begin
  for oDictKey in oPerfilDic.Keys do
  begin
    oPerfilDic.TryGetValue(oDictKey, oDictValue);
    if ( Pos(sFieldName, oDictKey) > 0 ) then
    begin
      iLastDelimiter := LastDelimiter('_', oDictKey) + 1;
      sProperty := Copy(oDictKey, iLastDelimiter, Length(oDictKey) - iLastDelimiter + 1);
      pCPV.sKey :=  sColumnName;
      pCPV.sSubkey := sProperty;
      pCPV.sValue := oDictValue.sValue;
      oPerfilKeySub.Add(pCPV);
    end;
  end;
end;

function GetPerfilSubKeyValueDef(var oPerfilDic:TPRofileDicc ;
                                     sSubKey: string;
                                     sSubSubKey:String;
                                     sValueDef:String): String;
var
  oDictValue: TDictValue;
begin
  sSubKey := sSubKey + '_' + sSubSubKey;
  if oPerfilDic.ContainsKey(sSubKey) then
  begin
   oPerfilDic.TryGetValue(sSubKey,
                          oDictValue);
   Result := oDictValue.sValue;
  end
  Else
    Result := sValueDef;
end;

function GetPerfilValueText(var oPerfilDic:TPRofileDicc;
                            sSubKey: string): WideString;
var
  oDictValue: TDictValue;
begin
   oPerfilDic.TryGetValue(sSubKey,
                          oDictValue);
  Result := oDictValue.sValueText;
end;

function GetPerfilValueTextDef(var oPerfilDic:TPRofileDicc ;
                               sSubKey: string;
                               sValueDef:WideString): WideString;
var
  oDictValue: TDictValue;
begin
  if ((oPerfilDic <> nil) and (oPerfilDic.Count > 0)) then
  begin
    oPerfilDic.TrimExcess;
    if oPerfilDic.ContainsKey(sSubKey) then
    begin
      oPerfilDic.TryGetValue(sSubKey,
                             oDictValue);
      Result := oDictValue.sValueText;
    end
    else
     Result := sValueDef;
  end
  else
    Result := sValueDef;
end;

function GetPerfilValueDefNoDic(sKey:string ;
                                 sSubKey: string;
                                 sValueDef:String): String;
begin
  //Result := frmOpenApp.FdmDataPerfiles.GetKeySubKeyValueDefNoDic(sKey, sSubKey, sValueDef);
end;

function GetPerfilValueDef(var oPerfilDic:TProfileDicc ;
                                 sSubKey: string;
                                 sValueDef:String): String;
var
  oDictValue: TDictValue;
begin
  if oPerfilDic.ContainsKey(sSubKey) then
  begin
    oPerfilDic.TryGetValue(sSubKey,
                           oDictValue);
    Result := oDictValue.sValue;
  end
  else
   Result := sValueDef;
end;


end.
