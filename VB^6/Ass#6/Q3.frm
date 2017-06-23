VERSION 5.00
Begin VB.Form Form3 
   Caption         =   "Form3"
   ClientHeight    =   10725
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12855
   LinkTopic       =   "Form3"
   ScaleHeight     =   10725
   ScaleWidth      =   12855
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   360
      Top             =   600
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   0
      Top             =   600
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Reset"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5520
      TabIndex        =   2
      Top             =   3480
      Width           =   1600
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Pause"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3720
      TabIndex        =   1
      Top             =   3480
      Width           =   1600
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1920
      TabIndex        =   0
      Top             =   3480
      Width           =   1600
   End
   Begin VB.Label Label2 
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3600
      TabIndex        =   4
      Top             =   2760
      Width           =   1935
   End
   Begin VB.Label Label1 
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   2175
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim T1, T2, T3 As Integer

Private Sub Command1_Click()
Timer2.Enabled = True
End Sub

Private Sub Command2_Click()
Timer2.Enabled = False
End Sub

Private Sub Command3_Click()
T1 = 0
T2 = 0
T3 = 0
Timer2.Enabled = False
Label2.Caption = T1 & " : " & T2 & " : " & T3
End Sub

Private Sub Form_Load()
T1 = 0
T2 = 0
T3 = 0
End Sub

Private Sub Timer1_Timer()
Label1.Caption = Time
End Sub

Private Sub Timer2_Timer()
T3 = T3 + 1
If T3 = 60 Then
T2 = T2 + 1
T3 = 0
End If

If T2 = 60 Then
T1 = T1 + 1
T2 = 0
End If
Label2.Caption = T1 & " : " & T2 & " : " & T3
End Sub
