VERSION 5.00
Begin VB.Form List_Item_move 
   Caption         =   "Move List Items"
   ClientHeight    =   2445
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3735
   LinkTopic       =   "Form1"
   ScaleHeight     =   2445
   ScaleWidth      =   3735
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   ">"
      Height          =   2175
      Left            =   1680
      TabIndex        =   2
      Top             =   120
      Width           =   375
   End
   Begin VB.ListBox List2 
      Height          =   2205
      Left            =   2160
      TabIndex        =   1
      Top             =   120
      Width           =   1455
   End
   Begin VB.ListBox List1 
      Height          =   2205
      ItemData        =   "List_Item_move.frx":0000
      Left            =   120
      List            =   "List_Item_move.frx":0019
      TabIndex        =   0
      Top             =   120
      Width           =   1455
   End
End
Attribute VB_Name = "List_Item_move"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If List1.ListIndex >= 0 Then
    List2.AddItem (List1.List(List1.ListIndex))
    List1.RemoveItem (List1.ListIndex)
End If
End Sub
