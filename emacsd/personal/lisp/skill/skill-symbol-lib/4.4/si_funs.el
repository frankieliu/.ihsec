(put 'sim_funs 'symbol-type "simulation interface fun")
(setq sim_funs '(
("simCleanRun" "" "Deletes files created by both the simulation environment and the analysis tool being used from the simulation run directory. The function simCleanRun deletes only those files that can be recreated by renetlisting or resimulating. Files that are required to rerun the simulation, such as the si.env and control files, are not deleted. The function displays a dialog box to confirm that you want to delete the information. If the deletion is confirmed, the files that the simulation environment creates are deleted as well as the files specified by the simCleanFileList variable. The simCleanFileList variable is set differently by each application integrated into the simulation environment.")

("simInitEnv" "" "Initializes the simulation environment within the Cadence graphics environment. In addition to defining the SKILL environment needed for the simulation environment and the target application, this function creates and initializes the run directory as needed using the simInitRunDir function.")

("simInitEnvWithArgs" "t_runDirName {t_libName|nil}{t_cellName|nil} {t_viewName|nil} {t_simulatorName/nil}forceInit " "Initializes the simulation environment within the Cadence graphics environment. In addition to defining the SKILL environment needed for the simulation environment and the target application, this function creates and initializes the run directory as needed.")

("simJobMonitor" "" "Invokes a form displaying the analysis jobs invoked in the background using the simRunNetAndSim and simRunNetAndSimWithArgs functions. The analysis job is listed on the form, as well as its current status, time of invocation, and execution priority. Using this form, you can view the run log of a job, terminate the execution of an active job, suspend the execution of an active job, change the execution priority of a job, or delete a job from the form.")

("simRunNetAndSim" "" "Starts an analysis job in either foreground or background mode. You must initialize the simulation environment before simRunNetAndSim is called. To do so, call either the simInitEnv or simInitEnvWithArgs function.")

("simRunNetAndSimWithArgs" "{t_libName|nil} {t_cellName|nil}{t_viewName|nil} {t_simulatorName|nil} {doNetlist doSimulation runBackground x_jobPriority " "Starts an analysis job in either foreground or background mode. The simulation environment must be initialized before simRunNetAndSim is called. That is, the simInitEnv or simInitEnvWithArgs function must have been called. The simRunDir global variable is used as the current run directory and is set when the simulation environment is initialized.")

("simRunNetAndSimWithCmd" "{t_libName|nil} {t_cellName|nil}{t_viewName|nil} {t_simulatorName|nil} t_cmdToBeExecuted runBackground x_jobPriority " "Executes a function in either foreground or background mode. Before calling simRunNetAndSimWithCmd, you must initialize the simulation environment. The simRunDir global variable is used as the current run directory and is set when the simulation environment is initialized.")

("simWaveOpen" "" "Invokes a form displaying the current simulation run directory name and prompts you for the name of the waveform file to display. The default waveform file is raw/waves in the simulation run directory. When the filename is specified, a new window is opened, displaying the waveform information.")

))
