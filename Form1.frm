VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "运动"
   ClientHeight    =   8355
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   14190
   LinkTopic       =   "Form1"
   ScaleHeight     =   8355
   ScaleWidth      =   14190
   StartUpPosition =   3  '窗口缺省
   Begin VB.CommandButton Command2 
      Caption         =   "复位"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Timer Timer3 
      Interval        =   10
      Left            =   1680
      Top             =   5520
   End
   Begin VB.Timer Timer2 
      Interval        =   10
      Left            =   840
      Top             =   4680
   End
   Begin VB.CommandButton Command1 
      Caption         =   "输入速度"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   360
      Top             =   960
   End
   Begin VB.PictureBox Picture1 
      Height          =   615
      Left            =   2500
      Picture         =   "Form1.frx":0000
      ScaleHeight     =   555
      ScaleWidth      =   8715
      TabIndex        =   0
      Top             =   960
      Width           =   8775
   End
   Begin VB.PictureBox Picture2 
      Height          =   615
      Left            =   2500
      Picture         =   "Form1.frx":314A
      ScaleHeight     =   555
      ScaleWidth      =   8715
      TabIndex        =   1
      Top             =   6960
      Width           =   8775
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "带电粒子在电场中运动（不计重力）"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   15.75
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   960
      TabIndex        =   4
      Top             =   240
      Width           =   6255
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      Height          =   600
      Left            =   400
      Shape           =   3  'Circle
      Top             =   3480
      Width           =   600
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub Command1_Click()
Form2.Show
End Sub

Private Sub Command2_Click()
t = 0
f1 = 0
f2 = 0
x = 0
Cls
Shape1.Left = 400
Shape1.Top = 3480
Timer1.Enabled = False
Timer2.Enabled = False
Timer3.Enabled = False
End Sub

Private Sub Form_Load()

Timer1.Enabled = False
Timer2.Enabled = False
Timer3.Enabled = False
Form2.Show vbModal, Me

End Sub



Private Sub Timer1_Timer()
Shape1.Left = Shape1.Left + v1
Circle (Shape1.Left, Shape1.Top + 300), 10
If Shape1.Left < 2520 - 600 Then

Timer2.Enabled = False
Else

Timer2.Enabled = True


Timer3.Enabled = False
Timer1.Enabled = True
End If
End Sub

Private Sub Timer2_Timer()
'Timer1.Enabled = True
If Shape1.Left < 8775 + 2200 And Shape1.Left > 2520 - 600 Then
t = t + Timer1.Interval
f1 = 9 * 10 ^ 5 * -q * q1 / (Shape1.Top + 300 - (Picture1.Top + Picture.Height)) ^ 2
f2 = 9 * 10 ^ 5 * q * q2 / (Picture2.Top - Shape1.Top + 300) ^ 2
f = (f1 + f2) / 30
x = x + (f * (Timer1.Interval) ^ 2) / 2
Shape1.Top = Shape1.Top - x     'f * ((t) ^ 2)
Circle (Shape1.Left, Shape1.Top + 300), 10

If Shape1.Top < 960 + 615 Or Shape1.Top > 6360 Then
Timer2.Enabled = False
Timer3.Enabled = False
Timer1.Enabled = False
End If
Else
Timer2.Enabled = False
Timer3.Enabled = True
End If

End Sub

Private Sub Timer3_Timer()
Shape1.Top = Shape1.Top - x '* Timer1.Interval / 100000
If Shape1.Left > 12300 And Shape1.Top > 7920 Then
Timer1.Enabled = False
Timer2.Enabled = False
Timer3.Enabled = False
End If


End Sub

