unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  VclTee.TeeGDIPlus, Data.DB, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, VCLTee.Series;

type
  Tfrm_statistique = class(TForm)
    Pan_top: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    DBChart1: TDBChart;
    Button1: TButton;
    Series1: TPieSeries;
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frm_statistique: Tfrm_statistique;

implementation

{$R *.dfm}

uses Unit1, Unit2;

procedure Tfrm_statistique.Button1Click(Sender: TObject);
begin
 frm_statistique.Hide ;
 frm_employee.Show ;
end;

end.
