object FormGenerics: TFormGenerics
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Generics'
  ClientHeight = 409
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
  object Memo1: TMemo
    Left = 320
    Top = 8
    Width = 362
    Height = 393
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 306
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Enqueue'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 66
    Width = 75
    Height = 25
    Caption = 'Dequeue'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 97
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 159
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 8
    Top = 190
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 8
    Top = 221
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 8
    OnClick = Button7Click
  end
end
