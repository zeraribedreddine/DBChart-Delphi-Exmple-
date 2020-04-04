program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frm_employee},
  Unit2 in 'Unit2.pas' {DM: TDataModule},
  Unit3 in 'Unit3.pas' {frm_statistique};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_employee, frm_employee);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_statistique, frm_statistique);
  Application.Run;
end.
