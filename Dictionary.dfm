object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 585
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 441
    Top = 19
    Width = 38
    Height = 15
    Caption = 'G'#234'nero'
    Visible = False
  end
  object edtNome: TLabeledEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 23
    EditLabel.Width = 33
    EditLabel.Height = 15
    EditLabel.Caption = 'Nome'
    TabOrder = 0
    Text = ''
  end
  object edtCPF: TLabeledEdit
    Left = 156
    Top = 24
    Width = 121
    Height = 23
    EditLabel.Width = 21
    EditLabel.Height = 15
    EditLabel.Caption = 'CPF'
    TabOrder = 2
    Text = ''
  end
  object edtGrad: TLabeledEdit
    Left = 577
    Top = 24
    Width = 121
    Height = 23
    EditLabel.Width = 57
    EditLabel.Height = 15
    EditLabel.Caption = 'Gradua'#231#227'o'
    TabOrder = 4
    Text = ''
    Visible = False
  end
  object cbxGenero: TComboBox
    Left = 441
    Top = 40
    Width = 121
    Height = 23
    ItemIndex = 0
    TabOrder = 3
    Text = 'Masculino'
    Visible = False
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
  object edtNacional: TLabeledEdit
    Left = 297
    Top = 24
    Width = 121
    Height = 23
    EditLabel.Width = 76
    EditLabel.Height = 15
    EditLabel.Caption = 'Nacionalidade'
    TabOrder = 1
    Text = ''
  end
  object Memo1: TMemo
    Left = 256
    Top = 101
    Width = 512
    Height = 476
    TabOrder = 5
  end
  object btnAdd: TButton
    Left = 8
    Top = 114
    Width = 205
    Height = 25
    Caption = 'Add'
    TabOrder = 6
    OnClick = btnAddClick
  end
  object btnTryGetValue: TButton
    Left = 8
    Top = 150
    Width = 205
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 7
    OnClick = btnTryGetValueClick
  end
  object btnRemove: TButton
    Left = 8
    Top = 186
    Width = 205
    Height = 25
    Caption = 'Remove'
    TabOrder = 8
    OnClick = btnRemoveClick
  end
  object Button1: TButton
    Left = 8
    Top = 222
    Width = 205
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 258
    Width = 205
    Height = 25
    Caption = 'ConstrainsKey'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 294
    Width = 205
    Height = 25
    Caption = 'ConstrainsValue'
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 331
    Width = 205
    Height = 25
    Caption = 'AddOrSetValue'
    TabOrder = 12
  end
  object Button5: TButton
    Left = 8
    Top = 367
    Width = 205
    Height = 25
    Caption = 'Lista Key'
    TabOrder = 13
  end
  object Button6: TButton
    Left = 8
    Top = 403
    Width = 205
    Height = 25
    Caption = 'Lista Value'
    TabOrder = 14
  end
  object Button7: TButton
    Left = 8
    Top = 439
    Width = 205
    Height = 25
    Caption = 'Clear'
    TabOrder = 15
  end
  object Button8: TButton
    Left = 8
    Top = 475
    Width = 205
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 16
  end
  object Button9: TButton
    Left = 8
    Top = 512
    Width = 205
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 17
  end
end
