inherited PageUsuarios: TPageUsuarios
  Caption = 'P'#225'gina de usu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlPrincipal: TPanel
    inherited pnlMain: TPanel
      inherited pnlMainBody: TPanel
        inherited pnlMainBodyData: TPanel
          inherited pnlMainBodyDataForm: TPanel
            Left = 104
            Width = 720
            ExplicitLeft = 104
            ExplicitWidth = 720
            inherited pnlMainCadastroButton: TPanel
              Width = 670
              ExplicitWidth = 670
              inherited cxButton7: TcxButton
                Left = 550
                ExplicitLeft = 550
              end
              inherited cxButton8: TcxButton
                Left = 430
                ExplicitLeft = 430
              end
            end
            object StackPanel1: TStackPanel
              Left = 25
              Top = 0
              Width = 352
              Height = 376
              Align = alLeft
              BevelOuter = bvNone
              ControlCollection = <
                item
                  Control = Label1
                end
                item
                  Control = edtCodigo
                end
                item
                  Control = Label2
                end
                item
                  Control = edtName
                end
                item
                  Control = Label3
                end
                item
                  Control = edtTelefone
                end
                item
                  Control = Label4
                end
                item
                  Control = edtOcupacao
                end
                item
                  Control = Label5
                end
                item
                  Control = edtSaldo
                end>
              HorizontalPositioning = sphpFill
              Padding.Left = 15
              Padding.Right = 15
              Spacing = 5
              TabOrder = 1
              object Label1: TLabel
                Left = 15
                Top = 0
                Width = 322
                Height = 19
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtCodigo: TEdit
                Left = 15
                Top = 24
                Width = 322
                Height = 21
                Enabled = False
                TabOrder = 0
              end
              object Label2: TLabel
                Left = 15
                Top = 50
                Width = 322
                Height = 19
                Caption = 'Nome'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtName: TEdit
                Left = 15
                Top = 74
                Width = 322
                Height = 21
                TabOrder = 1
              end
              object Label3: TLabel
                Left = 15
                Top = 100
                Width = 322
                Height = 19
                Caption = 'Telefone'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtTelefone: TEdit
                Left = 15
                Top = 124
                Width = 322
                Height = 21
                TabOrder = 2
              end
              object Label4: TLabel
                Left = 15
                Top = 150
                Width = 322
                Height = 19
                Caption = 'Ocupa'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtOcupacao: TEdit
                Left = 15
                Top = 174
                Width = 322
                Height = 21
                TabOrder = 3
              end
              object Label5: TLabel
                Left = 15
                Top = 200
                Width = 322
                Height = 19
                Caption = 'Saldo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtSaldo: TEdit
                Left = 15
                Top = 224
                Width = 322
                Height = 21
                TabOrder = 4
              end
            end
            object StackPanel2: TStackPanel
              Left = 377
              Top = 0
              Width = 347
              Height = 376
              Align = alLeft
              BevelOuter = bvNone
              ControlCollection = <
                item
                  Control = Label6
                end
                item
                  Control = dateBirth
                end
                item
                  Control = Label7
                end
                item
                  Control = TimeTrans
                end
                item
                  Control = Label8
                end
                item
                  Control = edtCPF
                end
                item
                  Control = Label9
                end
                item
                  Control = edtCNPJ
                end>
              HorizontalPositioning = sphpFill
              Padding.Left = 15
              Padding.Right = 15
              TabOrder = 2
              object Label6: TLabel
                Left = 15
                Top = 0
                Width = 317
                Height = 19
                Caption = 'Nascimento'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object dateBirth: TDateTimePicker
                Left = 15
                Top = 21
                Width = 317
                Height = 21
                Date = 44341.000000000000000000
                Time = 0.705436030089913400
                TabOrder = 0
              end
              object Label7: TLabel
                Left = 15
                Top = 44
                Width = 317
                Height = 19
                Caption = #218'ltima transa'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object TimeTrans: TDateTimePicker
                Left = 15
                Top = 65
                Width = 317
                Height = 21
                Date = 44341.000000000000000000
                Time = 0.705436030089913400
                Kind = dtkTime
                TabOrder = 1
              end
              object Label8: TLabel
                Left = 15
                Top = 88
                Width = 317
                Height = 19
                Caption = 'CPF'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtCPF: TEdit
                Left = 15
                Top = 109
                Width = 317
                Height = 21
                TabOrder = 2
              end
              object Label9: TLabel
                Left = 15
                Top = 132
                Width = 317
                Height = 19
                Caption = 'CNPJ'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object edtCNPJ: TEdit
                Left = 15
                Top = 153
                Width = 317
                Height = 21
                TabOrder = 3
              end
            end
          end
          inherited DBGrid1: TDBGrid
            Width = 104
          end
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    Left = 120
  end
  inherited FDMemTable1: TFDMemTable
    Left = 124
  end
end
