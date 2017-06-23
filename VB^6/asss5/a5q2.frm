VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3885
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3885
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      BackColor       =   &H80000007&
      Height          =   1695
      Left            =   360
      ScaleHeight     =   1635
      ScaleWidth      =   3795
      TabIndex        =   6
      Top             =   120
      Width           =   3855
   End
   Begin VB.HScrollBar HScroll3 
      Height          =   375
      LargeChange     =   10
      Left            =   1080
      Max             =   255
      TabIndex        =   2
      Top             =   3240
      Width           =   2895
   End
   Begin VB.HScrollBar HScroll2 
      Height          =   375
      LargeChange     =   10
      Left            =   1080
      Max             =   255
      TabIndex        =   1
      Top             =   2640
      Width           =   2895
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   375
      LargeChange     =   10
      Left            =   1080
      Max             =   255
      TabIndex        =   0
      Top             =   2040
      Width           =   2895
   End
   Begin VB.Label Label3 
      Caption         =   "Blue"
      Height          =   375
      Left            =   360
      TabIndex        =   5
      Top             =   3240
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "Green"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   2640
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "Red"
      Height          =   255
      Left            =   360
      TabIndex        =   3
      Top             =   2160
      Width           =   615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub HScroll1_Change()
Picture1.BackColor = RGB(HScroll1.Value, HScroll2.Value, HScroll3.Value)
End Sub

Private Sub HScroll2_Change()
Picture1.BackColor = RGB(HScroll1.Value, HScroll2.Value, HScroll3.Value)
End Sub

Private Sub HScroll3_Change()
Picture1.BackColor = RGB(HScroll1.Value, HScroll2.Value, HScroll3.Value)
End Sub

