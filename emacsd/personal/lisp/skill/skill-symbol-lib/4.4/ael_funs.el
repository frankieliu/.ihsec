(put 'ael_funs 'symbol-type "	Analog Expression Language")
(setq ael_funs '(
("aelEngNotation" "g_value x_prec" "Reformats a given number into engineering notation.")

("aelEnvCompile" "g_env t_expr" "Compiles a given expression according to the evaluation mode set with aelEnvCreate and the state of globals for the given environment.")

("aelEnvCreate" "t_evalMode b_distinguishIntsFromDbls b_keepWhitespace" "Creates and initializes an AEL environment.")

("aelEnvDestroy" "" "In the 4.4 version or in later versions, the function aelEnvDestroy ( ) is no longer needed. Instead of using the aelEnvDestroy (env) function, you should use the env = nil expression to destroy the given environment.")

("aelEnvExecute" "x_compExpr" "Executes the previously compiled AEL expression with the current global values of the environment in which it was compiled.")

("aelEnvFreeCompExpr" "x_compExpr" "Frees the dynamically allocated memory used to store the compiled AEL expression.")

("aelEnvGetErrStr" "" "Converts the error code currently stored in the all-AEL-wide error flag into an appropriate message.")

("aelEnvGetGlobal" "x_env t_name" "Returns the current value of the named global, previously defined or deferred, in the given environment.")

("aelEnvInterpret" "x_env t_expr t_mode" "Compiles and executes the specified expression in a single step.")

("aelEnvListDeferredFuncs" "x_env" "Returns a list of all functions found in the compiled or interpreted expressions in the given environment that are undefined in AEL.")

("aelEnvListDeferredGlobals" "x_env" "Returns a list of all globals found in the compiled or interpreted expressions in the given environment that have not been defined in a call to the aelEnvSetGlobals function.")

("aelEnvListExprFuncs" "t_expr" "Returns a list of all the functions found in the given expression.")

("aelEnvListExprGlobals" "t_expr" "Returns a list of all the globals found in a given expression.")

("aelEnvListFuncs" "" "Returns a list of all the functions defined for all AEL environments.")

("aelEnvListGlobals" "x_env" "Returns a list of all the globals in a given AEL environment. The list does not include AEL predefined constant globals or deferred globals.")

("aelEnvListGlobalsValues" "x_env" "Returns a list of all global names and their values in a given AEL environment. The list does not include AEL predefined constant globals or deferred globals.")

("aelEnvName" "t_name" "Accepts text or a symbol and returns a legal AEL name stripped of any leading or trailing white space that might have been in the argument.")

("aelEnvSetGlobalList" "x_env l_dpl" "Using a disembodied property list as input sets the values of the named globals in a given environment.")

("aelEnvSetGlobals" "x_env t_name g_val" "Sets the values of the named globals in a given environment, creating them if necessary.")

("aelGetSignifDigits" "" "Returns the current number of significant digits used by the aelEngNotation function.")

("aelNumber" "g_value" "Takes an integer, a double, a complex, or a strnum (including complex strnums) and returns a double or a complex.")

("aelPopSignifDigits" "" "Discards (pops) the top value of the stack built by the aelPushSignifDigits function and returns a new top value.")

("aelPushSignifDigits" "x_digs" "Places (pushes) a given value onto the stack of values for the number of significant digits the aelEngNotation function uses to create engineering notation strnums.")

("aelSetLineage" "x_env g_lineage" "The aelSetLineage function sets reference to a lineage for hierarchical expression evaluation. The lineage can either be a list or an aelLineage (SKILL user-defined) object. In either case, an aelLineage object is returned. The list is an ordered list of cell views whose car is the current instance, whose cadr is its parent, and so on. The last element of this list should be the top cell view.")

("aelSignum" "g_val" "Analyzes an integer, a double, or a strnum (not including complex strnums) and returns -1 if the value is negative, 0 if it is zero, or 1 if it is positive.")

("aelStrDblNotation" "g_value x_prec" "Calls the aelEngNotation function and, if the result is an integer, appends a decimal point and zero (.0).")

("aelSuffixNotation" "g_value x_prec" "Calls the aelEngNotation function and replaces the e and exponent (if any) with the appropriate AEL suffix character. If the value is too small or too large for the AEL set of suffixes, the e and exponent are unchanged.")

("aelSuffixWithUnits" "g_value t_units x_prec" "Used to display values on forms.")

))
