object frmInserirICMSSimplesNacional: TfrmInserirICMSSimplesNacional
  Left = 0
  Top = 0
  Caption = 'Inserir Tributa'#231#227'o ICMS Simples Nacional'
  ClientHeight = 366
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
    Left = 95
    Top = 10
    Width = 45
    Height = 13
    Caption = 'CSNOSN:'
  end
  object Label3: TLabel
    Left = 66
    Top = 38
    Width = 74
    Height = 13
    Caption = 'Modalidade BC:'
  end
  object Label4: TLabel
    Left = 63
    Top = 65
    Width = 76
    Height = 13
    Caption = '% Redu'#231#227'o BC:'
  end
  object Label5: TLabel
    Left = 93
    Top = 89
    Width = 45
    Height = 13
    Caption = 'BC ICMS:'
  end
  object Label6: TLabel
    Left = 96
    Top = 113
    Width = 43
    Height = 13
    Caption = 'Al'#237'quota:'
  end
  object Label7: TLabel
    Left = 83
    Top = 140
    Width = 56
    Height = 13
    Caption = 'Valor ICMS:'
  end
  object Label8: TLabel
    Left = 54
    Top = 170
    Width = 84
    Height = 13
    Caption = 'Det. BC ICMS ST:'
  end
  object Label9: TLabel
    Left = 2
    Top = 191
    Width = 139
    Height = 13
    Caption = 'Margem Valor Adic. ICMS ST:'
  end
  object Label10: TLabel
    Left = 38
    Top = 217
    Width = 100
    Height = 13
    Caption = '% Red. BC ICMS ST:'
  end
  object Label11: TLabel
    Left = 25
    Top = 241
    Width = 113
    Height = 13
    Caption = 'Valor Red. BC ICMS ST:'
  end
  object Label12: TLabel
    Left = 52
    Top = 269
    Width = 86
    Height = 13
    Caption = 'Al'#237'quota ICMS ST:'
  end
  object Label13: TLabel
    Left = 66
    Top = 296
    Width = 71
    Height = 13
    Caption = 'Valor ICMS ST:'
  end
  object Label14: TLabel
    Left = 358
    Top = 193
    Width = 78
    Height = 13
    Caption = 'Valor BC Retida:'
  end
  object Label15: TLabel
    Left = 346
    Top = 219
    Width = 90
    Height = 13
    Caption = 'Valor ICMS Retido:'
  end
  object Label16: TLabel
    Left = 262
    Top = 245
    Width = 174
    Height = 13
    Caption = 'Al'#237'quota Aplic'#225'vel c'#225'lculo de cr'#233'dito:'
  end
  object Label17: TLabel
    Left = 312
    Top = 269
    Width = 124
    Height = 13
    Caption = 'Valor de Cr'#233'dito de ICMS:'
  end
  object Label18: TLabel
    Left = 276
    Top = 297
    Width = 159
    Height = 13
    Caption = 'Valor total de tributos incidentes:'
  end
  object txtPredBCST: TEdit
    Left = 144
    Top = 215
    Width = 150
    Height = 21
    TabOrder = 0
  end
  object txtpMVAST: TEdit
    Left = 146
    Top = 190
    Width = 148
    Height = 21
    TabOrder = 1
  end
  object txtpRedBC: TEdit
    Left = 145
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object txtVbc: TEdit
    Left = 144
    Top = 87
    Width = 123
    Height = 21
    TabOrder = 3
  end
  object txtpICMS: TEdit
    Left = 145
    Top = 111
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '18.00'
  end
  object txtVicms: TEdit
    Left = 145
    Top = 138
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0.42'
  end
  object txtVBCst: TEdit
    Left = 144
    Top = 241
    Width = 105
    Height = 21
    TabOrder = 6
  end
  object txtPICMSST: TEdit
    Left = 144
    Top = 266
    Width = 105
    Height = 21
    TabOrder = 7
  end
  object txtVicmsst: TEdit
    Left = 143
    Top = 293
    Width = 106
    Height = 21
    TabOrder = 8
  end
  object txtVBCSTret: TEdit
    Left = 442
    Top = 190
    Width = 66
    Height = 21
    TabOrder = 9
    Text = '0'
  end
  object txtvCredICMSSN: TEdit
    Left = 442
    Top = 267
    Width = 66
    Height = 21
    TabOrder = 10
  end
  object txtpCredSN: TEdit
    Left = 442
    Top = 242
    Width = 66
    Height = 21
    TabOrder = 11
  end
  object txtvICMSRet: TEdit
    Left = 442
    Top = 218
    Width = 66
    Height = 21
    TabOrder = 12
    Text = '0'
  end
  object txtVtotTrib: TEdit
    Left = 441
    Top = 295
    Width = 66
    Height = 21
    TabOrder = 13
    Text = '0.42'
  end
  object txtmodBCST: TComboBox
    Left = 144
    Top = 165
    Width = 246
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 1
    TabOrder = 14
    Text = '0 - Pre'#231'o tabelado ou m'#225'ximo sugerido'
    Items.Strings = (
      ''
      '0 - Pre'#231'o tabelado ou m'#225'ximo sugerido'
      '1 - Lista Negativa (valor)'
      '2 - Lista Positiva (valor)'
      '3 - Lista Neutra (valor) '
      '4 - Margem Valor Agregado (%)'
      '5 - Pauta (valor)')
  end
  object txtModBC: TComboBox
    Left = 146
    Top = 35
    Width = 246
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 1
    TabOrder = 15
    Text = '0 - Margem Valor Agregado (%)'
    Items.Strings = (
      ''
      '0 - Margem Valor Agregado (%)'
      '1 - Pauta (Valor)'
      '2 - Pre'#231'o Tabelado M'#225'x. (valor)'
      '3 - Valor da opera'#231#227'o')
  end
  object btnFechar: TButton
    Left = 352
    Top = 330
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 16
    OnClick = btnFecharClick
  end
  object btnInserir: TButton
    Left = 433
    Top = 330
    Width = 75
    Height = 25
    Caption = 'Inserir ICMS'
    TabOrder = 17
    OnClick = btnInserirClick
  end
  object txtCSOSN: TComboBox
    Left = 146
    Top = 8
    Width = 246
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 1
    TabOrder = 18
    Text = '102'
    Items.Strings = (
      '101'
      '102'
      '201'
      '202'
      '500'
      '900')
  end
end
