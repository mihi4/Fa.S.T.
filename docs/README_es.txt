%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                                                       %%
%%                #######    #####      #####    #######                 %%
%%                #         #     #    ##           #                    %%
%%                ####      #######     ####        #                    %%
%%                #         #     #        ##       #                    %%
%%                #         #     #    #####        #                    %%
%%                                                                       %%
%%                      FAlconSioc-dataTransfer                          %%
%%                                                                       %%
%%                      (c) michi "mihi" hirczy                          %%
%% Basado en el c�digo de Rich "Flareless" Sherkin y Erwin "Eagle9" Neyt %%
%%                                                                       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Adaptado del c�digo de Rich "Flareless" Sherkin y Erwin "Eagle9" Neyt

*****************
*  Disclaimer   *
*****************

FAST es distribuido "como es" y actualmente todav�a es una versi�n Beta. 
�sala bajo tu propio riesgo ;-)



*****************
* Instalaci�n  *
*****************

Para instalar FAST, simplemente ejecuta el setup.exe e ind�ca al instalador d�nde
colocar los archivos de FAST.

Ya que est� completamente escrito en VisualBasic6, se necesitan diversos archivos de 
VB6Runtime para ejecutar FAST. Estos archivos est�n incluidos en el setup y se instalar�n 
autom�ticamente (para m�s detalles mira el install.txt)


*****************
* Configuraci�n *
*****************

FAST puede ser configurado a trav�s del archivo de configuraci�n "fast.cfg" o mediante
GUI (pero los cambios en la GUI no ser�n escritos autom�ticamente en el archivo de configuraci�n)

Un ejemplo t�pico de archivo de configuraci�n es:

SIOCServer=127.0.0.1
SIOCPort=8092
DataModel=AF
F4Timer=30

E aqu� una peque�a descripci�n de los campos del archivo de configuraci�n (y GUI):

SIOCServer: la direcci�n IP de la m�quina d�nde el servidor SIOC est� corriendo
SIOCPort: el puerto que SIOC est� escuchando (generalmente 8092)
F4Timer: intervalo de escucha de datos de Falcon, en milisegundos
DataModel: version de Falcon a la que conectar: AF para AlliedForce, BMS para BMS


**********************
*   Visi�n general   *
**********************

FAST es una herramienta para enviar datos desde Falcon (de AlliedForce o cualquier derivado
de BMS) a un servidor SIOC. Los datos se env�an sobre TCP/IP a traves del protocolo IOCP.


*******************
* Arrancando FAST *
*******************

Cuando arranca, FAST lee el archivo de configuraci�n "fast.cfg" para coger los par�metros 
necesarios, intentando conectar entonces con Falcon y SIOC, de acuerdo a los valores configurados
en dicho archivo. Cuando el servidor SIOC no est� funcionando, FAST no intenta reconectar
autom�ticamente,tendr�s que reconectar pulsando el bot�n "connect". Cuando Falcon no est� 
ejecut�ndose, FAST escuchar� Falcon en el intervalo puesto en el campo "F4Timer".

Asi que, el mejor orden de arranque para que FAST trabaje mejor es:

1.) arrancar el software del servidor SIOC
2.) arrancar FAST
3.) arrancar Falcon


**********************
* Configuraci�n SIOC *
**********************

Cuando arrancas SIOC, puedes ir a IOCPCONSOLE y abrir el archivo iocp_config.con 
- ahora todas las variables usadas est�n etiquetadas. Dado que el protocolo IOCProtocol s�lo 
puede transportar valores enteros, tendr�s que modificar los valores en SIOC (i.e. el valor de 86
deber� ser dividido entre 100 para conseguir el valor correcto de 0.86)

Una vez que hayas visto los valores en el IOCPCONSOLE ver�s como manipular los valores (Tan pronto
como tenga tiempo, se a�adir� un archivo .ssi adecuado al instalador, el cual har� esta conversi�n
autom�ticamente)

FAST usa las siguientes variables SIOC (comentarios entre par�ntesis):

VAR 0001 - bits internos - internal bits (no implementado a�n)

VAR 0010 - Luces del Panel de Advertencia

Usados los siguientes bits:
  FLCSFAULT = &H1&
  ENGINEFAULT = &H2&
  AVIONICSFAULT = &H4&
  SEATNOTARMED = &H8&
  ELECSYS = &H10&
  SEC = &H20&
  EQUIPHOT = &H40&      (no est� en Memoria, usando CautionPanel OVERHEAT tambi�n)
  NWSFAIL = &H80&
  PROBEHEAT = &H100&
  FUELOILHOT = &H200&
  RADARALT = &H400&
  ANTISKID = &H800&
  CADC = &H1000&         (no est� en Memoria, siempre estar� en OFF)
  INLETICING = &H2000&   (no est� en Memoria, siempre estar� en OFF)
  IFF = &H4000&
  HOOK = &H8000&
  STORESCONFIG = &H10000 (no est� en Memoria, siempre estar� en OFF)
  OVERHEAT = &H20000     
  NUCLEAR = &H40000      (no est� en Memoria, siempre estar� en OFF)
  OXY_LOW = &H80000
  ATFNOTENGAGED = &H100000 (no est� en Memoria, siempre estar� en OFF)
  EEC = &H200000         (no est� en Memoria, usando ECM[no en CP real])
  CABINPRESS = &H400000
  FWDFUELLOW = &H800000
  AFTFUELLOW = &H1000000
  BUC = &H2000000


