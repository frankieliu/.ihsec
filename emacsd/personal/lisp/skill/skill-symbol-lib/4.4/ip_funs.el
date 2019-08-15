(put 'ipc_funs 'symbol-type "interprocess communication fun")
(setq ipc_funs '(
("ipcActivateBatch" "o_childId" "Switches a child process to batch mode.")

("ipcActivateMessages" "o_childId" "Switches a child process into interactive mode. In interactive mode, output from the child is written to a log file and is passed on to the parent process.")

("ipcBatchProcess" "t_command t_hostName t_logFile " "Invokes a UNIX process to execute batch commands. The child process in this case is a batch process that does not communicate with the parent process.")

("ipcBeginProcess" "t_command [t_hostName] [tsu_dataHandler]  [tsu_errHandler] [tsu_postFunc] [t_logFile] " "Invokes a UNIX process to execute a command or sequence of commands specified.")

("ipcCloseProcess" "o_childId	" "Closes the input channel of the child process.")

("ipcContProcess" "o_childId" "Causes a suspended child process to resume executing. Equivalent to sending a UNIX CONT signal.")

("ipcGetExitStatus" "o_childId" "Returns the exit value of the child process.")

("ipcGetPid" "" "Returns the runtime process identification number of the process executing this function.")

("ipcGetPriority" "" "Gets the current default priority.")

("ipcIsActiveProcess" "o_childId" "Determines if a child process is alive, that is, not stopped.")

("ipcIsAliveProcess" "o_childId" "Checks if a child process is still alive.")

("ipcKillAllProcesses" "" "Kills every process initiated by the parent through one of the ipcBeginProcess class of functions.")

("ipcKillProcess" "o_childId" "Kills the UNIX process identified by o_childId. This call results in a UNIX SIGKILL signal being sent to the child process.")

("ipcReadProcess" "o_childId [x_timeOut] " "Reads data from the child process")

("ipcSetPriority" "x_NiceValue" "Sets the priority value for child processes. All processes spawned after this call will run at the given priority.")

("ipcSkillProcess" "t_command [t_hostName] [tsu_dataHandler]  [tsu_errHandler] [tsu_postFunc] [t_logFile] [x_cmdDesc] [x_resDesc]" "Invokes a UNIX process capable of executing SKILL functions in the parent process. Opens two additional channels to the child process that let the child send and receive the results of SKILL commands.")

("ipcSleep" "x_time" "Causes the parent to sleep for the given number of seconds.")

("ipcSoftInterrupt" "o_childId" "Equivalent to executing the UNIX kill -2 command. If the child process is active, it is sent a soft interrupt. The child is responsible for catching the signal.")

("ipcStopProcess" "o_childId" "Causes the child process to suspend its execution. Is equivalent to sending a STOP signal through the UNIX kill command.")

("ipcWait" "o_childId [x_interval] [x_timeOut]" "Causes the parent process to suspend until the child terminates.")

("ipcWaitForProcess" "o_childId [x_timeOut]" "Causes the parent process to suspend until the child process is alive and ready for communication.")

("ipcWriteProcess" "o_childId t_data" "Writes data to the child")

))
