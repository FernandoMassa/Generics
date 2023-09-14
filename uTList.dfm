object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 357
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object btnAdd: TButton
    Left = 16
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 0
    OnClick = btnAddClick
  end
  object brnRemover: TButton
    Left = 16
    Top = 108
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 1
    OnClick = brnRemoverClick
  end
  object btnListar: TButton
    Left = 16
    Top = 153
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 2
    OnClick = btnListarClick
  end
  object btnCapacity: TButton
    Left = 16
    Top = 198
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 3
    OnClick = btnCapacityClick
  end
  object btnCount: TButton
    Left = 16
    Top = 243
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 4
    OnClick = btnCountClick
  end
  object btnOnNotify: TButton
    Left = 16
    Top = 288
    Width = 75
    Height = 25
    Caption = 'OnNotify'
    TabOrder = 5
    OnClick = btnOnNotifyClick
  end
  object Memo1: TMemo
    Left = 120
    Top = 57
    Width = 344
    Height = 256
    Lines.Strings = (
      'Memo1')
    TabOrder = 6
  end
  object Edit1: TEdit
    Left = 16
    Top = 16
    Width = 448
    Height = 23
    TabOrder = 7
    Text = 'Edit1'
  end
end
