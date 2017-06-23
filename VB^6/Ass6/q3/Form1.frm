VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Stop watch"
   ClientHeight    =   2265
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3900
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   18
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   2265
   ScaleWidth      =   3900
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   120
      Top             =   360
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Reset"
      Height          =   495
      Left            =   1080
      TabIndex        =   3
      Top             =   1560
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Stop"
      Height          =   495
      Left            =   2040
      TabIndex        =   2
      Top             =   960
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label Label6 
      Caption         =   "0"
      Height          =   375
      Left            =   2880
      TabIndex        =   9
      Top             =   240
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   ":"
      Height          =   375
      Index           =   1
      Left            =   2760
      TabIndex        =   8
      Top             =   240
      Width           =   135
   End
   Begin VB.Label Label5 
      Caption         =   ":"
      Height          =   375
      Left            =   2160
      TabIndex        =   7
      Top             =   240
      Width           =   135
   End
   Begin VB.Label Label4 
      Caption         =   "0"
      Height          =   375
      Left            =   2280
      TabIndex        =   6
      Top             =   240
      Width           =   375
   End
   Begin VB.Label Label3 
      Caption         =   "0"
      Height          =   375
      Left            =   1680
      TabIndex        =   5
      Top             =   240
      Width           =   375
   End
   Begin VB.Label Label2 
      Caption         =   ":"
      Height          =   375
      Index           =   0
      Left            =   1560
      TabIndex        =   4
      Top             =   240
      Width           =   135
   End
   Begin VB.Label Label1 
      Caption         =   "0"
      Height          =   375
      Left            =   1080
      TabIndex        =   0
      Top             =   240
      Width           =   375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim mtemp As Integer
Dim stemp As Integer
Dim htemp As Integer
Dim hun As Integer
Private Sub Command1_Click()
Timer1.Enabled = True
htemp = Hour(Time$)
mtemp = Minute(Time$)
stemp = Second(Time$)
hun = 0
End Sub
Private Sub Command2_Click()
Timer1.Enabled = False
End Sub

Private Sub Command3_Click()
Label1.Caption = 0
Label3.Caption = 0
Label4.Caption = 0
Label6.Caption = 0
End Sub

Private Sub Timer1_Timer()
Label1.Caption = Hour(Time$) - htemp
Label3.Caption = Minute(Time$) - mtemp
Label4.Caption = Second(Time$) - stemp
Label6.Caption = hun
If hun < 101 Then
hun = hun + 1
Else
hun = 0
End If
End Sub
