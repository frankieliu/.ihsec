(put 'tech_funs 'symbol-type "technology file fun")
(setq tech_funs '(
("techBindTechFile" "g_ID  [t_techLibName  [t_techfileName [updateDev]]] " "Attaches the specified Design Framework II library or cellview to the specified technology file by creating techLib and techFile properties. The l_techfile argument is a list containing a design data identifier for the Design Framework II library in which the technology file resides and techfile.cds, which is the name of the binary technology file. To get the design data identifier for a Design Framework library, use the ddGetObj function. If the library, cellview, or technology file does not exist, this function returns nil.")

("techCloseTechFile" "d_techFileID  " "Changes the status of the technology file to closed and decrements the close count. The technology file is not purged from virtual memory until the system needs to use the memory. Internally, the system maintains a count of the number of times you open and close a specific technology file. The count increments when you open and decrements when you close. When the close count is 0 and the system needs more virtual memory, it purges the technology file from virtual memory. If the technology file does not exist, this function returns nil.")

("techCopyTechFile" "d_techFileID  t_newTechLibName t_path [g_deleteOriginal]  " "Copies a technology file to a new location and optionally deletes the original. This function is especially useful for separating technology data out of libraries that contain both design data and technology data. If the technology file does not exist, this function returns nil.")

("techDeleteTechFile" "d_techFileID  " "Deletes a technology file. This function is useful for deleting redundant technology data from design libraries that have been updated to share one technology library. If the technology file does not exist, this function returns nil.")

("techGetDeviceTechFile" "d_cellviewID " "Returns the database identifier for the technology file bound to the specified device.")

("techGetOpenTechFiles" "" "Returns a list of the database identifiers of the technology files that are open.")

("techGetTechFile" "g_libID | d_cellviewID " "Returns the database identifier of the technology file attached to the specified Design Framework II library or cellview. If the cellview does not identify a specific technology file, this function returns the database identifier for the technology file bound to the library of the cellview. A library must identify a technology file. If the library or cellview does not exist, this function returns nil.")

("techGetTechFileDdId" "d_techFileId " "Returns the design data identifier for the technology file identified by the specified techFileId. This function is a wrapper for the ddGetObj function specifically designed to return the design data identifier of a technology file. If the technology file does not exist, this function returns nil.")

("techGetTechLibName" "" "Returns the value of the techLib property set for the specified library or cellview. This property is one of two that attach a library or cellview to a technology file.")

("techGetTimeStamp" "d_techFileID " "Returns the time stamp of the technology file loaded into virtual memory. The time stamp is updated every time you modify the technology file in virtual memory. The time stamp is an integer representing the number of seconds elapsed since 00:00:00 GMT, January 1, 1970. If the technology file does not exist, this function returns nil.")

("techOpenDefaultTechFile" "" "Loads the default binary technology file in virtual memory in read mode and returns the database identifier. The default technology file resides at   <install_dir>/tools/dfII/samples/techfile/default.cds  If the default technology file is not at the expected location, this function returns nil.")

("techOpenTechFile" "t_libName  t_fileName [t_mode]  " "Loads a binary technology file in virtual memory with a specified mode and returns the database identifier of the file. If you do not specify a mode, or if you specify r mode, the file can only be read. If you specify w mode, the contents of the disk file are deleted, or truncated, and an empty technology file is loaded into virtual memory. If you specify a mode, the technology file is loaded in append mode, which means that you can edit the contents of the file. If the library or file does not exist, this function returns nil.")

("techPurgeTechFile" "d_techFileID  " "Deletes the file from virtual memory if the close count for the file is 0. Internally, the system maintains a count of the number of times you open and close a specific technology file. The count increments when you open and decrements when you close. When the close count is 0 and the system needs more virtual memory, it automatically purges the technology file to free the memory. This function lets you manually purge the technology file. If the technology file does not exist or the close count is greater than 0, this function returns nil.")

("techRefreshTechFile" "d_techFileID  " "Deletes the technology file loaded in virtual memory and reloads the binary file stored on disk. The edit mode (append, read, or write) of the file remains the same. If you refresh a technology file open in append mode, any changes you made and did not save are lost. If you refresh a technology file open in write mode, the empty disk file is loaded into virtual memory. If the technology file does not exist, this function returns nil.")

("techReopenTechFile" "d_techFileID  t_mode  " "Changes the mode of a technology file that has been opened. Use this function to upgrade the mode from r (read only) to a (append). If the technology file does not exist, or if the technology file is already open in append or write mode, this function returns nil.")

("techSaveTechFile" "d_techFileID " "Saves the specified technology file from virtual memory to the disk file from which it was opened. If the technology file identifier is invalid, or the system is not able to write to the directory containing the disk file, this function returns nil.")

("techSetEvaluate" "g_value " "Sets an internal flag that indicates whether the tcDumpTechFile and techGet functions evaluate expressions or read the expression as a string. The system automatically sets this internal flag while it dumps a technology file so that expressions and controls are preserved. This function lets you manually set the flag. ")

("techSetTechFileName" "g_ID t_techfileName  " "Updates the techFile property of the specified library or cellview. This property is one of two that attach a library or cellview to a technology file.")

("techSetTechLibName" "g_ID t_libName  " "Updates the techLib property of the specified library or cellview. This property is one of two that attach a library or cellview to a technology file.")

("techSetTimeStamp" "d_techFileID  " "Updates the internal time stamp of the technology file to the current time. The time stamp is an integer representing the number of seconds elapsed since 00:00:00 GMT, January 1, 1970. ")

("techTruncateTechFile" "d_techFileID  " "Deletes the contents of the technology file stored on disk. If the technology file does not exist, this function returns nil.")

("techVerifyTechFileId" "d_ID  " "Indicates whether the specified database identifier is for a technology file. If the identifier is invalid or is not for a technology file, this function returns nil.")

))
