VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form4"
   ClientHeight    =   8145
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12300
   LinkTopic       =   "Form4"
   ScaleHeight     =   8145
   ScaleWidth      =   12300
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command4 
      Caption         =   "LEFT"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2160
      Left            =   1560
      TabIndex        =   5
      Top             =   2640
      Width           =   375
   End
   Begin VB.CommandButton Command3 
      Caption         =   "BOTTOM"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   5040
      TabIndex        =   4
      Top             =   7560
      Width           =   1800
   End
   Begin VB.CommandButton Command2 
      Caption         =   "RIGHT"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2160
      Left            =   10560
      TabIndex        =   3
      Top             =   2640
      Width           =   375
   End
   Begin VB.CommandButton Command1 
      Caption         =   "UP"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      Left            =   5040
      TabIndex        =   2
      Top             =   120
      Width           =   1800
   End
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   6855
      Left            =   2160
      TabIndex        =   0
      Top             =   600
      Width           =   8295
      Begin VB.PictureBox Picture1 
         Height          =   2895
         Left            =   2280
         Picture         =   "Q4.frx":0000
         ScaleHeight     =   2835
         ScaleWidth      =   3195
         TabIndex        =   1
         Top             =   1800
         Width           =   3255
      End
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Picture1.Top = 150
End Sub

Private Sub Command2_Click()
Picture1.Left = 4900
End Sub

Private Sub Command3_Click()
Picture1.Top = 3900
End Sub

Private Sub Command4_Click()
Picture1.Left = 100
End Sub
