object frmInserirICMS: TfrmInserirICMS
  Left = 0
  Top = 0
  Caption = 'Inserir Tributa'#231#227'o ICMS'
  ClientHeight = 232
  ClientWidth = 515
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
  object Label2: TLabel
    Left = 10
    Top = 10
    Width = 54
    Height = 13
    Caption = 'CST_ICMS:'
  end
  object Label3: TLabel
    Left = 8
    Top = 32
    Width = 196
    Height = 13
    Caption = 'Modalidade de Determ. Base Calc. ICMS:'
  end
  object Label4: TLabel
    Left = 218
    Top = 54
    Width = 44
    Height = 13
    Caption = 'Valor BC:'
  end
  object Label5: TLabel
    Left = 8
    Top = 54
    Width = 138
    Height = 13
    Caption = 'Perc. de Redu'#231#227'o Base Calc.'
  end
  object Label6: TLabel
    Left = 339
    Top = 54
    Width = 71
    Height = 13
    Caption = 'Aliquota ICMS:'
  end
  object Label7: TLabel
    Left = 8
    Top = 80
    Width = 56
    Height = 13
    Caption = 'Valor ICMS:'
  end
  object Label8: TLabel
    Left = 147
    Top = 80
    Width = 141
    Height = 13
    Caption = 'Mod. Det. da BC do ICMS ST:'
  end
  object Label9: TLabel
    Left = 294
    Top = 104
    Width = 145
    Height = 13
    Caption = '% da Red. de BC do ICMS ST:'
  end
  object Label10: TLabel
    Left = 8
    Top = 105
    Width = 168
    Height = 13
    Caption = '% Margem do Valor Adic. ICMS ST:'
  end
  object Label11: TLabel
    Left = 17
    Top = 126
    Width = 158
    Height = 13
    Caption = 'Valor da Red. de BC do ICMS ST:'
  end
  object Label12: TLabel
    Left = 352
    Top = 126
    Width = 86
    Height = 13
    Caption = 'Al'#237'quota ICMS ST:'
  end
  object Label13: TLabel
    Left = 8
    Top = 149
    Width = 71
    Height = 13
    Caption = 'Valor ICMS ST:'
  end
  object Label14: TLabel
    Left = 196
    Top = 150
    Width = 93
    Height = 13
    Caption = 'Valor da BC Retida:'
  end
  object Label15: TLabel
    Left = 8
    Top = 176
    Width = 117
    Height = 13
    Caption = 'Valor ICMS Desonerado:'
  end
  object Label16: TLabel
    Left = 362
    Top = 150
    Width = 76
    Height = 13
    Caption = 'Valor ICMS Ret:'
  end
  object Label17: TLabel
    Left = 196
    Top = 172
    Width = 94
    Height = 13
    Caption = 'Mot. da Des. ICMS:'
  end
  object Label18: TLabel
    Left = 8
    Top = 198
    Width = 112
    Height = 13
    Caption = 'Valor Total de Tributos:'
  end
  object btnFechar: TButton
    Left = 435
    Top = 199
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = btnFecharClick
  end
  object btnInserirICMS: TButton
    Left = 354
    Top = 199
    Width = 75
    Height = 25
    Caption = 'Inserir ICMS'
    TabOrder = 1
    OnClick = btnInserirICMSClick
  end
  object txtVicms: TEdit
    Left = 70
    Top = 78
    Width = 65
    Height = 21
    TabOrder = 2
    Text = '0.01'
  end
  object txtVbc: TEdit
    Left = 268
    Top = 52
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '1.00'
  end
  object txtvICMSRet: TEdit
    Left = 444
    Top = 150
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object txtPredBCST: TEdit
    Left = 445
    Top = 103
    Width = 65
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object txtPmvast: TEdit
    Left = 182
    Top = 104
    Width = 65
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object txtPicms: TEdit
    Left = 416
    Top = 52
    Width = 65
    Height = 21
    TabOrder = 7
    Text = '1.01'
  end
  object txtPredBC: TEdit
    Left = 152
    Top = 53
    Width = 65
    Height = 21
    TabOrder = 8
    Text = '0'
  end
  object txtVBCSTret: TEdit
    Left = 291
    Top = 145
    Width = 65
    Height = 21
    TabOrder = 9
    Text = '0'
  end
  object txtVicmsst: TEdit
    Left = 82
    Top = 148
    Width = 65
    Height = 21
    TabOrder = 10
    Text = '0'
  end
  object txtPICMSST: TEdit
    Left = 444
    Top = 126
    Width = 65
    Height = 21
    TabOrder = 11
    Text = '0'
  end
  object txtVBCst: TEdit
    Left = 181
    Top = 127
    Width = 65
    Height = 21
    TabOrder = 12
    Text = '0'
  end
  object txtVicmsDeson: TEdit
    Left = 125
    Top = 171
    Width = 65
    Height = 21
    TabOrder = 13
    Text = '0'
  end
  object txtVTotTrib: TEdit
    Left = 125
    Top = 198
    Width = 65
    Height = 21
    TabOrder = 14
    Text = '0'
  end
  object txtCST: TComboBox
    Left = 70
    Top = 8
    Width = 36
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 0
    TabOrder = 15
    Text = '00'
    OnChange = txtCSTChange
    Items.Strings = (
      '00'
      '10'
      '20'
      '30'
      '40'
      '41'
      '60'
      '70'
      '90'
      '')
  end
  object txtModBC: TComboBox
    Left = 210
    Top = 29
    Width = 200
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 3
    TabOrder = 16
    Text = '3 - Valor da Opera'#231#227'o'
    Items.Strings = (
      '0 - Margem Valor Agregado (%)'
      '1 - Pauta (Valor)'
      '2 - Pre'#231'o Tabelado M'#225's (valor)'
      '3 - Valor da Opera'#231#227'o')
  end
  object txtModBCST: TComboBox
    Left = 294
    Top = 75
    Width = 216
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 3
    TabOrder = 17
    Text = '3 - Lista Neutra (Valor)'
    Items.Strings = (
      '0 - Pre'#231'o Tabelado ou m'#225'ximo sugerido'
      '1 - Lista Negativa (Valor)'
      '2 - Lista Positiva (Valor)'
      '3 - Lista Neutra (Valor)'
      '4 - Margem Valor Agregado (%)'
      '5 - Pauta (Valor)')
  end
  object txtMotdesICMS: TComboBox
    Left = 291
    Top = 169
    Width = 219
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 8
    TabOrder = 18
    Text = '9 - Outros'
    Items.Strings = (
      '1'
      '2'
      '3 - Uso na Agropecu'#225'ria'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9 - Outros'
      '12 - '#211'rg'#227'o de fomento e desenvolvimento agroupecu'#225'rio')
  end
end
