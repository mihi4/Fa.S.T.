Attribute VB_Name = "F4Lib"
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
' Falcon-SIOC Data Transfer by Michi "MiHi" Hirczy
'
' based on:
'
' Falcin' Ay Visual Basic Common Library
'
' 2004 - 2005 - Falcon-A Productions
'
' Adapted from code by Erwin Neyt - Eagle 9 Systems
' Thanks to those @ ViperPit.Org who helped and for Jeff "Ref"'s Owen's Input
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
  Option Explicit
  
  Public Const SECTION_MAP_WRITE = &H2&
  Public Const SECTION_MAP_READ = &H4&
  Public Const FILE_MAP_WRITE = SECTION_MAP_WRITE
  Public Const FILE_MAP_READ = SECTION_MAP_READ

 
  Declare Function OpenFileMapping Lib "kernel32" Alias "OpenFileMappingA" (ByVal dwDesiredAccess As Long, ByVal bInheritHandle As Long, ByVal lpName As String) As Long
  Declare Function MapViewOfFile Lib "kernel32" (ByVal hFileMappingObject As Long, ByVal dwDesiredAccess As Long, ByVal dwFileOffsetHigh As Long, ByVal dwFileOffsetLow As Long, ByVal dwNumberOfBytesToMap As Long) As Long
  Declare Function UnmapViewOfFile Lib "kernel32" (lpBaseAddress As Any) As Long
  Declare Function CloseHandle Lib "kernel32" (ByVal hObject As Long) As Long
  Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (ByRef Destination As Any, ByRef Source As Any, ByVal numbytes As Long)
  Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
  
  ' Various Memory Model Types
  Global FDBMS As BMSFlightData             ' BMS 2.x Flight Data
  Global FDAF As AFFlightData               ' Allied Force Flight Data
  
  Global gbFalconActive As Boolean          ' Falcon 4 Active Variable
  Global gbSiocConnected As Boolean          ' connected to SIOC server
  Global gsFalconVersion As String          ' Falcon Version (BMS, AF)
  Global gbDebug As Boolean
  
  Global displayData As SimData
  Global tempDisplayData As SimData
  Global Const Pi As Double = 3.14159265358979
  
