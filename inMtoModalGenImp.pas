{*******************************************************}
{                                                       }
{       FactuZam                                        }
{                                                       }
{       Copyright (C) 2023 Alejandro Laorden Hidalgo    }
{                                                       }
{*******************************************************}

unit inMtoModalGenImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlue, frxClass, frxDBSet, StdCtrls, cxButtons, DB,
  DBClient, cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel,
  dxSkinBlack, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, frxExportPDF,
  ExtCtrls, ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar, frxDesgn, cxGroupBox, cxRadioGroup, frxExportBaseDialog,
  inMtoFrmBase, frxExportXLSX, MemDS, DBAccess, Uni, UniDataConn,
  inLibGlobalVar, inMtoPrincipal, inMtoModalGenImpEle;
type
  TfrmPrint = class(TfrmBase)
    pnl1: TPanel;
    btnPDF: TcxButton;
    btnImprimir: TcxButton;
    btnVistaPreliminar: TcxButton;
    btnSalir: TcxButton;
    frxrprt1: TfrxReport;
    frxpdfxprtPedWeb: TfrxPDFExport;
    btnEditar: TcxButton;
    frxlsxprtExcel: TfrxXLSXExport;
    btnExcel: TcxButton;
    unqryPerfiles: TUniQuery;
    dsPerfiles: TDataSource;
    frxdsgnr1: TfrxDesigner;
    frxReportOrigen: TfrxReport;
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnPDFClick(Sender: TObject);
    //procedure btn5Click(Sender: TObject);
    procedure btnVistaPreliminarClick(Sender: TObject);
    //procedure rbRangoFechasClick(Sender: TObject);
    //procedure rbActualClick(Sender: TObject);
    //procedure frxpdfxprtPedWebBeforeExport(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function frxdsgnr1SaveReport(Report: TfrxReport; SaveAs: Boolean): Boolean;
  private
    sElegido:String;

    { Private declarations }
  public
    procedure CargarFormatos(form:TfrmMtoModalGenImpEle);
    procedure DeleteForm(sElegido:String;form:TfrmMtoModalGenImpEle);
    { Public declarations }
    procedure preparar_consulta; virtual; abstract;
    procedure Consultar_Formularios;
  end;

var
  frmPrint: TfrmPrint;

implementation

uses
  inMtoModalGenImpSave, inLibUser;

{$R *.dfm}

procedure TfrmPrint.btnEditarClick(Sender: TObject);
begin
  inherited;
  Preparar_consulta;
  Consultar_Formularios;
  frxrprt1.PrepareReport(True);
  frxrprt1.DesignReport();
end;

procedure TfrmPrint.btnExcelClick(Sender: TObject);
begin
  inherited;
  Preparar_consulta;
  Consultar_Formularios;
  frxrprt1.PrepareReport(True);
  frxrprt1.Export(frxlsxprtExcel);
end;

procedure TfrmPrint.btnImprimirClick(Sender: TObject);
begin
  Preparar_consulta;
  Consultar_Formularios;
  frxrprt1.PrepareReport(True);
  frxrprt1.Print;
end;

procedure TfrmPrint.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrint.btnPDFClick(Sender: TObject);
begin
  Preparar_consulta;
  Consultar_Formularios;
  frxrprt1.PrepareReport(True);
  frxrprt1.Export(frxpdfxprtPedWeb);
end;

procedure TfrmPrint.btnVistaPreliminarClick(Sender: TObject);
begin
  Preparar_consulta;
  Consultar_Formularios;
  frxrprt1.ShowReport;
end;

procedure TfrmPrint.CargarFormatos(form:TfrmMtoModalGenImpEle);
begin
   with unqryPerfiles do
  begin
    Refresh;
    if (unqryPerfiles.RecordCount > 0) then
    begin
      First;
      Form.lstFormatos.Clear;
      while not Eof do
      begin
        form.lstFormatos.AddItem(FieldByName('VALUE_PERFILES').AsString, nil);
        Next;
      end;
      form.lstFormatos.ItemIndex := 0;
    end;
  end;
