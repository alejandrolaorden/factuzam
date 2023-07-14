program FactuZam;

uses
  Vcl.Forms,
  Vcl.Controls,
  inLibDevExp in 'inLibDevExp.pas',
  inLibDir in 'inLibDir.pas',
  inLibtb in 'inLibtb.pas',
  inLibWin in 'inLibWin.pas',
  UniDataConn in 'UniDataConn.pas' {dmConn: TDataModule},
  inMtoFrmBase in 'inMtoFrmBase.pas' {frmBase},
  inMtoGen in 'inMtoGen.pas' {frmMtoGen},
  inMtoClientes in 'inMtoClientes.pas' {frmMtoClientes},
  inMtoEmpresas in 'inMtoEmpresas.pas' {frmMtoEmpresas},
  inMtoPrincipal in 'inMtoPrincipal.pas' {frmOpenApp},
  UniDataPerfiles in 'UniDataPerfiles.pas' {dmPerfiles: TDataModule},
  UniDataGen in 'UniDataGen.pas' {dmBase: TDataModule},
  UniDataClientes in 'UniDataClientes.pas' {dmClientes: TDataModule},
  UniDataEmpresas in 'UniDataEmpresas.pas' {dmEmpresas: TDataModule},
  inMtoContadores in 'inMtoContadores.pas' {frmMtoContadores},
  UniDataContadores in 'UniDataContadores.pas' {dmContadores: TDataModule},
  inMtoIvas in 'inMtoIvas.pas' {frmMtoIvas},
  UniDataIvas in 'UniDataIvas.pas' {dmIvas: TDataModule},
  inMtoProveedores in 'inMtoProveedores.pas' {frmMtoProveedores},
  UniDataProveedores in 'UniDataProveedores.pas' {dmProveedores: TDataModule},
  inMtoArticulos in 'inMtoArticulos.pas' {frmMtoArticulos},
  UniDataArticulos in 'UniDataArticulos.pas' {dmArticulos: TDataModule},
  inMtoFamilias in 'inMtoFamilias.pas' {frmMtoFamilias},
  UniDataFamilias in 'UniDataFamilias.pas' {dmFamilias: TDataModule},
  UniDataFacturas in 'UniDataFacturas.pas' {dmFacturas: TDataModule},
  inMtoFacturas in 'inMtoFacturas.pas' {frmMtoFacturas},
  inMtoGenSearch in 'inMtoGenSearch.pas' {frmMtoSearch},
  inMtoIvasGrupos in 'inMtoIvasGrupos.pas' {frmMtoIvasGrupos},
  UniDataIvasGrupos in 'UniDataIvasGrupos.pas' {dmIvasGrupos: TDataModule},
  inMtoModalFacRec in 'inMtoModalFacRec.pas' {frmGenFacRec},
  inMtoModalGenImp in 'inMtoModalGenImp.pas' {frmPrint},
  inMtoModalImpFac in 'inMtoModalImpFac.pas' {frmPrintFac},
  inLibUser in 'inLibUser.pas',
  inMtoModalGenImpEle in 'inMtoModalGenImpEle.pas' {frmMtoModalGenImpEle},
  inMtoModalGenImpSave in 'inMtoModalGenImpSave.pas' {frmModalGenImpSave},
  inMtoLogon in 'inMtoLogon.pas' {frmLogon},
  UniDataUsuarios in 'UniDataUsuarios.pas' {dmUsuarios: TDataModule},
  inMtoUsuarios in 'inMtoUsuarios.pas' {frmMtoUsuarios},
  inMtoModalGenPass in 'inMtoModalGenPass.pas',
  UniDataGrupos in 'UniDataGrupos.pas' {dmGrupos: TDataModule},
  inMtoGrupos in 'inMtoGrupos.pas' {frmMtoGrupos},
  UniDataUsuariosPerfiles in 'UniDataUsuariosPerfiles.pas' {dmUsuariosPerfiles: TDataModule},
  inMtoUsuariosPerfiles in 'inMtoUsuariosPerfiles.pas' {frmMtoUsuariosPerfiles},
  IDETheme.ActnCtrls in 'IDETheme.ActnCtrls.pas',
  UniDataTarifas in 'UniDataTarifas.pas' {dmTarifas: TDataModule},
  inMtoTarifas in 'inMtoTarifas.pas' {frmMtoTarifas},
  inMtoGeneradorProcesos in 'inMtoGeneradorProcesos.pas' {frmMtoGeneradorProcesos},
  UniDataGeneradorProcesos in 'UniDataGeneradorProcesos.pas' {dmGeneradorProcesos: TDataModule},
  inMtoModalGenFilter in 'inMtoModalGenFilter.pas' {frmModalGenFilter},
  inMtoFormasdePago in 'inMtoFormasdePago.pas',
  UniDataFormasdePago in 'UniDataFormasdePago.pas' {dmFormasdePago: TDataModule},
  inMtoModalImpRecFac in 'inMtoModalImpRecFac.pas' {frmPrintRecFac},
  inLibGlobalVar in 'inLibGlobalVar.pas',
  inMtoModalArtTar in 'inMtoModalArtTar.pas' {frmMtoModalArtTar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogon, frmLogon);
  if (frmLogon.ShowModal = mrOk) then
  begin
    frmLogon.Free;
    Application.CreateForm(TfrmOpenApp, frmOpenApp);
  end
  else
    frmLogon.Free;
  Application.Run;
end.
