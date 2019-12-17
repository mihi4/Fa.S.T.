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
%% Basado en el código de Rich "Flareless" Sherkin y Erwin "Eagle9" Neyt %%
%%                                                                       %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Adaptado del código de Rich "Flareless" Sherkin y Erwin "Eagle9" Neyt

*****************
*  Disclaimer   *
*****************

FAST es distribuido "como es" y actualmente todavía es una versión Beta. 
Úsala bajo tu propio riesgo ;-)



*****************
* Instalación  *
*****************

Para instalar FAST, simplemente ejecuta el setup.exe e indíca al instalador dónde
colocar los archivos de FAST.

Ya que está completamente escrito en VisualBasic6, se necesitan diversos archivos de 
VB6Runtime para ejecutar FAST. Estos archivos están incluidos en el setup y se instalarán 
automáticamente (para más detalles mira el install.txt)


*****************
* Configuración *
*****************

FAST puede ser configurado a través del archivo de configuración "fast.cfg" o mediante
GUI (pero los cambios en la GUI no serán escritos automáticamente en el archivo de configuración)

Un ejemplo típico de archivo de configuración es:

SIOCServer=127.0.0.1
SIOCPort=8092
DataModel=AF
F4Timer=30

E aquí una pequeña descripción de los campos del archivo de configuración (y GUI):

SIOCServer: la dirección IP de la máquina dónde el servidor SIOC está corriendo
SIOCPort: el puerto que SIOC está escuchando (generalmente 8092)
F4Timer: intervalo de escucha de datos de Falcon, en milisegundos
DataModel: version de Falcon a la que conectar: AF para AlliedForce, BMS para BMS


**********************
*   Visión general   *
**********************

FAST es una herramienta para enviar datos desde Falcon (de AlliedForce o cualquier derivado
de BMS) a un servidor SIOC. Los datos se envían sobre TCP/IP a traves del protocolo IOCP.


*******************
* Arrancando FAST *
*******************

Cuando arranca, FAST lee el archivo de configuración "fast.cfg" para coger los parámetros 
necesarios, intentando conectar entonces con Falcon y SIOC, de acuerdo a los valores configurados
en dicho archivo. Cuando el servidor SIOC no está funcionando, FAST no intenta reconectar
automáticamente,tendrás que reconectar pulsando el botón "connect". Cuando Falcon no está 
ejecutándose, FAST escuchará Falcon en el intervalo puesto en el campo "F4Timer".

Asi que, el mejor orden de arranque para que FAST trabaje mejor es:

1.) arrancar el software del servidor SIOC
2.) arrancar FAST
3.) arrancar Falcon


**********************
* Configuración SIOC *
**********************

Cuando arrancas SIOC, puedes ir a IOCPCONSOLE y abrir el archivo iocp_config.con 
- ahora todas las variables usadas están etiquetadas. Dado que el protocolo IOCProtocol sólo 
puede transportar valores enteros, tendrás que modificar los valores en SIOC (i.e. el valor de 86
deberá ser dividido entre 100 para conseguir el valor correcto de 0.86)

Una vez que hayas visto los valores en el IOCPCONSOLE verás como manipular los valores (Tan pronto
como tenga tiempo, se añadirá un archivo .ssi adecuado al instalador, el cual hará esta conversión
automáticamente)

FAST usa las siguientes variables SIOC (comentarios entre paréntesis):

VAR 0001 - bits internos - internal bits (no implementado aún)

VAR 0010 - Luces del Panel de Advertencia

Usados los siguientes bits:
  FLCSFAULT = &H1&
  ENGINEFAULT = &H2&
  AVIONICSFAULT = &H4&
  SEATNOTARMED = &H8&
  ELECSYS = &H10&
  SEC = &H20&
  EQUIPHOT = &H40&      (no está en Memoria, usando CautionPanel OVERHEAT también)
  NWSFAIL = &H80&
  PROBEHEAT = &H100&
  FUELOILHOT = &H200&
  RADARALT = &H400&
  ANTISKID = &H800&
  CADC = &H1000&         (no está en Memoria, siempre estará en OFF)
  INLETICING = &H2000&   (no está en Memoria, siempre estará en OFF)
  IFF = &H4000&
  HOOK = &H8000&
  STORESCONFIG = &H10000 (no está en Memoria, siempre estará en OFF)
  OVERHEAT = &H20000     
  NUCLEAR = &H40000      (no está en Memoria, siempre estará en OFF)
  OXY_LOW = &H80000
  ATFNOTENGAGED = &H100000 (no está en Memoria, siempre estará en OFF)
  EEC = &H200000         (no está en Memoria, usando ECM[no en CP real])
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
  ENGINE = &H200&       (no está en Memoria, usando CautionPanel EngineFault)
  HYDOILPRESS = &H400&
  FLCS = &H800&         (no está en Memoria, usando CautionPanel FltCtrlSys)
  DBUON = &H1000&       (no está en Memoria, usando DUAL->en AF on CP)
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


VAR 0013 - Banderas de Instrumentos (no implementado aún)

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

Para probar cualquiera de estos bits, usa la función "TESTBIT" de SIOC. 
Si quieres probar si la luz del NWS está en Falcon, usa

C0 = TESTBIT V0011, 6

ATENCIÓN! Los Bits comienzan por "0" (asi que para probar el MasterCaution, tienes que usar

C0 = TESTBIT V0011, 0


VAR 0015-0018 

son los valores lightbit originales de Falcon. Puedes usar éstos o las variables 
implementadas arriba.

Para conseguir más información sobre estos valores, por favor échale un vistazo al
 archivo "IOCP.pdf" que viene con FAST, es del programa Supertron de "MachoMan".

. Hay algunas diferencias entre los lightbits de AF y los de BMS (mostrados en el IOCP.pdf):

*) en lightbits los bits bits "WOW", "AutoPilotOn" and "TFR_STBY" no están disponibles

*) en lightbits2 el último bit "ENGINE" no está disponible

*) en lightbits3 el bit "Power_Off" no está ahí, sin membargo es llamado"OnGround" - Desgraciadamente, 
ese bit no indica realmente si el avión está en tierra, si no el tiempo desde rampstart hasta el 
funcionamiento completo de motor (thx Reaper) :-/ 

*) en lightbits3 los bits desde "Eng2_Fire" a "RightGearDown" no están en AF

VAR 0020-0099

Valores de datos fuera de Falcon - Para saber qué valor es cual, por favor, comprueba el IOCPConsole
 con el archivo iocp_config.con incluido. En estos momentos, sólo son usados los valores desde 
 20 al 68, asi que hay sitio libre para futuros datos...

### DED y PFL ###

Debido a que SIOC no soporta el transporte de texto, los datos del DED y PFL están guardados 
como caracter 1 de valor ASCII en una variable SIOC, comenzado en la variable 100. 

Asi que VARS 0100 - 0124 contienen los caracteresde la primera línea del DED, de la 0125-0149 para la 
2ª línea DED, 0150-0174 la 3ª línea DED, 0175-0199 la 4ª y 0200-0224 la 5ª línea.
El PFL comienza en VAR 0300 y finaliza en 0424.

La posición de los caracteres invertidos aún no está implementada.


*******************
*  Bugs conocidos *
*******************

*) Algunos valores no se leen correctamente desde Falcon:
    fwd y aft fuel

*) Caracteres inversos del DED y PFL no implementados aún


*****************
*   Changelog   *
*****************

V0.92   
=====
*) añadidos valores de luces propios


V0.91
=====
Primer lanzamiento


Documento traducido por Alex "Skorp" García, 4th Perrus.
