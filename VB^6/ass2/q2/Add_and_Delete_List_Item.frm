VERSION 5.00
Begin VB.Form Add_and_Delete_List_Item 
   Caption         =   "Add and Delete List Item"
   ClientHeight    =   2475
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   3975
   LinkTopic       =   "Form1"
   ScaleHeight     =   2475
   ScaleWidth      =   3975
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Delete"
      Height          =   375
      Left            =   2400
      TabIndex        =   3
      Top             =   1320
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Add"
      Height          =   375
      Left            =   2400
      TabIndex        =   2
      Top             =   720
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   2400
      TabIndex        =   1
      Text            =   "Items to add"
      Top             =   120
      Width           =   1455
   End
   Begin VB.ListBox List1 
      Height          =   2205
      ItemData        =   "Add_and_Delete_List_Item.frx":0000
      Left            =   120
      List            =   "Add_and_Delete_List_Item.frx":0016
      TabIndex        =   0
      Top             =   120
      Width           =   2055
   End
End
Attribute VB_Name = "Add_and_Delete_List_Item"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "" Then
    Exit Sub
Else
    For i = 0 To List1.ListCount - 1
        If List1.List(i) = Text1.Text Then
        Exit Sub
        End If
    Next i
    List1.AddItem (Text1.Text)
End If
End Sub

Private Sub Command2_Click()
If List1.ListIndex >= 0 Then
    List1.RemoveItem (List1.ListIndex)
End If
End Sub
