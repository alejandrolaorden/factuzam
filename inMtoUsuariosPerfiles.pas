unit inMtoUsuariosPerfiles;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inMtoGen, dxSkinsCore,
  dxSkinsDefaultPainters, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, dxSkinsForm, cxClasses, cxLocalization, Vcl.StdCtrls,
  cxButtons, cxDBNavigator, Vcl.Buttons, dxBevel, cxLabel, cxTextEdit,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, Vcl.ExtCtrls, UniDataUsuariosPerfiles, cxCheckBox,
  cxSpinEdit, cxDBEdit, cxCalendar, cxBlobEdit;

type
  TfrmMtoUsuariosPerfiles = class(TfrmMtoGen)
    cxGrdDBTabPrinUSUARIO_GRUPO_PERFILES: TcxGridDBColumn;
    cxGrdDBTabPrinKEY_PERFILES: TcxGridDBColumn;
    cxGrdDBTabPrinSUBKEY_PERFILES: TcxGridDBColumn;
    cxGrdDBTabPrinVALUE_PERFILES: TcxGridDBColumn;
    cxGrdDBTabPrinVALUE_TEXT_PERFILES: TcxGridDBColumn;
    cxGrdDBTabPrinTYPE_BLOB_PERFILES: TcxGridDBColumn;
    cxGrdDBTabPrinVALUE_BLOB_PERFILES: TcxGridDBColumn;
  private
    { Private declarations }
  public
    procedure CrearTablaPrincipal; override;
  end;
  procedure ShowMtoUsuariosPerfiles(Owner       : TComponent); overload;
  procedure ShowMtoUsuariosPerfiles(Owner       : TComponent; sOdon: String); overload;
//const
//  pkFieldName = 'TIPODOC_CONTADOR;EJERCICIO_CONTADOR;SERIE_CONTADOR';

var
  frmMtoUsuariosPerfiles: TfrmMtoUsuariosPerfiles;
  dmmUsuariosPerfiles:TdmUsuariosPerfiles;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoUsuariosPerfiles(Owner       : TComponent); overload;
var
  frmMtoUsuariosPerfiles : TfrmMtoUsuariosPerfiles;
begin
  if not(IsOpenMDI('frmMtoUsuariosPerfiles', Owner)) then
  begin
    frmMtoUsuariosPerfiles := TfrmMtoUsuariosPerfiles.Create(Owner);
    frmMtoUsuariosPerfiles.edtBusqGlobal.SetFocus;
  end;
end;

procedure ShowMtoUsuariosPerfiles(Owner       : TComponent; sOdon: String); overload;
var
  frmMtoUsuariosPerfiles : TfrmMtoUsuariosPerfiles;
begin
  if not(IsOpenMDI('frmMtoEmpresas', Owner)) then
  begin
    frmMtoUsuariosPerfiles := TfrmMtoUsuariosPerfiles.Create(Owner);
    frmMtoUsuariosPerfiles.Show;
    //dmmClientes.unqryClientes.Locate(pkFieldName, sOdon, []);
    frmMtoUsuariosPerfiles.edtBusqGlobal.SetFocus;
  end;
end;

{ TfrmMtoUsuariosPerfiles }


procedure TfrmMtoUsuariosPerfiles.CrearTablaPrincipal;
begin
  inherited;
  dmmUsuariosPerfiles := TdmUsuariosPerfiles.Create(Self);
  dsTablaG.DataSet := dmmUsuariosPerfiles.unqryTablaG;
end;


end.
