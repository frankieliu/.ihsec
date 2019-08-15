(put 'env_funs 'symbol-type "environment variable fun")
(setq env_funs '(
("envCyclicStringToIndex" "t_tool[.Partition] t_varName t_cyclicString " "Returns the index of the string for the given cyclic variable. This order is determined by the order of choices specified in the tool")

("envGetAvailableTools" "" "Allows users to know what tools are available to be loaded.")

("envGetDefVal" "t_tool[.Partition] t_varName [s_varType] " "Retrieves the registered default value for a variable. The tool will be faulted in if it is not already faulted in. ")

("envGetLoadedTools" "" "Allows users to know what tools have currently been loaded.")

("envGetModifiedTools" "" "Returns a list of all tools with modified variables.")

("envGetVal" "t_tool[.Partition] t_varName [s_varType] " "Retrieves the value for a variable. The tool will be faulted in if it is not already faulted in. ")

("envGetVarType" "t_tool[.Partition] t_varName " "Returns the type of the variable specified. This query will cause the tool to be loaded, if it has not already been loaded. ")

("envIsToolModified" "t_toolName " "Specifies if any of the variables for a specified tool have been modified.")

("envIsVal" "t_tool[.Partition] t_varName [g_faultIn] " "Allows users to know if a particular variable has been loaded and exists for the given tool[.partition].")

("envLoadFile" "?envFile t_fileName  " "Specifies that a set of environment variables is to be loaded from a specified file. This function is equivalent to calling envLoadVals() with the ?tool argument set to ALL. All values loaded will be marked as modified.")

("envLoadVals" "?envFile t_fileName  [?tool t_toolName]  " "Specifies that a set of environment variables is to be loaded from a specified file.")

("envOption" "s_envOption1 g_value1 - [ s_envOptionN g_valueN ] " "Sets environment options.")

("envRegLoadDumpTrigger" "" )

("envRegSetTrigger" "" )

("envSetVal" "t_tool[.Partition] t_varName s_varType " "Sets a value in the setup database. The tool will be faulted in if it is not already faulted in. If a set trigger function is registered for this variable (see the  envRegSetTrigger function), it will be called after the set is done. This set trigger will be called with the variable that was set and the old and new values. ")

("envStoreEnv" "[?envFile t_fileName]  [?tool t_toolName]  [?toolStatus t_toolStatus] [?fileStatus t_fileStatus] " " ")

))
