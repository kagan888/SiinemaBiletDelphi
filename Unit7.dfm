object Form7: TForm7
  Left = 389
  Top = 201
  Caption = 'Seans '#304#351'lemleri'
  ClientHeight = 347
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 88
    Width = 42
    Height = 13
    Caption = 'seans_id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 96
    Top = 128
    Width = 54
    Height = 13
    Caption = 'seans_tarih'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 96
    Top = 168
    Width = 54
    Height = 13
    Caption = 'seans_saat'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 96
    Top = 208
    Width = 39
    Height = 13
    Caption = 'salon_id'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 104
    Width = 370
    Height = 21
    DataField = 'seans_id'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 144
    Width = 370
    Height = 21
    DataField = 'seans_tarih'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 184
    Width = 370
    Height = 21
    DataField = 'seans_saat'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 96
    Top = 224
    Width = 370
    Height = 21
    DataField = 'salon_id'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 96
    Top = 256
    Width = 368
    Height = 33
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbRefresh]
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 32
    Top = 72
    Width = 481
    Height = 241
    TabOrder = 5
    Visible = False
    object Label5: TLabel
      Left = 96
      Top = 48
      Width = 65
      Height = 13
      Caption = 'Seans Tarihi :'
    end
    object Label6: TLabel
      Left = 96
      Top = 80
      Width = 63
      Height = 13
      Caption = 'Seans Saati :'
    end
    object Label7: TLabel
      Left = 104
      Top = 112
      Width = 47
      Height = 13
      Caption = 'Salon ID :'
    end
    object MaskEdit1: TMaskEdit
      Left = 176
      Top = 48
      Width = 120
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  .  .    '
    end
    object MaskEdit2: TMaskEdit
      Left = 176
      Top = 80
      Width = 118
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 1
      Text = '  :  '
    end
    object ComboBox1: TComboBox
      Left = 176
      Top = 112
      Width = 113
      Height = 21
      TabOrder = 2
      Text = 'Salon Se'#231'iniz'
    end
    object Button3: TButton
      Left = 216
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Ekle'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Button1: TButton
    Left = 400
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Seans Ekle'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 24
    Width = 91
    Height = 25
    Caption = 'Seanslari D'#252'zenle'
    TabOrder = 7
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Emir\Deskt' +
      'op\Sinema Otomasyon\sinema.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from seans')
    Left = 112
    Top = 24
    object ADOQuery1seans_id: TIntegerField
      FieldName = 'seans_id'
    end
    object ADOQuery1seans_tarih: TWideStringField
      FieldName = 'seans_tarih'
      Size = 255
    end
    object ADOQuery1seans_saat: TWideStringField
      FieldName = 'seans_saat'
      Size = 255
    end
    object ADOQuery1salon_id: TWideStringField
      FieldName = 'salon_id'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 176
    Top = 32
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 224
    Top = 32
  end
end
