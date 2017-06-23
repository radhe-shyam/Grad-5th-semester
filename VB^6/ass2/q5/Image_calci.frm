VERSION 5.00
Begin VB.Form Image_calci 
   Caption         =   "Area Finder"
   ClientHeight    =   6285
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6240
   LinkTopic       =   "Form1"
   ScaleHeight     =   6285
   ScaleWidth      =   6240
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1920
      TabIndex        =   4
      Text            =   "Result"
      Top             =   2880
      Width           =   3135
   End
   Begin VB.PictureBox Picture4 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2295
      Left            =   3240
      Picture         =   "Image_calci.frx":0000
      ScaleHeight     =   2295
      ScaleWidth      =   2415
      TabIndex        =   3
      Top             =   3720
      Width           =   2415
   End
   Begin VB.PictureBox Picture3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2295
      Left            =   120
      Picture         =   "Image_calci.frx":1412A
      ScaleHeight     =   2295
      ScaleWidth      =   2295
      TabIndex        =   2
      Top             =   3840
      Width           =   2295
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2415
      Left            =   3000
      Picture         =   "Image_calci.frx":2883C
      ScaleHeight     =   2415
      ScaleWidth      =   3255
      TabIndex        =   1
      Top             =   120
      Width           =   3255
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   2295
      Left            =   240
      Picture         =   "Image_calci.frx":44416
      ScaleHeight     =   2295
      ScaleWidth      =   2295
      TabIndex        =   0
      Top             =   240
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Area"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1200
      TabIndex        =   5
      Top             =   2880
      Width           =   735
   End
End
Attribute VB_Name = "Image_calci"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Picture1_Click()
r = InputBox("Enter the length of Radius")
Text1.Text = 3.14 * r * r
End Sub

Private Sub Picture2_Click()
h = InputBox("Enter the Height of Rectangle")
w = InputBox("Enter the Width of Rectangle")
Text1.Text = h * w
End Sub

Private Sub Picture3_Click()
h = InputBox("Enter the Height of Rectangle")
Text1.Text = h * h
End Sub

Private Sub Picture4_Click()
h = InputBox("Enter the Height of Triangle")
b = InputBox("Enter the Base of Triangle")
Text1.Text = 0.5 * h * b
End Sub
