(put 'asi_funs 'symbol-type "Analog Simulation")
(setq asi_funs '(
("asiAddAnalysis" "o_tool ?name		s_analysisName [?prompt		t_prompt] [?fieldList		l_analysisFields] [?optionList		l_analysisOptions] [?formType		s_formType] [?enable		s_enable] " "Adds a new analysis.")

("asiAddAnalysisField" "o_analysis ?name			s_fieldName [?prompt			t_prompt] [?type			s_type] [?choices			l_choices] [?itemsPerRow			x_itemsPerRow] [?value			g_value] [?min			g_min] [?max			g_max] [?allowExpr			s_allowExpr] [?row			x_row] [?column			x_column] [?width			x_width] [?coordinates			l_coordinates] [?displayOrder			x_displayOrder] [?labelText			t_labelText] [?private			s_private] [?display			s_display] [?editable			s_editable] [?appCB			s_appCB] [?callback			t_callback] [?formApplyCB			s_formApplyCB] [?changeCB			st_changeCB] [?doubleClickCB			st_doubleClickCB] [?numRows			x_numRows] [?multipleSelect			s_multipleSelect] [?invalidateFunc			s_invalidateFunc] " "Adds an analysis field to an existing analysis.")

("asiAddAnalysisOption" "o_analysis ?name			s_optionName [?prompt			t_prompt] [?type			s_type] [?choices			l_choices] [?itemsPerRow			x_itemsPerRow] [?value			g_value] [?min			g_min] [?max			g_max] [?allowExpr			s_allowExpr] [?row			x_row] [?column			x_column] [?width			x_width] [?coordinates			l_coordinates] [?displayOrder			x_displayOrder] [?labelText			t_labelText] [?private			s_private] [?display			s_display] [?editable			s_editable] [?appCB			s_appCB] [?callback			t_callback] [?formApplyCB			s_formApplyCB] [?changeCB			st_changeCB] [?doubleClickCB			st_doubleClickCB] [?numRows			x_numRows] [?multipleSelect			s_multipleSelect] [?invalidateFunc			s_invalidateFunc] [?sendMethod			s_sendMethod] " "Adds an option to an existing analysis.")

("asiAddEnvOption" "" "Adds a new simulation environment option.")

("asiAddFlowchartLink" "o_flowchart s_parentStep s_childStep " "Creates a new link between the specified parent and child steps, which were created with asiAddFlowchartStep.")

("asiAddFlowchartStep" "o_flowchart ?name		s_name [?description		t_description] [?runMessage		t_runMessage] [?function		s_function] [?checkFunc		s_checkFunc] [?preFunc		s_preFunc] [?postFunc		s_postFunc] " "Adds a new step to an existing flowchart. ")

("asiAddKeepOption" "o_tool ?name			s_name [?prompt			t_prompt] [?type			s_type] [?choices			l_choices] [?itemsPerRow			x_itemsPerRow] [?value			g_value] [?min			g_min] [?max			g_max] [?allowExpr			s_allowExpr] [?row			x_row] [?column			x_column] [?width			x_width] [?coordinates			l_coordinates] [?displayOrder			x_displayOrder] [?labelText			t_labelText] [?private			s_private] [?display			s_display] [?editable			s_editable] [?appCB			s_appCB] [?callback			t_callback] [?formApplyCB			s_formApplyCB] [?changeCB			st_changeCB] [?doubleClickCB			st_doubleClickCB] [?numRows			x_numRows] [?multipleSelect			s_multipleSelect] [?invalidateFunc			s_invalidateFunc] " "Adds a simulator keep option variable.")

("asiAddSimOption" "o_tool ?name			s_name [?prompt			t_prompt] [?type			s_type] [?choices			l_choices] [?itemsPerRow			x_itemsPerRow] [?value			g_value] [?min			g_min] [?max			g_max] [?allowExpr			s_allowExpr] [?row			x_row] [?column			x_column] [?width			x_width] [?coordinates			l_coordinates] [?displayOrder			x_displayOrder] [?labelText			t_labelText] [?private			s_private] [?display			s_display] [?editable			s_editable] [?appCB			s_appCB] [?callback			t_callback] [?formApplyCB			s_formApplyCB] [?changeCB			st_changeCB] [?doubleClickCB			st_doubleClickCB] [?numRows			x_numRows] [?multipleSelect			s_multipleSelect] [?invalidateFunc			s_invalidateFunc] [?genericName			s_genericName] [?sendMethod			s_sendMethod] " "Adds a new simulator option.")

("asiChangeAnalysis" "o_tool ?name	s_analysisName [?prompt	t_prompt] [?fieldList	l_analysisFields] [?optionList	l_analysisOptions] [?formType	s_formType] " "Changes an existing analysis.")

("asiChangeAnalysisField" "o_analysis ?name			s_fieldName [?prompt			t_prompt] [?type			s_type] [?choices			l_choices] [?itemsPerRow			x_itemsPerRow] [?value			g_value] [?min			g_min] [?max			g_max] [?allowExpr			s_allowExpr] [?row			x_row] [?column			x_column] [?width			x_width] [?coordinates			l_coordinates] [?displayOrder			x_displayOrder] [?labelText			t_labelText] [?private			s_private] [?display			s_display] [?editable			s_editable] [?appCB			s_appCB] [?callback			t_callback] [?formApplyCB			s_formApplyCB] [?changeCB			st_changeCB] [?doubleClickCB			st_doubleClickCB] [?numRows			x_numRows] [?multipleSelect			s_multipleSelect] [?invalidateFunc			s_invalidateFunc] " "Changes a field in an existing analysis.")

("asiChangeAnalysisOption" "o_analysis ?name			s_optionName [?prompt			t_prompt] [?type			s_type] [?choices			l_choices] [?itemsPerRow			x_itemsPerRow] [?value			g_value] [?min			g_min] [?max			g_max] [?allowExpr			s_allowExpr] [?row			x_row] [?column			x_column] [?width			x_width] [?coordinates			l_coordinates] [?displayOrder			x_displayOrder] [?labelText			t_labelText] [?private			s_private] [?display			s_display] [?editable			s_editable] [?appCB			s_appCB] [?callback			t_callback] [?formApplyCB			s_formApplyCB] [?changeCB			st_changeCB] [?doubleClickCB			st_doubleClickCB] [?numRows			x_numRows] [?multipleSelect			s_multipleSelect] [?invalidateFunc			s_invalidateFunc] [?sendMethod			s_sendMethod] " "Changes an analysis option for an existing analysis.")

("asiChangeAnalysisOptionFormProperties" "o_analysis [?type	s_type] [?width	x_width] [?columns	x_columns] " "Changes the display characteristics for one of the analysis options forms.")

("asiChangeFlowchartStep" "o_flowchart ?name		s_name [?description		t_description] [?runMessage		t_runMessage] [?function		s_function] [?checkFunc		s_checkFunc] [?preFunc		s_preFunc] [?postFunc		s_postFunc] " "Changes a flowchart step in an existing flowchart")

("asiChangeKeepOption" "o_tool ?name			s_name [?prompt			t_prompt] [?type			s_type] [?choices			l_choices] [?itemsPerRow			x_itemsPerRow] [?value			g_value] [?min			g_min] [?max			g_max] [?allowExpr			s_allowExpr] [?row			x_row] [?column			x_column] [?width			x_width] [?coordinates			l_coordinates] [?displayOrder			x_displayOrder] [?labelText			t_labelText] [?private			s_private] [?display			s_display] [?editable			s_editable] [?appCB			s_appCB] [?callback			t_callback] [?formApplyCB			s_formApplyCB] [?changeCB			st_changeCB] [?doubleClickCB			st_doubleClickCB] [?numRows			x_numRows] [?multipleSelect			s_multipleSelect] [?invalidateFunc			s_invalidateFunc] " "Modifies an existing keep option variable for a simulator.")

("asiChangeKeepOptionFormProperties" "o_tool [?type	s_type] [?width	x_width] [?columns	x_columns] " "Changes the display characteristics of the Keep Options form.")

("asiChangeSimOption" "o_tool ?name			s_name [?prompt			t_prompt] [?type			s_type] [?choices			l_choices] [?itemsPerRow			x_itemsPerRow] [?value			g_value] [?min			g_min] [?max			g_max] [?allowExpr			s_allowExpr] [?row			x_row] [?column			x_column] [?width			x_width] [?coordinates			l_coordinates] [?displayOrder			x_displayOrder] [?labelText			t_labelText] [?private			s_private] [?display			s_display] [?editable			s_editable] [?appCB			s_appCB] [?callback			t_callback] [?formApplyCB			s_formApplyCB] [?changeCB			st_changeCB] [?doubleClickCB			st_doubleClickCB] [?numRows			x_numRows] [?multipleSelect			s_multipleSelect] [?invalidateFunc			s_invalidateFunc] [?genericName			s_genericName] [?sendMethod			s_sendMethod] " "Changes a simulator option.")

("asiChangeSimOptionFormProperties" "o_tool [?type	s_type] [?width	x_width] [?columns	x_columns] " "Changes the display characteristics for the Simulator Options form.")

("asiCreateAnalysisField" "?name			s_fieldName [?prompt			t_prompt] [?type			s_type] [?choices			l_choices] [?itemsPerRow			x_itemsPerRow] [?value			g_value] [?min			g_min] [?max			g_max] [?allowExpr			s_allowExpr] [?row			x_row] [?column			x_column] [?width			x_width] [?coordinates			l_coordinates] [?displayOrder			x_displayOrder] [?labelText			t_labelText] [?private			s_private] [?display			s_display] [?editable			s_editable] [?appCB			s_appCB] [?callback			t_callback] [?formApplyCB			s_formApplyCB] [?changeCB			st_changeCB] [?doubleClickCB			st_doubleClickCB] [?numRows			x_numRows] [?multipleSelect			s_multipleSelect] [?invalidateFunc			s_invalidateFunc] " "Creates a new analysis field, such as from or to, for a new or changed analysis.")

("asiCreateAnalysisOption" "?name			s_optionName [?prompt			t_prompt] [?type			s_type] [?choices			l_choices] [?itemsPerRow			x_itemsPerRow] [?value			g_value] [?min			g_min] [?max			g_max] [?allowExpr			s_allowExpr] [?row			x_row] [?column			x_column] [?width			x_width] [?coordinates			l_coordinates] [?displayOrder			x_displayOrder] [?labelText			t_labelText] [?private			s_private] [?display			s_display] [?editable			s_editable] [?appCB			s_appCB] [?callback			t_callback] [?formApplyCB			s_formApplyCB] [?changeCB			st_changeCB] [?doubleClickCB			st_doubleClickCB] [?numRows			x_numRows] [?multipleSelect			s_multipleSelect] [?invalidateFunc			s_invalidateFunc] [?sendMethod			s_sendMethod] " "Creates a new analysis option for a new or changed analysis.")

("asiCreateFlowchart" "o_tool " "Creates a new flowchart.")

("asiCreateFormatter" "g_session " "First, a design object is created with the nlCreateDesign call, using the information on the OASIS session. Subsequently, the formatter is created with a call to nlCreateFormatter, using the information on the session. The formatter is added to the session and can be obtained with asiGetFormatter. This is a convenience routine that you cannot redefine, and the interface should not call it.")

("asiDefineDataAccessFunction" "o_tool s_dataType s_dataFunction " "Redefines a data access function.")

("asiDefineDataMappingFunction" "o_tool s_dataType s_function " "Defines the data mapping functions.")

("asiDeleteAnalysis" "o_tool s_analysisName " "Deletes an analysis.")

("asiDeleteAnalysisField" "o_analysis s_fieldName " "Deletes an analysis field from an existing analysis.")

("asiDeleteAnalysisOption" "o_analysis s_optionName " "Deletes an analysis option.")

("asiDeleteFlowchartLink" "o_flowchart s_parentStep s_childStep " "Deletes the link between the specified parent and child steps.")

("asiDeleteFlowchartStep" "o_flowchart s_name [s_splice] " "Deletes a step and any attached links from an existing flowchart.")

("asiDeleteKeepOption" "o_tool s_name " "Deletes a simulator keep option variable.")

("asiDeleteSimOption" "o_tool s_name " "Deletes a simulator option.")

("asiDisableAnalysis" "o_analysis " "Disables an analysis while keeping it in the analysis list.")

("asiDisplayAnalysis" "o_tool " "Displays the analyses for a tool. Use this function to determine which analyses you need to add or modify.")

("asiDisplayAnalysisField" "o_analysis " "Displays the analysis field names for an analysis.")

("asiDisplayAnalysisOption" "o_analysis " "Displays the analysis option names for an analysis.")

("asiDisplayAnalysisOptionFormProperties" "o_analysis " "Displays the characteristics for one of the analysis options forms.")

("asiDisplayFlowchart" "o_tool [s_rootstep] " "Displays the current steps and links for the flowchart.")

("asiDisplayKeepOption" "o_tool " "Displays the current simulator keep option names.")

("asiDisplayKeepOptionFormProperties" "o_tool " "Displays the form characteristics for the Keep Options form.")

("asiDisplayNetlistOption" "o_tool " "Displays the current set of netlist options and values. Use this function only to determine which netlist options you can modify. Do not use this function as part of another procedure.")

("asiDisplaySimOption" "o_tool " "Displays the current set of simulator option names and values.")

("asiDisplaySimOptionFormProperties" "o_tool " "Displays the characteristics of the Simulator Options form.")

("asiEnableAnalysis" "o_analysis " "Enables an analysis, which means the analysis is selected and sent to the simulator.")

("asiExecuteFlowchart" "o_session s_goalStep  [s_printMessages] " "Executes the flowchart for a given session up to and including the goal step.")

("asiFinalNetlist" "o_session " "Creates the final netlist.")

("asiFormatAnalysis" "o_ana p_fp" "Formats and print analysis statements to the control file. For the general asiAnalog class, this routine:")

("asiFormatAnalysisList" "o_ana p_fp" "Formats all enabled analyses by calling asiFormatAnalysis.")

("asiFormatControlStmts" "o_session p_fp" "Creates and formats all control statements. It formats the following in the following order:")

("asiFormatDefinitionFileList" "" "Formats the statement which includes the specified definition files.")

("asiFormatDesignVarList" "o_session " "Formats and prints the design variable statements to the design variable file. This routine first prints the string .PARAM followed by the design variables in name=value pairs. The design variables are obtained by calling asiGetDesignVarList.")

("asiFormatInitCond" "o_session p_fp " "Formats and prints the initial condition commands to the control statement file. This routine prints the string .IC followed by the initial conditions in V(net)=voltage pairs.")

("asiFormatKeepList" "o_session p_fp " "Formats and prints the signal save commands to the control statement file. At the asiAnalog class this routine simply returns t. You need to create your own asiFormatKeepList routine.")

("asiFormatModelLibSelectionList" "o_session p_fp" "Formats the statement which specifies the model library information.")

("asiFormatNodeSet" "o_session p_fp " "Formats and prints the nodeset commands to the control statement file. This routine prints .NODESET and then the nodesets in V(net)=voltage pairs.")

("asiFormatSimulatorOption" "" "Formats and prints the simulator option statements to the designated file. This routine prints .OPTIONS followed by name=value pairs.")

("asiFormatTextStimulusFileList" "" "Formats the statement which includes the textual stimulus files.")

("asiGetAnalysis" "{o_session | o_tool} s_analysisName " "Gets an analysis object.")

("asiGetAnalysisFieldChoices" "o_analysis s_fieldName " "Gets the list of choices for an analysis field that is set up as a list box.")

("asiGetAnalysisFieldVal" "o_analysis s_fieldName " "Gets the value of an analysis field from the environment.")

("asiGetAnalysisFormFieldChoices" "r_form s_analysisName s_fieldName " "Returns the list of choices for a field in the Choosing Analyses form.")

("asiGetAnalysisFormFieldVal" "r_form s_analysisName s_fieldName " "Returns the value of a field in the Choosing Analyses form.")

("asiGetAnalysisName" "o_analysis " "Gets the name of the analysis.")

("asiGetAnalysisNameList" "{o_session | o_tool}" "Returns a list of analysis names defined for a tool.")

("asiGetAnalysisOptionChoices " "o_analysis s_optionName " "Gets the list of choices for an analysis option that is set up as a list box.")

("asiGetAnalysisOptionList" "o_analysis " "Gets a list of analysis option objects defined for a particular analysis object.")

("asiGetAnalysisOptionSendMethod" "o_analysis s_optionName " "Gets the sendMethod for an option in an analysis.")

("asiGetAnalysisOptionVal" "o_analysis s_optionName " "Gets the value for the given option in an analysis.")

("asiGetAnalysisSigList" "o_session o_ana " "Gets a list of analysis field objects which are of the type net. For example, the p and n nodes for the Spectre noise analysis.")

("asiGetAnalysisSimFieldList" "o_session o_ana " "Gets a list of simulator analysis field objects which need to be netlisted.")

("asiGetAnalysisType" "o_analysis " "Gets the type of the analysis.")

("asiGetCommandFooter" "o_session " "Specifies the footer of the simulation run command.")

("asiGetCommandLineOption" "o_session " "Gets the simulation command line options. At the asiAnalog class this method returns the value of the environment option `userComdLineOption.")

("asiGetDefinitionFileList" "o_session " "Gets the list of definition file names associated with the given simulation session.")

("asiGetEnabledAnalysisList" "o_session " "Returns a list of all the enabled analyses.")

("asiGetFlowchart" "{ o_tool | o_session } " "Gets the flowchart object for a tool or session.")

("asiGetFormattedVal" "o_anaField | o_anaOption | o_simOption " "Gets the string value of an analysis field object, an analysis option object, or a simulator option object. The format of the string values are based on the object types which are specified with functions such as asiCreateAnalysisField, asiCreateAnalysisOption, asiAddSimOption. A number of examples can be found in the example section.")

("asiGetFormatter" "o_session " "Returns the formatter created with the last asiCreateFormatter call. This is a convenience routine that you should not redefine and the interface should not call.")

("asiGetKeepOptionChoices" "{o_session | o_tool} s_name  " "Gets the list of choices for a keep option that is set up as a list box. ")

("asiGetKeepOptionVal" "{ o_tool | o_session } s_name " "Gets the value of a keep option variable for a tool or session object.")

("asiGetModelLibFile" "o_modelLibSelection " "Gets the file name of a model libarary selection object.")

("asiGetModelLibSection" "o_modelLibSelection " "Gets the section name of a model libarary selection object.")

("asiGetModelLibSelectionList" "o_session " "Formats the statement which specifies the model library information.")

("asiGetNetlistOption" "{o_session | o_tool} s_name " "Gets the value of the specified netlist option. ")

("asiGetPredefinedCommandLineOption" "o_session " "Gets the predefined simulation command line options. This function returns an empty string at the asiAnalog class. Overload this method for your simulator.")

("asiGetSelObjName" "o_selObj " "Returns the schematic name of the selected signal object.")

("asiGetSelObjType" "o_selObj " "Returns the type of the selected signal object.")

("asiGetSelObjValue" "o_selObj " "Returns the initial condition or nodeset values specified on the selected signal object.")

("asiGetSimExecName" "o_session " "Gets the name of the simulator executable by calling asiGetSimName.")

("asiGetSimInputFileName" "o_session " "Returns the name of the simulator input file. For the asiAnalog_session class, this is input followed by the return value of asiGetSimInputFileSuffix.")

("asiGetSimInputFileSuffix" "o_session " "Returns the suffix used for the simulator input file. This method can be redefined, and must return a string, or a SKILL error will result.")

("asiGetSimOptionChoices" "{o_session | o_tool} s_name " "Gets the list of choices for a simulator option that is set up as a list box.")

("asiGetSimOptionNameList" "o_tool " "Returns the list of simulator option names.")

("asiGetSimOptionSendMethod" "{o_session | o_tool} s_name  " "Gets the sendMethod for the specified simulator option.")

("asiGetSimOptionVal" "{o_session | o_tool} s_name " "Gets the value for the specified simulator option.")

("asiGetTextStimulusFileList" "" "Gets the list of textual stimulus file names associated with the given simulation session.")

("asiInit<yourSimulator>" "o_tool " "Calls the procedures to initialize your simulator")

("asiInit<yourSimulator>Analysis" "o_tool " "Calls the procedures that modify your simulator")

("asiInit<yourSimulator>DataAccessFunctions" "" "Calls the procedures that modify your data access routines. ")

("asiInit<yourSimulator>Flowchart" "o_tool " "Calls the procedures to initialize the flowchart for your simulator.")

("asiInit<yourSimulator>KeepOption" "o_tool " "Calls the procedures to initialize your simulator keep option variables. ")

("asiInit<yourSimulator>NetlistOption" "o_tool " "Calls the procedures that modify your simulator")

("asiInit<yourSimulator>SimOption" "o_tool " "Calls the procedures to add your simulator options.")

("asiInitialize" "o_tool " "Initializes the tools that are derived from the asiAnalog class.")

("asiInvalidateFlowchartStep" "o_session s_step " "Invalidates a flowchart step for a particular session.")

("asiIsAnalysisEnabled" "o_analysis " "Tests to determine whether an analysis is enabled.")

("asiMapOutputName" "t_dir s_type t_name " "Maps the given schematic name of the given type using the netlist directory. The result is a list of mapped strings.")

("asiNeedSuffixEvaluation" "o_session " "Specify whether the interface needs suffix evaluation or not. When this method returns t, the numeric suffixes specified in a numericString field will be evaluated. For example, suppose the start frequency field for the AC analysis has a value of 10M, asiGetFormattedVal( ac_start_fieldObj ) returns 1e7 provided it is created as a `numericString field.")

("asiNetlist" "o_session " "This method performs the creation of a design object. It then creates the formatter object with nlCreateFormatter, after which the netlister is run and a netlist is generated with nlNetlist. Netlist statistics are then printed. The netlister also provides a component count, as well as the addition of design variables found during netlisting.")

("asiRawNetlist" "o_session " "Creates a raw netlist.")

("asiRegisterTool" "" yourSimulator)

("asiRunSimulation" "o_session " "This method performs the simulation for the session.")

("asiSendAnalysis" "o_session " "Sends analyses to Cadence SPICE by calling asiFormatAnalysis for each analysis.")

("asiSendControlStmts" "o_session " "Sends information such as nodesets, initial conditions, keep lists or output, analyses, restore files, include files, and stimulus files to Cadence SPICE.")

("asiSendDesignVars" "o_session " "Sends the design variables to Cadence SPICE.")

("asiSendInitCond" "o_session " "Places all the initial conditions in <netlistDirectory>/raw/ics and sends a ptprop command to Cadence SPICE. ")

("asiSendInitFile" "o_session " "Sends the init.s file to Cadence SPICE.")

("asiSendKeepList" "o_session " "Sends the keep list to Cadence SPICE.")

("asiSendModelPath" "o_session " "Sends the model path to Cadence SPICE. ")

("asiSendNetlist" "o_session " "Sends the raw netlist to Cadence SPICE using the Cadence SPICE sim command.")

("asiSendNodeSets" "o_session " "Places all the nodesets in <netlistDirectory>/raw/nodesets and sends a ptprop command to Cadence SPICE. ")

("asiSendOptions" "o_session " "Sends the simulation options to Cadence SPICE.")

("asiSendRestore" "o_session " "If DC restore is on, send the commands to restore the DC node voltages to Cadence SPICE.")

("asiSendUpdateFile" "o_session " "Sends the update.s file to Cadence SPICE.")

("asiSetAnalysisFieldChoices" "o_analysis s_fieldName l_choices " "Specifies the list of choices to appear in the list box for an analysis field.")

("asiSetAnalysisFieldVal" "o_analysis s_fieldName g_value " "Sets the value for a field of an analysis.")

("asiSetAnalysisFormFieldChoices" "r_form s_analysisName s_fieldName l_choices " "Sets the list of choices for the specified field on the Choosing Analyses form.")

("asiSetAnalysisFormFieldVal" "r_form s_analysisName s_fieldName g_value " "Sets the value of a field on the Choosing Analyses form.")

("asiSetAnalysisFormWidth" "o_tool x_width " "Sets the width of the Choosing Analyses form.")

("asiSetAnalysisOptionChoices" "o_analysis s_optionName l_choices " "Specifies the list of choices for an analysis option that is set up as a list box.")

("asiSetAnalysisOptionFormProperties" "o_analysis [?type	s_type] [?width	x_width] [?columns	x_columns] " "Sets the display characteristics for a new analysis options form.")

("asiSetAnalysisOptionVal" "o_analysis s_optionName g_value " "Sets the value of an option in an analysis.")

("asiSetKeepOptionChoices" "{o_session | o_tool} s_name l_choices " "Specifies the list of choices to appear in the list box field for the specified keep option.")

("asiSetKeepOptionVal" "{ o_tool | o_session } s_name g_value " "Sets the value for the specified keep option variable for a tool or session object.")

("asiSetNetlistFormatterClass" "o_tool  s_class " "Registers the netlist formatting class with the tool. This function is normally called from the asiInitFormatter method and should be defined for the interface.")

("asiSetNetlistOption" "{o_session | o_tool} s_name g_value " "Sets a netlisting option.")

("asiSetSimOptionChoices" "{o_session | o_tool} s_name l_choices " "Specifies the list of choices to appear in the list box field for the specified simulator option.")

("asiSetSimOptionVal" "{o_session | o_tool} s_name g_value " "Sets the value of the specified simulator option.")

))
