object Form11: TForm11
  Left = 400
  Top = 154
  Caption = 'Kullan'#305'c'#305' '#304#351'lemleri'
  ClientHeight = 411
  ClientWidth = 554
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
    Left = 8
    Top = 72
    Width = 57
    Height = 13
    Caption = 'Kullan'#305'c'#305' Ad'#305
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 112
    Width = 21
    Height = 13
    Caption = #350'ifre'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 152
    Width = 50
    Height = 13
    Caption = 'Ad'#305' Soyad'#305
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 192
    Width = 15
    Height = 13
    Caption = 'Tel'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 8
    Top = 232
    Width = 42
    Height = 13
    Caption = 'Pozisyon'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 88
    Width = 500
    Height = 21
    DataField = 'username'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 128
    Width = 500
    Height = 21
    DataField = 'password'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 168
    Width = 500
    Height = 21
    DataField = 'Ad'#305' Soyad'#305
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 208
    Width = 500
    Height = 21
    DataField = 'Tel'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 248
    Width = 500
    Height = 21
    DataField = 'Pozisyon'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 280
    Width = 490
    Height = 41
    DataSource = DataSource1
    TabOrder = 5
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Emir\Deskt' +
      'op\Sinema Otomasyon\sinema.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kullanicilar')
    Left = 120
    Top = 32
    object ADOQuery1username: TWideStringField
      FieldName = 'username'
      Size = 255
    end
    object ADOQuery1password: TWideStringField
      FieldName = 'password'
      Size = 255
    end
    object ADOQuery1AdSoyad: TWideStringField
      FieldName = 'Ad'#305' Soyad'#305
      Size = 255
    end
    object ADOQuery1Tel: TWideStringField
      FieldName = 'Tel'
      Size = 255
    end
    object ADOQuery1Pozisyon: TWideStringField
      FieldName = 'Pozisyon'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 272
    Top = 208
  end
end
