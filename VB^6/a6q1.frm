VERSION 5.00
Begin VB.Form Form1 
   Caption         =   " "
   ClientHeight    =   3675
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6375
   LinkTopic       =   "Form1"
   ScaleHeight     =   3675
   ScaleWidth      =   6375
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Stop"
      Height          =   495
      Left            =   840
      TabIndex        =   1
      Top             =   2280
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   1320
      Width           =   1335
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   2760
      Top             =   0
   End
   Begin VB.Label Label2 
      Height          =   2895
      Left            =   4080
      TabIndex        =   3
      Top             =   360
      Width           =   1815
   End
   Begin VB.Label Label1 
      Height          =   495
      Left            =   720
      TabIndex        =   2
      Top             =   480
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
temp = TimeValue(Now)
Timer1.Enabled = True
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False
Label2.Caption = (TimeValue(Now) - temp)
End Sub

Private Sub Form_Load()
Timer1.Enabled = False
End Sub

Private Sub Timer1_Timer()
Label1.Caption = TimeValue(Now)
End Sub
