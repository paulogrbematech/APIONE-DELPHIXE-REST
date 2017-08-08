object frmFecharcupom: TfrmFecharcupom
  Left = 0
  Top = 0
  Caption = 'Fechar Cupom'
  ClientHeight = 594
  ClientWidth = 561
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 561
    Height = 593
    Caption = '4 - Fechar Cupom'
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 19
      Top = 45
      Width = 530
      Height = 411
      Caption = 'ICMS'
      TabOrder = 2
      object Label2: TLabel
        Left = 33
        Top = 87
        Width = 137
        Height = 13
        Caption = 'Base de C'#225'lculo do ICMS ST:'
      end
      object Label5: TLabel
        Left = 3
        Top = 136
        Width = 172
        Height = 13
        Caption = 'Valor Total dos produtos e servi'#231'os:'
      end
      object Label6: TLabel
        Left = 63
        Top = 187
        Width = 107
        Height = 13
        Caption = 'Valor Total do Seguro:'
      end
      object Label7: TLabel
        Left = 111
        Top = 15
        Width = 59
        Height = 13
        Caption = 'Valor da BC:'
      end
      object Label8: TLabel
        Left = 72
        Top = 39
        Width = 98
        Height = 13
        Caption = 'Valor Total do ICMS:'
      end
      object Label9: TLabel
        Left = 12
        Top = 63
        Width = 158
        Height = 13
        Caption = 'Valor Total do ICMS desonerado:'
      end
      object Label10: TLabel
        Left = 57
        Top = 112
        Width = 113
        Height = 13
        Caption = 'Valor Total do ICMS ST:'
      end
      object Label11: TLabel
        Left = 71
        Top = 161
        Width = 99
        Height = 13
        Caption = 'Valor Total do Frete:'
      end
      object Label12: TLabel
        Left = 53
        Top = 210
        Width = 118
        Height = 13
        Caption = 'Valor Total do Desconto:'
      end
      object Label13: TLabel
        Left = 89
        Top = 236
        Width = 81
        Height = 13
        Caption = 'Valor Total do II:'
      end
      object Label14: TLabel
        Left = 83
        Top = 262
        Width = 87
        Height = 13
        Caption = 'Valor Total do IPI:'
      end
      object Label15: TLabel
        Left = 108
        Top = 287
        Width = 62
        Height = 13
        Caption = 'Valor do PIS:'
      end
      object Label1: TLabel
        Left = 86
        Top = 312
        Width = 84
        Height = 13
        Caption = 'Valor da COFINS:'
      end
      object Label16: TLabel
        Left = 31
        Top = 334
        Width = 139
        Height = 13
        Caption = 'Outras Despesas acess'#243'rias:'
      end
      object Label17: TLabel
        Left = 74
        Top = 360
        Width = 96
        Height = 13
        Caption = 'Valor Total da NF-e:'
      end
      object Label18: TLabel
        Left = 3
        Top = 384
        Width = 167
        Height = 13
        Caption = 'Valor aproximado total de tributos:'
      end
      object txtVbc: TEdit
        Left = 176
        Top = 12
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '1.00'
      end
      object txtVicms: TEdit
        Left = 176
        Top = 36
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '0.01'
      end
      object txtVcofins: TEdit
        Left = 176
        Top = 309
        Width = 121
        Height = 21
        TabOrder = 2
        Text = '0.00'
      end
      object txtvDesc: TEdit
        Left = 176
        Top = 209
        Width = 121
        Height = 21
        TabOrder = 3
        Text = '0'
      end
      object txtVicmsDeson: TEdit
        Left = 176
        Top = 60
        Width = 121
        Height = 21
        TabOrder = 4
        Text = '0.00'
      end
      object txtVbcst: TEdit
        Left = 176
        Top = 85
        Width = 121
        Height = 21
        TabOrder = 5
        Text = '0.00'
      end
      object txtVst: TEdit
        Left = 176
        Top = 109
        Width = 121
        Height = 21
        TabOrder = 6
        Text = '0.00'
      end
      object txtvProd: TEdit
        Left = 176
        Top = 134
        Width = 121
        Height = 21
        TabOrder = 7
        Text = '1.00'
      end
      object txtvFrete: TEdit
        Left = 176
        Top = 159
        Width = 121
        Height = 21
        TabOrder = 8
        Text = '0.00'
      end
      object txtvSeg: TEdit
        Left = 176
        Top = 184
        Width = 121
        Height = 21
        TabOrder = 9
        Text = '0.00'
      end
      object txtVii: TEdit
        Left = 176
        Top = 234
        Width = 121
        Height = 21
        TabOrder = 10
        Text = '0.00'
      end
      object txtVipi: TEdit
        Left = 176
        Top = 259
        Width = 121
        Height = 21
        TabOrder = 11
        Text = '0.00'
      end
      object txtVpis: TEdit
        Left = 176
        Top = 284
        Width = 121
        Height = 21
        TabOrder = 12
        Text = '0.00'
      end
      object txtvOutro: TEdit
        Left = 176
        Top = 333
        Width = 121
        Height = 21
        TabOrder = 13
        Text = '0.00'
      end
      object txtVnf: TEdit
        Left = 176
        Top = 357
        Width = 121
        Height = 21
        TabOrder = 14
        Text = '1.00'
      end
      object txtvTotTrib: TEdit
        Left = 176
        Top = 382
        Width = 121
        Height = 21
        TabOrder = 15
        Text = '0.00'
      end
    end
    object btnFecharCupom: TButton
      Left = 19
      Top = 14
      Width = 83
      Height = 25
      Caption = 'Fechar Cupom'
      TabOrder = 0
      OnClick = btnFecharCupomClick
    end
    object btnJson: TButton
      Left = 108
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Json'
      TabOrder = 1
      OnClick = btnJsonClick
    end
    object GroupBox3: TGroupBox
      Left = 19
      Top = 458
      Width = 530
      Height = 127
      Caption = 'Informa'#231#245'es Adicionais:'
      TabOrder = 3
      object Label3: TLabel
        Left = 46
        Top = 33
        Width = 104
        Height = 13
        Caption = 'Informacao Adicional:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 52
        Width = 134
        Height = 13
        Caption = 'Observa'#231#245'es Contribuintes:'
      end
      object Label19: TLabel
        Left = 50
        Top = 72
        Width = 100
        Height = 13
        Caption = 'Conte'#250'do do campo:'
      end
      object Label20: TLabel
        Left = 35
        Top = 97
        Width = 115
        Height = 13
        Caption = 'Identifica'#231#227'o do campo:'
      end
      object txtinfCpl: TMemo
        Left = 156
        Top = 29
        Width = 185
        Height = 21
        Lines.Strings = (
          'Sequencia 003 Nota sem Cliente')
        TabOrder = 0
      end
      object txtXTexto: TEdit
        Left = 156
        Top = 70
        Width = 185
        Height = 21
        TabOrder = 1
        Text = '0.00'
      end
      object txtxCampo: TEdit
        Left = 156
        Top = 96
        Width = 185
        Height = 21
        TabOrder = 2
        Text = '0.00'
      end
    end
    object Button1: TButton
      Left = 189
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
end
