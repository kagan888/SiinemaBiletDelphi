object Form8: TForm8
  Left = 398
  Top = 191
  Caption = 'Vizyone Ekle'
  ClientHeight = 308
  ClientWidth = 561
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 10485760
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 72
    Width = 57
    Height = 18
    Caption = 'Film Ad'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 112
    Width = 66
    Height = 18
    Caption = 'Seans ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 152
    Width = 62
    Height = 18
    Caption = 'Salon ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 312
    Top = 48
    Width = 81
    Height = 13
    Caption = 'Seans Bilgileri'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10485760
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 456
    Top = 48
    Width = 78
    Height = 13
    Caption = 'Salon Bilgileri'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10485760
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 256
    Width = 62
    Height = 18
    Caption = 'Salon ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 104
    Top = 72
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'Se'#231'iniz'
  end
  object Button1: TButton
    Left = 152
    Top = 184
    Width = 97
    Height = 25
    Caption = 'Vizyone Ekle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object ComboBox2: TComboBox
    Left = 104
    Top = 112
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'Se'#231'iniz'
    OnChange = ComboBox2Change
  end
  object ComboBox3: TComboBox
    Left = 104
    Top = 152
    Width = 145
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = 'Seans Se'#231'iniz'
    OnChange = ComboBox3Change
  end
  object ListBox1: TListBox
    Left = 272
    Top = 72
    Width = 153
    Height = 105
    ItemHeight = 13
    TabOrder = 4
  end
  object ListBox2: TListBox
    Left = 432
    Top = 72
    Width = 121
    Height = 105
    ItemHeight = 13
    TabOrder = 5
  end
  object Button2: TButton
    Left = 344
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 8
    Top = 232
    Width = 553
    Height = 49
    Color = clMoneyGreen
    TabOrder = 7
    object Label7: TLabel
      Left = 16
      Top = 16
      Width = 197
      Height = 13
      Caption = 'V'#304'ZYONDAN '#199'IKARTILACAK F'#304'LM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox4: TComboBox
      Left = 264
      Top = 16
      Width = 153
      Height = 21
      TabOrder = 0
      Text = 'Vizyondaki Filmler'
    end
    object Button3: TButton
      Left = 440
      Top = 16
      Width = 105
      Height = 25
      Caption = 'Vizyondan '#199#305'kart'
      TabOrder = 1
      OnClick = Button3Click
    end
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
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From filmler')
    Left = 104
    Top = 24
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From seans')
    Left = 144
    Top = 24
  end
end
