(put 'pc_funs 'symbol-type "parameterized cell fun")
(setq pc_funs '(
("pcDefineCondition" "d_cvId l_figs l_namelist g_condition g_stretch f_adjust  " "Specifies that the conditional inclusion of a list of objects is controlled by a given SKILL expression. Also specifies the inclusion of a dependent stretch control line. If the SKILL expression evaluates to a value other than nil, the objects are included.")

("pcDefineInheritParam" "d_instId s_parameter g_value l_namelist " "Specifies that a parameter of an instance of a pcell takes its value from a parameter definition of the enclosing cellview. The selection filter allows you to select only instances.")

("pcDefinePCell" "l_cellIdentifier l_formalArgs body of code " "Creates a parameterized (super) master cellview. This function is generated when you compile a pcell.")

("pcDefineParamLabel" "d_labelId S_height " "Defines a parameterized label. A parameterized label is not an instance name, but a label displaying values within a pcell, such as width and length of gates.")

("pcDefineParamLayer" "d_cvId l_shapes g_layerExpr l_namelist [g_purposeExpr] " "Specifies that a set of shapes has its layer and purpose determined by a parameter definition in the cellview. The selection filter prevents you from selecting instances or stretch control lines.")

("pcDefineParamPath" "d_pathId S_param g_margin g_width n_defaultWidth t_snap l_namelist " "Defines a path that has its vertices determined by a parameter of the cell. When you place the pcell, you enter a coordinate string that is used as the vertices of the parameterized path. You can use this function more than once in a cellview if all paths have the same vertices.")

("pcDefineParamPolygon" "d_polygonId S_param g_margin t_snap l_namelist " "Defines a polygon that has its vertices determined by a parameter of the cell. When you place the pcell, you enter a coordinate string that is used as the vertices of the parameterized polygon. You can use this function more than once in a cellview.")

("pcDefineParamProp" "d_cvId t_name g_expr " "Defines a parameterized property that can be accessed using a SKILL procedure. You can use this property to store any value within the pcell.")

("pcDefineParamRect" "d_rectangleId S_param g_margin l_namelist " "Defines a rectangle that has its vertices determined by a parameter of the cell. When you place the pcell, you enter two coordinates that are used as the vertices of the parameterized rectangle. You can use this function more than once in a cellview.")

("pcDefineParamRefPointObject" "g_objects S_param l_refpoint " "Specifies that the location of an object or group of objects in the instance is determined by the location of a reference point that is a parameter of the cell. The objects in the instance have the same relationship to the reference point parameter as the objects in the master cellview have to the corresponding reference point in the master cellview.")

("pcDefinePathRefPointObject" "l_objects S_param t_endpoint " "Specifies that the location of an object or group of objects in the instance be determined by the location of the endpoint of a parameterized path. The objects in the instance have the same relationship to the endpoint of the digitized path in the instance as the objects in the master cellview have to the corresponding endpoint of the parameterized path in the master cellview.")

("pcDefineRepeat" "d_cvId l_shapes l_namelist g_stepX g_stepY g_repeatX g_repeatY g_stretchX g_stretchY g_adjustX g_adjustY t_direction " "Defines a repetition parameter to be applied to specified objects. Objects can be repeated in the X direction, Y direction, or both. If the value for the repetition direction, t_direction, is horizontal and vertical, the pcDefineRepeat function creates an array.")

("pcDefineSteppedObject" "g_objects S_param g_step g_startOffset g_endOffset l_namelist " "Defines an object or group of objects to be repeated along the length or perimeter of a parameterized shape that has already been defined in the pcell. The selection filter prevents you from selecting stretch control lines, parameterized shapes, or objects in other repeat-along-shape groups.")

("pcDefineStretchLine" "d_lineId g_paramExpr  t_direction  f_defval f_minval  f_maxval  g_stretchRepeated " "Defines a stretch control line used to control stretching in the X direction or Y direction. Objects repeated in the direction parallel to the stretch direction can be set to stretch.")

("pcDeleteCondition" "d_groupId " "Deletes a previously defined conditional inclusion parameter.")

("pcDeleteParamLayer" "d_groupId " "Deletes a parameter associating a set of shapes with a layer parameter.")

("pcDeleteParamProp" "d_cvId t_propname " "Deletes a parameterized property in the cellview d_cvId.")

("pcDeleteParamShape" "d_memberId " "Deletes a parameterized shape directive, causing the specified shape to revert back to a regular (nonparameterized) shape.")

("pcDeleteRefPoint" "d_groupId " "Deletes a reference point parameter. You can use this command to delete either a reference point defined relative to a parameter of the cell or a reference point defined relative to a parameterized path endpoint.")

("pcDeleteRepeat" "d_groupId " "Deletes the repetition parameter d_groupId.")

("pcDeleteSteppedObject" "d_groupId " "Deletes the repetition-along-shape parameter d_groupId.")

("pcExprToString" "g_ilExpr " "Converts a SKILL expression to a string. The Pcell compiler uses this function to create labels that display the value of an expression as a string enclosed in quotes.")

("pcFix" "n_num " "Converts a number to a floating-point number in the format number.0. When n_num is very close to a whole number, the system keeps the integer part of the number and adds a single decimal place equal to zero. Very close means the value of the number is within the range of plus or minus 0.001 of the integer part of the number specified by n_num. When the value is not within this range, the function allows the system to use the value in the first decimal place to round the n_num to an integer in the format number.0; the system ignores all other decimal places. This function is useful for correcting the round-off approximation that can occur with floating-point numbers that are stored in 32 or 64 bits.")

("pcGetConditions" "d_cvId " "Returns a list of identifiers for conditional inclusion parameters in the specified cellview.")

("pcGetInheritParamDefn" "d_instId " "Returns an identifier for an inherited parameter in the specified cellview.")

("pcGetInheritParams" "d_cvId " "Returns a list of identifiers for inherited parameters in the specified cellview.")

("pcGetParamLabelDefn" "d_labelId " "Returns the parameterized label identifier resulting from a call to pcDefineParamLabel on the specified label.")

("pcGetParamLabels" "d_cvId " "Returns a list of parameterized labels in the specified cellview.")

("pcGetParamLayerDefn" "d_instId " "Returns the identifier for a layer parameter of a specified shape.")

("pcGetParamLayers" "d_cvId " "Returns a list of identifiers for layer parameters in the specified cellview.")

("pcGetParamProps" "d_cvId " "Lists parameterized properties in the specified cellview.")

("pcGetParamShapeDefn" "d_instId " "Returns an identifier for a parameterized shape parameter resulting from a call to pcDefineParamPath, pcDefineParamPolygon, or pcDefineParamRect.")

("pcGetParamShapes" "d_cvId " "Returns a list of identifiers for the parameterized shape parameters in the specified cellview.")

("pcGetParameters" "d_cvId " "Returns a list of parameters and their default values defined in the specified cellview.")

("pcGetRefPointDefn" "d_objectId " "Returns an identifier for the reference point parameter defined in the specified cellview.")

("pcGetRefPoints" "d_cvId " "Returns a list of identifiers for all the reference point parameters in a specified cellview.")

("pcGetRepeatDefn" "d_objectId " "Returns a list of identifiers for all repetition parameters assigned to an object in the cellview. A single object can be assigned to more than one repetition group.")

("pcGetRepeats" "d_cvId " "Returns a list of identifiers for repetition parameters in the specified cellview.")

("pcGetSteppedObjectDefn" "d_objectId " "Returns an identifier for repetition-along-shape parameters resulting from calls to pcDefineSteppedObject. The object cannot be a parameterized shape.")

("pcGetSteppedObjects" "d_cvId " "Returns a list of identifiers for the repetition-along-shape parameters in the specified cellview.")

("pcGetStretchDefn" "d_objectId " "Returns the identifier for a stretch parameter.")

("pcGetStretches" "d_cvId " "Returns a list of identifiers for the stretch parameters in the specified cellview.")

("pcModifyParam" "d_cvId S_param t_type g_value " "Lets you modify the parameter type and default value for parameters assigned to a compiled pcell.")

("pcRedefineStretchLine" "d_lineId  g_paramExpr  t_direction  f_defval f_minval  f_maxval  g_stretchRepeated  " "Redefines the attributes of an existing stretch control line. You can also specify a new location for the stretch control line with this command.")

("pcRestrictStretchToObjects" "d_stretchId l_objlist " "Lets you specify the objects affected by a particular stretch control line. Objects not specified are not moved or stretched by this stretch control line.")

("pcRound" "n_num " "Lets you round a number to the closest integer, using the value of the first decimal place; additional decimal places are ignored. If the value of the first decimal place is less than 5, the system drops it; if the value of the first decimal place is greater than or equal to 5, the system drops it and adds one to the integer.")

("pcSkillGen" "d_cellViewId t_outputFile g_isSkillFile " "Converts a specified cellview into a SKILL file. A SKILL file can be edited and loaded back to a cellview after modification. Loading a SKILL file generates a SKILL master; however, the cellview contains only a label with the text: Warning: The master is defined by the SKILL procedure associated with the cellview.")

("pcTechFile" "g_expression " "Evaluates an expression contained in a string. The Pcell compiler uses this function as an envelope around stretch expressions that access information from a technology file. This function prevents any symbols used in the technology file access expression from being defined as parameters of the pcell.")

("pcUserAdjustParameters" "p_port  " "A user-defined procedure called by the compiler before it processes any objects. The procedure is normally used to generate code to transform user-specified parameter values, such as to snap them to an even value. Parameters can then be referenced as variables in the SKILL code that is generated.")

("pcUserGenerateArray" "d_mosaic  t_masterTag  p_port  " "A user-defined procedure called by the compiler before it processes any simple arrays (mosaics) in a master pcell. The procedure is normally used to suppress array generation or to modify arrays.")

("pcUserGenerateInstance" "d_inst  t_masterTag  p_port  " "A user-defined procedure called by the compiler before it processes any instances in a master pcell. The procedure is normally used to suppress instance generation or to modify instances.")

("pcUserGenerateInstancesOfMaster" "d_masterCV  l_instanceList t_tag  p_port  " "A user-defined procedure called by the compiler for every master pcell in a master pcell. The compiler calls the procedure before it generates code for instances (but not arrays) for the master. The procedure is normally used to generate code to switch masters.")

("pcUserGenerateLPP" "d_lpp  p_port  " "A user-defined procedure called by the compiler before it processes shapes belonging to layer-purpose pairs in the master pcell. The procedure is normally used to suppress shape-set generation.")

("pcUserGeneratePin" "d_pin  p_port  " "A user-defined procedure called by the compiler before it processes pins on any terminals in the master pcell. The procedure is normally used to suppress pin generation or to modify pins.")

("pcUserGenerateProperty" "d_object  d_prop t_tag p_port  " "A user-defined procedure called by the compiler before it processes properties on any objects. The procedure is normally used to suppress property generation in the master pcell.")

("pcUserGenerateShape" "d_shape  p_port  " "A user-defined procedure called by the compiler before it processes any shapes in the master pcell. The procedure is normally used to suppress shape generation or to modify shapes.")

("pcUserGenerateTerminal" "d_terminal  p_port  " "A user-defined procedure called by the compiler before it processes any terminals in the master pcell. The procedure is normally used to suppress terminal generation or to modify terminals.")

("pcUserInitRepeat" "l_stepX  l_stepY l_repeatX l_repeatY  p_port  " "A user-defined procedure called by the compiler before it processes any repetitions. The procedure is normally used to generate code to set the values of variables for repetition parameters.")

("pcUserPostProcessCellView" "d_cv  t_tag  p_port  " "A user-defined procedure called by the compiler after it processes any object in a pcell. The procedure is normally used to generate code to process a list of objects that was built during compilation.")

("pcUserPostProcessObject" "d_obj  t_tag  p_port  " "A user-defined procedure called by the compiler after it processes any object (instance, shape, terminal, and so forth) in a master pcell. The procedure is normally used to generate code to modify a generated object.")

("pcUserPreProcessCellView" "d_cv  t_tag  p_port  " "A user-defined procedure called by the compiler before it processes any objects in a pcell. The procedure is normally used to generate code to initialize variables before the compiler processes individual objects.")

("pcUserSetTermNetName" "d_pinFig  p_port  " "SKILL code generated by this procedure should assign the net name to the SKILL variable pcTermNetName. This is the net name used in the code generated by the compiler to create terminals in the submaster pcell. The SKILL variables pcIndexX and pcIndexY are available for incorporation into pcTermNetName if you need to make different nets for each different repeated pin.")

))
