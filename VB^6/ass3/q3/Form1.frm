VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Calculator"
   ClientHeight    =   3870
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4095
   BeginProperty Font 
      Name            =   "Times New Roman"
      Size            =   24
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   -1  'True
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   3870
   ScaleWidth      =   4095
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Bk"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   3240
      TabIndex        =   21
      Top             =   1800
      Width           =   495
   End
   Begin VB.CommandButton Command19 
      Caption         =   "="
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   3240
      TabIndex        =   20
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton Command18 
      Caption         =   "sq"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   3240
      TabIndex        =   19
      Top             =   2520
      Width           =   495
   End
   Begin VB.CommandButton Command17 
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   3240
      TabIndex        =   18
      Top             =   1080
      Width           =   495
   End
   Begin VB.CommandButton Command16 
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   2520
      TabIndex        =   17
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton Command15 
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   2520
      TabIndex        =   16
      Top             =   2520
      Width           =   495
   End
   Begin VB.CommandButton Command14 
      Caption         =   "x"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   2520
      TabIndex        =   15
      Top             =   1800
      Width           =   495
   End
   Begin VB.CommandButton Command13 
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   2520
      TabIndex        =   14
      Top             =   1080
      Width           =   495
   End
   Begin VB.CommandButton Command12 
      Caption         =   "+/-"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   1800
      TabIndex        =   13
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton Command11 
      Caption         =   "."
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   1080
      TabIndex        =   12
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton num 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Index           =   0
      Left            =   360
      TabIndex        =   11
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton num 
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Index           =   3
      Left            =   1800
      TabIndex        =   10
      Top             =   2520
      Width           =   495
   End
   Begin VB.CommandButton num 
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Index           =   2
      Left            =   1080
      TabIndex        =   9
      Top             =   2520
      Width           =   495
   End
   Begin VB.CommandButton num 
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Index           =   1
      Left            =   360
      TabIndex        =   8
      Top             =   2520
      Width           =   495
   End
   Begin VB.CommandButton num 
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Index           =   6
      Left            =   1800
      TabIndex        =   7
      Top             =   1800
      Width           =   495
   End
   Begin VB.CommandButton num 
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Index           =   5
      Left            =   1080
      TabIndex        =   6
      Top             =   1800
      Width           =   495
   End
   Begin VB.CommandButton num 
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Index           =   4
      Left            =   360
      TabIndex        =   5
      Top             =   1800
      Width           =   495
   End
   Begin VB.CommandButton num 
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Index           =   9
      Left            =   1800
      TabIndex        =   4
      Top             =   1080
      Width           =   495
   End
   Begin VB.CommandButton num 
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Index           =   8
      Left            =   1080
      TabIndex        =   3
      Top             =   1080
      Width           =   495
   End
   Begin VB.CommandButton num 
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Index           =   7
      Left            =   360
      TabIndex        =   2
      Top             =   1080
      Width           =   495
   End
   Begin VB.Frame Frame1 
      Caption         =   "Result"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3855
      Begin VB.TextBox Text1 
         Alignment       =   1  'Right Justify
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   21.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         Locked          =   -1  'True
         MaxLength       =   15
         TabIndex        =   1
         Text            =   "0"
         Top             =   240
         Width           =   3615
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim nm As Double
Dim sym As String



Private Sub Command1_Click()
Text1.Text = Mid$(Text1.Text, 1, Len(Text1.Text) - 1)
If Text1.Text = "" Then
    Text1.Text = "0"
End If
End Sub

Private Sub Command11_Click()
If InStr(Text1.Text, ".") Then
    t = MsgBox("Invalid", vbOKOnly, "Error")
Else
    Text1.Text = Text1.Text & "."
End If
End Sub

Private Sub Command12_Click()
Text1.Text = -(CDbl(Text1.Text))
End Sub

Private Sub Command13_Click()
nm = Text1.Text
sym = "/"
Text1.Text = "0"
End Sub

Private Sub Command14_Click()
nm = Text1.Text
sym = "x"
Text1.Text = "0"
End Sub

Private Sub Command15_Click()
nm = Text1.Text
sym = "-"
Text1.Text = "0"
End Sub

Private Sub Command16_Click()
nm = Text1.Text
sym = "+"
Text1.Text = "0"
End Sub

Private Sub Command17_Click()
Text1.Text = "0"
End Sub

Private Sub Command18_Click()
Text1.Text = Sqr(CDbl(Text1.Text))
End Sub

Private Sub Command19_Click()
If sym = "+" Then
    Text1.Text = nm + CDbl(Text1.Text)
ElseIf sym = "-" Then
    Text1.Text = nm - CDbl(Text1.Text)
ElseIf sym = "x" Then
    Text1.Text = nm * CDbl(Text1.Text)
ElseIf sym = "/" Then
    If CDbl(Text1.Text) = 0 Then
        t = MsgBox("Invalid Input :  Divide by 0 error ", vbOK, "Error")
    Else
        Text1.Text = nm / CDbl(Text1.Text)
    End If
End If
End Sub

Private Sub num_Click(Index As Integer)
Text1.Text = Text1.Text & Index
End Sub
