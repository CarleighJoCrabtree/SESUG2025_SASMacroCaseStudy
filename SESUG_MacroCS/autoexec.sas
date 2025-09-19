%let path= ;/* Insert path to SESUG_2025 folder, example below: */
/* %let path=/export/viya/homes/carleighjo.crabtree@sas.com/SESUG_MacroCS; */
 
libname mc1 "&path";

/****************************************************************************************************************************/
/* Autocall library includes .sas programs that each have a single macro definition.                                        */
/* Autocall facility calls macros in autocall library without having to open and submit the macro definiton.                */
/* sasautos= provides the location of the autocall library, SASAUTOS is the fileref for autocall macros supplied by SAS.    */
/* mAutoSource ensures the autocall feature is available.                                                                   */
/****************************************************************************************************************************/

options mautosource sasautos=("&path/autocall", SASAUTOS);
