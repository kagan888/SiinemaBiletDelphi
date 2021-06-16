object Form6: TForm6
  Left = 458
  Top = 175
  Caption = 'Sinema '#304#351'lemleri'
  ClientHeight = 355
  ClientWidth = 449
  Color = clBtnFace
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
    Width = 36
    Height = 13
    Caption = 'Film Ad'#305
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 120
    Width = 46
    Height = 13
    Caption = 'Film Konu'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 160
    Width = 48
    Height = 13
    Caption = 'Y'#246'netmen'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 200
    Width = 75
    Height = 13
    Caption = 'Filmin Kategorisi'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 40
    Width = 49
    Height = 13
    Caption = 'Film ID No'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 96
    Width = 400
    Height = 21
    DataField = 'film_adi'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 136
    Width = 400
    Height = 21
    DataField = 'film_konu'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 176
    Width = 400
    Height = 21
    DataField = 'yonetmen'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 216
    Width = 400
    Height = 21
    DataField = 'film_kategori'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 248
    Width = 400
    Height = 49
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 56
    Width = 401
    Height = 21
    DataField = 'film_id'
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
    Left = 120
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from filmler')
    Left = 232
    Top = 8
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
    object ADOQuery1film_id: TIntegerField
      FieldName = 'film_id'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 448
    Top = 248
  end
end
