VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5715
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8745
   LinkTopic       =   "Form1"
   ScaleHeight     =   5715
   ScaleWidth      =   8745
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   "LEFT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5175
      Left            =   120
      TabIndex        =   4
      Top             =   240
      Width           =   375
   End
   Begin VB.CommandButton Command3 
      Caption         =   "RIGHT"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5175
      Left            =   8160
      TabIndex        =   3
      Top             =   240
      Width           =   375
   End
   Begin VB.CommandButton Command2 
      Caption         =   "DOWN"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   480
      TabIndex        =   2
      Top             =   5040
      Width           =   7695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "UP"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   480
      TabIndex        =   1
      Top             =   240
      Width           =   7695
   End
   Begin VB.Frame Frame1 
      Height          =   4575
      Left            =   480
      TabIndex        =   0
      Top             =   480
      Width           =   7695
      Begin VB.PictureBox Picture1 
         Height          =   1575
         Left            =   4440
         Picture         =   "Form1.frx":0000
         ScaleHeight     =   1500
         ScaleMode       =   0  'User
         ScaleWidth      =   2355
         TabIndex        =   5
         Top             =   2640
         Width           =   2415
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Picture1.Top > 125 Then
    Picture1.Top = Picture1.Top - 30
End If

End Sub

Private Sub Command2_Click()
If Picture1.Top < 2995 Then
    Picture1.Top = Picture1.Top + 30
End If
End Sub

Private Sub Command3_Click()
If Picture1.Left < 5275 Then
    Picture1.Left = Picture1.Left + 30
End If
End Sub

Private Sub Command4_Click()
If Picture1.Left > 5 Then
    Picture1.Left = Picture1.Left - 30
End If
End Sub
