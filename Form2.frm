VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "输入数据"
   ClientHeight    =   3900
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   5295
   LinkTopic       =   "Form2"
   ScaleHeight     =   3900
   ScaleWidth      =   5295
   StartUpPosition =   3  '窗口缺省
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   2160
      TabIndex        =   9
      Top             =   3000
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   1920
      TabIndex        =   7
      Top             =   2160
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   360
      TabIndex        =   5
      Top             =   2160
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "取消"
      Height          =   375
      Left            =   3840
      TabIndex        =   3
      Top             =   2040
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "确定"
      Height          =   375
      Left            =   3840
      TabIndex        =   2
      Top             =   1200
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   840
      Width           =   2415
   End
   Begin VB.Label Label4 
      Caption         =   "射入电荷带电量"
      Height          =   255
      Left            =   480
      TabIndex        =   8
      Top             =   3120
      Width           =   1335
   End
   Begin VB.Label Label3 
      Caption         =   "下级板电荷量"
      Height          =   255
      Left            =   1800
      TabIndex        =   6
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "上极板电荷量"
      Height          =   255
      Left            =   360
      TabIndex        =   4
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "请输入速度（水平方向）"
      Height          =   255
      Left            =   360
      TabIndex        =   0
      Top             =   480
      Width           =   2175
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
v1 = Text1
q1 = Text2
q2 = Text3
q = Text4

Me.Hide
If Form1.Shape1.Left < 2520 - 600 Then

Form1.Timer1.Enabled = True
End If
End Sub

Private Sub Command2_Click()
v1 = 0
Me.Hide

End Sub







Private Sub Text1_Click()
Text1 = ""
End Sub

Private Sub Text2_Click()
Text2 = ""
End Sub



Private Sub Text3_Click()
Text3 = ""
End Sub

Private Sub Text4_click()
Text4 = ""
End Sub
