object PagePrincipal: TPagePrincipal
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'P'#225'gina Principal'
  ClientHeight = 768
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 768
    Align = alClient
    BevelOuter = bvNone
    Padding.Top = 35
    ParentBackground = False
    TabOrder = 0
    object lblPrincipal: TLabel
      Left = 0
      Top = 35
      Width = 1024
      Height = 35
      Align = alTop
      Alignment = taCenter
      Caption = 'P'#225'gina Principal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 201
    end
  end
end
