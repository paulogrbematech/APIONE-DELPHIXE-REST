object frmAbreCupom: TfrmAbreCupom
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Abre Cupom'
  ClientHeight = 669
  ClientWidth = 817
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
    Width = 817
    Height = 665
    Caption = '1 - Abertura de Cupom'
    TabOrder = 0
    object GroupBox6: TGroupBox
      Left = 206
      Top = 14
      Width = 604
      Height = 42
      Caption = 'Identifica'#231#227'o da Nota'
      TabOrder = 6
      object Label11: TLabel
        Left = 17
        Top = 16
        Width = 124
        Height = 13
        Caption = 'N'#250'mero de S'#233'rie da Nota:'
      end
      object Label12: TLabel
        Left = 242
        Top = 16
        Width = 82
        Height = 13
        Caption = 'N'#250'mero da Nota:'
      end
      object txtNnf: TEdit
        Left = 330
        Top = 16
        Width = 41
        Height = 21
        TabOrder = 0
        Text = '1'
      end
      object txtSerie: TEdit
        Left = 147
        Top = 16
        Width = 49
        Height = 21
        TabOrder = 1
        Text = '768'
      end
      object btnAumentaNumeroNota: TButton
        Left = 377
        Top = 14
        Width = 24
        Height = 23
        Caption = '+'
        TabOrder = 2
        OnClick = btnAumentaNumeroNotaClick
      end
      object btnDiminuiNumeroNota: TButton
        Left = 401
        Top = 14
        Width = 24
        Height = 23
        Caption = '-'
        TabOrder = 3
        OnClick = btnDiminuiNumeroNotaClick
      end
    end
    object btnAbrirCupom: TButton
      Left = 652
      Top = 24
      Width = 72
      Height = 28
      Caption = 'Abrir Cupom'
      TabOrder = 0
      OnClick = btnAbrirCupomClick
    end
    object btnJson: TButton
      Left = 730
      Top = 24
      Width = 72
      Height = 28
      Caption = 'JSon'
      TabOrder = 1
      OnClick = btnJsonClick
    end
    object GroupBox2: TGroupBox
      Left = 13
      Top = 14
      Width = 191
      Height = 42
      Caption = 'Configura'#231#227'o de Impress'#227'o'
      TabOrder = 2
      object txtImprimir: TCheckBox
        Left = 22
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Imprimir Nota'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object txtEmail: TCheckBox
        Left = 111
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Enviar e-mail'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 9
      Top = 62
      Width = 801
      Height = 242
      Caption = 'Identifica'#231#227'o da Venda'
      TabOrder = 3
      object Label3: TLabel
        Left = 64
        Top = 18
        Width = 105
        Height = 13
        Caption = 'C'#243'digo da Localidade:'
      end
      object Label4: TLabel
        Left = 50
        Top = 37
        Width = 122
        Height = 13
        Caption = 'C'#243'digo Chave de acesso:'
      end
      object Label5: TLabel
        Left = 61
        Top = 56
        Width = 111
        Height = 13
        Caption = 'Natureza da opera'#231#227'o:'
      end
      object Label1: TLabel
        Left = 3
        Top = 78
        Width = 169
        Height = 13
        Caption = 'Indicador da Forma de Pagamento:'
      end
      object Label2: TLabel
        Left = 32
        Top = 98
        Width = 136
        Height = 13
        Caption = 'Modelo do documento fiscal:'
      end
      object Label13: TLabel
        Left = 85
        Top = 120
        Width = 83
        Height = 13
        Caption = 'Data de emiss'#227'o:'
      end
      object Label14: TLabel
        Left = 83
        Top = 141
        Width = 89
        Height = 13
        Caption = 'Tipo da Opera'#231#227'o:'
      end
      object Label15: TLabel
        Left = 53
        Top = 160
        Width = 119
        Height = 13
        Caption = 'Identificador de Destino:'
      end
      object Label16: TLabel
        Left = 92
        Top = 187
        Width = 80
        Height = 13
        Caption = 'Formato DANFE:'
      end
      object Label17: TLabel
        Left = 92
        Top = 211
        Width = 80
        Height = 13
        Caption = 'Tipo de Emiss'#227'o:'
      end
      object Label18: TLabel
        Left = 331
        Top = 18
        Width = 118
        Height = 13
        Caption = 'DV da Chave de Acesso:'
      end
      object Label19: TLabel
        Left = 304
        Top = 39
        Width = 145
        Height = 13
        Caption = 'Produ'#231#227'o(1)/Homologa'#231#227'o(2):'
      end
      object Label21: TLabel
        Left = 397
        Top = 65
        Width = 52
        Height = 13
        Caption = 'Finalidade:'
      end
      object Label23: TLabel
        Left = 336
        Top = 141
        Width = 109
        Height = 13
        Caption = 'Comprador presencial?'
      end
      object Label24: TLabel
        Left = 365
        Top = 166
        Width = 80
        Height = 13
        Caption = 'Tipo de emiss'#227'o:'
      end
      object Label25: TLabel
        Left = 354
        Top = 188
        Width = 91
        Height = 13
        Caption = 'Vers'#227'o do Emissor:'
      end
      object Label26: TLabel
        Left = 362
        Top = 208
        Width = 83
        Height = 13
        Caption = 'C'#243'digo Munic'#237'pio:'
      end
      object txtCuf: TEdit
        Left = 175
        Top = 17
        Width = 25
        Height = 21
        TabOrder = 0
        Text = '41'
      end
      object txtCnf: TEdit
        Left = 174
        Top = 35
        Width = 65
        Height = 21
        TabOrder = 1
        Text = '00005000'
      end
      object txtNatOp: TEdit
        Left = 174
        Top = 54
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'VENDA'
      end
      object txtDhEmi: TEdit
        Left = 174
        Top = 120
        Width = 156
        Height = 21
        Enabled = False
        TabOrder = 3
        Text = '2017-01-12T14:06:57-03:00'
      end
      object txtCdv: TEdit
        Left = 455
        Top = 17
        Width = 138
        Height = 21
        TabOrder = 4
        Text = '8'
      end
      object txtVerProc: TEdit
        Left = 451
        Top = 186
        Width = 121
        Height = 21
        TabOrder = 5
        Text = '1.0.0.0'
      end
      object txtCMunFG: TEdit
        Left = 451
        Top = 207
        Width = 121
        Height = 21
        TabOrder = 6
        Text = '4106902'
      end
      object txtMod: TComboBox
        Left = 174
        Top = 96
        Width = 156
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 7
        Text = '65 - Subst. modelo 1 ou 1A'
        Items.Strings = (
          '65 - Subst. modelo 1 ou 1A'
          '55 - Venda no Varejo')
      end
      object txtIndPag: TComboBox
        Left = 174
        Top = 72
        Width = 156
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 8
        Text = '0 - Pagamento a Vista'
        Items.Strings = (
          '0 - Pagamento a Vista'
          '1 - Pagamento a Prazo'
          '2 - Outros')
      end
      object txtTpNF: TComboBox
        Left = 174
        Top = 138
        Width = 156
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 9
        Text = '1 - Sa'#237'da'
        Items.Strings = (
          '1 - Sa'#237'da'
          '0 - Entrada')
      end
      object txtIdDest: TComboBox
        Left = 174
        Top = 160
        Width = 156
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 10
        Text = '1 - Opera'#231#227'o Interna'
        Items.Strings = (
          '1 - Opera'#231#227'o Interna'
          '2 - Opera'#231#227'o InterEstadual'
          '3 - Opera'#231#227'o com Exterior')
      end
      object txtTpImp: TComboBox
        Left = 174
        Top = 183
        Width = 156
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 4
        TabOrder = 11
        Text = '4 - NFCe'
        Items.Strings = (
          '0 - Sem gera'#231#227'o DANFE'
          '1 - Normal, Retrato'
          '2 - Normal, Paisagem'
          '3 - Simplificado'
          '4 - NFCe'
          '5 - DANFE NFCe em msg. eletr'#244'nica'
          '')
      end
      object txtTpEmis: TComboBox
        Left = 174
        Top = 210
        Width = 156
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 12
        Text = '1 - Emiss'#227'o Normal'
        Items.Strings = (
          '1 - Emiss'#227'o Normal'
          '2 - Conting'#234'ncia FS-IA'
          '3 - Conting'#234'ncia SCAN'
          '4 - Conting'#234'ncia DPEC'
          '5 - Conting'#234'ncia FS-DA'
          '6 - Conting'#234'ncia SVC-AN'
          '7 - Conting'#234'ncia SVC-RS'
          '9 - Conting'#234'ncia off-line'
          '')
      end
      object txtfinNFe: TComboBox
        Left = 455
        Top = 65
        Width = 191
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 13
        Text = '1 - NFe normal'
        Items.Strings = (
          '1 - NFe normal'
          '2 - NFe Complementar'
          '3 - NFe Ajuste'
          '4 - Devolu'#231#227'o/Retorno')
      end
      object txtIndPres: TComboBox
        Left = 451
        Top = 139
        Width = 191
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 1
        TabOrder = 14
        Text = '1 - Opera'#231#227'o Presencial'
        Items.Strings = (
          '0 - N'#227'o se Aplica'
          '1 - Opera'#231#227'o Presencial'
          '2 - N'#227'o presencial - Internet'
          '3 - N'#227'o presencial - TeleAtendimento'
          '4 - NFCe em opera'#231#227'o com entrega domic'#237'lio'
          '9 - N'#227'o presencial,outros')
      end
      object txtProcEmi: TComboBox
        Left = 452
        Top = 164
        Width = 273
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 0
        TabOrder = 15
        Text = '0 - NFe com aplicativo do contribuinte'
        Items.Strings = (
          '0 - NFe com aplicativo do contribuinte'
          '1 - NFe avulsa pelo Fisco'
          '2- NFe avulsa pelo contribuinte com Certificado Digital'
          '3 - NFe pelo contribuinte com aplicativo do FISCO')
      end
    end
    object GroupBox4: TGroupBox
      Left = 11
      Top = 304
      Width = 799
      Height = 186
      Caption = 'Dados do Emitente'
      TabOrder = 4
      object Label6: TLabel
        Left = 91
        Top = 20
        Width = 29
        Height = 13
        Caption = 'CNPJ:'
      end
      object Label7: TLabel
        Left = 77
        Top = 36
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object Label8: TLabel
        Left = 81
        Top = 55
        Width = 37
        Height = 13
        Caption = 'Estado:'
      end
      object Label27: TLabel
        Left = 95
        Top = 75
        Width = 23
        Height = 13
        Caption = 'CEP:'
      end
      object Label28: TLabel
        Left = 85
        Top = 113
        Width = 32
        Height = 13
        Caption = 'Bairro:'
      end
      object Label29: TLabel
        Left = 71
        Top = 94
        Width = 46
        Height = 13
        Caption = 'Telefone:'
      end
      object Label30: TLabel
        Left = 427
        Top = 53
        Width = 23
        Height = 13
        Caption = 'Pa'#237's:'
      end
      object Label31: TLabel
        Left = 404
        Top = 21
        Width = 47
        Height = 13
        Caption = 'Munic'#237'pio:'
      end
      object Label32: TLabel
        Left = 436
        Top = 92
        Width = 14
        Height = 13
        Caption = 'IE:'
      end
      object Label33: TLabel
        Left = 312
        Top = 114
        Width = 139
        Height = 13
        Caption = 'C'#243'digo do Regime Tribut'#225'rio:'
      end
      object Label34: TLabel
        Left = 359
        Top = 138
        Width = 90
        Height = 13
        Caption = 'Nome da Empresa:'
      end
      object Label35: TLabel
        Left = 375
        Top = 158
        Width = 75
        Height = 13
        Caption = 'Nome Fantasia:'
      end
      object Label36: TLabel
        Left = 58
        Top = 132
        Width = 59
        Height = 13
        Caption = 'Logradouro:'
      end
      object Label37: TLabel
        Left = 403
        Top = 72
        Width = 47
        Height = 13
        Caption = 'Munic'#237'pio:'
      end
      object Label38: TLabel
        Left = 377
        Top = 37
        Width = 74
        Height = 13
        Caption = 'C'#243'digo do Pa'#237's:'
      end
      object txtCnpjEmit: TEdit
        Left = 126
        Top = 18
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '82373077000171'
      end
      object txtNroEmit: TEdit
        Left = 126
        Top = 36
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object txtUfEmit: TEdit
        Left = 124
        Top = 54
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'PR'
      end
      object txtCepEmit: TEdit
        Left = 124
        Top = 74
        Width = 121
        Height = 21
        TabOrder = 3
        Text = '81320400'
      end
      object txtTelefoneEmit: TEdit
        Left = 123
        Top = 92
        Width = 121
        Height = 21
        TabOrder = 4
        Text = '4184848484'
      end
      object txtXBairroEmit: TEdit
        Left = 123
        Top = 112
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'CABRAL'
      end
      object txtXLgrEmit: TEdit
        Left = 123
        Top = 132
        Width = 121
        Height = 21
        TabOrder = 6
        Text = 'AV Teste'
      end
      object txtXFantEmit: TEdit
        Left = 456
        Top = 156
        Width = 121
        Height = 21
        TabOrder = 7
        Text = 'BEMATECH'
      end
      object txtXNomeEmit: TEdit
        Left = 455
        Top = 136
        Width = 121
        Height = 21
        TabOrder = 8
        Text = 'BEMATECH SA'
      end
      object txtIEEmit: TEdit
        Left = 457
        Top = 89
        Width = 121
        Height = 21
        TabOrder = 9
        Text = '1018146530'
      end
      object txtXMunEmit: TEdit
        Left = 456
        Top = 70
        Width = 121
        Height = 21
        TabOrder = 10
        Text = 'Curitiba'
      end
      object txtxPaisEmit: TEdit
        Left = 457
        Top = 52
        Width = 121
        Height = 21
        TabOrder = 11
        Text = 'BRASIL'
      end
      object txtCPaisEmit: TEdit
        Left = 457
        Top = 36
        Width = 121
        Height = 21
        TabOrder = 12
        Text = '1058'
      end
      object txtCMunEmit: TEdit
        Left = 457
        Top = 19
        Width = 121
        Height = 21
        TabOrder = 13
        Text = '4106902'
      end
      object txtCrtEmit: TComboBox
        Left = 455
        Top = 113
        Width = 282
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 2
        TabOrder = 14
        Text = '3 - Regime Normal'
        Items.Strings = (
          '1 - Simples Nacional'
          '2 - Simnples Nacional, excesso sublimite de Receita Bruta'
          '3 - Regime Normal')
      end
    end
    object GroupBox5: TGroupBox
      Left = 9
      Top = 489
      Width = 801
      Height = 168
      Caption = 'Dados do Destinat'#225'rio'
      TabOrder = 5
      object Label9: TLabel
        Left = 94
        Top = 18
        Width = 23
        Height = 13
        Caption = 'CPF:'
      end
      object Label10: TLabel
        Left = 76
        Top = 33
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object Label20: TLabel
        Left = 100
        Top = 52
        Width = 17
        Height = 13
        Caption = 'UF:'
      end
      object Label39: TLabel
        Left = 94
        Top = 69
        Width = 23
        Height = 13
        Caption = 'CEP:'
      end
      object Label40: TLabel
        Left = 89
        Top = 83
        Width = 28
        Height = 13
        Caption = 'Fone:'
      end
      object Label41: TLabel
        Left = 85
        Top = 101
        Width = 32
        Height = 13
        Caption = 'Bairro:'
      end
      object Label42: TLabel
        Left = 58
        Top = 120
        Width = 59
        Height = 13
        Caption = 'Logradouro:'
      end
      object Label43: TLabel
        Left = 19
        Top = 139
        Width = 98
        Height = 13
        Caption = 'C'#243'digo do Munic'#237'pio:'
      end
      object Label44: TLabel
        Left = 379
        Top = 129
        Width = 74
        Height = 13
        Caption = 'C'#243'digo do Pa'#237's:'
      end
      object Label45: TLabel
        Left = 428
        Top = 16
        Width = 23
        Height = 13
        Caption = 'Pa'#237's:'
      end
      object Label46: TLabel
        Left = 404
        Top = 35
        Width = 47
        Height = 13
        Caption = 'Munic'#237'pio:'
      end
      object Label47: TLabel
        Left = 418
        Top = 85
        Width = 32
        Height = 13
        Caption = 'E-Mail:'
      end
      object Label48: TLabel
        Left = 298
        Top = 57
        Width = 153
        Height = 13
        Caption = 'Indicador da IE do Destinat'#225'rio:'
      end
      object Label49: TLabel
        Left = 420
        Top = 105
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object txtCpfDest: TEdit
        Left = 123
        Top = 15
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '76643539129'
      end
      object txtNroDest: TEdit
        Left = 123
        Top = 33
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '842'
      end
      object txtUfDest: TEdit
        Left = 123
        Top = 51
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'PR'
      end
      object txtXPaisDest: TEdit
        Left = 457
        Top = 16
        Width = 121
        Height = 21
        TabOrder = 3
        Text = 'Brasil'
      end
      object txtXMunDest: TEdit
        Left = 457
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 4
        Text = 'Curitiba'
      end
      object txtCepDest: TEdit
        Left = 123
        Top = 67
        Width = 121
        Height = 21
        TabOrder = 5
        Text = '80020320'
      end
      object txtFoneDest: TEdit
        Left = 123
        Top = 83
        Width = 121
        Height = 21
        TabOrder = 6
        Text = '41927598874'
      end
      object txtEmailDest: TEdit
        Left = 457
        Top = 83
        Width = 121
        Height = 21
        TabOrder = 7
        Text = 'teste@teste.com'
      end
      object txtXNomeDest: TEdit
        Left = 457
        Top = 104
        Width = 328
        Height = 21
        TabOrder = 8
        Text = 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL '
      end
      object txtXBairroDest: TEdit
        Left = 123
        Top = 100
        Width = 121
        Height = 21
        TabOrder = 9
        Text = 'Centro'
      end
      object txtXLgrDest: TEdit
        Left = 123
        Top = 118
        Width = 121
        Height = 21
        TabOrder = 10
        Text = 'Marechal Deodoro'
      end
      object txtCMunDest: TEdit
        Left = 123
        Top = 138
        Width = 121
        Height = 21
        TabOrder = 11
        Text = '4106902'
      end
      object txtCPaisDest: TEdit
        Left = 459
        Top = 128
        Width = 121
        Height = 21
        TabOrder = 12
        Text = '1058'
      end
      object txtIndIEDest: TComboBox
        Left = 457
        Top = 54
        Width = 328
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 2
        TabOrder = 13
        Text = '9 - N'#227'o contribuinte, que pode ou n'#227'o possuir IE'
        Items.Strings = (
          '1 - Contribuinte ICMS(Informar o IE Destinat'#225'rio)'
          '2 - Contribuinte Isento de Inscri'#231#227'o no cadastro do ICMS'
          '9 - N'#227'o contribuinte, que pode ou n'#227'o possuir IE')
      end
    end
    object txtTpAmb: TComboBox
      Left = 476
      Top = 108
      Width = 191
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 7
      Text = '2 - Homologa'#231#227'o'
      Items.Strings = (
        '2 - Homologa'#231#227'o'
        '1 - Produ'#231#227'o')
    end
    object txtIndFinal: TCheckBox
      Left = 476
      Top = 164
      Width = 121
      Height = 17
      Caption = 'Consumidor Final ?'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 360
    Top = 136
  end
end
