object frmCancelarCupom: TfrmCancelarCupom
  Left = 0
  Top = 0
  Caption = 'Cancelar Cupom'
  ClientHeight = 130
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = inicializaComponentes
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = -1
    Width = 473
    Height = 130
    Caption = ' Cancelar Cupom'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 56
      Height = 13
      Caption = 'Id (Chave):'
    end
    object Label2: TLabel
      Left = 19
      Top = 79
      Width = 61
      Height = 13
      Caption = 'Justificativa:'
    end
    object Label6: TLabel
      Left = 19
      Top = 104
      Width = 61
      Height = 13
      Caption = 'Data e hora:'
    end
    object txtChave: TMemo
      Left = 86
      Top = 53
      Width = 355
      Height = 17
      Lines.Strings = (
        '<chave>')
      TabOrder = 0
    end
    object txtXjust: TMemo
      Left = 86
      Top = 75
      Width = 355
      Height = 20
      Lines.Strings = (
        'Cancelado pelo desenvolvedor')
      TabOrder = 1
    end
    object btnCancelarCupom: TButton
      Left = 20
      Top = 22
      Width = 100
      Height = 25
      Caption = 'Cancelar Cupom'
      TabOrder = 2
      OnClick = btnCancelarCupomClick
    end
    object btnJson: TButton
      Left = 126
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Json'
      TabOrder = 3
      OnClick = btnJsonClick
    end
    object txtDhEvento: TEdit
      Left = 86
      Top = 100
      Width = 171
      Height = 21
      Enabled = False
      TabOrder = 4
      Text = 'txtDhEvento'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 360
    Top = 88
  end
end