end;

procedure TfrmPrint.Consultar_Formularios;
var
  form:TfrmMtoModalGenImpEle;
  sDescripcion:string;
  memStream:TMemoryStream;
begin
  with unqryPerfiles do
  begin
      form := TfrmMtoModalGenImpEle.Create(Self);
      CargarFormatos(form);
      form.ShowModal;
      sElegido := form.sElegido;
      if form.sFicha = 'S' then
      begin
        //guarda el formato
         sDescripcion := form.lstFormatos.items[form.lstFormatos.ItemIndex ];
        try
          memStream:=TMemoryStream.Create;
          unqryPerfiles.Locate('VALUE_PERFILES',sDescripcion, []);
          TBlobField(unqryPerfiles.FieldByName('VALUE_BLOB_PERFILES')).
                                                        SaveToStream(memStream);
          memStream.Position:=0;
          frxrprt1.LoadFromStream(memStream);
        finally
          memStream.Free;
        end;
      end
      else if (form.sFicha = 'O') then
      begin
        frxrprt1.AssignAll(frxReportOrigen);
      end;
//      else if (form.sFicha = 'D') then
//           DeleteForm(sElegido);
      FreeAndNil(form);
    end;
  end;

procedure TfrmPrint.DeleteForm(sElegido: String; form:TfrmMtoModalGenImpEle);
var
  unqrySol:TUniSQL;
begin
  unqrySol := TUniSQL.Create(nil);
  unqrySol.Connection := oConn;
  unqrySol.SQL.Text := 'DELETE  ' +
                       '  FROM fza_usuarios_perfiles ' +
                       ' WHERE KEY_PERFILES = :NombreReport ' +
                       '   AND VALUE_PERFILES = :Descripcion ';
  unqrySol.ParamByName('NombreReport').AsString := Self.Name;
  unqrySol.ParamByName('Descripcion').AsString := sElegido;
  unqrySol.Execute;
  FreeAndNil(unqrySol);
  CargarFormatos(form);
end;

procedure TfrmPrint.FormCreate(Sender: TObject);
begin
  inherited;
  unqryPerfiles.ParamByName('FormName').AsString := Self.Name;
  unqryPerfiles.ParamByName('Usuario').AsString := oUser;
  unqryPerfiles.ParamByName('Grupo').AsString := oGroup;
  unqryPerfiles.ParamByName('Todos').AsString := oAll;
  unqryPerfiles.Open;
end;

function TfrmPrint.frxdsgnr1SaveReport(Report: TfrxReport;
  SaveAs: Boolean): Boolean;
var
  memStream:TMemoryStream;
  formulario: TfrmModalGenImpSave;
  bGuardar : Boolean;
  sDescripcion, sPermisos : string;