''' Flight Data Memory Models
  ' BMS 2.x Flight Data Model
  Public Type BMSFlightData
    ShipNorth As Single                     ' Position of aircraft in North-South direction
    ShipEast As Single                      ' Position of aircraft in East-West direction
    ShipDown As Single                      ' Elevation of Aircraft
    ShipNorthRate As Single                 ' Velocity of Aircraft in North-South direction(ft/sec)
    ShipEastRate As Single                  ' Velocity of Aircraft in East-West direction (ft/sec)
    ShipDownRate As Single                  ' Rate of Descent/Climb
    Alpha As Single                         ' Ownship Angle of Attack (Degrees)
    Beta As Single                          ' Ownship Beta (Degrees)
    Gamma As Single                         ' Ownship Gamma (Radians)
    pitch As Single                         ' Ownship Pitch Angle (Radians)
    roll As Single                          ' Ownship Roll Angle (Radians)
    yaw As Single                           ' Ownship Yaw Angle (Radians) (can also be used as magnetic heading)
    mach As Single                          ' Ownship Mach number (Mach)
    kias As Single                          ' Ownship Indicated Airspeed (Knots)
    VT As Single                            ' Ownship True Airspeed (Ft/Sec)
    GS As Single                            ' Ownship G-Force (Gs)
    windOffset As Single                    ' Wind delta to FPM (Radians)
    nozzlePos As Single                     ' Ownship engine nozzle percent open (0-100)
    NozzlePos2 As Single                    ' Ownship engine nozzle2 percent open (0-100) - Multi-engine
    InternalFuel As Single                  ' Ownship internal fuel (Lbs)
    ExternalFuel As Single                  ' Ownship external fuel (Lbs)
    fuelFlow As Single                      ' Ownship fuel flow (Lbs/Hour)
    rpm As Single                           ' Ownship engine rpm (Percent 0-103)
    RPM2 As Single                          ' Ownship engine rpm2 (Percent 0-103) - multi-engine
    ftit As Single                          ' Ownship Forward Turbine Inlet Temp (Degrees C)
    FTIT2 As Single                         ' Ownship Forward Turbine Inlet Temp2 (Degrees C) - multi-engine
    GearPos As Single                       ' Ownship Gear position 0 = up, 1 = down;
    SpeedBrake As Single                    ' Ownship speed brake position 0 = closed, 1 = 60 Degrees open
    epuFuel As Single                       ' Ownship EPU fuel (Percent 0-100)
    OilPressure As Single                   ' Ownship Oil Pressure (Percent 0-100)
    OilPressure2 As Single                  ' Ownship Oil Pressure2 (Percent 0-100)- Multi-engine
    lightbits As Long                       ' Cockpit Indicator Lights, one bit per bulb. See enum
    HeadPitch As Single                     ' Head pitch offset from design eye (radians)
    HeadRoll As Single                      ' Head roll offset from design eye (radians)
    HeadYaw As Single                       ' Head yaw offset from design eye (radians)
    lightbits2 As Long                      ' Cockpit Indicator Lights, one bit per bulb. See enum
    lightbits3 As Long                      ' Cockpit Indicator Lights, one bit per bulb. See enum
    chaffCount As Single                    ' Number of Chaff left
    flareCount As Single                    ' Number of Flare left
    NoseGearPos As Single                   ' Position of the nose landinggear
    LeftGearPos As Single                   ' Position of the left landinggear
    RightGearPos As Single                  ' Position of the right landinggear
    AdiIlsHorPos As Single                  ' Position of horizontal ILS bar
    AdiIlsVerPos As Single                  ' Position of vertical ILS bar
    courseState As Long                     ' HSI_STA_CRS_STATE
    HeadingState As Long                    ' HSI_STA_HDG_STATE
    TotalStates As Long                     ' HSI_STA_TOTAL_STATES ???
    CourseDeviation  As Single              ' HSI_VAL_CRS_DEVIATION
    DesiredCourse As Single                 ' HSI_VAL_DESIRED_CRS
    DistanceToBeacon As Single              ' HSI_VAL_DISTANCE_TO_BEACON
    BearingToBeacon As Single               ' HSI_VAL_BEARING_TO_BEACON
    CurrentHeading As Single                ' HSI_VAL_CURRENT_HEADING
    DesiredHeading  As Single               ' HSI_VAL_DESIRED_HEADING
    DeviationLimit As Single                ' HSI_VAL_DEV_LIMIT
    HalfDeviationLimit As Single            ' HSI_VAL_HALF_DEV_LIMIT
    LocalizerCourse As Single               ' HSI_VAL_LOCALIZER_CRS
    AirBaseX As Single                      ' HSI_VAL_AIRBASE_X
    AirBaseY As Single                      ' HSI_VAL_AIRBASE_Y
    TotalValues As Single                   ' HSI_VAL_TOTAL_VALUES  ???
    trimPitch As Single                     ' Value of trim in pitch axis, -0.5 to +0.5
    trimRoll As Single                      ' Value of trim in roll axis, -0.5 to +0.5
    trimYaw As Single                       ' Value of trim in yaw axis, -0.5 to +0.5
    hsiBits As Long                         ' HSI flags
    DEDLines As String * 130                ' DED 6 * 26 usable chars
    Invert As String * 130                  ' DED 6 * 26 usable chars
    PFLLines As String * 130                ' PFL 6 * 26 usable chars
    PFLInvert As String * 130               ' PFL 6 * 26 usable chars
    UFCTChan As Long                        ' UFC TACAN Channel
    AUXTChan  As Long                       ' AUX TACAN Channel
    RWRObjectCount  As Long                 ' Number of valid threat objects
    RWRSymbol(19) As Long                   ' Type of threat
    Bearing(19) As Single                   ' Bearing to threat (radians)
    MissileActivity(19) As Single           ' Missile is active or beam rider
    MissileLaunch(19) As Single             ' Missile is launched
    Selected(19) As Single                  ' Threat is Selected
    Lethality(19) As Single                 ' Lethal Range
    FWDFuel As Single                       ' Forward Fuel Tank Quantity
    AFTFuel As Single                       ' Aft Fuel Tank Quantity
    TotalFuel As Single                     ' Total Fuel Tank Quantity
    VersionNum As Long                      ' Version of sh.mem file
  End Type
  
  
  ' Allied Force Flight Data Model
  Public Type AFFlightData
    ShipNorth As Single                     ' Position of aircraft in North-South direction
    ShipEast As Single                      ' Position of aircraft in East-West direction
    ShipDown As Single                      ' Elevation of Aircraft
    ShipNorthRate As Single                 ' Velocity of Aircraft in North-South direction(ft/sec)
    ShipEastRate As Single                  ' Velocity of Aircraft in East-West direction (ft/sec)
    ShipDownRate As Single                  ' Rate of Descent/Climb
    Alpha As Single                         ' Ownship Angle of Attack (Degrees)
    Beta As Single                          ' Ownship Beta (Degrees)
    Gamma As Single                         ' Ownship Gamma (Radians)
    pitch As Single                         ' Ownship Pitch Angle (Radians)
    roll As Single                          ' Ownship Roll Angle (Radians)
    yaw As Single                           ' Ownship Yaw Angle (Radians) (can also be used as magnetic heading)
    mach As Single                          ' Ownship Mach number (Mach)
    kias As Single                          ' Ownship Indicated Airspeed (Knots)
    VT As Single                            ' Ownship True Airspeed (Ft/Sec)
    GS As Single                            ' Ownship G-Force (Gs)
    windOffset As Single                    ' Wind delta to FPM (Radians)
    nozzlePos As Single                     ' Ownship engine nozzle percent open (0-100)
    InternalFuel As Single                  ' Ownship internal fuel (Lbs)
    ExternalFuel As Single                  ' Ownship external fuel (Lbs)
    fuelFlow As Single                      ' Ownship fuel flow (Lbs/Hour)
    rpm As Single                           ' Ownship engine rpm (Percent 0-103)
    ftit As Single                          ' Ownship Forward Turbine Inlet Temp (Degrees C)
    GearPos As Single                       ' Ownship Gear position 0 = up, 1 = down;
    SpeedBrake As Single                    ' Ownship speed brake position 0 = closed, 1 = 60 Degrees open
    epuFuel As Single                       ' Ownship EPU fuel (Percent 0-100)
    OilPressure As Single                   ' Ownship Oil Pressure (Percent 0-100)
    lightbits As Long                       ' Cockpit Indicator Lights, one bit per bulb. See enum
    HeadPitch As Single                     ' Head pitch offset from design eye (radians)
    HeadRoll As Single                      ' Head roll offset from design eye (radians)
    HeadYaw As Single                       ' Head yaw offset from design eye (radians)
    lightbits2 As Long                      ' Cockpit Indicator Lights, one bit per bulb. See enum
    lightbits3 As Long                      ' Cockpit Indicator Lights, one bit per bulb. See enum
    chaffCount As Single                    ' Number of Chaff left
    flareCount As Single                    ' Number of Flare left
    NoseGearPos As Single                   ' Position of the nose landinggear
    LeftGearPos As Single                   ' Position of the left landinggear
    RightGearPos As Single                  ' Position of the right landinggear
    AdiIlsHorPos As Single                  ' Position of horizontal ILS bar
    AdiIlsVerPos As Single                  ' Position of vertical ILS bar
    courseState As Long                     ' HSI_STA_CRS_STATE
    HeadingState As Long                    ' HSI_STA_HDG_STATE
    TotalStates As Long                     ' HSI_STA_TOTAL_STATES ???
    CourseDeviation  As Single              ' HSI_VAL_CRS_DEVIATION
    DesiredCourse As Single                 ' HSI_VAL_DESIRED_CRS
    DistanceToBeacon As Single              ' HSI_VAL_DISTANCE_TO_BEACON
    BearingToBeacon As Single               ' HSI_VAL_BEARING_TO_BEACON
    CurrentHeading As Single                ' HSI_VAL_CURRENT_HEADING
    DesiredHeading  As Single               ' HSI_VAL_DESIRED_HEADING
    DeviationLimit As Single                ' HSI_VAL_DEV_LIMIT
    HalfDeviationLimit As Single            ' HSI_VAL_HALF_DEV_LIMIT
    LocalizerCourse As Single               ' HSI_VAL_LOCALIZER_CRS
    AirBaseX As Single                      ' HSI_VAL_AIRBASE_X
    AirBaseY As Single                      ' HSI_VAL_AIRBASE_Y
    TotalValues As Single                   ' HSI_VAL_TOTAL_VALUES  ???
    trimPitch As Single                     ' Value of trim in pitch axis, -0.5 to +0.5
    trimRoll As Single                      ' Value of trim in roll axis, -0.5 to +0.5
    trimYaw As Single                       ' Value of trim in yaw axis, -0.5 to +0.5
    hsiBits As Long                         ' HSI flags
    DEDLines As String * 130                ' DED 6 * 26 usable chars
    Invert As String * 130                  ' DED 6 * 26 usable chars
    PFLLines As String * 130                ' PFL 6 * 26 usable chars
    PFLInvert As String * 130               ' PFL 6 * 26 usable chars
    UFCTChan As Long                        ' UFC TACAN Channel
    AUXTChan  As Long                       ' AUX TACAN Channel
    RWRObjectCount  As Long                 ' Number of valid threat objects
    RWRSymbol(39) As Long                   ' Type of threat
    Bearing(39) As Single                   ' Bearing to threat (radians)
    MissileActivity(39) As Single           ' Missile is active or beam rider
    MissileLaunch(39) As Single             ' Missile is launched
    Selected(39) As Single                  ' Threat is Selected
    Lethality(39) As Single                 ' Lethal Range
    NewDetection(39) As Single              ' New Detection
    FWDFuel As Single                       ' Forward Fuel Tank Quantity
    AFTFuel As Single                       ' Aft Fuel Tank Quantity
    TotalFuel As Single                     ' Total Fuel Tank Quantity
    VersionNum As Long                      ' Version of sh.mem file
    headX As Single
    headY As Single
    headZ As Single
    MainPower As Long
  End Type

' own rearranged Databits

' the flags of the instruments
Public Enum flagBits
  HSI_TO = &H1&          ' HSI_FLAG_TO_TRUE
  HSI_Ils = &H2&         ' HSI_FLAG_ILS_WARN
  HSI_Course = &H4&      ' HSI_FLAG_CRS_WARN
  HSI_Init = &H8&        ' HSI_FLAG_INIT
  TotalFlags = &H10&     ' HSI_FLAG_TOTAL_FLAGS ??? Should not be needed in SimData
  ADI_OFF = &H20&        ' ADI OFF Flag
  ADI_AUX = &H40&        ' ADI AUX Flag
  ADI_GS = &H80&         ' ADI GS FLAG
  ADI_LOC = &H100&        ' ADI LOC FLAG
  HSI_OFF = &H200&        ' HSI OFF Flag
  BUP_ADI_OFF = &H400&    ' Backup ADI Off Flag
  VVI_OFF = &H800&            ' VVI OFF Flag
  AOA_OFF = &H1000&            ' AOA OFF Flag
End Enum
  
' CautionPanelLights
Public Enum cpl
  FLCSFAULT = &H1&
  ENGINEFAULT = &H2&
  AVIONICSFAULT = &H4&
  SEATNOTARMED = &H8&
  ELECSYS = &H10&
  SEC = &H20&
  EQUIPHOT = &H40&
  NWSFAIL = &H80&
  PROBEHEAT = &H100&
  FUELOILHOT = &H200&
  RADARALT = &H400&
  ANTISKID = &H800&
  CADC = &H1000&
  INLETICING = &H2000&
  IFF = &H4000&
  HOOK = &H8000&
  STORESCONFIG = &H10000
  OVERHEAT = &H20000
  NUCLEAR = &H40000
  OXY_LOW = &H80000
  ATFNOTENGAGED = &H100000
  EEC = &H200000
  CABINPRESS = &H400000
  FWDFUELLOW = &H800000
  AFTFUELLOW = &H1000000
  BUC = &H2000000
  BLANK1 = &H4000000
  BLANK2 = &H8000000
  BLANK3 = &H10000000
  BLANK4 = &H20000000
  BLANK5 = &H40000000
  BLANK6 = &H80000000
End Enum

' front panel lights
Public Enum fpl
  ' lefteyebrowlights
  MASTERCAUTION = &H1&
  TFFAIL = &H2&
  ' left indexer
  AOAHIGH = &H4&
  AOAMIDDLE = &H8&
  AOALOW = &H10&
  ' right indexer
  RDY = &H20
  ARNWS = &H40
  DISC = &H80
  ' right eyebrowlights
  ENGFIRE = &H100&
  ENGINE = &H200&
  HYDOILPRESS = &H400&
  FLCS = &H800&
  DBUON = &H1000&
  TOLDGCONFIG = &H2000&
  CANOPY = &H4000&
  OXYLOW = &H8000&
  ' tws prime
  HANDOFF = &H10000
  LAUNCH = &H20000
  PRIMODE = &H40000
  NAVAL = &H80000
  UNKNOWN = &H100000
  TGTSEP = &H200000
  ' misc panel
  ECMON = &H400000
  TFRACTIVE = &H800000
  TFRSTDBY = &H1000000

End Enum

' console lights
Public Enum col
  JFSON = &H1&
  AVTRON = &H2&
  ' epu
  EPUON = &H4&
  HYDRAZIN = &H8&
  AIR = &H10&
  ' elec
  FLCSPMG = &H20&
  MAINGEN = &H40&
  STBYGEN = &H80&
  EPUGEN = &H100&
  EPUPMG = &H200&
  TOFLCS = &H400&
  FLCSRLY = &H800&
  BATFAIL = &H1000&
  ' flight control
  FLTCTRLFAIL = &H2000&
  ' marcer beacon light(s)
  MARKER_OUTER = &H4000&
  MARKER_MIDDLE = &H8000&
  MARKER_INNER = &H10000
  
  NOSEWHEEL = &H20000
  LEFTWHEEL = &H40000
  RIGHTWHEEL = &H80000
  GEARHANDLE = &H100000
  ' tws aux
  AUXSRCH = &H200000
  AUXACT = &H400000
  AUXLOW = &H800000
  AUXPWR = &H1000000
  
  CMDS_NOGO = &H2000000
  CMDS_GO = &H4000000
  CMDS_DISPRDY = &H8000000
  
End Enum

' state bits not in shared mem, will be calculated
Public Enum intflags
  ELEC_ON = &H1&
  WOW = &H2&
  SPDBRAKE_ON = &H4&
  FAST_ON = &H8&
  PARKBRAKE_SNAP = &H10&
  JFS_SNAP = &H20&
  MAINGEN_ON = &H40&
End Enum

' SIOC variables array index
Public Enum SIOC_index
 ' use vars 0-9 for special flags
 mInternalFlags = 1

  ' own lightbits
 mCautionPanelLights = 10
 mFrontPanelLights = 11
 mConsoleLights = 12
 mFlags = 13
  
 mLightbits = 15
 mLightbits2 = 16
 mLightbits3 = 17
 mHsiBits = 18
 
  ' altimeter data
 mAltBaro = 20 ' // 0 - 80000
 mAltRadar = 21 ' // usually 0 - 1500 ' feet
 mAltSetting = 22 ' // altimeter setting (2992)

  ' asi data
 mKias = 23 ' // 0 - 850
 mMach = 24 ' // 0 - 2.0, convert from float to int and back!
  
  ' more speed data
 mVtrue = 25 '// true airspeed
 mAoa = 26 ' degrees, convert!
  
  ' adi data
 mRoll = 27 ' short int roll; // 0 - 360°
 mPitch = 28 ' short int pitch; // -90 0 +90
 mYaw = 29 ' short int yaw
 mIlsHorPos = 30 ' float ilsHorPos; CONVERT!
 mIlsVerPos = 31 ' float ilsVerPos; CONVERT

 mVvi = 32 ' float vvi;

  ' HSI data
 mHsiSelectedCourse = 33 ' int hsiSelectedCourse; // 0 - 360°, setable
 mHsiCourseDeviation = 34 ' float hsiCourseDeviation; convert
 mHsiSelectedHeading = 35 ' int hsiSelectedHeading; // heading "bug"
 mHsiCurrentHeading = 36 ' int hsiCurrentHeading; // usually same as heading, but could be corrected (magnetism!)
 mHsiDistanceToBeacon = 37 ' int hsiDistanceToBeacon;
 mHsiBearingToBeacon = 38 ' int hsiBearingToBeacon;'

 mFuelFlow = 39 ' unsigned long int fuelFlow; // 0 - 99900

 mOilPress = 40 ' unsigned short int oilPress; // 0 - 100 psi
 mNozzlePos = 41 ' unsigned short int nozzlePos; // 0-100 % open
 mRpm = 42 ' unsigned short int rpm; // 0-103% (110%)
 mFtit = 43 ' unsigned short int ftit; // 200 - 1200°
  
'    // right aux console
 mHeading = 44 ' unsigned short int heading; // compass

 mFuelFwd = 45 ' unsigned short int fuelFwd; // 0 - 4200 lbs
 mFuelAft = 46 ' unsigned short int fuelAft; // 0 - 4200 lbs
 mFuelTotal = 47 ' unsigned short int fuelTotal; // 0 - 9999 lbs

 mHydPressA = 48 ' unsigned short int hydPressA; // 0 - 4000
 mHydPressB = 49 ' unsigned short int hydPressB; // 0 - 4000

 mEpuFuel = 50 ' unsigned short int epuFuel; // 0-100 %
 mLiquidOxygen = 51 ' unsigned short int liquidOxygen; // 0 - 5 Liter
 mCabinPressAlt = 52 ' unsigned long int cabinPressAlt; // 0 - 50000

'    // left aux console
 mSpeedBrakePos = 53 ' float speedBrakePos; // 0 - 1 (closed, 60° open)
 mChaffCount = 54 ' unsigned short int chaffCount;
 mFlareCount = 55 ' unsigned short int flareCount;

'    // left console
 mUhfAuxChan = 56 ' unsigned short int uhfAUXchann; // 1 - 20
 mUhfAuxFreq = 57 ' float uhfAUXfreq;
 mAuxTacan = 58 ' unsigned short int auxTacan;

 mTrimPitch = 59 ' float trimPitch;   // Value of trim in pitch axis, -0.5 to +0.5
 mTrimRoll = 60 ' float trimRoll;    // Value of trim in roll axis, -0.5 to +0.5
 mTrimYaw = 61 ' float trimYaw; // Value of trim in yaw axis, -0.5 to +0.5

'   // not directly display-data, but maybe useful otherwise
 mGforce = 62 ' float gforce;
 mWindOffset = 63 ' float windOffset; // wind delta to FMP

'    // maybe use in a moving map?
 mPosX = 64 ' float posX;
 mPosY = 65 ' float posY;
 mPosZ = 66 ' float posZ;
 mFuelInternal = 67 ' internal Fuel (usually not used)
 mFuelExternal = 68 ' external Fuel (usually not used)
 
 mHeadingState = 69 ' WTF is that?
 mCourseState = 70 ' WTF is that?
 
 mDedInv1 = 95
 mDedInv2 = 96
 mDedInv3 = 97
 mDedInv4 = 98
 mDedInv5 = 99

'    //DED Lines
 mDedLine1 = 100  ' #100-124   char DEDLines[5][26];   //25 usable chars
 mDedLine2 = 125  ' #125-149'    char Invert[5][26]; //25 usable chars
 mDedLine3 = 150  ' #150-174
 mDedLine4 = 175  ' #175-199
 mDedLine5 = 200  ' #200-224
 
'    // PFL Lines
 mPflLine1 = 300  ' #300-324   char DEDLines[5][26];   //25 usable chars
 mPflLine2 = 325  ' #325-349'    char Invert[5][26]; //25 usable chars
 mPflLine3 = 350  ' #350-374
 mPflLine4 = 375  ' #375-399
 mPflLine5 = 400  ' #400-424
End Enum

Public Sub Main()
  frmF4Dat.Show
End Sub

