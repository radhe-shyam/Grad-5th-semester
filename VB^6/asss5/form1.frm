VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5595
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9045
   LinkTopic       =   "Form1"
   ScaleHeight     =   5595
   ScaleWidth      =   9045
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   2895
      Left            =   2880
      TabIndex        =   5
      Top             =   1080
      Width           =   5655
      Begin VB.Label Label8 
         Caption         =   "Label8"
         Height          =   255
         Index           =   2
         Left            =   3720
         TabIndex        =   23
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label8 
         Caption         =   "Label8"
         Height          =   255
         Index           =   1
         Left            =   1920
         TabIndex        =   22
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label8 
         Caption         =   "Label8"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   21
         Top             =   1440
         Width           =   855
      End
      Begin VB.Label Label7 
         Caption         =   "Label7"
         Height          =   255
         Index           =   2
         Left            =   3720
         TabIndex        =   20
         Top             =   1200
         Width           =   855
      End
      Begin VB.Label Label7 
         Caption         =   "Label7"
         Height          =   255
         Index           =   1
         Left            =   1920
         TabIndex        =   19
         Top             =   1200
         Width           =   855
      End
      Begin VB.Label Label7 
         Caption         =   "Label7"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   18
         Top             =   1200
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "Label6"
         Height          =   255
         Index           =   2
         Left            =   3720
         TabIndex        =   17
         Top             =   960
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "Label6"
         Height          =   255
         Index           =   1
         Left            =   1920
         TabIndex        =   16
         Top             =   960
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "Label6"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   15
         Top             =   960
         Width           =   855
      End
      Begin VB.Label Label5 
         Caption         =   "Label5"
         Height          =   255
         Index           =   2
         Left            =   3720
         TabIndex        =   14
         Top             =   720
         Width           =   855
      End
      Begin VB.Label Label5 
         Caption         =   "Label5"
         Height          =   255
         Index           =   1
         Left            =   1920
         TabIndex        =   13
         Top             =   720
         Width           =   855
      End
      Begin VB.Label Label5 
         Caption         =   "Label5"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   12
         Top             =   720
         Width           =   855
      End
      Begin VB.Label Label4 
         Caption         =   "Label4"
         Height          =   255
         Index           =   2
         Left            =   3720
         TabIndex        =   11
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label4 
         Caption         =   "Label4"
         Height          =   255
         Index           =   1
         Left            =   1920
         TabIndex        =   10
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label4 
         Caption         =   "Label4"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   9
         Top             =   480
         Width           =   1095
      End
      Begin VB.Label Label3 
         Caption         =   "Price"
         Height          =   255
         Left            =   3720
         TabIndex        =   8
         Top             =   240
         Width           =   1335
      End
      Begin VB.Label Label2 
         Caption         =   "Item Qty"
         Height          =   255
         Left            =   1920
         TabIndex        =   7
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label1 
         Caption         =   "ItemName"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   240
         Width           =   735
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Purchase Item"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   3840
      Width           =   1695
   End
   Begin VB.OptionButton Option3 
      Caption         =   "Silver"
      Height          =   495
      Left            =   6840
      TabIndex        =   3
      Top             =   360
      Width           =   735
   End
   Begin VB.OptionButton Option2 
      Caption         =   "Gold"
      Height          =   495
      Left            =   5160
      TabIndex        =   2
      Top             =   360
      Width           =   735
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Platinum"
      Height          =   375
      Left            =   3000
      TabIndex        =   1
      Top             =   360
      Width           =   1095
   End
   Begin VB.ListBox List1 
      Height          =   3375
      ItemData        =   "form1.frx":0000
      Left            =   360
      List            =   "form1.frx":0026
      TabIndex        =   0
      Top             =   240
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer
Private Sub Command1_Click()
Item = List1.List(List1.ListIndex)
unit = List1.ItemData(List1.ListIndex)
If (Option1.Value = True) Then
t = 10
ElseIf (Option2.Value = True) Then
 t = 5
ElseIf (Option3.Value = True) Then
 t = 3
Else
 d = MsgBox("Please select radio button", vbOKOnly)
End If
 qty = InputBox("Enter quantity", "Input")
 pri = unit * qty
 Label4(0).Caption = Item
 Label4(1).Caption = qty
 Label4(2).Caption = (unit - unit * t / 100)
End Sub

Private Sub Label10_Click()

End Sub

Private Sub Frame1_DragDrop(Source As Control, X As Single, Y As Single)

End Sub
