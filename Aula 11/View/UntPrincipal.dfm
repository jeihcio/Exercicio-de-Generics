object FormGenerics: TFormGenerics
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Generics'
  ClientHeight = 42
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Normal'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 447
    Top = 8
    Width = 75
    Height = 25
    Caption = 'SmartPoint'
    TabOrder = 1
    OnClick = Button2Click
  end
end
