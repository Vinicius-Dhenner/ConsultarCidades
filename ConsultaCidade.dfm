object FormHome: TFormHome
  Left = 0
  Top = 0
  Caption = 'CONSULTAR CIDADES'
  ClientHeight = 267
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 208
    Top = 32
    Width = 220
    Height = 24
    Caption = 'SELECIONAR CIDADE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbbConsultState: TComboBox
    Left = 56
    Top = 120
    Width = 233
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'SELECIONAR ESTADO'
    OnChange = cbbConsultStateChange
  end
  object cbbConsultCity: TComboBox
    Left = 352
    Top = 120
    Width = 233
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'SELECIONAR CIDADE'
  end
end
