object Form10: TForm10
  Left = 401
  Top = 150
  Caption = 'M'#252#351'teri '#304#351'lemleri'
  ClientHeight = 400
  ClientWidth = 549
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
    Left = 16
    Top = 80
    Width = 50
    Height = 13
    Caption = 'Ad'#305' Soyadi'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 120
    Width = 20
    Height = 13
    Caption = 'TEL'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 160
    Width = 43
    Height = 13
    Caption = 'EPOSTA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 200
    Width = 30
    Height = 13
    Caption = #304'ndirim'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 240
    Width = 82
    Height = 13
    Caption = 'Reklam Aboneligi'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 96
    Width = 500
    Height = 21
    DataField = 'Ad'#305'_Soyadi'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 136
    Width = 500
    Height = 21
    DataField = 'TEL'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 176
    Width = 500
    Height = 21
    DataField = 'EPOSTA'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 216
    Width = 500
    Height = 21
    DataField = 'indirim'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 256
    Width = 500
    Height = 21
    DataField = 'Reklam_Aboneligi'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 288
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
    Left = 144
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from musteri')
    Left = 192
    Top = 48
    object ADOQuery1Ad_Soyadi: TWideStringField
      FieldName = 'Ad'#305'_Soyadi'
      Size = 255
    end
    object ADOQuery1TEL: TWideStringField
      FieldName = 'TEL'
      Size = 255
    end
    object ADOQuery1EPOSTA: TWideStringField
      FieldName = 'EPOSTA'
      Size = 255
    end
    object ADOQuery1indirim: TWideStringField
      FieldName = 'indirim'
      Size = 255
    end
    object ADOQuery1Reklam_Aboneligi: TWideStringField
      FieldName = 'Reklam_Aboneligi'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 448
    Top = 224
  end
end
