VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5715
   ClientLeft      =   1785
   ClientTop       =   1755
   ClientWidth     =   6585
   LinkTopic       =   "Form1"
   ScaleHeight     =   5715
   ScaleWidth      =   6585
   Begin VB.PictureBox Picture1 
      Height          =   2535
      Left            =   2880
      ScaleHeight     =   2475
      ScaleWidth      =   3075
      TabIndex        =   3
      Top             =   1440
      Width           =   3135
   End
   Begin VB.VScrollBar VScroll3 
      Height          =   2295
      Left            =   1680
      Max             =   255
      TabIndex        =   2
      Top             =   1200
      Width           =   255
   End
   Begin VB.VScrollBar VScroll2 
      Height          =   2295
      Left            =   1080
      Max             =   255
      TabIndex        =   1
      Top             =   1200
      Width           =   255
   End
   Begin VB.VScrollBar VScroll1 
      Height          =   2295
      Left            =   360
      Max             =   255
      TabIndex        =   0
      Top             =   1200
      Width           =   255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub color()
Picture1.BackColor = RGB(VScroll1.Value, VScroll2.Value, VScroll3.Value)
End Sub

Private Sub VScroll1_Change()
Call color
End Sub

Private Sub VScroll1_Scroll()
Call color
End Sub

Private Sub VScroll2_Change()
Call color
End Sub

Private Sub VScroll2_Scroll()
Call color
End Sub

Private Sub VScroll3_Change()
Call color
End Sub

Private Sub VScroll3_Scroll()
Call color
End Sub
