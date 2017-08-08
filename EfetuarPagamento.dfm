object frmEfetuarPagamento: TfrmEfetuarPagamento
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Efetuar Pagamento'
  ClientHeight = 121
  ClientWidth = 321
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
    Width = 321
    Height = 121
    Caption = '3.a - Efetuar Pagamento'
    TabOrder = 0
    object Label1: TLabel
      Left = 61
      Top = 59
      Width = 106
      Height = 13
      Caption = 'Forma de pagamento:'
    end
    object Label2: TLabel
      Left = 67
      Top = 86
      Width = 100
      Height = 13
      Caption = 'Valor do Pagamento:'
    end
    object txtVpag: TMemo
      Left = 173
      Top = 83
      Width = 145
      Height = 21
      Lines.Strings = (
        '1.00')
      TabOrder = 0
    end
    object btnEfetuarPagamento: TButton
      Left = 17
      Top = 22
      Width = 107
      Height = 25
      Caption = 'Efetuar Pagamento'
      TabOrder = 1
      OnClick = btnEfetuarPagamentoClick
    end
    object btnJson: TButton
      Left = 130
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Json'
      TabOrder = 2
      OnClick = btnJsonClick
    end
    object btnFechar: TButton
      Left = 211
      Top = 22
      Width = 107
      Height = 25
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = btnFecharClick
    end
    object txtTpag: TComboBox
      Left = 173
      Top = 56
      Width = 145
      Height = 22
      AutoComplete = False
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 4
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
  end
end
