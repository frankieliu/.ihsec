(put 'de_funs 'symbol-type "design editor fun")
(setq de_funs '(
("debugQuit" "" "Exits one level of the SKILL debugger.")

("debugStatus" "" "Prints the functions and variables being traced, functions that have breakpoints set, and the functions being counted.")

("defCapDepends" "s_context l_dependsList " "Specifies which contexts depend on which other contexts.")

("defCapPrefixes" "s_context l_prefixList " "Specifies which prefixes are acceptable for a context")

("defInitProc" "t_contextName s_procName " "Registers a function that the system calls immediately after autoloading a context.")

("defMathConstants" "s_id" "Associates a set of predefined math constants as properties of the given symbol.")

("defUserInitProc" "t_contextName s_procName " "Registers a user-defined function that the system calls immediately after autoloading a context.")

("desVar" "t_desVar1 f_value1 - [t_desVarN f_valueN]" "Sets the values of design variables used in your design. You can set the values for as many design variables as you want.")

))
