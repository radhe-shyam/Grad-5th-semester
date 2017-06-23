VERSION 5.00
Begin VB.Form Form1 
   Caption         =   " Alarm Clock"
   ClientHeight    =   10170
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13845
   LinkTopic       =   "Form1"
   ScaleHeight     =   10170
   ScaleWidth      =   13845
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   0
      Top             =   0
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Set Time"
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
      Left            =   3480
      TabIndex        =   0
      Top             =   3360
      Width           =   2175
   End
   Begin VB.Label Label6 
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5880
      TabIndex        =   6
      Top             =   2160
      Width           =   1600
   End
   Begin VB.Label Label5 
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3840
      TabIndex        =   5
      Top             =   2160
      Width           =   1965
   End
   Begin VB.Label Label4 
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1680
      TabIndex        =   4
      Top             =   2160
      Width           =   1600
   End
   Begin VB.Label Label3 
      Caption         =   "Alarm "
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5880
      TabIndex        =   3
      Top             =   1320
      Width           =   1600
   End
   Begin VB.Label Label2 
      Caption         =   "Time"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3840
      TabIndex        =   2
      Top             =   1320
      Width           =   1600
   End
   Begin VB.Label Label1 
      Caption         =   "Date"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1680
      TabIndex        =   1
      Top             =   1320
      Width           =   1605
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim H, M As Integer
Private Sub Command1_Click()
H = InputBox("Hour: ")
If H >= 0 And H < 12 Then
    M = InputBox("Minute: ")
    If M >= 0 And M < 60 Then
    MsgBox ("Alarm set")
    Label6.Caption = H & " : " & M
    Else
    MsgBox ("Invalid")
    H = Null
    M = Null
    End If
Else
MsgBox ("Invalid")
H = Null
M = Null
End If
End Sub


Private Sub Timer1_Timer()
If H = Val(Hour(Time)) And M = Val(Minute(Time)) Then
    Beep
End If
Label4.Caption = Date
Label5.Caption = Time
End Sub
