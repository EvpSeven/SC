#include "__cf_Ex9.h"
#include "rtw_capi.h"
#ifdef HOST_CAPI_BUILD
#include "Ex9_capi_host.h"
#define sizeof(s) ((size_t)(0xFFFF))
#undef rt_offsetof
#define rt_offsetof(s,el) ((uint16_T)(0xFFFF))
#define TARGET_CONST
#define TARGET_STRING(s) (s)    
#else
#include "builtin_typeid_types.h"
#include "Ex9.h"
#include "Ex9_capi.h"
#include "Ex9_private.h"
#ifdef LIGHT_WEIGHT_CAPI
#define TARGET_CONST                  
#define TARGET_STRING(s)               (NULL)                    
#else
#define TARGET_CONST                   const
#define TARGET_STRING(s)               (s)
#endif
#endif
static const rtwCAPI_Signals rtBlockSignals [ ] = { { 0 , 0 , TARGET_STRING (
"Ex9/Gain" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 1 , 0 ,
TARGET_STRING ( "Ex9/Gain1" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } ,
{ 2 , 0 , TARGET_STRING ( "Ex9/Gain2" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 ,
0 , 1 } , { 3 , 0 , TARGET_STRING ( "Ex9/Gain3" ) , TARGET_STRING ( "" ) , 0
, 0 , 0 , 0 , 1 } , { 4 , 0 , TARGET_STRING ( "Ex9/Integrator" ) ,
TARGET_STRING ( "Vo" ) , 0 , 0 , 0 , 0 , 1 } , { 5 , 0 , TARGET_STRING (
"Ex9/Integrator1" ) , TARGET_STRING ( "IL" ) , 0 , 0 , 0 , 0 , 1 } , { 6 , 0
, TARGET_STRING ( "Ex9/Sum" ) , TARGET_STRING ( "IR" ) , 0 , 0 , 0 , 0 , 1 }
, { 7 , 0 , TARGET_STRING ( "Ex9/Sum1" ) , TARGET_STRING ( "IC" ) , 0 , 0 , 0
, 0 , 1 } , { 0 , 0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0 , 0 } } ; static
const rtwCAPI_BlockParameters rtBlockParameters [ ] = { { 8 , TARGET_STRING (
"Ex9/Integrator" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 9
, TARGET_STRING ( "Ex9/Integrator1" ) , TARGET_STRING ( "InitialCondition" )
, 0 , 0 , 0 } , { 10 , TARGET_STRING ( "Ex9/Step" ) , TARGET_STRING ( "Time"
) , 0 , 0 , 0 } , { 11 , TARGET_STRING ( "Ex9/Step" ) , TARGET_STRING (
"Before" ) , 0 , 0 , 0 } , { 12 , TARGET_STRING ( "Ex9/Step" ) ,
TARGET_STRING ( "After" ) , 0 , 0 , 0 } , { 0 , ( NULL ) , ( NULL ) , 0 , 0 ,
0 } } ; static const rtwCAPI_ModelParameters rtModelParameters [ ] = { { 13 ,
TARGET_STRING ( "C" ) , 0 , 0 , 0 } , { 14 , TARGET_STRING ( "L" ) , 0 , 0 ,
0 } , { 15 , TARGET_STRING ( "R" ) , 0 , 0 , 0 } , { 0 , ( NULL ) , 0 , 0 , 0
} } ;
#ifndef HOST_CAPI_BUILD
static void * rtDataAddrMap [ ] = { & rtB . ba4ldi20lm , & rtB . o253h2i5de ,
& rtB . fi44ybxvby , & rtB . epy1dlcxu3 , & rtB . cx3elwcung , & rtB .
jv02ptlwch , & rtB . aqrbihpzht , & rtB . k5gis2f3er , & rtP . Integrator_IC
, & rtP . Integrator1_IC , & rtP . Step_Time , & rtP . Step_Y0 , & rtP .
Step_YFinal , & rtP . C , & rtP . L , & rtP . R , } ; static int32_T *
rtVarDimsAddrMap [ ] = { ( NULL ) } ;
#endif
static TARGET_CONST rtwCAPI_DataTypeMap rtDataTypeMap [ ] = { { "double" ,
"real_T" , 0 , 0 , sizeof ( real_T ) , SS_DOUBLE , 0 , 0 , 0 } } ;
#ifdef HOST_CAPI_BUILD
#undef sizeof
#endif
static TARGET_CONST rtwCAPI_ElementMap rtElementMap [ ] = { { ( NULL ) , 0 ,
0 , 0 , 0 } , } ; static const rtwCAPI_DimensionMap rtDimensionMap [ ] = { {
rtwCAPI_SCALAR , 0 , 2 , 0 } } ; static const uint_T rtDimensionArray [ ] = {
1 , 1 } ; static const real_T rtcapiStoredFloats [ ] = { 0.0 , 1.0 } ; static
const rtwCAPI_FixPtMap rtFixPtMap [ ] = { { ( NULL ) , ( NULL ) ,
rtwCAPI_FIX_RESERVED , 0 , 0 , 0 } , } ; static const rtwCAPI_SampleTimeMap
rtSampleTimeMap [ ] = { { ( const void * ) & rtcapiStoredFloats [ 0 ] , (
const void * ) & rtcapiStoredFloats [ 1 ] , 1 , 0 } , { ( const void * ) &
rtcapiStoredFloats [ 0 ] , ( const void * ) & rtcapiStoredFloats [ 0 ] , 0 ,
0 } } ; static rtwCAPI_ModelMappingStaticInfo mmiStatic = { { rtBlockSignals
, 8 , ( NULL ) , 0 , ( NULL ) , 0 } , { rtBlockParameters , 5 ,
rtModelParameters , 3 } , { ( NULL ) , 0 } , { rtDataTypeMap , rtDimensionMap
, rtFixPtMap , rtElementMap , rtSampleTimeMap , rtDimensionArray } , "float"
, { 3152738345U , 3709429346U , 2372624493U , 2337009829U } , ( NULL ) , 0 ,
0 } ; const rtwCAPI_ModelMappingStaticInfo * Ex9_GetCAPIStaticMap ( void ) {
return & mmiStatic ; }
#ifndef HOST_CAPI_BUILD
void Ex9_InitializeDataMapInfo ( void ) { rtwCAPI_SetVersion ( ( *
rt_dataMapInfoPtr ) . mmi , 1 ) ; rtwCAPI_SetStaticMap ( ( *
rt_dataMapInfoPtr ) . mmi , & mmiStatic ) ; rtwCAPI_SetLoggingStaticMap ( ( *
rt_dataMapInfoPtr ) . mmi , ( NULL ) ) ; rtwCAPI_SetDataAddressMap ( ( *
rt_dataMapInfoPtr ) . mmi , rtDataAddrMap ) ; rtwCAPI_SetVarDimsAddressMap (
( * rt_dataMapInfoPtr ) . mmi , rtVarDimsAddrMap ) ;
rtwCAPI_SetInstanceLoggingInfo ( ( * rt_dataMapInfoPtr ) . mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArray ( ( * rt_dataMapInfoPtr ) . mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArrayLen ( ( * rt_dataMapInfoPtr ) . mmi , 0 ) ; }
#else
#ifdef __cplusplus
extern "C" {
#endif
void Ex9_host_InitializeDataMapInfo ( Ex9_host_DataMapInfo_T * dataMap ,
const char * path ) { rtwCAPI_SetVersion ( dataMap -> mmi , 1 ) ;
rtwCAPI_SetStaticMap ( dataMap -> mmi , & mmiStatic ) ;
rtwCAPI_SetDataAddressMap ( dataMap -> mmi , NULL ) ;
rtwCAPI_SetVarDimsAddressMap ( dataMap -> mmi , NULL ) ; rtwCAPI_SetPath (
dataMap -> mmi , path ) ; rtwCAPI_SetFullPath ( dataMap -> mmi , NULL ) ;
rtwCAPI_SetChildMMIArray ( dataMap -> mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArrayLen ( dataMap -> mmi , 0 ) ; }
#ifdef __cplusplus
}
#endif
#endif
