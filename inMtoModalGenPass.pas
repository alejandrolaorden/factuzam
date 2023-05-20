unit inMtoModalGenPass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inMtoFrmBase, dxSkinsForm, cxClasses,
  cxContainer, cxEdit, cxLookAndFeels, cxLocalization, cxGraphics, cxControls,
  cxLookAndFeelPainters, cxLabel, cxTextEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxCore;

type
  TfrmModalGenPass = class(TfrmBase)
    edtUsuario: TcxTextEdit;
    lbl1: TcxLabel;
    edtPassword: TcxTextEdit;
    lbl2: TcxLabel;
    edtPasswordCon: TcxTextEdit;
    lbl3: TcxLabel;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sFicha:string;
  end;

var
  frmModalGenPass: TfrmModalGenPass;

implementation

{$R *.dfm}

procedure TfrmModalGenPass.btnCancelarClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle, WM_CLOSE, 0, 0);
end;

procedure TfrmModalGenPass.btnGuardarClick(Sender: TObject);
begin
  inherited;
  if (edtPassword.Text <> edtPasswordCon.Text) then
  begin
    ShowMessage('Los passwords no coinciden');
  end
  else
  begin
    sFicha := 'S';
    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TfrmModalGenPass.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

end.