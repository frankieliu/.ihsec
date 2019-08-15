(put 'misc_funs 'symbol-type "")
(setq misc_funs '(
("MIFFile" "f_version  [t_comment] " "Generates the SMIFT representation of the MIF MIFFile statement. ")

("abs" "n_number " "Returns the absolute value of a floating-point number or integer.")

("ac" "g_fromValue g_toValue g_ptsPerDec ) => undefined/nil ac( g_fromValue g_toValue t_incType g_points " "Specifies an AC analysis.")

("acos" "n_number " "Returns the arc cosine of a floating-point number or integer.")

("add1" "n_number " "Adds one to a floating-point number or integer.")

("alias" "s_aliasName s_functionName " "Defines a symbol as an alias for a function. This is an nlambda function.")

("alphaNumCmp" "S_arg1 S_arg2 [g_arg3] " "Compares two string or symbol names alphanumerically or numerically.")

("alphalessp" "S_arg1 S_arg2 " "Compares two string or symbol names alphabetically.")

("analysis" "s_analysisType [?analysisOption1 g_analysisOptionValue1]- [?analysisOptionN g_analysisOptionValueN]" "Specifies the analysis to be simulated.")

("append" "l_list1 l_list2 ) => l_result  append( o_table g_assoc " "Creates a list containing the elements of list1 followed by the elements of list2 or returns the original association table including new entries.")

("append1" "l_list g_arg " "Adds new arguments to the end of a list.")

("appendPath" "t_dirName1 - [t_dirNameN]" "Appends a new path to the end of the search path list. You can append as many paths as you want with this command.")

("apply" "slu_func l_args " "Applies the given function to the given argument list.")

("arglist" "s_function " "Returns the number and types of arguments expected for a function.")

("arrayp" "g_value " "Checks if an object is an array.")

("arrayref" "g_collection g_index " "Returns the element in a collection, that is, in an array or a table, of the given index.")

("asin" "n_number " "Returns the arc sine of a floating-point number or integer.")

("assoc, assv, assq" "" "The assoc, assq, and assv functions find the first list in l_alist whose car field is g_key and return that list. assq uses eq to compare g_key with the car fields of the lists in alist. assoc uses equal. assv uses eqv.")

("atan" "n_number " "Returns the arc tangent of a floating-point number or integer.")

("ateFormatter" "" "First, a design object is created with the nlCreateDesign call, using the information on the OASIS session. Subsequently, the formatter is created with a call to nlCreateFormatter, using the information on the session. The formatter is added to the session and can be obtained with asiGetFormatter. This is a convenience routine that you cannot redefine, and the interface should not call it.")

("atof" "t_string " "Converts a string into a floating-point number. Returns nil if the given string does not denote a number.")

("atoi" "t_string " "Converts a string into an integer. Returns nil if the given string does not denote an integer.")

("atom" "g_arg " "Checks if an object is an atom.")

("average" "o_waveform " "Computes the average of a waveform over its entire range.")

("b1f" "o_s11 o_s12 o_s21 o_s22 " "Returns the alternative stability factor in terms of the supplied parameters.")

("bandwidth" "o_waveform n_db t_type " "Calculates the bandwidth of a waveform.")

("bcdp" "g_value " "Checks if an object is a binary primitive function.")

("begin - SKILL mode" "g_exp1 [g_exp2 ... g_expN] " "In SKILL mode begin is a syntax form used to group a sequence of expressions. Evaluates expressions from left to right and returns the value of the last expression. Equivalent to progn.")

("begin - SKILL++ mode" "def1 [def2 ... defN] ) => g_result begin( exp1 [exp2 ... expN] " "In SKILL++ mode begin is a syntax form used to group either a sequence of expressions or a sequence of definitions.")

("blankstrp" "t_string" "Checks if the given string is empty or has blank space characters only and returns true. If there are non-space characters blankstrp returns nil.")

("booleanp" "g_obj " "Checks if an object is a boolean. Returns t if the object is t or nil. Returns nil otherwise.")

("boundp" "s_arg [e_environment]" "Checks if the variable named by a symbol is bound, that is, has been assigned a value. The single argument form of boundp only works in SKILL mode.")

("break" "" "Forces entry to the break handler if inserted directly into a SKILL function. The default break handler is the debugger.")

("breakpt" "[s_function [break_condition]]) where break_condition can be either (break_tag g_condition ) or ((break_tag g_condition)..." "Sets breakpoints on one or more functions.")

("buildString" "l_strings [S_glueCharacters] " "Concatenates a list of strings with specified separation characters.")

("cReflContour" "o_iwave o_vwave x_harm [?iwaveLoad o_iwaveLoad] [?vwaveLoad o_vwaveLoad] [?maxRefl f_maxRefl] [?minRefl f_minRefl] [?numCont x_numCont] [?refImp f_refImp] [?closeCont b_closeCont] " "Constructs constant reflection coefficient magnitude contours for Z-Smith plotting. The trace of each contour correlates to reference reflection coefficients that all result in the same reflection coefficient magnitude.")

("caar, cadr, cdar, cddr, caaar, caadr, cadar, caddr, cdadr,  cadaar, cadadr, caddar, cadddr, cdaaar, cdaadr, cdadar,  cdaddr, cddaar, cddadr, cdddar, cddddr" "" "Performs operations on a list using repeated applications of car and cdr. For example, caaar is equivalent to car( car( car( l_list))).")

("callAs" "us_class s_genericFunction g_arg1 [g_arg2 ...]" "Calls a method specialized for some super class of the class of a given object directly, bypassing the usual method inheritance and overriding of a generic function.")

("callInitProc" "t_contextName " "Calls all the initialization functions associated with a context.")

("callNextMethod" "[ g_arg ...]" "Calls the next applicable method for a generic function from within the current method. Returns the value returned by the method it calls.")

("cancelEnterFun" "[g_form] " "Cancels the enterfunction in the current window. ")

("car" "l_list " "Returns the first element of a list. car is nondestructive, meaning that it returns the first element of a list but does not actually modify the list that was its argument.")

("case" "g_selectionExpr l_clause1 [l_clause2 -] " "Evaluates the selection expression, matches the resulting selector values sequentially against comparators defined in clauses, and runs the expressions in the matching clause.")

("case, caseq" "" "Evaluates the selection expression, matches the resulting selector values sequentially against comparators defined in clauses, and executes the expressions in the matching clause. This is a syntax function.")

("ccpCopy" "q_src q_dest [g_overWrite] [s_expFlag] [l_copyViewTypeList] [l_copyViewNameList] [t_vNameRegExp] [t_vNameSpace] [s_whatToUpdate] [q_updateLibList] " "Copies source data to another location.")

("ccpCopyConfig" "G_src G_dest g_overWrite s_expFlag [l_copySkipLibList] [l_copyViewTypeList] [l_copyViewNameList] [t_vNameRegExp] [t_vNameSpace] [s_whatToUpdate] [q_updateLibList] " "Copies a design configuration. Expansion is based on configuration rules specified in the expand.cfg file in the source configuration view.")

("ccpCopyDesign" "G_src G_dest g_overWrite s_expFlag [l_copySkipLibList] [l_copyViewTypeList] [l_copyViewNameList] [t_vNameRegExp] [t_vNameSpace] [s_whatToUpdate] [q_updateLibList] " "Copies a design, after expanding it, to the destination library you specify.")

("ccpExpand" "q_src s_expFlag [l_expandViewTypeList] [l_expandViewNameList] [t_vNameRegExp] [t_vNameSpace] " "Does an expansion, given a list of source objects.")

("ccpExpandConfig" "G_src s_expFlag [l_expandSkipLibList] [l_expandViewTypeList] [l_expandViewNameList] [t_vNameRegExp] [t_vNameSpace] " "Expands a configuration, based on configuration rules specified in the expand.cfg file in the source configuration view.")

("ccpExpandDesign" "G_src s_expFlag [l_expandSkipLibList] [l_expandViewTypeList] [l_expandViewNameList] [t_vNameRegExp] [t_vNameSpace] " "Expands a design, given a source lib/cell or lib/cell/view gdmSpec object.")

("ccpRename" "G_src G_dest g_overWrite s_expFlag [s_whatToUpdate] [q_updateLibList] " "Renames a lib, cell, or view. The source lib, cell, or view is copied, and then the original one is deleted. This implies that if you select CCP_EXPAND_COMANAGED as the s_expFlag, then derived files will not be renamed but will be deleted.")

("ccpRenameReferenceLib" "" "Renames, in a library or a subset of a library, references to an external library. The external library is not changed.")

("cdr" "l_list " "Returns the tail of the list, that is, the list without its first element.")

("cdsGetInstPath" "[ t_name ] " "Returns the absolute path of the Cadence installation directory as a string. cdsGetInstPath is for the cds root hierarchy and is meant to be used by all DFII and non-DFII applications.")

("ceiling" "n_number" "Returns the smallest integer not smaller than the given argument.")

("changeEnterFun" "s_enterFun  [?prompts l_promptList]  [?points l_pointList]  [?wantPoints x_pointLimit] [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?pathStyle t_pathStyle] [?pathWidth f_pathWidth] [?beginExtent f_beginExtent] [?endExtent f_endExtent]  [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] [?cmdName t_cmdName] " "Since this function uses the current window to determine which enterfunction to change, make sure to properly set the current window before using this function. See hiSetCurrentWindow() for information about setting the current window.")

("changeWorkingDir" "[S_name] " "Changes the working directory to S_name.")

("charToInt" "s_char " "Returns the ASCII code of the first character of the given symbol. In SKILL, a single character symbol can be used as a character value.")

("className" "us_class " "Returns the class symbol denoting a class object.")

("classOf" "g_object" "Returns the class object of which the given object is an instance.")

("classp" "g_object su_class" "Checks if the given object is an instance of the given class or is an instance of one of its subclasses.")

("clear" "" "Clears all tracing and breakpoints.")

("clearAll" "" "Erases the contents of the current Waveform window and deletes the waveforms, title, date stamp, and labels stored in internal memory.")

("clearExitProcs" "" "Removes all registered exit functions (takes no arguments).")

("clearSubwindow" "" "Erases the contents of the current subwindow.")

("clip" "o_waveform n_from n_to " "Restricts the waveform to the range defined by n_from and n_to.")

("close" "p_port " "Drains, closes, and frees a port.")

("closeMIFin" "" "Closes the MIF input file opened by openMIFin.")

("closeMIFout" "" "Closes the MIF output file opened by openMIFout.")

("commentMIF" "" )

("compareTime" "t_time1 t_time2 " "Compares two string arguments, representing a clock-calendar time.")

("compress" "t_sourceFile t_destFile " "Reduces the size of a SKILL file, which must be SKILL source code, and places the output into another file.")

("compression" "o_waveform  [ ?x f_x ]  [ ?y f_y ]  [ ?compression f_compression ]  [ ?io s_measure ] " "Performs an nth compression point measurement on a power waveform.")

("compressionVRI" "o_vport x_harm [?iport o_iport] [?rport f_rport] [?epoint f_epoint] [?gcomp f_gcomp] [?measure s_measure] " "Performs an nth compression point measurement on a power waveform.")

("compressionVRICurves" "o_vport x_harm [?iport o_iport] [?rport f_rport] [?epoint f_epoint] [?gcomp f_gcomp] " "Constructs the waveforms associated with an nth compression measurement.")

("concat" "Sx_arg1 [Sx_arg2 ...] " "Concatenates strings, symbols, or integers into a single symbol.")

("cond" "l_clause1 ... " "Examines conditional clauses from left to right until either a clause is satisfied or there are no more clauses remaining. This is a syntax function.")

("conjugate" "{o_waveform | n_x} " "Returns the conjugate of a waveform or number.")

("cons" "g_element l_list " "Adds an element to the beginning of a list.")

("cont, continue" "" "Continues execution from a breakpoint. cont and continue are identical.")

("convolve" "o_waveform1 o_waveform2 n_from n_to t_type n_by " "Computes the convolution of two waveforms.")

("copy" "l_arg " "Returns a copy of a list, that is, a list with all the top-level cells duplicated.")

("copyDefstructDeep" "r_object" "Performs a deep or recursive copy on defstructs with other defstructs as sub-elements, making copies of all the defstructs encountered.")

("copy_name" "" "Creates and returns a copy of a structure. This function is created by the defstruct function where <name> is the name of the defstruct.")

("cornerDesVar" "t_cornerName t_desVarName t_value" "Sets the design variable value for the specified corner.")

("cornerMeas" "" "Displays all the predefined enabled measurements from a Design Customization file, either graphically (plot) or textually (print), according to your choices.")

("cornerRun" "[t_cornerName1 t_cornerName2 -] [?jobName t_jobName] [?host t_hostName] [?queue t_queueName] [?startTime t_startTime][?termTime t_termTime] [?dependentOn t_dependentOn] [?mail t_mailingList] [?block s_block] [?notify s_notifyFlag] " "Runs the corner analysis that has been predefined in the .pcf and .dcf files and selected via the selectProcess command. If specific corners are specified, only those corners run; otherwise all the corners run.")

("cornerRunTemp" "t_cornerName t_value" "Sets the analysis temperature (in degrees Celsius) to be used for a corner.")

("correlationTable" "?suppress x_suppress" "Prints the correlation between all pairs of declared monteExpr expressions.")

("cos" "n_number " "Returns the cosine of a floating-point number or integer.")

("count" "[s_function ... | t]" "Counts the number of times a function has been called. This is an nlambda function. Returns the functions marked for counting.")

("createDir" "S_name " "Creates a directory.")

("createFinalNetlist" "" "Creates the final netlist for viewing purposes. The netlist also can be saved but is not required to run the simulator.")

("createNetlist" "[?recreateAll b_recreateAll] " "Creates the simulator input file.")

("cross" "o_waveform n_crossVal x_n s_crossType " "Computes the X-axis value at which a particular crossing of the specified edge type of the threshold value occurs.")

("csh" "[t_command] " "Starts the UNIX C-shell as a child process to execute a command string.")

("currentSubwindow" "x_subwindow " "Specifies x_subwindow as the current subwindow.")

("currentWindow" "w_windowId " "Specifies w_windowId as the current Waveform window.")

("db10" "{o_waveform | n_number} " "Returns 10 times the log10 of the specified waveform object or number.")

("db20" "{o_waveform | n_number} " "Returns 20 times the log10 of the specified waveform object or number.")

("dbm" "{o_waveform | n_number} " "Returns 10 times the log10 of the specified waveform object plus 30.")

("dc" "t_compName [ t_compParam ] g_fromValue g_toValue g_byValue " "Specifies a DC sweep analysis with limited options. If other analysis options are needed, use the analysis command.")

("declare" "s_arrayName[x_sizeOfArray] " "Creates an array with a specified number of elements. This is a syntax form. All elements of the array are initialized to unbound.")

("declareLambda" "s_name1 ... s_nameN " "Tells the evaluator that certain (forward referenced) functions are of lambda type (as opposed to nlambda or macro).")

("declareNLambda" "s_name1 ... s_nameN " "Tells the evaluator that certain (forward referenced) functions are of nlambda type (as opposed to lambdas or macros).")

("declareSQNLambda" "s_functionName ..." "Declares the given nlambda functions to be solely-quoting nlambdas.")

("defclass" "s_className ([s_superClassName]) 	([( s_slotName 	 [@initarg s_argName] 	 [@reader s_readerFun] 	 [@writer s_writerFun] 	 [@initform g_exp])  	 ...] )  " "Creates a class object with class name and optional super class name and slot specifications. This is a macro form.")

("defgeneric" "s_functionName  	( s_arg1 [s_arg2 ...] )  	[g_exp ...] " "Defines a generic function with an optional default method. This is a macro form. Be sure to leave a space after the function name. See the SKILL Language User Guide for a discussion of generic functions.")

("define - SKILL++ mode" "s_var g_expression ) => s_var define( ( s_var [s_formalVar1 ...] ) g_body ..." "define, used in SKILL++ mode only, is a syntax form used to provide a definition for a global or local variable. The define syntax form has two variations.")

("definitionFile" "t_fileName [t_fileName2 .. t_fileNameN ]" "Specifies definition files to be included in the simulator input file.")

("defmacro" "s_macroName ( l_formalArglist ) g_expr1 ..." "Defines a macro which can take a list of formal arguments including @optional, @key, and @rest (instead of the more restrictive format as required by using mprocedure).")

("defmethod" "s_name  	(( s_arg1 s_class ) s_arg2 ... ) 	g_exp1 ..." "Defines a method for a given generic function. This is a macro form. Be sure to leave a space after s_name.")

("defprop" "s_id g_value s_name " "Adds properties to symbols but none of its arguments are evaluated. This is a syntax form.")

("defstruct" "s_name s_slot1 [s_slot2..]" "Creates a defstruct, a named structure that is a collection of one or more variables.")

("defstructp" "g_object [S_name] " "Checks if an object is an instance of a particular defstruct.")

("defun" "s_funcName ( l_formalArglist ) g_expr1 ..." "Defines a function with the name and formal argument list you specify. This is a syntax form.")

("defvar - SKILL mode" "s_varName [g_value]" "Defines a global variable and assigns it a value. Use in SKILL mode only. Use the define syntax form to define global variables in SKILL++ mode.")

("delay" "?wf1 o_wf1 ?value1 n_value1 ?edge1 s_edge1 ?nth1 x_nth1 ?td1 n_td1 ?wf2 o_wf2 ?value2 n_value2 ?edge2 s_edge2 ?nth2 x_nth2 {[?td2 n_td2] | [?td2r0 n_td2r0]} ?stop n_stop " "Calculates the delay between a trigger event and a target event.")

("delete" "s_command [g_commandArg1] [g_commandArg2] - " "Deletes all the information specified.")

("deleteDir" "S_name " "Deletes a directory.")

("deleteFile" "S_name " "Deletes a file.")

("deleteJob" "t_jobName [t_jobName2 t_jobName3 - t_jobNameN] " "Removes a job or series of jobs from the text-based job monitor.")

("deletePoint" "" "Deletes a point from the enterfunction in the current window. ")

("deleteSubwindow" "" "Deletes the current subwindow from the current Waveform window.")

("deleteWaveform" "{x_index | all_string } " "Deletes the specified waveform curve or all the waveform curves from the current subwindow of a Waveform window.")

("deriv" "o_waveform " "Computes the derivative of a waveform with respect to the X axis.")

("design" "t_cktFile ) => t_cktFile/nil design( t_lib t_cell t_view " "Specifies the name of the design to be simulated.")

("dft" "o_waveform n_from n_to x_num [t_windowName [n_param1]] " "Computes the discrete Fourier transform and fast Fourier transform of the input waveform.")

("digitalHostMode" "" local)

("digitalHostName" "t_name " "For mixed-signal simulation, specifies the name of the remote host for the digital simulator.")

("display" "g_obj [p_port] " "Writes a representation of an object to the given port.")

("displayMode" "t_mode " "Sets the display mode of the current subwindow.")

("do - SKILL++ mode" "(  ( s_var1 g_initExp1 [g_stepExp1] ) ( s_var2 g_initExp2 [g_stepExp2] ) ...) ( g_terminationExp g_terminationExp1 ...) 	g_loopExp1 g_loopExp2 ..." "Iteratively executes one or more expressions. Used in SKILL++ mode only.")

("drain" "[p_outputPort] " "Writes out all characters that are in the output buffer of a port.")

("dtpr" "g_value " "Checks if an object is a non-empty list.")

("dump" "[x_variables] " "Prints the current value of all the local variables on the stack. Note that SKILL++ variables are not displayed by this function. For SKILL++ use where to see the lexical bindings on the stack.")

("ed" "[t_fileName] " "Edits the named file.")

("edi" "[t_fileName] " "Edits the named file, then includes the file into SKILL.")

("edit" "S_object [g_loadFlag] " "Edits a file, function, or variable. This function only works if you are in graphical mode. This is an nlambda function.")

("edl" "[t_fileName] " "Edits the named file, then loads the file into SKILL.")

("encrypt" "t_sourceFile t_destFile [t_password] " "Encrypts a SKILL file and places the output into another file.")

("envobj" "x_id " "Returns the environment object whose print representation has the ID x_id. You can consider x_id to be the address of the environment object.")

("eq" "g_arg1 g_arg2 " "Checks addresses when testing for equality.")

("equal" "g_arg1 g_arg2 " "Checks contents of strings and lists when testing for equality.")

("eqv" "g_obj1 g_obj2 " "Tests for object identity or equality between two numbers of the same type (for example, both numbers are integers). Except for numbers, eqv is like eq.")

("err" "[g_value] " "Causes an error.")

("error" "[S_message1 [S_message2] ...] " "Prints error messages and calls err.")

("errset" "g_expr [g_errprint] " "Encapsulates the execution of an expression in an environment safe from the error mechanism. This is a syntax form.")

("errsetstring" "t_string [g_errprint] [s_langMode]" "Reads and evaluates an expression stored in a string. Same as evalstring except that it calls errset to catch any errors that might occur during the parsing and evaluation.")

("eval" "g_expression [e_environment]	" "Evaluates an argument and returns its value. If an environment argument is given, g_expression is treated as SKILL++ code, and the expression is evaluated in the given (lexical) environment. Otherwise g_expression is treated as SKILL code.")

("evalstring" "t_string [s_langMode]" "Reads and evaluates an expression stored in a string.")

("evenp" "x_num " "Checks if a number is an even integer.")

("exists" "s_formalVar l_valueList g_predicateExpr ) => g_result exists( s_key o_table g_predicateExpr " "Returns the first tail of l_valueList whose car satisfies a predicate expression. Also verifies whether an entry in an association table satisfies a predicate expression. This is a syntax form.")

("exit" "" "Exits SKILL, and therefore the CIW and the Cadence software, whether in interactive or batch mode.")

("exp" "n_number " "Raises e to a given power.")

("expandMacro" "g_form " "Expands one level of macro call for a form.")

("fboundp" "s_functionName " "Returns true (that is, some non-nil value) if the given name has a function binding.")

("fileLength" "S_name " "Determines the number of bytes in a file.")

("fileSeek" "p_port x_offset x_whence " "Sets the position for the next operation to be performed on the file opened on a port. The position is specified in bytes.")

("fileTell" "p_port " "Returns the current offset in bytes for the file opened on a port.")

("fileTimeModified" "t_filename " "Gets the time a given file was last modified.")

("findClass" "s_className " "Returns the class object associated with a symbol. The symbol is the symbolic name of the class object.")

("finishEnterFun" "[g_form] " "Completes an enterfunction if possible. ")

("fix" "n_arg " "Returns the largest integer not larger than the given argument.")

("fixp" "g_value " "Checks if an object is an integer, that is, a fixed number.")

("flip" "o_waveform " "Returns a waveform with the X vector values negated.")

("float" "n_arg " "Converts a number into its equivalent floating-point number.")

("floatp" "g_value " "Checks if an object is a floating-point number. Same as realp.")

("floor" "n_number" "Returns the largest integer not larger than the given argument.")

("for" "s_loopVar x_initialValue x_finalValue g_expr1  [g_expr2 ...] " "Evaluates the sequence g_expr1, g_expr2 ... for each loop variable value, beginning with x_initialValue and ending with x_finalValue. This is a syntax form.")

("forall" "s_formalVar l_valueList g_predicateExpr ) => t/nil forall( s_key o_table g_predicateExpr " "Checks if g_predicateExpr evaluates to non-nil for every element in l_valueList. This is a syntax form.")

("forcenode" "t_netName1 f_value1 - [t_netNameN f_valueN] " "Holds a node at a specified value.")

("foreach" "s_formalVar g_exprList g_expr1 [g_expr2 ...] ) => l_valueList foreach( (s_formalVar1...s_formalVarN) g_exprList1... g_exprListN g_expr1 [g_expr2 ...] ) => l_valueList foreach( s_formalVar g_exprTable g_expr1 [g_expr2 ...]" "Evaluates one or more expressions for each element of a list of values. This is a syntax form.")

("fourEval" "o_waveform n_from n_to n_by " "Evaluates the Fourier series represented by an expression. ")

("fprintf" "p_port t_formatString [ g_arg1 ...] " "Writes formatted output to a port.")

("frequency" "o_waveform " "Computes the reciprocal of the average time between two successive midpoint crossings of the rising waveform.")

("fscanf" "p_inputPort t_formatString [s_var1 ...]  " "Reads input from a port according to format specifications and returns the number of items read in.")

("fscanf, scanf, sscanf" "" "The only difference between these functions is the source of input. fscanf reads input from a port according to format specifications and returns the number of items read in. scanf takes its input from piport implicitly. scanf only works in standalone SKILL when the piport is not the CIW. sscanf reads its input from a string instead of a port.")

("funcall" "slu_func [arg ...] " "Applies the given function to the given arguments.")

("funobj" "x_id " "Returns the function object designated by the given object ID.")

("ga" "o_s11 o_s12 o_s21 o_s22 [ ?gs n_gs] " "Returns the available gain in terms of the supplied parameters and the optional source reflection coefficient (Gs).")

("gac" "o_s11 o_s12 o_s21 o_s22 g_level g_frequency " "Computes the available gain circles.")

("gainBwProd" "o_waveform " "Calculates the gain-bandwidth product of a waveform representing the frequency response of interest over a sufficiently large frequency range.")

("gainMargin" "o_waveform " "Computes the gain margin of the loop gain of an amplifier.")

("gc" "[t_string] " "Forces a garbage collection. This function is also called by the system.")

("gcsummary" "" "Prints a summary of memory allocation and garbage collection statistics in the current SKILL run.")

("gensym" "[S_arg] " "Returns a new symbol based on the input argument.")

("get" "sl_id S_name " "Returns the value of a property in a property list.")

("get_pname" "s_arg " "Returns the print name of a symbol as a string.")

("get_string" "S_arg " "Converts the argument to a string if it is a symbol. Otherwise it returns the string itself.")

("getc" "[ p_inputPort ] " "Reads and returns a single character from an input port. Unlike the C library, the getc and getchar SKILL functions are totally unrelated.")

("getchar" "S_arg x_index " "Returns an indexed character of a string or the print name if the string is a symbol. Unlike the C library, the getc and getchar SKILL functions are totally unrelated.")

("getd" "s_functionName " "Returns the function binding for a function name.")

("getq" "sl_id S_name " "Returns the value of a property in a property list. Same as get except that the second argument is not evaluated. This is a syntax form.")

("getqq" "s_id S_name " "Returns the value of a property in a symbol")

("gets" "s_variableName [p_inputPort] " "Reads a line from the input port and stores the line as a string in the variable. This is a macro.")

("gmax" "o_s11 o_s12 o_s21 o_s22 " "Returns the maximum power gain in terms of the supplied parameters.")

("gmin" "o_Gopt o_Bopt f_zref " "Returns the optimum noise reflection coefficient in terms of o_Gopt, o_Bopt, and f_zref.")

("gmsg" "o_s11 o_s12 o_s21 o_s22 " "Returns the maximum stable power gain in terms of the supplied parameters.")

("gmux" "o_s11 o_s12 o_s21 o_s22 " "Returns the maximum unilateral power gain in terms of the supplied parameters.")

("go" "s_label " "Transfers control to the statement following the label argument. This is a syntax form.")

("gp" "o_s11 o_s12 o_s21 o_s22 [?gl n_gl] " "Computes the power gain in terms of the S-parameters.")

("gpc" "o_s11 o_s12 o_s21 o_s22 g_level g_frequency " "Computes the power gain circles.")

("graphicsOff" "" "Disables the redrawing of the current Waveform window.")

("graphicsOn" "" "Enables the redrawing of the current Waveform window.")

("gt" "o_s11 o_s12 o_s21 o_s22 [ ?gs n_gs] [ ?gl n_gl] " "Returns the transducer gain in terms of the supplied parameters and the optional source reflection coefficient (Gs) and the input reflection coefficient (Gl).")

("hardCopy" "" "Sends a Waveform window plot to a printer.")

("hardCopyOptions" "[?hcNumCopy x_hcNumCopy] [?hcDisplay t_hcDisplay] [?hcOrientation s_hcOrientation] [?hcOutputFile g_hcOutputFile] [?hcPaperSize t_hcPaperSize] [?hcPlotterName t_hcPlotterName] [?hcTmpDir t_hcTmpDir] " "Sets Waveform window hardcopy plotting options.")

("harmonic" "o_waveform h_index " "Returns the waveform for a given harmonic index.")

("harmonicFreqList" "[?resultsDir t_resultsDir] [?result S_resultName]" "Returns a list of lists, with each sublist containing a harmonic index and the minimum and maximum frequency values that the particular harmonic ranges between.")

("harmonicList" "[?resultsDir t_resultsDir] [?result S_resultName] " "Returns the list of harmonic indices available in the resultName or current result data.")

("help" "[S_name] " "Retrieves and prints the cdsFinder documentation strings for the given function name (a symbol). If the given name is a string, it is interpreted as a regular expression, and the entire cdsFinder database is searched for functions whose name or documentation string contains or matches the given string. Help is an nlambda function.")

("hihelpInit" "" "Sets global SKILL variables for the help directory and backup help directory.")

("histogram" "t_monteExprName ?type s_type ?numBins x_numBins ?density b_density " "Plots a histogram of Monte Carlo data.")

("hostMode" "" local)

("hostName" "t_name " "Specifies the name of the remote host.")

("i" "t_component [?resultsDir t_resultsDir][?result s_resultName]" "Returns the current through the specified component.")

("ic" "t_netName1 f_value1 - [t_netNameN f_valueN] " "Sets initial conditions on nets in a transient analysis.")

("if" "g_condition g_thenExpression [g_elseExpression] )  => g_result if( g_condition then g_thenExpr1 ... [else g_elseExpr1 ...] " "Selectively evaluates two groups of one or more expressions. This is a syntax form.")

("iim" "t_component [?resultsDir t_resultsDir][?result s_resultName]" "Aliased to imag(i()). Gets the imaginary part of a complex number representing the AC current through a component.")

("iinteg" "o_waveform " "Computes the indefinite integral of a waveform with respect to the X-axis variable.")

("ilToolBox" "" "Brings up the SKILL Development toolbox.")

("im" "t_component [?resultsDir t_resultsDir][?result s_resultName]" "Aliased to mag(i()). Gets the magnitude of the AC current through a component.")

("imag" "{o_waveform | n_input} " "Returns the imaginary part of a waveform representing a complex number or returns the imaginary part of a complex number.")

("importSkillVar - SKILL++ mode" "s_variable ..." "Tells the compiler that the given variable names should be treated as SKILL global variables in SKILL++ code.")

("inScheme" "g_form " "Evaluates a form as top-level SKILL++ code, disregarding the surrounding evaluation context.")

("inSkill" "g_form " "Evaluates a form as top-level SKILL code, disregarding the surrounding evaluation context.")

("includeFile" "t_fileName " "Includes the specified file in the final netlist of the simulator for the current session.")

("index" "t_string1 S_string2 " "Returns a string consisting of the remainder of string1 beginning with the first occurrence of string2.")

("infile" "S_fileName " "Opens an input port ready to read a file. Always remember to close the port when you are done.")

("inportp" "g_obj " "Checks if an object is an input port.")

("installDebugger" "" "Installs the SKILL debugger as the error handler so that the debugger is entered automatically upon error. Turns on debug mode.")

("instring" "t_string " "Opens a string for reading, just as infile would open a file.")

("intToChar" "x_ascii " "Returns the single-character symbol whose ASCII code is the given integer value.")

("integ" "o_waveform " "Computes the definite integral of the waveform with respect to the X axis.")

("integerp" "g_obj " "Checks if an object is an integer. This function is the same as fixp.")

("ip" "t_component [?resultsDir t_resultsDir][?result s_resultName]" "Aliased to phase(i()). Gets the phase of the AC current through a component.")

("ip3Plot" "o_wave x_sigHarmonic x_refHarmonic x_extrapolationPoint " "Plots the IP3 curves.")

("ipn" "o_spurious o_reference [ f_ordspur f_ordref f_epspur f_epref b_psweep s_measure ] " "Performs an intermodulation nth-order intercept measurement.")

("ipnVRI" "o_vport x_harmspur x_harmref [?iport o_iport] [?rport f_rport] [?ordspur f_ordspur] [?epoint f_epoint] [?psweep b_psweep] [?epref f_epref] [?ordref f_ordref] [?measure s_measure] " "Performs an intermodulation nth-order intercept point measurement.")

("ipnVRICurves" "o_vport x_harmspur x_harmref [?iport o_iport] [?rport f_rport] [?ordspur f_ordspur] [?epoint f_epoint] [?psweep b_psweep] [?epref f_epref] [?ordref f_ordref] " "Constructs the waveforms associated with an ipn measurement.")

("ir" "t_component [?resultsDir t_resultsDir][?result s_resultName]" "Aliased to real(i()). Gets the real part of a complex number representing the AC current through a component.")

("isCallable" "s_function " "Checks if a function is defined or is autoloadable from a context.")

("isContextLoaded" "t_cxt " "Returns t if a context file with the given base name has been loaded into the current session.")

("isDir" "S_name [ tl_path ]" "Checks if a path exists and if it is a directory name.")

("isExecutable" "S_name [ tl_path ]" "Checks if you have permission to execute a file or search a directory.")

("isFile" "S_name [ tl_path ]" "Checks if a file exists and that it is not a directory.")

("isFileEncrypted" "S_name " "Checks if a file exists and is encrypted.")

("isFileName" "S_name [ tl_path ]" "Checks if a file or directory exists.")

("isLink" "S_name [ tl_path ]" "Checks if a path exists and if it is a symbolic link.")

("isMacro" "s_symbolName " "Checks if the given symbol denotes a macro.")

("isReadable" "S_name [ tl_path ]" "Checks if you have permission to read a file or list a directory. Uses the current SKILL path for relative paths.")

("isWritable" "S_name [ tl_path ]" "Checks if you have permission to write to a file or update a directory. Uses the current SKILL path for relative paths.")

("iterVsValue" "t_monteExprName ?outputFormat s_outputFormat" "Prints the value of every scalar measurement for each Monte Carlo iteration.")

("kf" "o_s11 o_s12 o_s21 o_s22 " "Returns the stability factor in terms of the supplied parameters.")

("killJob" "t_jobName [t_jobName2 t_jobName3 - t_jobNameN] " "Stops processing of a job or series of jobs.")

("lambda" "( s_formalArgument ) g_expr1 ..." "Defines a function without a name. This is a syntax form.")

("last" "l_arg " "Returns the last list cell in a list.")

("lconc" "l_tconc l_list " "Uses a tconc structure to efficiently splice a list to the end of another list.")

("length" "lao_arg " "Determines the length of a list, array, or association table.")

("let - SKILL mode" "l_bindings g_expr1 ... " "Provides a faster alternative to prog for binding local variables only. This is a syntax form.")

("let - SKILL++ mode" "[s_var] ( ( s_var1 s_initExp1 )  	( s_var2 s_initExp2 ) ... ) body " "Declares a lexical scope in SKILL++ mode. This includes a collection of local variables, as well as body expressions to be evaluated. This becomes a named let if the optional s_var is given.")

("letrec - SKILL++ mode" "( ( s_var1 s_initExp1 ) ( s_var2 s_initExp2 ) ... ) body" "A letrec expression can be used in SKILL++ mode only. All the bindings are in effect while their initial values are being computed, thus allowing mutually recursive definitions. Use letrec to declare recursive local functions.")

("letseq - SKILL++ mode" "( ( s_var1 initExp1 ) ( s_var2 initExp2 ) ... ) body" "A letseq expression can be used in SKILL++ mode only. The bindings and evaluations are performed sequentially.")

("linRg" "n_from n_to n_by " "Returns a list of numbers in the linear range from n_from to n_to incremented by n_by.")

("lineread" "[ p_inputPort ] " "Parses the next line in the input port into a list that you can further manipulate.It is used by the interpreter")

("linereadstring" "t_string " "Executes lineread on a string and returns the first form read in. Anything after the first form is ignored.")

("list" "[ g_arg1 g_arg2 ...] " "Creates a list with the given elements.")

("listFunctions" "t_pattern " "Returns all public function names that contain the given substring or match the given regular expression.")

("listToVector" "l_list " "Returns a vector (array) filled with the elements from the given list.")

("listVariables" "t_pattern " "Returns all variable names that match the given substring or regular expression as part or all of their print name.")

("listp" "g_value " "Checks if an object is a list.")

("ln" "{o_waveform | n_number} " "Gets the base-e (natural) logarithm of a waveform or number.")

("load" "t_fileName [t_password]" "Opens a file, repeatedly calls lineread to read in the file, immediately evaluating each form after it is read in. Uses the file extension to determine the language mode (.il for SKILL and .ils for SKILL++) for processing the language expressions contained in the file. For a SKILL++ file, the loaded code is always evaluated in the top level environment.")

("loadContext" "t_contextFileName " "Loads a context file into the current session.")

("loadi" "t_fileName [t_password]" "Identical to load, except that loadi ignores errors encountered during the load, prints an error message, and then continues loading.")

("loadstring" "t_string [s_langMode]" "Opens a string for reading, then parses and executes expressions stored in the string, just as load does in loading a file.")

("log" "n_number " "Returns the natural logarithm of a floating-point number or integer.")

("log10" "{o_waveform | n_number} " "Gets the base-10 logarithm of a waveform or a number.")

("logRg" "n_from n_to n_by " "Returns a list of numbers in the log10 range from n_from to n_to advanced by n_by.")

("lowerCase" "S_string " "Returns a string that is a copy of the given argument with uppercase alphabetic characters replaced by their lowercase equivalents.")

("lsb" "o_s11 o_s12 o_s21 o_s22 g_level g_frequency " "Computes the load stability circles.")

("lshift" "o_waveform n_delta " "Shifts the waveform to the left by the delta value.")

("mag" "{o_waveform | n_number} " "Gets the magnitude of a waveform or number.")

("makeInstance" "us_class  	[ ?initArg1 value1 ] 	[ ?initArg2 value2 ] ... " "Creates an instance of a class, which can be given as a symbol or a class object.")

("makeTable" "S_name [g_default_value]" "Creates an empty association table.")

("makeTempFileName" "S_nameTemplate " "Appends a string suffix to the last component of a path template so that the resulting composite string does not duplicate any existing file name.")

("makeVector" "x_size [ g_init_val ] " "Creates an array (vector) with the specified number of elements, and optionally initializes each entry.")

("make_<name>" "... " "Creates an instance of a defstruct specified by <name>.")

("map" "u_func l_arg1 [l_arg2 ...] " "Applies the given function to successive sublists of the argument lists and returns the first argument list. All of the lists should have the same length. This function is not the same as the standard Scheme map function. To get the behavior of the standard Scheme map function, use mapcar instead.")

("mapc" "u_func l_arg1 [l_arg2 ...] " "Applies a function to successive elements of the argument lists and returns the first argument list. All of the lists should have the same length. mapc returns l_arg1.")

("mapcan" "u_func l_arg1 [l_arg2 ...] " "Applies a function to successive elements of the argument lists and returns the result of appending these intermediate results. All of the lists should have the same length.")

("mapcar" "u_func l_arg1 [l_arg2 ...] " "Applies a function to successive elements of the argument lists and returns the list of the corresponding results. All of the lists should have the same length.")

("maplist" "u_func l_arg1 [l_arg2 ...] " "Applies a function to successive sublists of the argument lists and returns a list of the corresponding results. All of the lists should have the same length.")

("max" "n_num1 n_num2 [n_num3 ...] " "Returns the maximum of the values passed in. Requires a minimum of two arguments.")

("measureTime" "g_expression ..." "Measures the time needed to evaluate an expression and returns a list of four numbers. This is a syntax form.")

("member, memq, memv" "" "Returns the largest sublist of l_list whose first element is g_obj. For comparison, member uses the equal function, memq uses the eq function and memv uses eqv.")

("min" "n_num1 n_num2 [n_num3 ...] " "Returns the minimum of the value passed in. Requires a minimum of two arguments")

("minusp" "n_num " "Checks if a value is a negative number. Same as negativep.")

("modelFile" "[g_modelFile1 [g_modelFile2 -]] " "Specifies model files to be included in the simulator input file.")

("monitor" "[?taskMode s_taskMode] " "Monitors the jobs submitted to the distributed system.")

("monteCarlo" "[?numIters x_numIters] [?startIter x_startIter] [?analysisVariation s_analysisVariation] [?sweptParam t_sweptParam] [?sweptParamVals l_sweptParamVals] [?saveData saveData] [?append b_append] " "Sets up a Monte Carlo analysis.")

("monteCorrelate" "f_correlationValue {t_param1 - t_paramN | t_deviceName1 - t_deviceNameN} " "Specifies a correlation coefficient for a list of process parameters or a list of devices specified in individual subcircuits.")

("monteDisplay" "" "Displays the currently defined Monte Carlo analysis, including all expressions that are defined.")

("monteExpr" "t_monteExprName s_expression " "Sets up the Monte Carlo scalar expressions that are used to create the histogram file.")

("monteOutputs" "" "Returns the names of the monteExpr expressions, concatenating the monteExprName set in the monteExpr command with the value of the swept variable.")

("monteResults" "?dataFileName t_scalarDataFile ?paramFileName t_parameterFile" "Initializes the Monte Carlo data analysis tools.")

("monteRun" "[?jobName t_jobName] [?host t_hostName] [?tasks x_tasks] [?queue t_queueName] [?startTime t_startTime] [?termTime t_termTime] [?dependentOn t_dependentOn] [?mail t_mailingList] [?block s_block] [?notify s_notifyFlag] " "Runs a Monte Carlo analysis previously set up with the monteCarlo and monteExpr commands.")

("monteSelectResults" "?mcdataFileName t_mcdataFileName ?paramFileName  t_paramFileName " "Selects the specified mcdata file, which is the file that contains the scalar data.")

("mprocedure" "s_macroName( s_formalArgument ) g_expr1 ..." "Defines a macro with the given name that takes a single formal argument. This is a syntax form.")

("nc" "o_NFmin o_Gmin o_RN g_level g_frequency " "Computes the noise circles.")

("nconc" "l_arg1 l_arg2 [l_arg3 ...] " "Equivalent to a destructive append where the first argument is actually modified.")

("ncons" "g_element " "Builds a list containing an element. Equivalent to cons( g_element nil ).")

("needNCells" "" "Ensures that there is enough memory available for the specified number of SKILL objects (cells).")

("newWindow" "" "Creates a new Waveform window and returns the window ID.")

("newline" "[p_outputPort] " "Prints a newline (backslash n) character and then flushes the output port.")

("next" "[x_steps] " "Allows execution to proceed until the next expression. This function only works if executed from within a break handler and if the code you want to step through was loaded under debugMode. See installDebugger.")

("nextMethodp" "" "Checks if there is a next applicable method for the current method")

("nlDisplayOption" "o_netlister " "Prints the option names available on this object along with their values.")

("nlError" "o_netlister t_error " "Issues a user error. The error is printed immediately and it is collected on the object. In this way, if netlisting is interrupted, the user is aware of any errors that occurred during netlisting. All errors are printed to the netlist log file.")

("nlGetDesign" "o_netlister " "Returns the design object.")

("nlGetFormatter" "o_instance " "Returns the formatter.")

("nlGetGlobalNets" "o_netlister " "Returns the list of global nets. This method should only be used in the nlPrintHeader method of the formatter.")

("nlGetId" "o_cellView " "Returns the cdba database ID of the cellview.")

("nlGetModelName" "o_instance " "This method must be used to obtain the model name of an instance. Use of this method assures consistency in netlisting across interfaces. For instances that represent subcircuits, this method returns a name chosen by the netlister, using the modulePrefix netlist option.")

("nlGetNetlistDir" "o_netlister " "Returns the netlist directory.")

("nlGetNetlister" "o_instance " "Returns the netlister.")

("nlGetNumberOfBits" "o_instance t_terminal " "Returns the number of bits on the instance and terminal specified.")

("nlGetOption" "o_netlister s_name " "Returns the value of the option.")

("nlGetOptionNameList" "o_netlister " "Returns the list of option names available on this object.")

("nlGetParamList" "o_cellView " "Returns the list of parameters for this cellview.")

("nlGetParamStringValue" "o_inst s_parameter " "Returns a string representing the parameter value for the instance and parameter name.")

("nlGetSignalList" "o_instance " "Returns the list of mapped signal names for the instance according to the terminal order specified for the cellview. Use this method for printing instances to the netlist by the nlPrintInst method of the formatter. The terminal order for schematic subcircuits is determined by the pin order property on the schematic, or by the termOrder property on the CDF, or by the system, in that order.")

("nlGetSimName" "o_cellView " "Returns the simulator name of the subcircuit.")

("nlGetSwitchViewList" "o_cellView " "Returns the switch view list for the cellView.")

("nlGetTerminalList" "o_instance " "Returns the list of terminal names in the order specified on the pin order property on the schematic, or on the termOrder property on the CDF, or on the cellview of the instance, in that order. This method should not be used by the formatter. In contrast to nlGetSignalList, buses are not handled individually: a terminal such as out<0:3> is represented in its original form.")

("nlGetTerminalNets" "o_cellView " "Returns the schematic names of the signals connected to the terminals. Many of the signals may come from inherited connections.")

("nlGetTerminalSignalName" "o_instance t_terminal [x_bit] " "Returns the name of the signal connected to the terminal.")

("nlGetToolName" "o_formatter " "Returns a symbol representing the simulator. It returns the value of the tool name. This name is used for the selection of the simulator information on the library component.")

("nlGetTopCellName" "o_design " "Returns the cell name of the design.")

("nlGetTopLibName" "o_design " "Returns the library name of the design.")

("nlGetTopViewName" "o_design " "Returns the view name of the design.")

("nlInfo" "o_netlister t_info [ g_arg ... ]" "Sends an informational message to the calling application.")

("nlInitialize" "o_formatter " "For the nlFormatter class, this method initializes the netlister. This method can be redefined for the simulator-specific netlister and is called by nlCreateFormatter. This method initializes all simulator-specific aspects of netlisting such as name mapping. For the nlAnalogFormatter class, this method sets a number of netlist options. These options and their values are shown in the table below. To inspect the value of an option, use nlGetOption. For a description of all netlist options see ")

("nlMapGlobalNet" "o_netlister t_net " "Maps a global net (signal) to the simulator name. This should only be used in the nlPrintHeader method of the formatter. Use at any other time is an error.")

("nlObjError" "o_netlister o_object t_error " "Similar to nlError, but prints a description of the object along with the error message. The description includes the library name, the cell name, the view name, and the instance name in case the object is an instance.")

("nlPrintComment" "o_netlister [t_arg1 t_arg2 ...] " "Prints a comment. Use this method to print all comments. This method uses the comment character and line wrapping. A subsequent nlPrintf call inserts the end comment string.")

("nlPrintComments" "o_instance " "Prints the comments for the instance being netlisted.")

("nlPrintFooter" "o_formatter " "This method is called at the end of netlisting.")

("nlPrintHeader" "o_formatter " "This method:")

("nlPrintHeaderComments" "o_formatter " "Prints the comments for the netlist file, including the library, cell, and view names of the top-level cellview of the design netlisted. This method only has effect when the printFileComments netlist option is set.")

("nlPrintIndentString" "o_netlister " "Prints the indent string for the instance statement. When inside the top-level circuit, the empty string is printed. When inside subcircuit definitions, the value of the subcktIndentString netlist option is printed.")

("nlPrintInst" "o_formatter o_instance " "Prints the netlist statement for the instance. This is the default netlist procedure for the component. It does the following:")

("nlPrintInstComments" "o_formatter o_instance " "Prints the comments for an instance.")

("nlPrintInstEnd" "o_formatter o_instance " "Prints the end of the instance statement, which is a return (\n). This method is called by the netlister after the netlist procedure or by nlPrintInst.")

("nlPrintInstName" "o_formatter o_instance " "Prints the simulator name of the instance, taking the instance name prefix specified on the component into account when the simulator so requires. This is determined with the useInstPrefix netlist option.")

("nlPrintInstParameters" "o_formatter o_instance " "Prints the instance parameters in name=value pairs.")

("nlPrintInstSignals" "o_formatter o_instance " "Prints the simulator names of the signals according to the terminal order specified on the component, using the nlGetSignalList method of the instance.")

("nlPrintModelName" "o_formatter o_instance " "Prints the model name. The nlGetModelName for the instance is used for the model name.")

("nlPrintSubcktBegin" "o_formatter o_cellView " "Prints the .subckt keyword for the nlAnalogFormatter class. This method is called by nlSubcktHeader.")

("nlPrintSubcktEnd" "o_formatter o_cellView " "For the nlAnalogFormatter class, prints the .ends keyword, followed by a space and the simulator name of the subcircuit, to mark the end of the subcircuit definition. It is called by nlPrintSubcktFooter.")

("nlPrintSubcktFooter" "o_formatter o_cellView " "Writes the footer for the subcircuit. For the nlAnalogFormatter class, it prints .ends.")

("nlPrintSubcktFooterComments" "o_formatter o_cellView " "Prints the comments for the subcircuit footer by printing the string ")

("nlPrintSubcktHeader" "" "Writes the header of a subcircuit following these steps:")

("nlPrintSubcktHeaderComments" "o_formatter o_cellView " "Prints the comments for the subcircuit header and the mapping information when the printSubcktComments option is set.")

("nlPrintSubcktName" "o_formatter o_cellView " "Prints a space and the simulator name of the subcircuit. This method is used by nlSubcktHeader.")

("nlPrintSubcktParameters" "o_formatter o_cellView " "Prints the passed parameters for the subcircuit definition.")

("nlPrintSubcktTerminalList" "o_formatter o_cellView " "Prints the simulator names of the signals connected to the terminals for a subcircuit definition and handles the signals resulting from inherited connections at a lower level .")

("nlPrintTopCellFooter" "o_formatter o_cellView " "Writes the top cellview footer. This function prints an empty line and calls nlPrintTopCellFooterComments.")

("nlPrintTopCellFooterComments" "o_formatter o_cellView " "Returns t at the analogFormatter level.")

("nlPrintTopCellHeader" "o_formatter o_cellView " "Prints the header of the top-level circuit by calling nlPrintTopCellHeaderComments.")

("nlPrintTopCellHeaderComments" "o_formatter o_cellView " "Calls nlPrintSubcktHeaderComments for the nlAnalogFormatter class.")

("nlSetOption" "o_netlister s_option g_value " "Sets an option value. For information about options, see ")

("nlWarning" "o_netlister t_warning [ g_arg ... ] " "Issue a warning to the user.")

("nodeset" "t_netName1 f_value1 - [t_netNameN f_valueN]" "Sets the initial estimate for nets in a DC analysis, or sets the initial condition calculation for a transient analysis.")

("noise" "t_output t_source " "Specifies a noise analysis.")

("noiseSummary" "s_type [?resultsDir t_resultsDir][?result S_resultName] [?frequency f_frequency] [?weight f_weight] [?output t_fileName | p_port] [?noiseUnit t_noiseUnit] [?truncateData x_truncateData][?truncateType s_truncateType] [?digits x_digits] [?percentDecimals x_percentDecimals] [?from f_from] [?to f_to] [?deviceType ls_deviceType]" "Prints a report showing the noise contribution of each component in a circuit.")

("ocnDisplay" "[?output t_filename | p_port] s_command [g_commandArg1] [g_commandArg2] - " "Displays all the information specified.")

("ocnHelp" "[?output t_filename | p_port][s_command] " "Provides online help for the specified command.")

("ocnPrint" "[?output t_filename | p_port] [?precision x_precision] [?numberNotation s_numberNotation] [?numSpaces x_numSpaces] [?width x_width] o_waveform1 [o_waveform2 ...] " "Prints the text data of the waveforms specified in the list of waveforms.")

("off" "s_command [g_commandArg1] [g_commandArg2] - " "Turns off the specified information.")

("openMIFin" "t_fileName " "Opens a MIF file for input.")

("openMIFout" "t_fileName " "Opens a MIF file for output.")

("openResults" "s_jobName | t_dirName " "Opens simulation results stored in PSF files or opens the results from a specified job, depending on which parameter is called.")

("optimizeAlgoControl" "?relDelta x_relDelta ?relFunTol  x_relFunTol ?relVarTol x_relVarTol " "Changes the internal algorithm controls.")

("optimizeGoal" "t_name t_expr s_direction x_target x_acceptable [?percent b_percent] " "Sets up the goals for optimization.")

("optimizePlotOption" "?auto b_auto ?varHist b_varHist ?scalHist b_scalHist ?funcObjHist b_funcObjHist ?numIter x_numIter ?fontSize x_fontSize ?width x_width ?height x_height ?xloc xloc ?yloc yloc " "Sets the plot options used to view the optimization iterations.")

("optimizeRun" "?goals l_goalNames ?vars l_varNames ?numIter  x_numIter  ?algo s_algoName ?continue b_continue" "Runs the optimizer using the goals specified with the optimizeGoal command.")

("optimizeVar" "t_name x_initVal x_minVal x_maxVal " "Specifies the design variables to be used with optimization.")

("option" "[?categ s_categ] s_option1 g_value1 [s_option2 g_value2]  - " "Specifies the values for built-in simulator options. You can specify values for as many options as you want.")

("outfile" "S_fileName [t_mode] " "Opens an output port ready to write to a file.")

("outputParams" "t_compType " "Returns the list of output parameters for the specified component.")

("outputs" "[?result S_resultName] " "Returns the names of the outputs whose results are stored for an analysis previously specified with selectResult. You can plot these outputs or use them in calculations.")

("overshoot" "o_waveform n_initVal g_initType n_finalVal g_finalType " "Computes the percentage by which an expression overshoots a step going from the initial value to the final value you enter.")

("paramAnalysis" "t_desVar [?start n_start] [?stop n_stop] [?center n_center] [?span n_span] [?step f_step] [?lin n_lin] [?log n_log]  [?dec n_dec] [?oct n_oct] [?times n_times] [?spanPercent n_spanPercent] [?values l_values] [o_paramAnalysis]" "Sets up a parametric analysis.")

("paramRun" "[s_paramAnalysis] " "Runs the specified parametric analysis.")

("path" "t_dirName1 - [t_dirNameN]" "Sets the search path for included files.")

("peakToPeak" "o_waveform " "Returns the difference between the maximum and minimum values of a waveform.")

("phase" "{o_waveform | n_number} " "Gets the phase of the waveform or number.")

("phaseDeg" "{o_waveform | n_number} " "Calculates the wrapped phase in degrees of a waveform and returns a waveform.")

("phaseDegUnwrapped" "{o_waveform | n_number} " "Calculates the unwrapped phase in degrees of a waveform and returns a waveform.")

("phaseMargin" "o_waveform " "Computes the phase margin of the loop gain of an amplifier.")

("phaseNoise" "g_harmonic S_signalResultName [?result S_noiseResultName] [?resultsDir t_resultsDir] " "Returns the phase noise waveform from the selected result data.")

("phaseRad" "{o_waveform | n_number} " "Calculates the wrapped (discontinuous) phase in radians of a waveform.")

("phaseRadUnwrapped" "o_waveform " "Calculates the unwrapped (continuous) phase in radians of a waveform and returns a waveform.")

("plot" "o_waveform1 [o_waveform2 ...] [?yNumber l_yNumberList] [?expr l_exprList] " "Plots waveforms in the current subwindow. If there is no Waveform window, this command opens one.")

("plotStyle" "S_style " "Sets the plotting style for all the waveforms in the current subwindow.")

("pow" "{o_waveformBase | n_numberBas} {o_waveformExpn | n_numberExpn} " "Takes the exponent of a given waveform or number.")

("pp" "s_functionName [p_outputPort] " "Pretty prints the definition of a function. The function must not be read-protected. This is an nlambda function.")

("prependPath" "t_dirName1 - [t_dirNameN]" "Adds a new path to the beginning of the search path list. You can add as many paths as you want with this command.")

("printf" "t_formatString [g_arg1 ...] " "Writes formatted output to poport, which is the standard output port.")

("println" "g_value [p_outputPort] " "Prints a SKILL object using the default format for the data type of the value, and then prints a newline character.")

("printstruct" "g_object " "Prints the contents of an association table or defstruct in a tabular format.")

("profile" "s_profileField " "Turns on global SKILL profiling for measuring time or memory.")

("profileReset" "" "Resets all SKILL profiler data.")

("profileSummary" "[?file t_filename]  [?sort s_sortKey]  [?filters g_filterSpec]  [?maxFns x_maxDisplayed] [?minSecs f_minSecs]  [?minBytes x_minBytes] [?children g_showChildren]" "Prints a summary of profiling results, showing either the execution time or memory allocated to SKILL functions that were executed.")

("psd" "o_waveform f_timeStart f_timeEnd x_num ?windowName t_windowName ?smooth x_smooth ?cohGain f_cohGain ?windowsize x_windowsize ?detrending t_detrending" "Returns an estimate for the power spectral density of o_waveform. If x_windowsize is not a power of 2, it is forced to the next higher power of 2. If x_num is less than x_windowsize, x_num is forced to x_windowsize.")

("psdbb" "o_waveform1 o_waveform2 f_timeStart f_timeEnd x_num ?windowName t_windowName ?smooth x_smooth ?cohGain f_cohGain ?windowsize x_windowsize ?detrending t_detrending" "Returns an estimate for the power spectral density of o_waveform1+j*o_waveform2. If x_windowsize is not a power of 2, it is forced to the next higher power of 2. If x_num is less than x_windowsize, x_num is forced to x_windowsize.")

("putMIFFile" "l_groupOfStatements  t_fileName " "Opens a file for output and writes out MIF statements whose SMIFT equivalents are in a given list. ")

("pv" "t_name t_param [?resultsDir t_resultsDir][?result S_resultName]" "Returns the value for the specified component parameter. You can use the outputParams command to get the list of parameters for a particular component.")

("random" "[x_number] " "Returns a random integer between 0 and x_number minus 1.")

("readMIF" "" "Reads the next MIF statement from an open MIF file. ")

("real" "{o_waveform | n_input} " "Returns the real part of a waveform representing a complex number, or returns the real part of a complex number.")

("remoteDir" "t_path " "Specifies the project directory on the remote host to be used for remote simulation.")

("removeLabel" "l_id " "Removes the label, or all the labels identified in a list, from the current subwindow.")

("report" "[?output t_filename | p_port] [?type t_type] [?name t_name] [?param t_param] [?format s_reportStyle] " "Prints a report of the information contained in an analysis previously specified with selectResult.")

("residual" "x_scalarExpression ?upper x_upperValue ?target x_targetValue ?lower x_lowerValue" "Creates a residual plot of the given scalar expression given the upper and lower performance bounds and target.")

("restore" "s_analysisType t_filename " "Tells the simulator to restore the state previously saved to a file with a store command.")

("resultParam" "S_propertyName [ ?result S_resultName ] [ ?resultsDir t_resultsDir ] " "Returns the value of a header property from the selected result data.")

("results" "" "Returns a list of the type of results that can be selected.")

("resultsDir" "t_dirName " "Specifies the directory where the PSF files (results) are stored.")

("resume" "[g_result] " "Exits the interactive top-level loop started with the most recently invoked toplevel function and returns its argument to the caller of toplevel. Do not use this function programmatically; use it only as an interactive command.")

("resumeJob" "t_jobName [t_jobName2 t_jobName3 - t_jobNameN] " "Resumes the processing of a previously suspended job or series of jobs. The resumeJob command applies only to jobs that are suspended.")

("riseTime" "o_waveform n_initVal g_initType n_finalVal g_finalType n_theta1 n_theta2 " "Returns the rise time measured between theta1 (percent low) to theta2 (percent high) of the difference between the initial value and the final value.")

("rms" "o_waveform " "Returns the root-mean-square value of a waveform.")

("rmsNoise" "n_from n_to " "Computes the integrated root-mean-square noise over the specified bandwidth.")

("root" "o_waveform n_rootVal x_n " "Returns the nth X value at which the Y value equals the specified Y value (rootVal).")

("round" "n_arg " "Rounds a floating-point number to its closest integer value.")

("rshift" "o_waveform n_delta " "Shifts the waveform to the right by the n_delta value.")

("run" "[analysisList] [?jobName t_jobName] [?host t_hostName] [?queue t_queueName] [?startTime t_startTime] [?termTime t_termTime] [?dependentOn t_dependentOn] [?mail t_mailingList] [?block s_block] [?notify s_notifyFlag] ) => s_jobName/nil run( )=>t_dirName/nil run(s_analysisType1 - s_analysisTypeN" "Starts the simulation or specifies a time after which an analysis should start.")

("sample" "o_waveform n_from n_to t_type n_by " "Samples a waveform at the specified interval.")

("save" "[?categ s_categ] s_saveType [t_saveName1] - [t_saveNameN] " "Specifies the outputs to be saved and printed during simulation.")

("saveContext" "t_contextFileName " "Saves the current state of the SKILL language interpreter as a binary file. This function must be used in conjunction with setContext.")

("saveOption" "[s_option1 g_optionValue1]-[s_optionN g_optionValueN]" "Specifies save options to be used by the simulator.")

("scatterPlot" "t_monteExprName_X t_monteExprName_Y ?bestFit b_bestFit " "Plots different statistical measurements against each other so you can determine whether there is a relationship between two parameters.")

("selectProcess" "t_processName" "Selects one of the processes already loaded with a loadPcf or loadDcf command.")

("selectResult" "S_resultsName [n_sweepValue]" "Selects the results from a particular analysis whose data you want to examine.")

("setContext" "t_contextName " "Allows contexts to be saved incrementally, creating micro contexts from a session")

("setPrompts" "s_prompt1 s_prompt2 " "Sets the prompt text string for the CIW. The first prompt is used to indicate the topmost top-level. The second prompt is used whenever a nested top-level is entered.")

("setSlotValue" "g_standardObject s_slotName g_value " "Sets the s_slotName slot of g_standardObject to g_value.")

("settlingTime" "o_waveform n_initVal g_initType n_finalVal g_finalType n_theta " "Computes the time required for a waveform to settle within the specified percent of step (theta) of the difference between the initial value and final value.")

("setup" "[?numberNotation s_numberNotation] [?precision x_precision] [?reportStyle s_reportStyle] [?charsPerLine x_charsPerLine] [?messageOn g_messageOn] " "Specifies default values for parameters.")

("simulator" "s_simulator " "Starts an OCEAN session and sets the simulator name for that session. The previous session (if any) is closed and all session information is cleared.")

("sin" "n_number " "Returns the sine of a floating-point number or integer.")

("sklint" "[?file 	t_inputFileName] [?context 	t_contextName] [?prefixes 	l_prefixList] [?outputFile 	t_outputFileName] [?noPrintLog 	g_noPrintLog] [?ignores 	l_ignoresMessageList] [?checkNlambda 	g_checkNlambda] " "Checks a SKILL file or context and reports potential errors and ways to clean up your code.")

("slewRate" "o_waveform n_initVal g_initType n_finalVal g_finalType n_theta1 n_theta2 " "Computes the average rate at which an expression changes from theta1 (percent low) to theta2 (percent high) of the difference between the initial value and final value.")

("slotValue" "g_standardObject s_slotName " "Returns the value contained in the slot slotName of the given standardObject.")

("sp" "x_iIndex x_jIndex [ ?result S_resultName ] [ ?resultsDir t_resultsDir ] " "Returns S-parameters for N port networks.")

("specLimits" "t_monteExprName ( {?sigma x_sigma  | ?upper x_upper ?lower x_lower} ) " "Sets specification limits for yield analysis and histograms.")

("spectralPower" "o_current o_voltage " "Returns the spectral power given the spectral current and voltage.")

("sqrt" "n_number " "Returns the square root of a floating-point number or integer.")

("srandom" "x_number " "Sets the seed of the random number generator to a given number.")

("ssb" "o_s11 o_s12 o_s21 o_s22 g_level g_frequency " "Computes the source stability circles.")

("stacktrace" "[g_unevaluated] [x_depth] [x_skip] [p_port] " "Prints the functions on the stack and their arguments to the depth specified, or to the bottom of the stack.")

("step" "[x_steps] " "Steps into functions and executes a given number of SKILL functions. This function only works if executed from within a break handler and if the code you want to step through was loaded under debugMode. See installDebugger.")

("stepend" "[x_stepN] " "Allows execution to proceed to the end of the nth enclosing form and displays its result. stepend cannot proceed past the end of the current function. This function only works if executed from within a break handler and if the code you want to step through was loaded under debugMode. See installDebugger.")

("stepout" "[x_steps] " "Allows execution to proceed until the evaluator returns from the current function.")

("stimulusFile" "t_fileName [t_fileName2 - t_fileNameN ] [?xlate b_xlate] " "Specifies stimulus files to be used by the simulator.")

("store" "s_analysisType t_filename " "Requests that the simulator store its node voltages to a file.")

("sub1" "n_number " "Subtracts 1 from a floating-point number or integer.")

("subclassp" "u_classObject1 u_classObject2 " "Predicate function that checks if classObject1 is a subclass of classObject2.")

("superclassesOf" "u_classObject " "Returns the ordered list of all super classes of u_classObject. Each element in the list is a class object.")

("suspendJob" "t_jobName [t_jobName2 t_jobName3 - t_jobNameN] " "Suspends the processing of a job or series of jobs. The suspendJob command applies only to jobs that are pending or running.")

("sweepNames" "[o_waveForm] " "Returns the names of all the sweep variables in the PSF file previously specified with selectResult. This command is particularly useful for parametric analyses.")

("sweepValues" "[o_waveForm] " "Returns the list of sweep values of the outermost sweep variable of either the selected results or the supplied waveform. This command is particularly useful for parametric analyses.")

("tan" "n_number " "Returns the tangent of a floating-point number or integer.")

("tangent" "o_waveform [ ?x n_x ] [ ?y n_y ] [ ?slope n_slope ] " "Returns the tangent to a waveform through the point (n_x, n_y) with the given slope.")

("temp" "f_tempValue " "Specifies the circuit temperature.")

("thd" "o_waveform n_from n_to x_num " "Computes the absolute value of the total harmonic distortion of the input waveform.")

("toplevel" "[s_langMode] [e_envobj]" "Starts an interactive top-level loop in either SKILL or SKILL++ mode. Valid values for s_langMode: ils, or il. Defaults to il, SKILL mode.")

("tracef" "[ s_function | t_fileName ... | t ]" "Turns on tracing of specified functions. Shows the functions called with their evaluated arguments and return values. This is an nlambda function.")

("tracep" "[s_property...|t] " "Turns on tracing of assignments to specified properties. This is an nlambda function.")

("tracev" "[s_variable ... | t] " "Turns on tracing of assignments to specified variables. This is an nlambda function.")

("tran" "g_fromValue g_toValue g_byValue ) => g_byValue/nil tran( g_toValue" "Specifies a transient analysis with limited options. If other analysis options are needed, use the analysis command.")

("unbreakpt" "[s_function... | t] " "Clears breakpoints. This is an nlambda function.")

("uncount" "[s_function ... | t] " "Turns off counting and returns the current count results. This is an nlambda function.")

("undrawEnterFun" "" "Undraws any rubberbanding shapes. Called when an enterfunction is active. If you enter data in the window, rubberbanding resumes.")

("uninstallDebugger" "" "Uninstalls the SKILL debugger as the error handler. Turns off debug mode.")

("unless" "g_condition g_expr1 - " "Evaluates a condition. If the result is true (non-nil), it returns nil; otherwise it evaluates the body expressions in sequence and returns the value of the last expression.")

("unprofile" "" "Turns off SKILL profiling.")

("untrace" "[s_function | t_fileName ... | t] " "Turns tracing off for all functions specified that were traced using the tracef function. This is an nlambda function.")

("untracep" "[S_property...|t] " "Turns off tracing of the specified properties. This is an nlambda function.")

("untracev" "[s_variable ... | t] " "Turns off tracing for assignments to specified variables. This is an nlambda function.")

("v" "t_net [?resultsDir t_resultsDir][?result S_resultName]" "Returns the voltage of the specified net.")

("value" "o_waveform [s_name] g_value " "Returns the Y value of a waveform for a given X value.")

("vdb" "t_net [?resultsDir t_resultsDir][?result s_resultname]" "Aliased to db20(v()). Gets the power gain in decibels from net in to net out.")

("vhdlImport" "t_libName l_srcFiles t_logName l_params @optional y_runInBackground y_displayResults" "Runs vhdlin to import a list of VHDL source files into the specified library with the given parameters. The parameters are the names of the vhdlin parameters, passed in as a disembodied property list. Optionally, can run vhdlin as a background process and/or display the results interactively.")

("vhdlPinListToVHDL" "t_libName t_cellName t_viewName l_pinList" "Allows the generation of VHDL views from an intermediate pin list format.")

("vhdlRegisterSimulator" "ParserCallBack AnalyzerCallBack AnalyzerFileExt ElaboratorCallBack SimulatorCallBack DataDirCallBack DataFileCallBack WorkLibCallBack" "To use non-Cadence VHDL tools, you need to define your own SKILL procedures and register this information with the toolbox using this SKILL routine. For more details, please refer Appendix C of Virtuoso Schematic Composer VHDL Interface User Guide in OpenBook")

("vhdlToPinList" "t_libName t_cellName t_viewName" "Translates a VHDL cellView into an intermediate pin list format.")

("view" "t_file [g_boxSpec] [g_title] [g_autoUpdate] [l_iconPosition] " "Creates a viewfile window, inserts the banner menu, sets the window and icon names, and displays the specified file in the window. View is a wrapper function.")

("vim" "t_net [?resultsDir t_resultsDir][?result s_resultname]" "Aliased to imag(v()). Gets the imaginary part of a complex number representing the voltage of a net.")

("vm" "t_net [?resultsDir t_resultsDir][?result s_resultname]" "Aliased to mag(v()). Gets the magnitude of the voltage of a net.")

("vp" "t_net [?resultsDir t_resultsDir][?result s_resultname]" "Aliased to phase(v()). Gets the phase of the voltage of a net.")

("vr" "t_net [?resultsDir t_resultsDir][?result s_resultname]" "Aliased to real(v()). Gets the real part of a complex number representing the voltage of a net.")

("vswr" "x_index [ ?result S_resultName ] [ ?resultsDir t_resultsDir ] " "Computes the voltage standing wave ratio.")

("wait" "jobName [jobName2 jobName3 - jobNameN] " "Postpones processing of a script until the specified jobs complete. This command is ignored if distributed processing is not available.")

("when" "g_condition g_expr1 - " "Evaluates a condition.")

("where" "[g_unevaluated] [x_depth] [x_skip] [p_port] " "Prints the functions on the stack and their arguments to the depth specified, or to the bottom of the stack, including the local variables and their bindings.")

("whereIs" "s_function" "Prints the last file loaded in debug mode in which a function was defined, as well as the starting line number.")

("while" "g_condition g_expr1 - " "Repeatedly evaluates g_condition and the sequence of expressions  g_expr1 - if the condition is true.")

("window" "w_windowNumber  " "Retrieves the window identity of a window number. ")

("windowp" "g_object  " "Checks whether the specified object is a valid, opened window.")

("xLimit" "l_minMax " "Sets the X axis display limits for the current subwindow. This command does not take effect if the display mode is set to smith.")

("xmax" "o_waveform x_numberOfPeaks " "Computes the value of the independent variable (X) at which the Y value attains its maximum value.")

("xmin" "o_waveform x_numberOfValleys " "Computes the value of the independent variable (X) at which the Y value attains its minimum value.")

("xval" "o_waveform " "Returns a waveform whose X vector and Y vector are equal to the input waveform")

("yLimit" "l_minMax [?yNumber x_yNumber] [?stripNumber x_stripNumber]" "Sets the Y axis display limits for the waveforms associated with a particular Y axis and strip in the current subwindow.")

("yield" "s_type l_monteExprName ?given l_monteExprName ?suppress x_suppress " "Prints simple, conditional, or multiconditional yield statistics for the Monte Carlo data set.")

("ymax" "o_waveform " "Computes the maximum value of the waveform")

("ymin" "o_waveform " "Computes the minimum value of a waveform")

("zm" "x_index [ ?result S_resultName ] [ ?resultsDir t_resultsDir ] " "Computes the port input impedance.")

("zref" "x_portIndex [ ?result S_resultName ] [ ?resultsDir t_resultsDir ] " "Returns the reference impedance for an N-port network.")

))