VAR 0011 - Luces del Panel Frontal

Usados los siguientes bits:
  ' lefteyebrowlights
  MASTERCAUTION = &H1&
  TFFAIL = &H2&
  ' left indexer
  AOAHIGH = &H4&
  AOAMIDDLE = &H8&
  AOALOW = &H10&
  ' right indexer
  RDY = &H20&
  ARNWS = &H40&
  DISC = &H80&
  ' right eyebrowlights
  ENGFIRE = &H100&
  ENGINE = &H200&       (no est� en Memoria, usando CautionPanel EngineFault)
  HYDOILPRESS = &H400&
  FLCS = &H800&         (no est� en Memoria, usando CautionPanel FltCtrlSys)
  DBUON = &H1000&       (no est� en Memoria, usando DUAL->en AF on CP)
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


VAR 0012 - Luces de Consola

Usados los siguientes bits:
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


VAR 0013 - Banderas de Instrumentos (no implementado a�n)

Usados los siguientes bits:
  HSI_To = &H1&          ' HSI_FLAG_TO_TRUE
  HSI_Ils = &H2&         ' HSI_FLAG_ILS_WARN
  HSI_Course = &H4&      ' HSI_FLAG_CRS_WARN
  HSI_Init = &H8&        ' HSI_FLAG_INIT
  TotalFlags = &H10&     ' HSI_FLAG_TOTAL_FLAGS
  ADI_OFF = &H20&        ' ADI OFF Flag
  ADI_AUX = &H40&        ' ADI AUX Flag
  ADI_GS = &H80&         ' ADI GS FLAG
  ADI_LOC = &H100&       ' ADI LOC FLAG
  HSI_OFF = &H200&       ' HSI OFF Flag
  BUP_ADI_OFF = &H400&   ' Backup ADI Off Flag
  VVI_OFF = &H800&       ' VVI OFF Flag
  AOA_OFF = &H1000&      ' AOA OFF Flag

Para probar cualquiera de estos bits, usa la funci�n "TESTBIT" de SIOC. 
Si quieres probar si la luz del NWS est� en Falcon, usa

C0 = TESTBIT V0011, 6

ATENCI�N! Los Bits comienzan por "0" (asi que para probar el MasterCaution, tienes que usar

C0 = TESTBIT V0011, 0


VAR 0015-0018 

son los valores lightbit originales de Falcon. Puedes usar �stos o las variables 
implementadas arriba.

Para conseguir m�s informaci�n sobre estos valores, por favor �chale un vistazo al
 archivo "IOCP.pdf" que viene con FAST, es del programa Supertron de "MachoMan".

. Hay algunas diferencias entre los lightbits de AF y los de BMS (mostrados en el IOCP.pdf):

*) en lightbits los bits bits "WOW", "AutoPilotOn" and "TFR_STBY" no est�n disponibles

*) en lightbits2 el �ltimo bit "ENGINE" no est� disponible

*) en lightbits3 el bit "Power_Off" no est� ah�, sin membargo es llamado"OnGround" - Desgraciadamente, 
ese bit no indica realmente si el avi�n est� en tierra, si no el tiempo desde rampstart hasta el 
funcionamiento completo de motor (thx Reaper) :-/ 

*) en lightbits3 los bits desde "Eng2_Fire" a "RightGearDown" no est�n en AF

VAR 0020-0099

Valores de datos fuera de Falcon - Para saber qu� valor es cual, por favor, comprueba el IOCPConsole
 con el archivo iocp_config.con incluido. En estos momentos, s�lo son usados los valores desde 
 20 al 68, asi que hay sitio libre para futuros datos...

### DED y PFL ###

Debido a que SIOC no soporta el transporte de texto, los datos del DED y PFL est�n guardados 
como caracter 1 de valor ASCII en una variable SIOC, comenzado en la variable 100. 

Asi que VARS 0100 - 0124 contienen los caracteresde la primera l�nea del DED, de la 0125-0149 para la 
2� l�nea DED, 0150-0174 la 3� l�nea DED, 0175-0199 la 4� y 0200-0224 la 5� l�nea.
El PFL comienza en VAR 0300 y finaliza en 0424.

La posici�n de los caracteres invertidos a�n no est� implementada.


*******************
*  Bugs conocidos *
*******************

*) Algunos valores no se leen correctamente desde Falcon:
    fwd y aft fuel

*) Caracteres inversos del DED y PFL no implementados a�n


*****************
*   Changelog   *
*****************

V0.92   
=====
*) a�adidos valores de luces propios


V0.91
=====
Primer lanzamiento


Documento traducido por Alex "Skorp" Garc�a, 4th Perrus.
