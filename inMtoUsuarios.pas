unit inMtoUsuarios;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, inMtoPrincipal,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inMtoGen, dxSkinsCore,
  dxSkinsDefaultPainters, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, dxSkinsForm, cxClasses, cxLocalization, Vcl.StdCtrls,
  cxButtons, cxDBNavigator, Vcl.Buttons, dxBevel, cxLabel, cxTextEdit,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, Vcl.ExtCtrls, UniDataUsuarios, cxCheckBox,
  cxSpinEdit, cxBlobEdit, dxScrollbarAnnotations, dxCore, cxRadioGroup,
  cxDBExtLookupComboBox, cxDBLookupComboBox, cxCalendar;

type
  TfrmMtoUsuarios = class(TfrmMtoGen)
    cxGrdDBTabPrinUSUARIO_USUARIO: TcxGridDBColumn;
    cxGrdDBTabPrinPASSWORD_USUARIO: TcxGridDBColumn;
    cxGrdDBTabPrinGRUPO_USUARIO: TcxGridDBColumn;
    cxGrdDBTabPrinEMPRESADEF_USUARIO: TcxGridDBColumn;
    cxGrdDBTabPrinULTIMOLOGIN_USUARIO: TcxGridDBColumn;
    btSetPass: TcxButton;
    cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESGRUPOADMINISTRADOR_GRUPO: TcxGridDBColumn;
    procedure btSetPassClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CrearTablaPrincipal; override;
  end;
  procedure ShowMtoUsuarios(Owner       : TComponent); overload;
  procedure ShowMtoUsuarios(Owner       : TComponent; sOdon: String); overload;
const
  pkFieldName = 'USUARIO_USUARIO';

var
  frmMtoUsuarios: TfrmMtoUsuarios;
  dmmUsuarios:TdmUsuarios;

implementation

uses
  inLibWin, inMtoModalGenPass;

{$R *.dfm}

procedure ShowMtoUsuarios(Owner       : TComponent); overload;
var
  frmMtoUsuarios : TfrmMtoUsuarios;
begin
  frmMtoUsuarios := TfrmMtoUsuarios(FindMDIChildOpen((Owner as TfrmOpenApp),
                                                      TfrmMtoUsuarios,
                                                      'frmMtoUsuarios'));
  if (frmMtoUsuarios = nil) then
  begin
    frmMtoUsuarios := TfrmMtoUsuarios.Create(Owner);
    frmMtoUsuarios.edtBusqGlobal.SetFocus;
  end
  else
    frmMtoUsuarios.BringToFront;
end;

procedure ShowMtoUsuarios(Owner       : TComponent; sOdon: String); overload;
var
  frmMtoUsuarios : TfrmMtoUsuarios;
begin
  frmMtoUsuarios := TfrmMtoUsuarios(FindMDIChildOpen((Owner as TfrmOpenApp),
                                                      TfrmMtoUsuarios,
                                                      'frmMtoUsuarios'));
  if (frmMtoUsuarios = nil) then
  begin
    frmMtoUsuarios := TfrmMtoUsuarios.Create(Owner);
  end
  else
    frmMtoUsuarios.BringToFront;
  if not (frmMtoUsuarios.tdmDataModule.unqryTablaG.Locate(pkFieldName,
                                                           sOdon, [])) then
    ShowMessage('Usuario no encontrado');
end;

{ TfrmMtoUsuarios }

procedure TfrmMtoUsuarios.btSetPassClick(Sender: TObject);
var
  formulario: TfrmModalGenPass;
begin
  inherited;
  formulario := TfrmModalGenPass.Create(Application);
  formulario.edtUsuario.Text :=
                dmmUsuarios.unqryTablaG.FieldByName('USUARIO_USUARIO').AsString;
  formulario.ShowModal;
  if (formulario.sFicha = 'S') then
  begin
     if ((dsTablaG.DataSet.State <> dsInsert) and
         (dsTablaG.DataSet.State <> dsEdit)) then
       dsTablaG.DataSet.Edit;
     dmmUsuarios.unqryTablaG.FieldByName('PASSWORD_USUARIO').AsString :=
                                              sMd5(formulario.edtPassword.Text);
     dmmUSuarios.unqryTablaG.Post;
  end;
  FreeAndNil(formulario);
end;

procedure TfrmMtoUsuarios.CrearTablaPrincipal;
begin
  inherited;
  dmmUsuarios := TdmUsuarios.Create(Self);
  TcxLookupComboBoxProperties(
    cxGrdDBTabPrinGRUPO_USUARIO.Properties).ListSource := dmmUsuarios.dsGrupos;
  dmmUsuarios.unqryGrupos.Open;
  TcxLookupComboBoxProperties(
    cxGrdDBTabPrinEMPRESADEF_USUARIO.Properties).ListSource :=
                                                         dmmUsuarios.dsEmpresas;
  dmmUsuarios.unqryEmpresas.Open;
end;

end.
