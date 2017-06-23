VERSION 5.00
Begin VB.Form Form5 
   Caption         =   "Form5"
   ClientHeight    =   9345
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13665
   LinkTopic       =   "Form5"
   ScaleHeight     =   9345
   ScaleWidth      =   13665
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   13080
      Top             =   120
   End
   Begin VB.Label Label4 
      Caption         =   "Week day : "
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
      Left            =   2160
      TabIndex        =   3
      Top             =   2880
      Width           =   1995
   End
   Begin VB.Label Label3 
      Caption         =   "Day : "
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   500
      Left            =   2160
      TabIndex        =   2
      Top             =   2160
      Width           =   2000
   End
   Begin VB.Label Label2 
      Caption         =   "Month : "
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   500
      Left            =   2160
      TabIndex        =   1
      Top             =   1440
      Width           =   2000
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
      TabIndex        =   0
      Top             =   0
      Width           =   2295
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim T, Da As String
Dim H, M, D As Integer
Private Sub Form_Load()
T = Format(Time, "HH:MM:SS")
H = Hour(T)
If H < 12 Then
    MsgBox ("Welcome, and Good Morning")
ElseIf H < 16 Then
    MsgBox ("Welcome, and Good Afternoon")
Else
    MsgBox ("Welcome, and Good Evening")
End If
M = Month(Date)
D = Day(Date)
Da = Weekday(Date)
Label2.Caption = Label2.Caption & M
Label3.Caption = Label3.Caption & D
Label4.Caption = Label4.Caption & Da
End Sub
Private Sub Timer1_Timer()
Label1.Caption = Time
End Sub
