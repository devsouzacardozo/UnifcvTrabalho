object frmMediaAlunos: TfrmMediaAlunos
  Left = 192
  Top = 125
  Width = 727
  Height = 480
  Caption = 'Media Alunos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 28
    Top = 9
    Width = 64
    Height = 13
    Caption = 'Nome Aluno: '
  end
  object Label2: TLabel
    Left = 25
    Top = 52
    Width = 38
    Height = 13
    Caption = 'Nota 1: '
  end
  object Label3: TLabel
    Left = 158
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Nota 2'
  end
  object edtNomeAluno: TEdit
    Left = 24
    Top = 27
    Width = 545
    Height = 21
    TabOrder = 0
  end
  object edtNota1: TEdit
    Left = 26
    Top = 68
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = edtNota1KeyPress
  end
  object edtNota2: TEdit
    Left = 156
    Top = 65
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = edtNota2KeyPress
  end
  object btnFechar: TButton
    Left = 648
    Top = 3
    Width = 55
    Height = 25
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = btnFecharClick
  end
  object btnGravarAluno: TButton
    Left = 302
    Top = 59
    Width = 91
    Height = 25
    Caption = 'Gravar Aluno'
    TabOrder = 3
    OnClick = btnGravarAlunoClick
  end
  object btnLimpar: TButton
    Left = 408
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btnLimparClick
  end
  object btnLerAluno: TButton
    Left = 492
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Ler Aluno'
    TabOrder = 5
    OnClick = btnLerAlunoClick
  end
  object Memo1: TMemo
    Left = 24
    Top = 104
    Width = 673
    Height = 329
    TabOrder = 7
  end
end
