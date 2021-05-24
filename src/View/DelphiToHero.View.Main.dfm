object formPrincipal: TformPrincipal
  Left = 0
  Top = 0
  Caption = 'Delphi to Hero'
  ClientHeight = 729
  ClientWidth = 1008
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 729
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object pnlMenu: TPanel
      Left = 0
      Top = 0
      Width = 185
      Height = 729
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object btnPrincipal: TSpeedButton
        Left = 0
        Top = 110
        Width = 185
        Height = 110
        Align = alTop
        Caption = 'Principal'
        Flat = True
        OnClick = btnPrincipalClick
      end
      object btnUsuarios: TSpeedButton
        Left = 0
        Top = 220
        Width = 185
        Height = 110
        Align = alTop
        Caption = 'Usu'#225'rios'
        Flat = True
        OnClick = btnUsuariosClick
      end
      object pnlLogo: TPanel
        Left = 0
        Top = 0
        Width = 185
        Height = 110
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
      end
    end
    object pnlFull: TPanel
      Left = 185
      Top = 0
      Width = 823
      Height = 729
      Align = alClient
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 823
        Height = 110
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
      end
      object pnlPrincipal: TPanel
        Left = 0
        Top = 110
        Width = 823
        Height = 619
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 1
      end
    end
  end
end
