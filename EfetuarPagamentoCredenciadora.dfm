object frmEfetuarPagamentoCredenciadora: TfrmEfetuarPagamentoCredenciadora
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Efetuar Pagamento Credenciadora'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 417
    Height = 209
    Caption = '3.b - Efetuar Pagamento Credenciadora'
    TabOrder = 0
    object Label1: TLabel
      Left = 29
      Top = 57
      Width = 153
      Height = 13
      Caption = #205'ndice da Forma de Pagamento:'
    end
    object Label2: TLabel
      Left = 21
      Top = 78
      Width = 28
      Height = 13
      Caption = 'Valor:'
    end
    object Label3: TLabel
      Left = 189
      Top = 81
      Width = 55
      Height = 13
      Caption = 'CNPJ Cred:'
    end
    object Label4: TLabel
      Left = 20
      Top = 103
      Width = 112
      Height = 13
      Caption = 'C'#243'digo de Autoriza'#231#227'o:'
    end
    object Label6: TLabel
      Left = 16
      Top = 161
      Width = 108
      Height = 13
      Caption = 'C'#243'digo de Integra'#231#227'o:'
    end
    object Label5: TLabel
      Left = 16
      Top = 128
      Width = 116
      Height = 13
      Caption = 'Bandeira da Operadora:'
    end
    object txtTpag: TComboBox
      Left = 188
      Top = 54
      Width = 226
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 0
      Text = '1 - Dinheiro'
      Items.Strings = (
        '1 - Dinheiro'
        '2 - Cheque'
        '3 - Cart'#227'o de Cr'#233'dito'
        '4 - Cart'#227'o de D'#233'bito'
        '5 - Cr'#233'dito Loja'
        '10 - Vale Alimenta'#231#227'o'
        '11 - Vale Refei'#231#227'o'
        '12 - Vale Presente'
        '13 - Vale Combust'#237'vel'
        '99 - Outros ')
    end
    object txtVpag: TEdit
      Left = 55
      Top = 76
      Width = 77
      Height = 21
      TabOrder = 1
      Text = '1.00'
    end
    object txtCnpj: TEdit
      Left = 250
      Top = 78
      Width = 164
      Height = 21
      TabOrder = 2
      Text = '01425787000101'
    end
    object txtcAut: TEdit
      Left = 138
      Top = 100
      Width = 88
      Height = 21
      TabOrder = 3
      Text = '333'
    end
    object txtTpIntegra: TComboBox
      Left = 130
      Top = 158
      Width = 284
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 4
      Text = '1 - Pagamento integrado com o sistema de automa'#231#227'o da empresa'
      Items.Strings = (
        '1 - Pagamento integrado com o sistema de automa'#231#227'o da empresa'
        
          '2 - Pagamento n'#227'o integrado com o sistema de automa'#231#227'o da empres' +
          'a')
    end
    object btnEfetuarPagamento: TButton
      Left = 21
      Top = 23
      Width = 103
      Height = 25
      Caption = 'Efetuar Pagamento'
      TabOrder = 5
      OnClick = btnEfetuarPagamentoClick
    end
    object btnJson: TButton
      Left = 130
      Top = 23
      Width = 75
      Height = 25
      Caption = 'Json'
      TabOrder = 6
      OnClick = btnJsonClick
    end
    object btnFechar: TButton
      Left = 211
      Top = 23
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 7
      OnClick = btnFecharClick
    end
    object txtTband: TComboBox
      Left = 138
      Top = 127
      Width = 226
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 8
      Text = '01 - Visa'
      Items.Strings = (
        '01 - Visa'
        '02 - Mastercard'
        '03 - American Express'
        '04 - Sorocred'
        '99 - Outros ')
    end
  end
end
