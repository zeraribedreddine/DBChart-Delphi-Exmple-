unit Unit2;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, Data.Win.ADODB;

type
  TDM = class(TDataModule)
    ds_tbl_employee: TDataSource;
    ds_qry_Sexe: TDataSource;
    MyConnection: TADOConnection;
    tbl_employee: TADOTable;
    qry_Sexe: TADOQuery;
    tbl_employeeid: TIntegerField;
    tbl_employeenom: TWideStringField;
    tbl_employeeprenom: TWideStringField;
    tbl_employeesexe: TWideStringField;
    qry_Sexesexe: TWideStringField;
    qry_Sexenombre: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure MyConnectionAfterConnect(Sender: TObject);
    procedure MyConnectionBeforeDisconnect(Sender: TObject);
    procedure tbl_employeeAfterDelete(DataSet: TDataSet);
    procedure tbl_employeeAfterPost(DataSet: TDataSet);
    procedure tbl_employeeAfterScroll(DataSet: TDataSet);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit1, Unit3;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
 MyConnection.Connected := true ;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
 MyConnection.Connected := False ;
end;

procedure TDM.MyConnectionAfterConnect(Sender: TObject);
begin
 // tbl_employee.Active := true ;
 // qry_Sexe.Active := true ;
end;

procedure TDM.MyConnectionBeforeDisconnect(Sender: TObject);
begin
  //tbl_employee.Active := False ;
  //qry_Sexe.Active := False ;
end;

procedure TDM.tbl_employeeAfterDelete(DataSet: TDataSet);
begin
  qry_Sexe.close ;
  qry_Sexe.active := true ;
end;

procedure TDM.tbl_employeeAfterPost(DataSet: TDataSet);
begin
   qry_Sexe.close ;
   qry_Sexe.active := true ;
end;

procedure TDM.tbl_employeeAfterScroll(DataSet: TDataSet);
var nbr : string;
begin
  str(tbl_employee.RecordCount,nbr);
  frm_employee.MaskEdit1.EditText := nbr ;
end;

end.
