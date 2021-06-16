object Form1: TForm1
  Left = 373
  Top = 189
  Caption = 'Sinema Otomasyon'
  ClientHeight = 326
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 40
    Top = 40
    Width = 441
    Height = 249
    Caption = 'Giri'#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 72
      Top = 88
      Width = 108
      Height = 20
      Caption = 'Kullan'#305'c'#305' Ad'#305' :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 112
      Top = 120
      Width = 62
      Height = 20
      Caption = 'Parola :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 200
      Top = 168
      Width = 113
      Height = 33
      Caption = 'Giri'#351' Yap'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 192
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 192
      Top = 120
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
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
    Left = 104
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from kullanicilar')
    Left = 208
    Top = 16
  end
end
