object Form5: TForm5
  Left = 471
  Top = 168
  Caption = 'Salon '#304#351'lemleri'
  ClientHeight = 441
  ClientWidth = 646
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 104
    Width = 41
    Height = 13
    Caption = 'Salon ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 88
    Top = 144
    Width = 45
    Height = 13
    Caption = 'Salon Ad'#305
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 88
    Top = 184
    Width = 60
    Height = 13
    Caption = 'Koltuk Say'#305's'#305
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 120
    Width = 417
    Height = 21
    DataField = 'salon_id'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 160
    Width = 417
    Height = 21
    DataField = 'salon_ad'#305
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 88
    Top = 200
    Width = 417
    Height = 21
    DataField = 'koltuk_sayisi'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 88
    Top = 232
    Width = 420
    Height = 49
    DataSource = DataSource2
    TabOrder = 3
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Emir\Deskt' +
      'op\Sinema Otomasyon\sinema.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 136
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * From salon')
    Left = 208
    Top = 32
    object ADOQuery1salon_id: TIntegerField
      FieldName = 'salon_id'
    end
    object ADOQuery1salon_ad: TWideStringField
      FieldName = 'salon_ad'#305
      Size = 255
    end
    object ADOQuery1koltuk_sayisi: TWideStringField
      FieldName = 'koltuk_sayisi'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 304
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 368
    Top = 16
  end
end
