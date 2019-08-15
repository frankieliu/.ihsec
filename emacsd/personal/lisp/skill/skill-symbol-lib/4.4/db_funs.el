(put 'db_funs 'symbol-type "database access fun")
(setq db_funs '(
("dbAddFigToNet" "" "The dbSetq equivalent of figure~>net = d_net.")

("dbAddObjectToGroup" "d_group d_object " "Adds a database object to a group.")

("dbAllCellViews" "g_lib t_cellName [d_contextCellView] )  	=> l_viewName / nil   dbAllCellViews( nil t_cellName d_contextCellView " "Lists all the view names of a cell.")

("dbCVHasInheritedSig" "d_cellViewid " "Given a cellview id in cellViewId, this function checks if there is any inherited signal in the given cellview.")

("dbCVHasInheritedTerm" "d_cellViewId " "Given a cellview id in cellViewId, this function checks whether there is any inherited terminal in the given cellview.")

("dbCheck" "[d_cellView | nil] " "Checks for data corruption.")

("dbCheckRecursion" "d_cellViewId " "Checks for occurrence of the given top cellview in the hierarchy of the instHeader masters or any other recursion inside the instHeader master")

("dbClose" "d_cellView " "Closes a cellview.")

("dbCompactCellView" "d_cellView [t_libName t_cellName t_viewName [t_version [d_contextCellView]]] " "Saves a cellview in a compacted format.")

("dbCompressPointArray" "l_pointArray x_isClosed [f_DBUPerUU] " "Compresses colinear points in a list of points.")

("dbCompressionPlot" "o_wave x_harmonic x_extrapolationPoint    [?compression x_compression] " "Plots the nth compression point plot. The x_compression argument is optional and defaults to 1, for 1dB compression, if omitted.")

("dbComputeBBox" "d_cellViewId " "Recomputes the given cellview")

("dbComputeBBoxNoNLP" "d_cellViewId " "Computes the given cellview")

("dbConcatTransform" "l_list1 l_list2 " "Merges two transformations into a new transformation.")

("dbConvertArcToLine" "d_arc x_nSides " "Converts an arc to a line. A line is defined as a number of connecting segments.")

("dbConvertDonutToPolygon" "d_donut x_nSides " "Converts a donut to a polygon.")

("dbConvertEllipseToPolygon" "d_ellipse x_nSides " "Converts an ellipse to a polygon.")

("dbConvertLineToPath" "d_line x_width [t_pathStyle] " "Converts a line to a path.")

("dbConvertPathToPolygon" "d_path " "Converts a path to a polygon with the same number of points as the path.")

("dbCopyCellView" "d_srcCVId t_libName t_cellName t_viewName [t_version [g_contextId [b_overwrite]]] " "Copies a cellview to a destination cellview.")

("dbCopyFig" "d_fig d_cellView [l_transform] " "Copies and transforms a figure and places it in a cellview.")

("dbCopyProp" "g_object1 g_object2 " "Copies all the properties of one database object to another database object.")

("dbCopySingleProp" "d_srcPropId g_dstObjId " "Copies a single property to a destination object.")

("dbCreateArc" "d_cellView tx_layer l_ellipse_bBox l_arc_bBox )  	=> d_arc / nil   dbCreateArc( d_cellView (tx_layer [t_purpose] ) 	l_ellipse_bBox l_arc_bBox " "Creates an arc.")

("dbCreateConn" "d_net d_inst d_term " "Identical to dbCreateInstTerm, except the net d_net defines a valid net to be connected to the instance terminal of a master terminal d_term.")

("dbCreateConnByName" "d_net d_inst t_name " "Similar to dbCreateConn, except the master terminal is defined by t_name instead of being specified by the master terminal")

("dbCreateConnByNewName" "d_net d_inst t_name " "Similar to dbCreateConnByName, except t_name can refer to a master terminal to be created in the master cellview of instance d_inst.")

("dbCreateDonut" "d_cellView tx_layer l_point x_outR x_holeR )  	=> d_donut / nil   dbCreateDonut( d_cellView (tx_layer [t_purpose] )l_point  	x_outR x_holeR " "Creates a donut (two concentric circles).")

("dbCreateDot" "d_cellView tx_layer l_point )  	=> d_dot / nil   dbCreateDot( d_cellView (tx_layer [t_purpose] ) l_point " "Creates a dot.")

("dbCreateEllipse" "d_cellView tx_layer l_bBox )  	=> d_ellipse / nil   dbCreateEllipse( d_cellView (tx_layer [t_purpose] ) l_bBox " "Creates an ellipse.")

("dbCreateEnumProp" "g_object t_name t_value l_string " "Creates an enumerated property for an object.")

("dbCreateGroup" "d_cellView t_name l_groupType " "Creates a group in a cellview.")

("dbCreateHierProp" "g_object t_name " "Creates a hierarchical property for an object.")

("dbCreateInst" "d_cellView d_master t_name l_point t_orient [x_numInst] " "Creates an instance (of cellview d_master) in the cellview d_cellView with an origin and orientation specified by l_point and t_orient.")

("dbCreateInstByMasterName" "d_cellView t_libName t_cellName t_viewName t_instName l_origin t_orient [x_numInst] " "Creates an instance (of cellview - t_libName/t_cellName/t_viewName) in the cellview d_cellView with an origin and orientation specified by l_point and t_orient.")

("dbCreateInstPin" "d_net d_instTerm d_pin " "Creates an instance pin for the instance terminal d_instTerm and the master pin d_pin.")

("dbCreateInstPinByName" "d_net d_instTerm t_name " "Similar to dbCreateInstPin, but the master pin is defined by its name instead of the dbObject of the pin.")

("dbCreateInstTerm" "d_net d_inst d_term " "Creates an instance terminal on the instance d_inst for the master terminal d_term.")

("dbCreateLabel" "d_cellView tx_layer l_point t_label t_just  	t_orient t_font x_height )  	=> d_label / nil   dbCreateLabel( d_cellView (tx_layer [t_purpose] ) l_point  	t_label t_just t_orient t_font x_height " "Creates a graphic text-string label.")

("dbCreateLib" "t_libName [t_libPath] " "Creates a library named t_libName.")

("dbCreateLine" "d_cellView tx_layer l_points )  	=> d_line / nil   dbCreateLine( d_cellView (tx_layer [t_purpose] ) l_points " "Creates a line.")

("dbCreateNet" "d_cellView t_name d_parentNet )  	=> d_net / nil   dbCreateNet( d_cellView t_name [nil] " "Creates a new net in a cellview. If the net already exists, returns nil.")

("dbCreateParamInst" "" "Creates a parameterized cell instance (of cellview t_libName/t_cellName/t_viewName) in the cellview d_cellView with an origin and orientation specified by l_point and t_orient.")

("dbCreatePath" "d_cellView tx_layer l_points x_width  	[t_pathStyle] ) 	=> d_path / nil   dbCreatePath( d_cellView (tx_layer [t_purpose] ) l_points  	x_width [t_pathStyle] " "Creates a path.")

("dbCreatePin" "d_net d_fig [t_name] " "Creates a pin for the net d_net with a figure d_fig.")

("dbCreatePolygon" "d_cellView tx_layer l_points )  	=> d_polygon / nil   dbCreatePolygon( d_cellView (tx_layer [t_purpose] )  	l_points " "Creates a polygon.")

("dbCreateProp" "g_object t_name t_propType g_value " "Creates a scalar property for an object.")

("dbCreateRangeProp" "g_object t_name t_propType g_value g_lBound g_uBound " "Creates a range property for an object.")

("dbCreateRect" "d_cellView tx_layer l_bBox )  	=> d_rect / nil   dbCreateRect( d_cellView (tx_layer [t_purpose] ) l_bBox " "Creates a rectangle.")

("dbCreateSigNetExpr" "d_sigId t_netExpression " "Given an inherited net expression in netExpression and a signal id in sigId, this function attaches the inherited net expression to the given signal and adds the signal to the set of signals having inherited net expressions.")

("dbCreateSimpleMosaic" "d_cellView d_masterCellView t_name l_point t_orient x_rows x_cols x_rowSpacing x_colSpacing " "Creates a simple mosaic in the cellview d_cellView from the master d_masterCellView.")

("dbCreateStrongGroup" "l_pinList [s_groupConnection] " "Creates a new strong group containing the pins in l_pinList. The pins are removed from their current strong groups and added to the new strong group.")

("dbCreateTerm" "d_net t_name t_direction " "Creates a terminal for a net.")

("dbCreateTermNetExpr" "" "Given an inherited net expression in netExpression and a term id, in termId, this function attaches the inherited net expression to the given terminal and adds the terminal to the set of terminals having inherited net expressions.")

("dbCreateTextDisplay" "d_associateId d_ownerId tx_layer  	l_displayFlags l_point t_just t_orient t_font x_height  	[g_isDrafted [g_isOverbar [g_isVisable [g_isNameVisible  	[g_isValueVisible [t_attrOrParamName]]]]]] )  	=> d_textDisplay / nil   dbCreateTextDisplay( d_associateId d_ownerId (tx_layer  	[t_purpose] ) l_displayFlags l_point t_just t_orient  	t_font x_height [g_isDrafted [g_isOverbar [g_isVisable  	[g_isNameVisible [g_isValueVisible [t_attrOrParamName  	[g_isParamAssoc]]]]]]] " "Creates a text display object.")

("dbCreateUniqueNamedNet" "d_cellView t_prefix x_numBits " "Creates a new net with a unique name.")

("dbDefineProc" "" "Changes the cellview specified by the d_cellView to be a parameterized cell. The specified file name should be the name of a file containing unencrypted Skill code defining procedure pcGenCell. The cellview should have a hierarchical property named parameters, which should be a hierarchical property list containing the default values for the parameters.")

("dbDeleteAllNet" "d_cellView " "Deletes all nets from a cellview.")

("dbDeleteGroupByName" "d_cellView t_name " "Deletes a group and its members from a cellview.")

("dbDeleteObject" "d_object " "Deletes one of the following objects: shapes, nets, terminals, instance terminals, pins, instance pins, mosaics, instances, mosaic instances, properties, groups, and group members. Any other object type produces an error.")

("dbDeleteObjectFromGroup" "d_group d_object " "Deletes an object from a group.")

("dbDeletePropByName" "g_object t_name " "Deletes a property from an object.")

("dbDeleteSigNetExpr" "d_sigId " "Given a signal id in sigId, this function deletes any existing inherited net expression associated with this signal and removes it from the set of inherited signals.")

("dbDeleteTermNetExpr" "d_termId " "Given a terminal id in termId, this function deletes any existing inherited net expression associated with this terminal and removes it from the set of inherited terminals.")

("dbExpandToMemNameExpr" "t_bundleName " "Expands a bundle name to a list of member-name-expression strings.")

("dbExternallyConnectPins" "l_pinList " "Defines the pins in pinList as being externally connected to the other pins on the same terminal. The pins in pinList are strongly connected to each other, and externally connected to the other pins in pinList. This is a grouping operation. The pins are removed from their current strong groups and grouped together in a new strong group. If the pins in pinList belong to different terminals, each terminal is handled separately.")

("dbFindAnyInstByName" "d_cellView t_name " "Retrieves an instance or mosaic.")

("dbFindMemInstByName" "d_cellView t_name " "Retrieves an instance or mosaic and returns its member index.")

("dbFindMosaicByName" "d_cellViewId t_name" "This function returns a mosaic Id if a mosaic with the given name is found in the cellview specified. Otherwise, nil is returned.")

("dbFindNetByName" "d_cellView t_name " "Retrieves a net in a cellview.")

("dbFindOpenCellView" "g_libId t_cellName t_viewName [t_version] " "Finds an opened cellview.")

("dbFindSigByAlias" "d_cellView t_name " "Finds a signal in a cellview by an alias.")

("dbFindSigByName" "d_cellView t_name " "Finds a signal in a cellview.")

("dbFindTermByName" "d_cellView t_name " "Finds a terminal in a cellview.")

("dbFlattenInst" "d_instId x_levels [g_flattenPCells] [g_preservePins] " "Flattens instance d_instId up through x_levels of hierarchy.")

("dbFullPath" "d_cellView " "Returns the full path of a cellview.")

("dbGetAnyInstSwitchMaster" "d_anyInst t_viewList " "Switches into a different view of a master cell instance and opens the corresponding cellview.")

("dbGetAssociateTextDisplay" "d_associateId d_ownerId " "Checks if a text display object exists for a given associate and owner.")

("dbGetCellViewDdId" "d_dbCellViewId " "Returns a ddId associated with the cellViewId. This ddId contains the path to the library, cell, view, and file name.")

("dbGetCellViewInheritedSig" "d_cellViewId " "Retrieves from the given cellview all signals to which inherited net expressions are attached.")

("dbGetCellViewInheritedTerm" "d_cellViewId " "Retrieves from the given cellview all terminals to which inherited net expressions are attached.")

("dbGetInstNameNumInst" "t_name " "Retrieves the number of instances of an instance or mosaic")

("dbGetMaxHierDepth" "" "Returns the dbcMaxHierDepth constant in SKILL.")

("dbGetMemName" "t_name x_index " "Retrieves the name of the x_index member from t_name.")

("dbGetMemNetSig" "( d_net x_index ) )  	=> d_sig / nil   dbGetMemNetSig( d_net x_index " "Retrieves the signal carried by bit number x_index of net d_net.")

("dbGetMemNetSigName" "d_net x_index )  	=> t_name / nil   dbGetMemNetSigName( ( d_net x_index ) " "Similar to dbGetMemNetSig, except it returns the name of the signal instead of the signal object.")

("dbGetNameNumBit" "t_name " "Parses a string and returns the number of bits in the net, terminal, or instance named.")

("dbGetNeighbor" "d_cvId l_bBox t_direction [t_layer]  	[x_depth] ) 	=> d_figId / nil   dbGetNeighbor( d_cvId l_bBox t_direction  	[(t_layer [t_purpose])] [x_depth] " "Returns the closest neighboring object in the specified direction of the given layer-purpose pair.")

("dbGetNeighborList" "d_cellView l_area t_direction [t_layer]  	[lx_depth] )  	=> (l_instlist)   dbGetNeighborList( d_cellView l_area t_direction  	[( t_layer [t_purpose] )] [lx_depth] " "Lists neighboring objects in the specified direction of the given layer-purpose pair.")

("dbGetOpenCellViews" "" "Returns all opened cellviews in virtual memory. Returns nil if no cellview is opened.")

("dbGetOverlaps" "d_cellView l_bBox [xt_layer] [lx_level] )  	=> ld_fig   dbGetOverlaps( d_cellView l_bBox [xt_layer [xt_purpose]]  	[lx_level] " "Returns a list of all the objects (such as, shapes, instances, and mosaics) in a cellview whose bounding boxes overlap the area specified by l_bBox. The overlap includes bounding boxes that are enclosed by, butt against, or intersect with l_bBox.")

("dbGetPinConnection" "d_pin1 d_pin2 " "Given two pins, it returns a symbol representing the connectivity between two pins. The return value is one of the following:")

("dbGetPropByName" "g_object1 g_object2 " "Copies all the properties of one database object to another database object.")

("dbGetSigNameMemNets" "d_cellView t_sigName " "Lists the member nets within the cellview that contain the signal.")

("dbGetSigNetExpr" "d_sigId " "Given a signal id in sigId, this function retrieves any inherited net expression found attached to the signal.")

("dbGetStrongGroups" "d_object " "Returns the strong groups associated with the given database object, d_object. d_object can be a pin, a net, or a terminal. Each strong group is returned as a list of pins.")

("dbGetTermNetExpr" "d_termId " "Given a terminal id in termId, this function retrieves any inherited net expression found attached to the terminal.")

("dbGetTrueOverlaps" "d_cellView l_bBox  [tx_layer | t | nil [lx_level]] )  => ld_fig | nil   dbGetTrueOverlaps( d_cellView l_bBox  	[tx_layer [tx_purpose [lx_level]]] " "Returns a list of all objects in a cellview that overlap the area specified by the specified bounding box.")

("dbHasExternalConnections" "d_connectivityObject " "Reports if the given net or terminal has one or more pins that are externally connected. dbHasExternalConnections(connectivityObject) is equivalent to dbHasMustConnections(connectivityObject).")

("dbHasMustConnections" "" ".Reports ports if the given net or terminal has one or more pins that are must connected. dbHasMustConnections(anObject) is equivalent to dbHasExternalConnections(connectivityObject).")

("dbIsAnyInstBaseNameUsed" "d_cellView t_name " "Check if the name is used as instance basename in the cellview.")

("dbIsNetNameDescend" "d_cellView " "Checks if the net name descend mode is set or not.")

("dbIsSameMaster" "d_anyInst1 d_anyInst2 " "Determines if two instances or mosaics are instantiated from the same cellview master.")

("dbIsSigInherited" "d_sigId " "Given a signal id in sigId, this function checks if there is an inherited net expression attached to it.")

("dbIsSigNameGlobal" "d_cellView t_name " "Tests if the signal t_name is a global signal.")

("dbIsTermInherited" "d_termId " "Given a term id in termid, this function checks whether there is an inherited net expression attached to the given terminal.")

("dbIsValidSigNetExpr" "t_netExpression " "Given an inherited net expression in the netExpression associated with a signal, this function checks whether its syntax is valid. This function does as much local checking as possible, but it does not detect whether the given default net name is global, nor whether the evaluation of the property results in a valid CDBA net name.")

("dbIsValidTermNetExpr" "t_netExpression " "Given an inherited net expression in netExpression associated with a terminal, this function checks whether its syntax is valid. This function does as much local checking as possible, but it does not detect whether the given default net name is global nor whether the evaluation of the property results in a valid CDBA net name.")

("dbMakeNet" "d_cellView t_name d_parentNet )  	=> d_net / nil   dbMakeNet( d_cellView t_name [nil] " "Creates a new net in a cellview. If the net already exists, it returns the dbObject of the net.")

("dbMergeNet" "d_netId1 d_netId2 " "Merges one netId2 into netId1. The pins, terminals, connections, figures, properties, and signals of the merging net (netId2) are merged into the surviving net (netId1), and member nets of netId2")

("dbMergeProp" "d_srcPropId g_dstObjId " "Merges a property with a destination object without overwriting the property if it already exists.")

("dbMergeSingleProp" "d_srcPropId g_dstObjId " "Merges a property with a destination object without overwriting the property if it already exists.")

("dbMoveFig" "d_fig d_cellView [l_transform] " "Moves and transforms a figure and places it in a cellview.")

("dbMoveGroupMember" "d_groupMem1 [d_groupMem2] " "Moves group member d_groupMem1 immediately after group member d_groupMem2.")

("dbOpenAutoSavedCellView" "t_libName t_cellName lt_viewName [t_version] " "Reads the auto-saved file.")

("dbOpenCellViewByType" "(gt_lib | nil) t_cellName lt_viewName [t_viewTypeName [t_mode [d_contextCellView]]] " "Opens a cellview.")

("dbOpenHier" "d_cellView x_numLevels " "Opens and binds masters of instances that constitute a design hierarchy.")

("dbOpenPanicCellView" "gt_lib t_cellName t_viewName [t_version [t_mode [d_contextCellView]]] " "Opens the panic file for a cellview.")

("dbProduceMemName" "t_name " "Returns a list of the member names for the given name.")

("dbProduceOverlap" "d_cellView l_bBox [lx_level [tx_layer]] ) 	=> ld_shape / nil   dbProduceOverlap( d_cellView l_bBox  	[lx_level [tx_layer [t_purpose]]] " "Returns a list of all the shapes in a cellview whose bounding boxes overlap the area specified by l_bbox. This function interface is simpler than dbGetOverlaps if you are only interested in finding the overlapping shapes.")

("dbProduceOverlapInst" "d_cellView l_bBox [lx_level] " "Returns a list of all the instances in a cellview that overlap the area specified by l_bBox. This function interface is simpler than dbGetOverlaps if you are only interested in finding instances.")

("dbPurge" "d_cellView " "Forces a cellview to close and removes it from virtual memory.")

("dbRegPostSaveTrigger" "S_triggerFunc [x_priority] " "Allows users to register a trigger function that is to be called after dbSave. If dbSave fails, this trigger will not be launched. This trigger will be called only after saving the db cellviews. The post save trigger will be called with the db cellview Id.")

("dbRegPurgeTrigger" "S_triggerFunc [x_priority] " "Registers a user-defined trigger function.")

("dbReopen" "d_cellView t_mode " "Changes the mode on an open cellview from read to append.")

("dbReplaceEnumProp" "g_object t_name t_value l_string " "Replaces an enumerated property for an object.")

("dbReplaceHierProp" "g_object t_name " "Replaces a hierarchical property for an object.")

("dbReplaceProp" "g_object t_name t_propType g_value " "Replaces a scalar property for an object.")

("dbReplacePropList" "d_object l_params " "Replaces a list of properties of a given object with the specified list of properties.")

("dbReplaceRangeProp" "g_object t_name t_propType g_value g_lBound g_uBound " "Replaces a range property for an object.")

("dbReplaceSigNetExpr" "d_sigId t_netExpression " "Given a signal id in sigId, this function replaces any existing inherited net expression already associated with the signal. If none exists, then the given netExpression is attached to the given signal and adds the signal to the set of signals having inherited net expressions.")

("dbReplaceTermNetExpr" "d_termId t_netExpression " "Given a terminal id in termId, this function replaces any existing inherited net expression already associated with the terminal. If none exists, then the given netExpression is attached to the given terminal and adds the terminal to the set of terminals having inherited net expressions.")

("dbSave" "d_cellView [d_destCellView]  	) => t / nil   dbSave( d_cellView [t_CellandView [d_contextCellView]]  	) => t / nil   dbSave( d_cellView [list(t_cell t_view) [d_contextCellView]]  	) => t / nil   dbSave( d_cellView [list(t_cell (t_view1 [t_view2 ] ... ))  	[d_contextCellView]] 	) => t / nil   dbSave( d_cellView [t_libName t_cellName t_viewName  	[t_version [d_contextCellView]]]  	" "Saves the results of a modified cellview that has been opened for write or append mode.")

("dbSearchPropByName" "d_object t_name " "Searches for the specified property. The function uses the following search rules:")

("dbSetAutoSave" "g_isAutoSaveSet [x_saveInterval] " "Enables or disables the automatic save feature.")

("dbSetInstHeaderMasterName" "d_instHeader t_libName t_cellName t_viewName " "Changes the instance header")

("dbSetNetNameDescend" "d_cellView g_mode " "Sets a mode, descending or accending, which determines the direction of the net name vector expression.")

("dbSubFigFromNet" "" "The dbSetq equivalent of figure~>net = nil.")

("dbTransformBBox" "l_point l_list " "Transforms a bounding box.")

("dbTransformPoint" "l_point l_list " "Transforms a coordinate pair.")

("dbUndefineProc" "" "Changes the parameterized cell  specified by the d_cellView to be a reqular cellview.")

("dbUnregPostSaveTrigger" "S_triggerFunc " "Unregisters the post save trigger function from dbSave.")

("dbUnregPurgeTrigger" "S_triggerFunc " "Unregisters a user-defined trigger function.")

("dbWriteSkill" "d_cvId t_fileName t_mode t_release [g_conn] [g_ref] " "Creates a file that contains all the SKILL commands needed to recreate a cellview, so that the design can be recreated in the current or previous release by loading the file in the current or previous release, respectively.")

))
