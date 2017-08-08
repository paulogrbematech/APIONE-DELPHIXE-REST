object frmInserirCOFINS: TfrmInserirCOFINS
  Left = 0
  Top = 0
  Caption = 'Inserir COFINS'
  ClientHeight = 196
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 162
    Top = 11
    Width = 23
    Height = 13
    Caption = 'CST:'
  end
  object Label1: TLabel
    Left = 126
    Top = 34
    Width = 59
    Height = 13
    Caption = 'Valor da BC:'
  end
  object Label3: TLabel
    Left = 8
    Top = 60
    Width = 181
    Height = 13
    Caption = 'Al'#237'quota da COFINS (em percentual): '
  end
  object Label4: TLabel
    Left = 101
    Top = 88
    Width = 84
    Height = 13
    Caption = 'Valor da COFINS:'
  end
  object Label5: TLabel
    Left = 81
    Top = 111
    Width = 104
    Height = 13
    Caption = 'Quantidade Vendida :'
  end
  object Label6: TLabel
    Left = 32
    Top = 136
    Width = 153
    Height = 13
    Caption = 'Al'#237'quota da COFINS (em reais) :'
  end
  object btnFechar: TButton
    Left = 432
    Top = 163
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = btnFecharClick
  end
  object btnInserirCOFINS: TButton
    Left = 334
    Top = 163
    Width = 85
    Height = 25
    Caption = 'Inserir COFINS'
    TabOrder = 1
    OnClick = btnInserirCOFINSClick
  end
  object txtCST: TComboBox
    Left = 191
    Top = 8
    Width = 316
    Height = 22
    Style = csOwnerDrawFixed
    ItemIndex = 2
    TabOrder = 2
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
      '07 - Oper'#231#227'o Isenta de Contribui'#231#227'o'
      '08 - Opera'#231#227'o sem incid'#234'ncia da contribui'#231#227'o'
      '09 - Opera'#231#227'o com suspens'#227'o da contribui'#231#227'o'
      '99 - Outras Opera'#231#245'es')
  end
  object txtVbc: TEdit
    Left = 191
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object txtPcofins: TEdit
    Left = 191
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '07.00'
  end
  object txtQbcProd: TEdit
    Left = 191
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object txtValiqProd: TEdit
    Left = 191
    Top = 135
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object txtVcofins: TEdit
    Left = 191
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '0'
  end
end
