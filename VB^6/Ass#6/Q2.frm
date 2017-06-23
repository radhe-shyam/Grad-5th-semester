VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   11010
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   14715
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form2"
   ScaleHeight     =   11010
   ScaleWidth      =   14715
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   0
      Top             =   120
   End
   Begin VB.Shape Shape10 
      FillColor       =   &H00400040&
      FillStyle       =   0  'Solid
      Height          =   975
      Left            =   7920
      Top             =   120
      Width           =   735
   End
   Begin VB.Shape Shape9 
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   13560
      Top             =   6120
      Width           =   1095
   End
   Begin VB.Shape Shape8 
      FillColor       =   &H00400040&
      FillStyle       =   0  'Solid
      Height          =   975
      Left            =   6960
      Top             =   11640
      Width           =   735
   End
   Begin VB.Shape Shape7 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   120
      Top             =   5280
      Width           =   1215
   End
   Begin VB.Label Label1 
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7560
      TabIndex        =   0
      Top             =   5760
      Width           =   375
   End
   Begin VB.Shape Shape6 
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   3
      Left            =   8880
      Shape           =   3  'Circle
      Top             =   4080
      Width           =   255
   End
   Begin VB.Shape Shape6 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   2
      Left            =   9600
      Shape           =   3  'Circle
      Top             =   6960
      Width           =   255
   End
   Begin VB.Shape Shape6 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   1
      Left            =   6480
      Shape           =   3  'Circle
      Top             =   7680
      Width           =   255
   End
   Begin VB.Shape Shape5 
      FillColor       =   &H0000FFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   3
      Left            =   8880
      Shape           =   3  'Circle
      Top             =   4440
      Width           =   255
   End
   Begin VB.Shape Shape5 
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   2
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   6960
      Width           =   255
   End
   Begin VB.Shape Shape5 
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   1
      Left            =   6480
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   255
   End
   Begin VB.Shape Shape4 
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   3
      Left            =   8880
      Shape           =   3  'Circle
      Top             =   4800
      Width           =   255
   End
   Begin VB.Shape Shape4 
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   2
      Left            =   8880
      Shape           =   3  'Circle
      Top             =   6960
      Width           =   255
   End
   Begin VB.Shape Shape4 
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   1
      Left            =   6480
      Shape           =   3  'Circle
      Top             =   6960
      Width           =   255
   End
   Begin VB.Shape Shape6 
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   0
      Left            =   5760
      Shape           =   3  'Circle
      Top             =   4800
      Width           =   255
   End
   Begin VB.Shape Shape5 
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   0
      Left            =   6120
      Shape           =   3  'Circle
      Top             =   4800
      Width           =   255
   End
   Begin VB.Shape Shape4 
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Solid
      Height          =   255
      Index           =   0
      Left            =   6480
      Shape           =   3  'Circle
      Top             =   4800
      Width           =   255
   End
   Begin VB.Line Line4 
      X1              =   9000
      X2              =   14760
      Y1              =   6000
      Y2              =   6000
   End
   Begin VB.Line Line3 
      X1              =   7800
      X2              =   7800
      Y1              =   12720
      Y2              =   7080
   End
   Begin VB.Line Line2 
      X1              =   7800
      X2              =   7800
      Y1              =   0
      Y2              =   4920
   End
   Begin VB.Line Line1 
      Index           =   2
      X1              =   0
      X2              =   6360
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Line Line1 
      Index           =   1
      X1              =   0
      X2              =   6360
      Y1              =   0
      Y2              =   0
   End
   Begin VB.Line Line1 
      Index           =   0
      X1              =   0
      X2              =   6600
      Y1              =   6000
      Y2              =   6000
   End
   Begin VB.Shape Shape3 
      Height          =   975
      Left            =   7320
      Shape           =   3  'Circle
      Top             =   5520
      Width           =   855
   End
   Begin VB.Shape Shape2 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   1695
      Left            =   0
      Top             =   5160
      Width           =   14775
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00FFFFFF&
      FillStyle       =   0  'Solid
      Height          =   12735
      Left            =   6840
      Top             =   0
      Width           =   1935
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim T As Integer

Private Sub Form_Load()
T = 0
End Sub

Private Sub Timer1_Timer()
Label1.Caption = Val(Label1.Caption) + 1
If Val(Label1.Caption) = 30 And T = 0 Then
Label1.Caption = 0
T = 1
ElseIf Val(Label1.Caption) = 30 And T = 1 Then
Label1.Caption = 0
T = 2
ElseIf Val(Label1.Caption) = 30 And T = 2 Then
Label1.Caption = 0
T = 3
ElseIf Val(Label1.Caption) = 30 And T = 3 Then
Label1.Caption = 0
T = 0
End If

If T = 0 Then
Shape7.Left = Shape7.Left + 10

Shape4(0).FillColor = vbGreen
Shape4(1).FillColor = vbBlack
Shape4(2).FillColor = vbBlack
Shape4(3).FillColor = vbBlack

Shape5(3).FillColor = vbYellow
Shape5(0).FillColor = vbBlack
Shape5(1).FillColor = vbBlack
Shape5(2).FillColor = vbBlack

Shape6(2).FillColor = vbRed
Shape6(1).FillColor = vbRed
Shape6(0).FillColor = vbBlack
Shape6(3).FillColor = vbBlack

ElseIf T = 1 Then
Shape10.Top = Shape10.Top + 10

Shape4(3).FillColor = vbGreen
Shape4(0).FillColor = vbBlack
Shape4(1).FillColor = vbBlack
Shape4(2).FillColor = vbBlack

Shape5(2).FillColor = vbYellow
Shape5(0).FillColor = vbBlack
Shape5(1).FillColor = vbBlack
Shape5(3).FillColor = vbBlack

Shape6(0).FillColor = vbRed
Shape6(1).FillColor = vbRed
Shape6(2).FillColor = vbBlack
Shape6(3).FillColor = vbBlack

ElseIf T = 2 Then
Shape9.Left = Shape9.Left - 10

Shape4(2).FillColor = vbGreen
Shape4(0).FillColor = vbBlack
Shape4(1).FillColor = vbBlack
Shape4(3).FillColor = vbBlack

Shape5(1).FillColor = vbYellow
Shape5(0).FillColor = vbBlack
Shape5(3).FillColor = vbBlack
Shape5(2).FillColor = vbBlack

Shape6(3).FillColor = vbRed
Shape6(0).FillColor = vbRed
Shape6(1).FillColor = vbBlack
Shape6(2).FillColor = vbBlack

ElseIf T = 3 Then
Shape8.Top = Shape8.Top - 10

Shape4(1).FillColor = vbGreen
Shape4(0).FillColor = vbBlack
Shape4(2).FillColor = vbBlack
Shape4(3).FillColor = vbBlack

Shape5(0).FillColor = vbYellow
Shape5(3).FillColor = vbBlack
Shape5(1).FillColor = vbBlack
Shape5(2).FillColor = vbBlack

Shape6(3).FillColor = vbRed
Shape6(2).FillColor = vbRed
Shape6(1).FillColor = vbBlack
Shape6(0).FillColor = vbBlack

End If
End Sub
