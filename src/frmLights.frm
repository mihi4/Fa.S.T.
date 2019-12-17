VERSION 5.00
Begin VB.Form frmLights 
   Caption         =   "Form1"
   ClientHeight    =   3180
   ClientLeft      =   4680
   ClientTop       =   8715
   ClientWidth     =   14145
   LinkTopic       =   "Form1"
   ScaleHeight     =   3180
   ScaleWidth      =   14145
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton cmdAVTR 
      Caption         =   "AVTR"
      Height          =   375
      Left            =   9720
      TabIndex        =   71
      Top             =   2520
      Width           =   855
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "onGround"
      Height          =   375
      Index           =   12
      Left            =   8640
      TabIndex        =   70
      Top             =   2520
      Width           =   855
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "Lef Fault"
      Height          =   375
      Index           =   11
      Left            =   7800
      TabIndex        =   69
      Top             =   2520
      Width           =   855
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "Elec Fault"
      Height          =   375
      Index           =   10
      Left            =   6960
      TabIndex        =   68
      Top             =   2520
      Width           =   855
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "Air"
      Height          =   375
      Index           =   9
      Left            =   6480
      TabIndex        =   67
      Top             =   2520
      Width           =   495
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "Hyd"
      Height          =   375
      Index           =   8
      Left            =   5880
      TabIndex        =   66
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "BatFail"
      Height          =   375
      Index           =   7
      Left            =   5280
      TabIndex        =   65
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "FlcsRly"
      Height          =   375
      Index           =   6
      Left            =   4560
      TabIndex        =   64
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "ToFlcs"
      Height          =   375
      Index           =   5
      Left            =   3960
      TabIndex        =   63
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "EpuPmg"
      Height          =   375
      Index           =   4
      Left            =   3240
      TabIndex        =   62
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "EpuGen"
      Height          =   375
      Index           =   3
      Left            =   2520
      TabIndex        =   61
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "StbyGen"
      Height          =   375
      Index           =   2
      Left            =   1800
      TabIndex        =   60
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "MainGen"
      Height          =   375
      Index           =   1
      Left            =   960
      TabIndex        =   59
      Top             =   2520
      Width           =   855
   End
   Begin VB.CommandButton cmdLight3 
      Caption         =   "FlcsPgm"
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   58
      Top             =   2520
      Width           =   735
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "GEAR hdl"
      Height          =   375
      Index           =   26
      Left            =   8400
      TabIndex        =   57
      Top             =   1920
      Width           =   855
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "tfr engage"
      Height          =   375
      Index           =   25
      Left            =   7560
      TabIndex        =   56
      Top             =   1920
      Width           =   855
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "anti skid"
      Height          =   375
      Index           =   24
      Left            =   6720
      TabIndex        =   55
      Top             =   1920
      Width           =   855
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "fuel oil hot"
      Height          =   375
      Index           =   23
      Left            =   5880
      TabIndex        =   54
      Top             =   1920
      Width           =   855
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "BUC"
      Height          =   375
      Index           =   22
      Left            =   5280
      TabIndex        =   53
      Top             =   1920
      Width           =   615
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "seat arm"
      Height          =   375
      Index           =   21
      Left            =   4440
      TabIndex        =   52
      Top             =   1920
      Width           =   855
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "probeheat"
      Height          =   375
      Index           =   20
      Left            =   3600
      TabIndex        =   51
      Top             =   1920
      Width           =   855
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "OXY low"
      Height          =   375
      Index           =   19
      Left            =   2640
      TabIndex        =   50
      Top             =   1920
      Width           =   855
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "SEC"
      Height          =   375
      Index           =   18
      Left            =   2040
      TabIndex        =   49
      Top             =   1920
      Width           =   495
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "JFS on"
      Height          =   375
      Index           =   17
      Left            =   1080
      TabIndex        =   48
      Top             =   1920
      Width           =   855
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "EPU On"
      Height          =   375
      Index           =   16
      Left            =   240
      TabIndex        =   47
      Top             =   1920
      Width           =   855
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "AftFuelLow"
      Height          =   375
      Index           =   15
      Left            =   9600
      TabIndex        =   46
      Top             =   1440
      Width           =   1215
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "FwdFuelLow"
      Height          =   375
      Index           =   14
      Left            =   8520
      TabIndex        =   45
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "ecmFail"
      Height          =   375
      Index           =   13
      Left            =   7680
      TabIndex        =   44
      Top             =   1440
      Width           =   735
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "ecmPwr"
      Height          =   375
      Index           =   12
      Left            =   6960
      TabIndex        =   43
      Top             =   1440
      Width           =   735
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "Pwr"
      Height          =   375
      Index           =   11
      Left            =   6360
      TabIndex        =   42
      Top             =   1440
      Width           =   495
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "Low"
      Height          =   375
      Index           =   10
      Left            =   5880
      TabIndex        =   41
      Top             =   1440
      Width           =   495
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "Act"
      Height          =   375
      Index           =   9
      Left            =   5520
      TabIndex        =   40
      Top             =   1440
      Width           =   375
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "Srch"
      Height          =   375
      Index           =   8
      Left            =   5040
      TabIndex        =   39
      Top             =   1440
      Width           =   495
   End
   Begin VB.CommandButton cmdLight2 
      Height          =   375
      Index           =   7
      Left            =   4680
      TabIndex        =   38
      Top             =   1440
      Width           =   135
   End
   Begin VB.CommandButton cmdLight2 
      Height          =   375
      Index           =   6
      Left            =   4800
      TabIndex        =   37
      Top             =   1440
      Width           =   135
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "Tgt Sep"
      Height          =   375
      Index           =   5
      Left            =   3840
      TabIndex        =   36
      Top             =   1440
      Width           =   735
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "Unkown"
      Height          =   375
      Index           =   4
      Left            =   3120
      TabIndex        =   35
      Top             =   1440
      Width           =   735
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "Naval"
      Height          =   375
      Index           =   3
      Left            =   2520
      TabIndex        =   34
      Top             =   1440
      Width           =   615
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "PriMode"
      Height          =   375
      Index           =   2
      Left            =   1800
      TabIndex        =   33
      Top             =   1440
      Width           =   735
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "Launch"
      Height          =   375
      Index           =   1
      Left            =   1080
      TabIndex        =   32
      Top             =   1440
      Width           =   735
   End
   Begin VB.CommandButton cmdLight2 
      Caption         =   "Handoff"
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   31
      Top             =   1440
      Width           =   855
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "CabinPress"
      Height          =   375
      Index           =   29
      Left            =   9720
      TabIndex        =   30
      Top             =   720
      Width           =   975
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "NWSFail"
      Height          =   375
      Index           =   28
      Left            =   8760
      TabIndex        =   28
      Top             =   720
      Width           =   855
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "Hook"
      Height          =   375
      Index           =   27
      Left            =   8040
      TabIndex        =   27
      Top             =   720
      Width           =   615
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "ECM"
      Height          =   375
      Index           =   26
      Left            =   7320
      TabIndex        =   26
      Top             =   720
      Width           =   615
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "IFF"
      Height          =   375
      Index           =   25
      Left            =   6720
      TabIndex        =   25
      Top             =   720
      Width           =   495
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "RadarAlt"
      Height          =   375
      Index           =   24
      Left            =   5760
      TabIndex        =   24
      Top             =   720
      Width           =   855
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "Avionics"
      Height          =   375
      Index           =   23
      Left            =   4920
      TabIndex        =   23
      Top             =   720
      Width           =   735
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "FuelLow"
      Height          =   375
      Index           =   22
      Left            =   4080
      TabIndex        =   22
      Top             =   720
      Width           =   735
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "Overheat"
      Height          =   375
      Index           =   21
      Left            =   3120
      TabIndex        =   21
      Top             =   720
      Width           =   855
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "EngFault"
      Height          =   375
      Index           =   20
      Left            =   2160
      TabIndex        =   20
      Top             =   720
      Width           =   855
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "LEFlaps"
      Height          =   375
      Index           =   19
      Left            =   1200
      TabIndex        =   19
      Top             =   720
      Width           =   855
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "FltCtrlSys"
      Height          =   375
      Index           =   18
      Left            =   240
      TabIndex        =   18
      Top             =   720
      Width           =   855
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "DSC"
      Height          =   375
      Index           =   17
      Left            =   10440
      TabIndex        =   17
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "AR"
      Height          =   375
      Index           =   16
      Left            =   9960
      TabIndex        =   16
      Top             =   240
      Width           =   375
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "RDY"
      Height          =   375
      Index           =   15
      Left            =   9360
      TabIndex        =   15
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "\/"
      Height          =   375
      Index           =   14
      Left            =   8880
      TabIndex        =   14
      Top             =   240
      Width           =   375
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "O"
      Height          =   375
      Index           =   13
      Left            =   8400
      TabIndex        =   13
      Top             =   240
      Width           =   375
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "/\"
      Height          =   375
      Index           =   12
      Left            =   7920
      TabIndex        =   12
      Top             =   240
      Width           =   375
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "T_L conf"
      Height          =   375
      Index           =   11
      Left            =   7080
      TabIndex        =   11
      Top             =   240
      Width           =   855
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "CAN"
      Height          =   375
      Index           =   10
      Left            =   6360
      TabIndex        =   10
      Top             =   240
      Width           =   615
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "dual"
      Height          =   375
      Index           =   9
      Left            =   5760
      TabIndex        =   9
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "oil"
      Height          =   375
      Index           =   8
      Left            =   5280
      TabIndex        =   8
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "hyd"
      Height          =   375
      Index           =   7
      Left            =   4800
      TabIndex        =   7
      Top             =   240
      Width           =   375
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "conf"
      Height          =   375
      Index           =   6
      Left            =   4200
      TabIndex        =   6
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "eng-fire"
      Height          =   375
      Index           =   5
      Left            =   3360
      TabIndex        =   5
      Top             =   240
      Width           =   735
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "dummy"
      Height          =   375
      Index           =   4
      Left            =   2760
      TabIndex        =   4
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "ALT"
      Height          =   375
      Index           =   3
      Left            =   2160
      TabIndex        =   3
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "OBS"
      Height          =   375
      Index           =   2
      Left            =   1560
      TabIndex        =   2
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "TF"
      Height          =   375
      Index           =   1
      Left            =   1080
      TabIndex        =   1
      Top             =   240
      Width           =   375
   End
   Begin VB.CommandButton cmdLight 
      Caption         =   "master"
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   735
   End
   Begin VB.Frame Frame1 
      Caption         =   "lightbits"
      Height          =   1335
      Left            =   120
      TabIndex        =   29
      Top             =   0
      Width           =   10935
   End
End
Attribute VB_Name = "frmLights"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