begin
  bGuardar := False;
  formulario := TfrmModalGenImpSave.Create(Application);
  formulario.edtNombreOrigen.Text := Self.Name;
  formulario.edtDescripcion.Text := sElegido;
  with formulario.cbbPermisos.Properties.Items do
  begin
    BeginUpdate;
    try
      Clear;
      Add(oUser);
      Add(oGroup);
      Add(oAll);
      formulario.cbbpermisos.Text := oAll;
    finally
      EndUpdate;
    end;
  end;
  formulario.ShowModal;
  if (formulario.sFicha = 'S') then
  begin
    bGuardar := True;
    sDescripcion := formulario.edtDescripcion.Text;
    sPermisos := formulario.cbbPermisos.Text;
  end;
  FreeAndNil(formulario);
  if bGuardar then
  begin
    try
      memStream:=TMemoryStream.Create;
      frxrprt1.SaveToStream(memStream);
      memStream.Position:=0;
      if unqryPerfiles.Locate('VALUE_PERFILES',sDescripcion, []) then
      begin
        if ( Application.MessageBox( 'El informe ya existe. ' +
                                    '¿Desea reemplazar el informe?',
                                    'Mensaje Advertencia',
                                    MB_YESNO ) = ID_YES ) then
          unqryPerfiles.Edit
        else
          bGuardar := False;
      end
      else
        unqryPerfiles.Insert;
      if (bGuardar) then
      begin
        unqryPerfiles.FieldByName('USUARIO_GRUPO_PERFILES').AsString := sPermisos;
        unqryPerfiles.FieldByName('KEY_PERFILES').AsString := Self.Name;
        unqryPerfiles.FieldByName('SUBKEY_PERFILES').AsString := frxrprt1.Name +
                                                               '_' + sDescripcion;
        unqryPerfiles.FieldByName('VALUE_PERFILES').AsString := sDescripcion;
        unqryPerfiles.FieldByName('INSTANTEALTA').AsDateTime := Now;
        unqryPerfiles.FieldByName('USUARIOMODIF').AsString := oUser;
        unqryPerfiles.FieldByName('USUARIOALTA').AsString := oUser;
        TBlobField(unqryPerfiles.FieldByName('VALUE_BLOB_PERFILES')).
                                                        LoadFromStream(memStream);
        //https://forums.devart.com/viewtopic.php?t=19115
        unqryPerfiles.Post;
        Result := True;
      end
      else
        Result := False;
    finally
      memStream.Free;
      //https://forum.fast-report.com/en/categories/fastreport-vcl-6
    end;
  end;
end;


(*procedure TForm1.frxReport1LoadTemplate(Report: TfrxReport;
  const TemplateName: String);
var
  memStream:TMemoryStream;
  BookMark: TBookmark;
begin
   try
     memStream:=TMemoryStream.Create;
     BookMark:=ADOTable1.GetBookmark;
     if ADOTable1.Locate('TemplateName', TemplateName, [loCaseInsensitive]) then
       begin
         ADOTable1ReportBLOB.SaveToStream(memStream);
         memStream.Position:=0;
         Report.LoadFromStream(memStream);
       end;
      ADOTable1.GotoBookmark(BookMark);
   finally
     memStream.Free;
     ADOTable1.FreeBookmark(BookMark);
   end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  memStream:TMemoryStream;
begin
     if OpenDialog1.Execute then
       try
         memStream:=TMemoryStream.Create;
         frxReport1.LoadFromFile(OpenDialog1.FileName);
         frxReport1.SaveToStream(memStream);
         memStream.Position:=0;
         ADOTable1.Insert;
         ADOTable1TemplateName.AsString:=ExtractFileName(OpenDialog1.FileName);
         ADOTable1ReportBLOB.LoadFromStream(memStream);
         ADOTable1.Post;
       finally
         memStream.Free;
       end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  memStream:TMemoryStream;
begin
  memStream:=TMemoryStream.Create;
  frxReport1.InheritFromTemplate(ADOTable1TemplateName.AsString, imDelete);
  try
    memStream:=TMemoryStream.Create;
    frxReport1.SaveToStream(memStream);
    memStream.Position:=0;
    ADOTable1.Insert;
    ADOTable1TemplateName.AsString:=Edit1.Text;
    ADOTable1ReportBLOB.LoadFromStream(memStream);
    ADOTable1.Post;
  finally
    memStream.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  memStream:TMemoryStream;
begin
  try
    memStream:=TMemoryStream.Create;
    ADOTable1ReportBLOB.SaveToStream(memStream);
    memStream.Position:=0;
    frxReport1.LoadFromStream(memStream);
    frxReport1.DesignReport();
  finally
    memStream.Free;
  end;
end;

function TForm1.frxDesigner1SaveReport(Report: TfrxReport;
  SaveAs: Boolean): Boolean;
var
  memStream:TMemoryStream;
begin
   if not SaveAs then
   try
     memStream:=TMemoryStream.Create;
     frxReport1.SaveToStream(memStream);
     memStream.Position:=0;
     ADOTable1.Edit;
     ADOTable1ReportBLOB.LoadFromStream(memStream);
     ADOTable1.Post;
   finally
     memStream.Free;
   end;
end; *)


end.
