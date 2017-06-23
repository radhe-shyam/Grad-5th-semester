VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   11835
   ClientLeft      =   1200
   ClientTop       =   1755
   ClientWidth     =   12330
   LinkTopic       =   "Form1"
   ScaleHeight     =   11835
   ScaleWidth      =   12330
   Begin VB.ListBox List3 
      Height          =   2985
      ItemData        =   "shop.frx":0000
      Left            =   2280
      List            =   "shop.frx":0002
      TabIndex        =   11
      Top             =   1440
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "grand total"
      Height          =   855
      Left            =   5280
      TabIndex        =   9
      Top             =   5640
      Width           =   1095
   End
   Begin VB.OptionButton Option3 
      Caption         =   "plitenium"
      Height          =   615
      Left            =   7800
      TabIndex        =   8
      Top             =   4320
      Width           =   3135
   End
   Begin VB.OptionButton Option2 
      Caption         =   "gold"
      Height          =   495
      Left            =   7800
      TabIndex        =   7
      Top             =   3480
      Width           =   3015
   End
   Begin VB.OptionButton Option1 
      Caption         =   "silver"
      Height          =   495
      Left            =   7800
      TabIndex        =   6
      Top             =   2520
      Width           =   2895
   End
   Begin VB.ListBox List2 
      Enabled         =   0   'False
      Height          =   2985
      ItemData        =   "shop.frx":0004
      Left            =   4200
      List            =   "shop.frx":0006
      TabIndex        =   2
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "total"
      Height          =   855
      Left            =   960
      TabIndex        =   1
      Top             =   5640
      Width           =   1695
   End
   Begin VB.ListBox List1 
      Height          =   2985
      ItemData        =   "shop.frx":0008
      Left            =   240
      List            =   "shop.frx":001C
      MultiSelect     =   1  'Simple
      TabIndex        =   0
      Top             =   1440
      Width           =   1575
   End
   Begin VB.Label Label4 
      Height          =   855
      Left            =   7800
      TabIndex        =   10
      Top             =   5640
      Width           =   1815
   End
   Begin VB.Label Label3 
      Height          =   855
      Left            =   7920
      TabIndex        =   5
      Top             =   960
      Width           =   2175
   End
   Begin VB.Label Label2 
      Caption         =   "quantity"
      Height          =   495
      Left            =   5280
      TabIndex        =   4
      Top             =   720
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "item"
      Height          =   495
      Left            =   240
      TabIndex        =   3
      Top             =   840
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim sum As Integer
Dim b As Integer
Dim i As Integer
Private Sub Command1_Click()
For i = 0 To List1.ListCount - 1
If List1.Selected(i) = True Then
List3.AddItem (List1.List(i))
List2.AddItem (InputBox("enter  quantity" & " " & List1.List(i)))
End If
Next i
For i = 0 To List1.ListCount - 1
If List1.Selected(i) = True Then
sum = sum + List1.ItemData(i) * Val(List2.List(b))
b = b + 1
End If
Next i
Label3.Caption = sum
For i = 0 To List1.ListCount - 1
List1.Selected(i) = False
Next i
End Sub

Private Sub Command2_Click()
If Option1.Value = True Then
Label4.Caption = sum - sum * 5 / 100
ElseIf Option2.Value = True Then
Label4.Caption = sum - sum * 10 / 100
ElseIf Option3.Value = True Then
Label4.Caption = sum - sum * 20 / 100
End If
End Sub

Private Sub Form_Load()
sum = 0
b = 0
End Sub
