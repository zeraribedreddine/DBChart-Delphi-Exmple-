object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 366
  Width = 516
  object ds_tbl_employee: TDataSource
    DataSet = tbl_employee
    Left = 152
    Top = 240
  end
  object ds_qry_Sexe: TDataSource
    DataSet = qry_Sexe
    Left = 352
    Top = 240
  end
  object MyConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\kikatokiro\Desktop\tchart\DB\Test.mdb;Mode=Share Deny None;P' +
      'ersist Security Info=False;Jet OLEDB:System database="";Jet OLED' +
      'B:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engi' +
      'ne Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Par' +
      'tial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:N' +
      'ew Database Password="";Jet OLEDB:Create System Database=False;J' +
      'et OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on C' +
      'ompact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet ' +
      'OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 256
    Top = 80
  end
  object tbl_employee: TADOTable
    Active = True
    Connection = MyConnection
    CursorType = ctStatic
    AfterPost = tbl_employeeAfterPost
    AfterDelete = tbl_employeeAfterDelete
    AfterScroll = tbl_employeeAfterScroll
    TableName = 'tbl_Employee'
    Left = 152
    Top = 160
    object tbl_employeeid: TIntegerField
      Alignment = taCenter
      FieldName = 'id'
    end
    object tbl_employeenom: TWideStringField
      Alignment = taCenter
      FieldName = 'nom'
      Size = 50
    end
    object tbl_employeeprenom: TWideStringField
      Alignment = taCenter
      FieldName = 'prenom'
      Size = 50
    end
    object tbl_employeesexe: TWideStringField
      Alignment = taCenter
      FieldName = 'sexe'
      Size = 10
    end
  end
  object qry_Sexe: TADOQuery
    Active = True
    Connection = MyConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sexe,count(sexe)as nombre'
      'from tbl_Employee'
      'group by sexe')
    Left = 352
    Top = 160
    object qry_Sexesexe: TWideStringField
      Alignment = taCenter
      FieldName = 'sexe'
      Size = 10
    end
    object qry_Sexenombre: TIntegerField
      Alignment = taCenter
      FieldName = 'nombre'
    end
  end
end
