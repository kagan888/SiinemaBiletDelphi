object Form9: TForm9
  Left = 351
  Top = 214
  Caption = 'Vizyondaki Filmler'
  ClientHeight = 331
  ClientWidth = 535
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
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Film Ad'#305
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 57
    Height = 13
    Caption = 'Film Konusu'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 136
    Width = 79
    Height = 13
    Caption = 'Filmin Y'#246'netmeni'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 8
    Top = 176
    Width = 75
    Height = 13
    Caption = 'Filmin Kategorisi'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 72
    Width = 500
    Height = 21
    DataField = 'film_adi'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 112
    Width = 500
    Height = 21
    DataField = 'film_konu'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 152
    Width = 500
    Height = 21
    DataField = 'yonetmen'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 192
    Width = 500
    Height = 21
    DataField = 'film_kategori'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 224
    Width = 496
    Height = 33
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 4
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Emir\Deskt' +
      'op\Sinema Otomasyon\sinema.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 112
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from filmler where seans_id <> '#39'0'#39' and salon_id <> '#39'0'#39)
    Left = 160
    Top = 16
    object ADOQuery1film_adi: TWideStringField
      FieldName = 'film_adi'
      Size = 255
    end
    object ADOQuery1film_konu: TWideStringField
      FieldName = 'film_konu'
      Size = 255
    end
    object ADOQuery1yonetmen: TWideStringField
      FieldName = 'yonetmen'
      Size = 255
    end
    object ADOQuery1film_kategori: TWideStringField
      FieldName = 'film_kategori'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 360
    Top = 168
  end
end
