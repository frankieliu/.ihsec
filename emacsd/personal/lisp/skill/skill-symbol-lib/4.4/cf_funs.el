(put 'cdf_funs 'symbol-type "component description fomrat fun")
(setq cdf_funs '(
("cdfCopyCDF" "d_id t_dataType g_dataId " "Copies CDF data onto the specified id, creating a new dataId of the specified type.")

("cdfCopyParam" "g_dataId g_paramId " "Copies a parameter, adding it to the dataId.")

("cdfCreateBaseCellCDF" "d_cellId  [?doneProc t_doneProc t_formInitProc] " "Creates a base-level CDF description for a cell.")

("cdfCreateBaseLibCDF" "d_libId  [?doneProc t_doneProc t_formInitProc] " "Creates a base-level CDF description for a library.")

("cdfCreateParam" "" )

("cdfCreateUserCellCDF" "d_cellId  [?doneProc t_doneProc t_formInitProc] " "Creates a user-level CDF description for a cell.")

("cdfCreateUserLibCDF" "d_libId  [?doneProc t_doneProc t_formInitProc] " "Creates a user-level CDF description for a library.")

("cdfDeleteCDF" "g_cdfDataId " "Deletes a CDF description, including all attached parameters.")

("cdfDeleteParam" "g_cdfParamId " "Deletes a CDF parameter.")

("cdfDump" "t_libName t_fileName  [?cellName t_cellName] [?level s_level]  [?edit b_edit] " "Dumps the CDF description for t_libName and t_cellName into t_fileName. If t_cellName is not specified, then only the library CDF description is dumped. s_level is either ")

("cdfDumpAll" "t_libName t_fileName  [?level s_level]  [?edit b_edit] " "Dumps the CDF description for t_libName and all its cells into t_fileName. s_level is either ")

("cdfFindParamByName" "g_cdfDataId t_name " "Returns the parameter ID for the specified parameter name on the specified CDF description, if it exists. If not, it returns nil.")

("cdfGetBaseCellCDF" "d_cellId " "Returns the base-level CDF description attached to a cell. If one is not defined, it returns nil.")

("cdfGetBaseLibCDF" "d_libId " "Returns the base-level CDF description attached to a library. If one is not defined, it returns nil.")

("cdfGetCellCDF" "d_lcellId " "Returns the effective CDF description attached to a cell. If neither a base- nor user-level CDF description is defined for the cell or its library, it returns nil. The resulting CDF description represents the overlay of the user-level cell CDF on the base-level cell CDF on the user-level library CDF on the base-level library CDF.")

("cdfGetInstCDF" "d_instId " "Returns the effective CDF description associated with an instance.")

("cdfGetLibCDF" "d_libId " "Returns the effective CDF description attached to a library. If neither a base- nor user-level CDF description is defined, it returns nil. The resulting CDF description represents the overlay of the user-level CDF on the base-level CDF.")

("cdfGetUserCellCDF" "d_cellId " "Returns the user-level CDF description attached to a cell. If one is not defined, it returns nil.")

("cdfGetUserLibCDF" "d_libId " "Returns the user-level CDF description attached to a library. If one is not defined, it returns nil.")

("cdfSaveCDF" "g_cdfDataId " "Saves a CDF description to disk.")

))
