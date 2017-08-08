object frmInserirPIS: TfrmInserirPIS
  Left = 0
  Top = 0
  Caption = 'Inserir PIS'
  ClientHeight = 209
  ClientWidth = 417
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
  object Label1: TLabel
    Left = 108
    Top = 12
    Width = 23
    Height = 13
    Caption = 'CST:'
  end
  object Label2: TLabel
    Left = 119
    Top = 38
    Width = 17
    Height = 13
    Caption = 'BC:'
  end
  object Label3: TLabel
    Left = 93
    Top = 65
    Width = 43
    Height = 13
    Caption = 'Al'#237'quota:'
  end
  object Label4: TLabel
    Left = 108
    Top = 94
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Label5: TLabel
    Left = 57
    Top = 119
    Width = 79
    Height = 13
    Caption = 'Quant. Vendida:'
  end
  object Label7: TLabel
    Left = 8
    Top = 146
    Width = 128
    Height = 13
    Caption = 'Total de Incid'#234'ncia do PIS:'
  end
  object txtCST: TComboBox
    Left = 142
    Top = 8
    Width = 259
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 2
    TabOrder = 0
    Text = 
      '03 - Opera'#231#227'o Tribut'#225'vel - Base de C'#225'lculo = Qtde Vendida x Al'#237'q' +
      '. por Unidade'
    OnChange = txtCSTChange
    Items.Strings = (
      '01 - Opera'#231#227'o Tribut'#225'vel - Base de C'#225'lculo = Al'#237'quota normal'
      
        '02 - Opera'#231#227'o Tribut'#225'vel - Base de C'#225'lculo = Al'#237'quota Diferencia' +
        'da'
      
        '03 - Opera'#231#227'o Tribut'#225'vel - Base de C'#225'lculo = Qtde Vendida x Al'#237'q' +
        '. por Unidade'
      '04 - Opera'#231#227'o Tribut'#225'vel - Tributa'#231#227'o Monof'#225'sica'
      '05 - Opera'#231#227'o Tribut'#225'vel - Substitui'#231#227'o Tribut'#225'ria'
      '06 - Opera'#231#227'o Tribut'#225'vel - Al'#237'quota Zero'
      '07 - Opera'#231#227'o Isenta de Contribui'#231#227'o'
      '08 - Opera'#231#227'o sem incid'#234'ncia da contribui'#231#227'o'
      '09 - Opera'#231#227'o com suspens'#227'o da contribui'#231#227'o'
      '99 - Outras Opera'#231#245'es')
  end
  object txtVbc: TEdit
    Left = 142
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object txtPpis: TEdit
    Left = 142
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '07.00'
  end
  object txtVpis: TEdit
    Left = 142
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object txtQbcProd: TEdit
    Left = 142
    Top = 116
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object txtvAliqProd: TEdit
    Left = 142
    Top = 143
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object btnInserirPIS: TButton
    Left = 245
    Top = 174
    Width = 75
    Height = 25
    Caption = 'Inserir PIS'
    TabOrder = 6
    OnClick = btnInserirPISClick
  end
  object btnFechar: TButton
    Left = 326
    Top = 174
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 7
    OnClick = btnFecharClick
  end
end
