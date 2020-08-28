object FormGenerics: TFormGenerics
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Generics'
  ClientHeight = 384
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 134
    Top = 14
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 319
    Top = 14
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Memo1: TMemo
    Left = 134
    Top = 57
    Width = 548
    Height = 318
    TabOrder = 0
  end
  object EditCPF: TEdit
    Left = 134
    Top = 30
    Width = 179
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 9
    Width = 120
    Height = 25
    Caption = 'Add'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 40
    Width = 120
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 71
    Width = 120
    Height = 25
    Caption = 'Remove'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 102
    Width = 120
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 133
    Width = 120
    Height = 25
    Caption = 'ContainsKey'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 164
    Width = 120
    Height = 25
    Caption = 'ContainsValue'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 195
    Width = 120
    Height = 25
    Caption = 'AddPOrSetValue'
    TabOrder = 8
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 8
    Top = 226
    Width = 120
    Height = 25
    Caption = 'Lista Key'
    TabOrder = 9
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 8
    Top = 257
    Width = 120
    Height = 25
    Caption = 'Lista Value'
    TabOrder = 10
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 8
    Top = 288
    Width = 120
    Height = 25
    Caption = 'Clear'
    TabOrder = 11
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 8
    Top = 319
    Width = 120
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 12
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 8
    Top = 350
    Width = 120
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 13
    OnClick = Button12Click
  end
  object EditNome: TEdit
    Left = 319
    Top = 30
    Width = 363
    Height = 21
    TabOrder = 14
  end
end
