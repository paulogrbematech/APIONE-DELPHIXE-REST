object frmStatus: TfrmStatus
  Left = 0
  Top = 0
  Caption = 'Status da impressora'
  ClientHeight = 395
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = btnVerificarStatusClick
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 9
    Top = 39
    Width = 355
    Height = 195
    Caption = 'Geral:'
    TabOrder = 0
    object lblOvr: TLabel
      Left = 13
      Top = 24
      Width = 3
      Height = 13
    end
    object lblOffline: TLabel
      Left = 13
      Top = 45
      Width = 3
      Height = 13
    end
    object lblWait: TLabel
      Left = 13
      Top = 69
      Width = 3
      Height = 13
    end
    object lblBufstat: TLabel
      Left = 13
      Top = 95
      Width = 3
      Height = 13
    end
    object lblPnes: TLabel
      Left = 13
      Top = 121
      Width = 3
      Height = 13
    end
    object Label17: TLabel
      Left = 12
      Top = 148
      Width = 99
      Height = 13
      Caption = 'Vers'#227'o do Firmware:'
    end
    object lblFirmware: TLabel
      Left = 117
      Top = 148
      Width = 3
      Height = 13
    end
    object txtOvr: TMemo
      Left = 303
      Top = 21
      Width = 41
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object txtOffline: TMemo
      Left = 303
      Top = 42
      Width = 41
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object txtWait: TMemo
      Left = 303
      Top = 65
      Width = 41
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object txtBufStat: TMemo
      Left = 302
      Top = 89
      Width = 42
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
    object txtPnes: TMemo
      Left = 302
      Top = 114
      Width = 41
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 240
    Width = 355
    Height = 153
    Caption = 'Outros Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label6: TLabel
      Left = 40
      Top = 26
      Width = 15
      Height = 13
      Caption = 'Ps:'
    end
    object Label13: TLabel
      Left = 35
      Top = 45
      Width = 21
      Height = 13
      Caption = 'Nre:'
    end
    object Label9: TLabel
      Left = 14
      Top = 64
      Width = 44
      Height = 13
      Caption = 'noPaper:'
    end
    object Label7: TLabel
      Left = 19
      Top = 83
      Width = 39
      Height = 13
      Caption = 'Drawer:'
    end
    object Label8: TLabel
      Left = 30
      Top = 102
      Width = 28
      Height = 13
      Caption = 'Error:'
    end
    object Label10: TLabel
      Left = 157
      Top = 25
      Width = 17
      Height = 13
      Caption = 'Ca:'
    end
    object Label12: TLabel
      Left = 156
      Top = 46
      Width = 17
      Height = 13
      Caption = 'Ce:'
    end
    object Label11: TLabel
      Left = 140
      Top = 67
      Width = 33
      Height = 13
      Caption = 'Cover:'
    end
    object Label16: TLabel
      Left = 150
      Top = 89
      Width = 25
      Height = 13
      Caption = 'Cmd:'
    end
    object Label15: TLabel
      Left = 151
      Top = 107
      Width = 22
      Height = 13
      Caption = 'hoh:'
    end
    object Label14: TLabel
      Left = 35
      Top = 122
      Width = 17
      Height = 13
      Caption = 'Re:'
    end
    object memoPS: TMemo
      Left = 57
      Top = 24
      Width = 41
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object memoNre: TMemo
      Left = 57
      Top = 43
      Width = 41
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object memonoPaper: TMemo
      Left = 57
      Top = 64
      Width = 41
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object memoDrawer: TMemo
      Left = 57
      Top = 83
      Width = 41
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object memoError: TMemo
      Left = 57
      Top = 102
      Width = 41
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object memoCa: TMemo
      Left = 176
      Top = 25
      Width = 42
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object memoCe: TMemo
      Left = 176
      Top = 44
      Width = 42
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object memoCover: TMemo
      Left = 177
      Top = 64
      Width = 41
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object memoCmd: TMemo
      Left = 174
      Top = 85
      Width = 43
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object memoHoh: TMemo
      Left = 174
      Top = 104
      Width = 43
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object memoRe: TMemo
      Left = 55
      Top = 121
      Width = 43
      Height = 19
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
  end
  object btnVerificarStatus: TButton
    Left = 9
    Top = 8
    Width = 355
    Height = 25
    Caption = 'Verificar Status'
    TabOrder = 2
    OnClick = btnVerificarStatusClick
  end
end
