object frmVendaCompleta: TfrmVendaCompleta
  Left = 0
  Top = 0
  Caption = 'Inserir Numero da Nota'
  ClientHeight = 522
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 197
    Top = 42
    Width = 129
    Height = 13
    Caption = 'Data/Hora de Emiss'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 9
    Top = 43
    Width = 93
    Height = 22
    Caption = 'N'#250'mero da Nota:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtDhemi: TMemo
    Left = 332
    Top = 39
    Width = 185
    Height = 22
    Enabled = False
    TabOrder = 0
  end
  object txtNumeroNota: TMemo
    Left = 108
    Top = 39
    Width = 75
    Height = 22
    Lines.Strings = (
      '1')
    TabOrder = 1
  end
  object btnRealizarVenda: TButton
    Left = 189
    Top = 8
    Width = 162
    Height = 25
    Caption = 'Realizar Venda'
    Enabled = False
    TabOrder = 2
    OnClick = btnRealizarVendaClick
  end
  object btnFechar: TButton
    Left = 442
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = btnFecharClick
  end
  object txtJson: TMemo
    Left = 8
    Top = 71
    Width = 509
    Height = 443
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object btnJSon: TButton
    Left = 8
    Top = 8
    Width = 162
    Height = 25
    Caption = 'Gerar Json'
    TabOrder = 5
    OnClick = btnJSonClick
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 488
    Top = 8
  end
end
