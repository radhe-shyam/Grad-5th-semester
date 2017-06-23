VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7830
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11145
   LinkTopic       =   "Form1"
   ScaleHeight     =   7830
   ScaleWidth      =   11145
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer5 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   2640
      Top             =   5040
   End
   Begin VB.Timer Timer4 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   7320
      Top             =   5400
   End
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   7560
      Top             =   1800
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   30
      Left            =   3240
      Top             =   1680
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H00C0C000&
      Height          =   1695
      Left            =   5640
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1080
      Width           =   495
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H000080FF&
      Height          =   1695
      Left            =   4920
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   4320
      Width           =   495
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00808080&
      Height          =   495
      Left            =   2640
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2880
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FF0000&
      Height          =   495
      Left            =   6720
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   3600
      Width           =   1815
   End
   Begin VB.Timer Timer1 
      Interval        =   3000
      Left            =   480
      Top             =   600
   End
   Begin VB.Shape Shape12 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3840
      Top             =   5280
      Width           =   375
   End
   Begin VB.Shape Shape11 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3840
      Top             =   4920
      Width           =   375
   End
   Begin VB.Shape Shape10 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3840
      Top             =   4560
      Width           =   375
   End
   Begin VB.Shape Shape9 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   7680
      Top             =   4560
      Width           =   375
   End
   Begin VB.Shape Shape8 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   7320
      Top             =   4560
      Width           =   375
   End
   Begin VB.Shape Shape7 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   6960
      Top             =   4560
      Width           =   375
   End
   Begin VB.Shape Shape6 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   6960
      Top             =   1440
      Width           =   375
   End
   Begin VB.Shape Shape5 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   6960
      Top             =   1800
      Width           =   375
   End
   Begin VB.Shape Shape4 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   6960
      Top             =   2160
      Width           =   375
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H80000008&
      BorderColor     =   &H80000006&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3840
      Top             =   2160
      Width           =   375
   End
   Begin VB.Shape Shape2 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3480
      Top             =   2160
      Width           =   375
   End
   Begin VB.Shape Shape1 
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   3120
      Top             =   2160
      Width           =   375
   End
   Begin VB.Line Line12 
      X1              =   6720
      X2              =   6720
      Y1              =   4320
      Y2              =   7800
   End
   Begin VB.Line Line11 
      X1              =   4440
      X2              =   4440
      Y1              =   4320
      Y2              =   7800
   End
   Begin VB.Line Line10 
      X1              =   6720
      X2              =   11160
      Y1              =   4320
      Y2              =   4320
   End
   Begin VB.Line Line9 
      X1              =   6720
      X2              =   11160
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line8 
      X1              =   6720
      X2              =   6720
      Y1              =   2760
      Y2              =   0
   End
   Begin VB.Line Line7 
      X1              =   4440
      X2              =   4440
      Y1              =   2760
      Y2              =   0
   End
   Begin VB.Line Line6 
      X1              =   4440
      X2              =   0
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line5 
      X1              =   0
      X2              =   4440
      Y1              =   4320
      Y2              =   4320
   End
   Begin VB.Line Line4 
      X1              =   5520
      X2              =   5520
      Y1              =   4320
      Y2              =   7800
   End
   Begin VB.Line Line3 
      X1              =   6720
      X2              =   11160
      Y1              =   3480
      Y2              =   3480
   End
   Begin VB.Line Line2 
      X1              =   5520
      X2              =   5520
      Y1              =   0
      Y2              =   2760
   End
   Begin VB.Line Line1 
      Index           =   0
      X1              =   0
      X2              =   4440
      Y1              =   3480
      Y2              =   3480
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim t As Integer
Private Sub Form_Load()
Timer1.Enabled = True
t = 0
End Sub

Private Sub Timer1_Timer()
t = t Mod 4
If t = 0 Then
    Shape3.FillColor = vbBlack
    Shape2.FillColor = vbBlack
    Shape1.FillColor = vbYellow

    Shape4.FillColor = vbRed
    Shape5.FillColor = vbBlack
    Shape6.FillColor = vbBlack
    
    Shape7.FillColor = vbRed
    Shape8.FillColor = vbBlack
    Shape9.FillColor = vbBlack
    
    Shape10.FillColor = vbBlack
    Shape11.FillColor = vbGreen
    Shape12.FillColor = vbBlack
ElseIf t = 1 Then
      
    Shape3.FillColor = vbBlack
    Shape2.FillColor = vbGreen
    Shape1.FillColor = vbBlack
    
    Shape4.FillColor = vbBlack
    Shape5.FillColor = vbBlack
    Shape6.FillColor = vbYellow
    
    Shape7.FillColor = vbRed
    Shape8.FillColor = vbBlack
    Shape9.FillColor = vbBlack
    
    Shape10.FillColor = vbRed
    Shape11.FillColor = vbBlack
    Shape12.FillColor = vbBlack
ElseIf t = 2 Then
    Shape3.FillColor = vbRed
    Shape2.FillColor = vbBlack
    Shape1.FillColor = vbBlack
    
    Shape4.FillColor = vbBlack
    Shape5.FillColor = vbGreen
    Shape6.FillColor = vbBlack
    
    Shape7.FillColor = vbBlack
    Shape8.FillColor = vbBlack
    Shape9.FillColor = vbYellow
    
    Shape10.FillColor = vbRed
    Shape11.FillColor = vbBlack
    Shape12.FillColor = vbBlack
ElseIf t = 3 Then
    Shape3.FillColor = vbRed
    Shape2.FillColor = vbBlack
    Shape1.FillColor = vbBlack
    
    Shape4.FillColor = vbRed
    Shape5.FillColor = vbBlack
    Shape6.FillColor = vbBlack
    
    Shape7.FillColor = vbBlack
    Shape8.FillColor = vbGreen
    Shape9.FillColor = vbBlack
    
    Shape10.FillColor = vbBlack
    Shape11.FillColor = vbBlack
    Shape12.FillColor = vbYellow
End If
t = t + 1
If Shape2.FillColor = vbGreen Then
Timer2.Enabled = True
ElseIf Shape5.FillColor = vbGreen Then
Timer3.Enabled = True
ElseIf Shape8.FillColor = vbGreen Then
Timer4.Enabled = True
ElseIf Shape11.FillColor = vbGreen Then
Timer5.Enabled = True
End If
End Sub

Private Sub Timer2_Timer()
Command2.Left = Command2.Left + 40
End Sub

Private Sub Timer3_Timer()
Command4.Top = Command4.Top + 30
End Sub

Private Sub Timer4_Timer()
Command1.Left = Command1.Left - 30
End Sub

Private Sub Timer5_Timer()
Command3.Top = Command3.Top - 30
End Sub
