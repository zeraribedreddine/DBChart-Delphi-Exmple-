unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask;

type
  Tfrm_employee = class(TForm)
    Pan_all: TPanel;
    Pan_top: TPanel;
    Pane_center: TPanel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    MaskEdit1: TMaskEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frm_employee: Tfrm_employee;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure Tfrm_employee.Button1Click(Sender: TObject);
begin
  frm_statistique.Show ;
  frm_employee.Hide;
end;

end.
