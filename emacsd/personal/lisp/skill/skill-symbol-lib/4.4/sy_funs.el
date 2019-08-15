(put 'sy_funs 'symbol-type "compactor fun")
(setq sy_funs '(
("syActivateConstraint" "d_constObjId " "Activates the specified alignment, separation, magnetic, wire-jog, or wire-width constraint.")

("syCompactView" "d_inputCVId l_outputCVName [g_hierP] [t_logFileName] [g_appendMode] " "Compacts symbolic objects to the smallest possible area while maintaining user-specified design rules and constraints. ")

("syCreateAlignmentConstraint" "t_direction l_objectLists [?unrelaxable] " "Instructs the compactor to align the edges of objects, the centerlines of objects, or layers within objects either horizontally or vertically. Each group of objects with edges to be aligned is called an alignment group.")

("syCreateFence" "d_inputCVId l_layerPurposePair l_points g_rectOrNot " "Creates a fence. A fence is an area in which movement of objects during compaction is restricted. Objects enclosed by a hard fence are not compacted relative to each other but are compacted as an entity to objects outside the hard fence. Objects enclosed by a soft fence are compacted relative to each other and then are compacted as an entity to objects outside the soft fence.")

("syCreateJogConstraint" "d_dbWireId l_point " "Creates a point where the compactor can jog the wire during compaction.")

("syCreateMagneticConstraint" "t_direction l_object1 l_object2 t_magneticType " "Creates a magnetic constraint between two objects or layers within objects. You can set a magnetic constraint to pull two objects (or layers within objects) together or to push them apart during compaction. ")

("syCreatePathWidthConstraint" "" "This function has been replaced by the syCreateWireWidthConstraint function.")

("syCreateSeparationConstraint" "t_direction l_object1 l_object2 l_minMaxSeparation [?unrelaxable] [?ignoreDRC] " "Instructs the compactor to separate objects or layers within objects by a specified distance. You can separate two objects, an object and one edge of the cellview boundary, or two edges of the cellview boundary. ")

("syCreateWireWidthConstraint" "d_dbWireId n_finalWidth " "Creates a width constraint on the specified wire (path). The compactor will force the wire to be of this width. If a constraint is already present, this function overrides it. The syCreateWireWidthConstraint function is a replacement for the syCreatePathWidthConstraint function..")

("syDRC" "d_inputCVId d_runDir " "Checks for layer-to-layer spacing errors in the cellview and stores error data for subsequent error viewing. ")

("syDeactivateConstraint" "d_constObjId " "Deactivates the specified alignment, separation, magnetic, wire-jog, or wire-width constraint.")

("syDeleteConstraint" "d_constObjId " "Deletes the specified alignment, separation, magnetic, wire-jog, or wire-width constraint.")

("syERC" "d_inputCVId d_runDir " "Checks for electrical rule errors in the cellview and stores error data for subsequent error viewing. ")

("syExtractView" "d_inputCVId l_outputCVName [g_hierP] [t_logFileName] [g_appendMode] " "Checks input data and net connectivity of the input cellview and creates an output cellview with the errors (if any) highlighted.")

("syFrameView" "d_srcCVId l_destCellView n_mergeFactor [g_fillCenter] [t_logFile] [g_appendMode] " "Creates a protection frame, or abstraction of a cellview, for placement at the next level of hierarchy to improve efficiency of the  compactor. The function fills areas between and merges geometries on the same layer to form either a single polygon or multiple polygons, depending on your specifications. In addition, you can specify for the function to fill an area in the center of the cellview that is the maximum design rule from the cell boundary and merge this area with the geometries formed by the first fill-and-merge operation.")

("syGeBackground" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Job Monitor menu command.")

("syGetAlignmentConstraint" "d_cvId  [?object d_objId] [?direction s_direction] " "Returns a list of database object IDs of alignment constraints in a given direction. If you specify ?object, the function returns alignment constraints on only that object; otherwise, the function returns all alignment constraints in the cellview. You can use the returned database object IDs as arguments for syReadAlignmentConstraint() to get detailed information about a constraint.")

("syGetAutoJog" "d_CVId  " "Returns the value set by sySetAutoJog.")

("syGetBottomAbutted" "d_CVId " "Returns the value set by sySetBottomAbutted.")

("syGetDimensions" "d_inputCVId " "Returns the width, height, and area of the cellview.")

("syGetEnv" "t_name " "Returns the value currently assigned to the compactor environment variable supplied in the t_name argument. ")

("syGetFixLowLeftBoundary" "d_CVId " "Returns the value set by sySetFixLowLeftBoundary.")

("syGetForceChildCellCompact" "d_CVId " "Returns the value set by sySetForceChildCellCompact.")

("syGetGeoOptions" "d_CVId " "Returns the stop level, smash device flag, and conversion options set by sySetGeoOptions.")

("syGetHardCell" "d_inputCVId " "Returns the value set by sySetHardCell.")

("syGetInitialDirection" "d_CVId " "Returns the initial direction of compaction for the cellview d_CVId set by sySetInitialDirection.")

("syGetLeftAbutted" "d_CVId " "Returns the value set by sySetLeftAbutted.")

("syGetMagneticConstraint" "d_cvId  [?object d_objId] [?direction s_direction] " "Returns a list of database object IDs of magnetic constraints in a given direction. If ?object is specified, only magnetic constraints on the given object are returned; otherwise, all magnetic constraints in the given cellview are returned. You can use the returned object IDs as arguments for syReadMagneticConstraint() to get detailed information about a constraint.")

("syGetMaxAutoJogs" "d_CVId " "Returns the value set by sySetMaxAutoJogs. ")

("syGetMaxIterations" "d_CVId " "Returns the value set by sySetMaxIterations.")

("syGetPFrame" "d_CVId " "Returns the value set by sySetPFrame.")

("syGetPeelbackDistance" "d_CVId " "Returns the value set by sySetPeelbackDistance.")

("syGetPostProcess" "d_CVId " "Returns the process set by sySetPostProcess. ")

("syGetPreserveCellRow" "d_CVId " "Returns the value set by sySetPreserveCellRow.")

("syGetPreserveWireWidth" "d_CVId " "Returns the value set by sySetPreserveWireWidth.")

("syGetRightAbutted" "d_CVId " "Returns the value set by sySetRightAbutted.")

("syGetSeparationConstraint" "d_cvId  [?object d_objId] [?direction s_direction] " "Returns a list of database object IDs of separation constraints in the given direction. If you specify ?object, the function returns separation constraints on only that object; otherwise the function returns all separation constraints in the cellview. You can use the returned IDs as arguments for syReadSeparationConstraint() to get detailed information about each constraint.")

("syGetTopAbutted" "d_CVId " "Returns the value set by sySetTopAbutted.")

("syGetUseChildBdy" "d_CVId " "Returns the value set by sySetUseChildBdy.")

("syGetUserConstraint" "d_cvId  [?object d_objId] [?direction s_direction] " "Returns a list of the database object IDs of all wire-width, wire-jog, alignment, magnetic, and separation constraints in the given direction. If ?object is specified, only constraints on that object are returned; otherwise, all constraints in the specified cellview are returned. You can use these database object IDs to delete, activate, or deactivate the constraints or to obtain detailed information about the constraints using the appropriate syReadConstraint( ) function for the constraint type.")

("syGetWireJogConstraint" "d_cvId  [?object d_objId] [?direction s_direction] " "Returns a list of the database object IDs of wire-jog constraints in the direction you specify. If you specify ?object, the function returns wire-jog constraints on only that object; otherwise, the function returns all wire-jog constraints in the cellview. You can use the returned database object IDs as arguments for syReadWireJogConstraint() to get detailed information about the constraints.")

("syGetWireWidthConstraint" "d_cvId  [?object d_objId] [?direction s_direction] " "Returns a list of database object IDs of wire-width constraints in the given direction. If you specify ?object, the function returns wire-width constraints on only this object; otherwise the function returns all wire-width constraints in the cellview. You can use the returned database object IDs as arguments for syReadWireWidthConstraint() to get detailed information about each constraint.")

("syGetXAnchorBoundary" "d_CVId " "Returns the value set by sySetXAnchorBoundary.")

("syGetXPinGrid" "d_CVId " "Returns the value set by sySetXPinGrid.")

("syGetXPinGridOffset" "d_CVId  " "Returns the value set by sySetXPinGridOffset.")

("syGetYAnchorBoundary" "d_CVId " "Returns the value set by sySetYAnchorBoundary.")

("syGetYPinGrid" "d_CVId " "Returns the value set by sySetYPinGrid.")

("syGetYPinGridOffset" "d_CVId  " "Returns the value set by sySetYPinGridOffset.")

("syMenuAlignCreate" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Alignment - Create menu command.")

("syMenuAlignEdit" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Alignment - Edit menu command.")

("syMenuAutoJog" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Inhibit Auto Jog menu command.")

("syMenuCompact" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Compact menu command.")

("syMenuCompareCellView" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Show - Compare Cell Views menu command.")

("syMenuConstrGrp" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Constraint Groups menu command.")

("syMenuConvertToGeometric" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Convert to Geometric menu command.")

("syMenuCritPath" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Show - Critical Path menu command.")

("syMenuCrossProbe" "" "This function is equivalent to the Virtuoso layout editor compactor Show - Cross Probe - Add menu command.")

("syMenuExplain" "" "This function is equivalent to the Virtuoso layout editor compactor Show - Symbolic Errors and the Virtuoso XL compactor Show - Data Errors menu commands.")

("syMenuExtract" "" "This function is equivalent to the Virtuoso layout editor compactor Extract menu command.")

("syMenuFenceCreate" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Fence - Create menu command.")

("syMenuFenceEdit" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Fence - Edit menu command.")

("syMenuFrame" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Create Protection Frame menu command.")

("syMenuHardCell" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Hard Cell menu command.")

("syMenuJogCreate" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Wire Jog - Create menu command.")

("syMenuJogEdit" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Wire Jog - Edit menu command.")

("syMenuMagCreate" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Magnetic - Create menu command.")

("syMenuMagEdit" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Magnetic - Edit menu command.")

("syMenuObjEdit" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Object Constraints menu command.")

("syMenuOverconst" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Show - Overconstraints menu command.")

("syMenuReInitProbe" "" "This function is equivalent to the Virtuoso layout editor compactor Show - Cross Probe - Reinitialize menu command.")

("syMenuRecompact" "" "This function is equivalent to the Virtuoso layout editor compactor Recompact menu command.")

("syMenuReferenceCell" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Reference - Reference Cell menu command.")

("syMenuReferenceEdge" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Reference - Reference Edge menu command.")

("syMenuSepCreate" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Separation - Create menu command.")

("syMenuSepEdit" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Separation - Edit menu command.")

("syMenuShowCellSize" "t" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Show - Cell Dimensions menu command.")

("syMenuShowFixIO" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Show - Relaxed Fixed IO menu command.")

("syMenuShowPG" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Show - Relaxed Pin Grid menu command.")

("syMenuShowRelaxed" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Show - Relaxed Constraints menu command.")

("syMenuSwitchView" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Show - Switch View menu command.")

("syMenuWWidthCreate" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Wire Width - Create menu command.")

("syMenuWWidthEdit" "" "This function is equivalent to the Virtuoso layout editor compactor and the Virtuoso XL compactor Constraints - Wire Width - Edit menu command.")

("syReadAlignmentConstraint" "d_constraint " "Returns a list of the attributes of a given alignment constraint. You can extract information from the list with the assoc() function.")

("syReadMagneticConstraint" "d_constraint " "Returns a list of the attributes of a given magnetic constraint. You can extract information from the list with the assoc( ) function.")

("syReadSeparationConstraint" "d_constraint " "Returns a list of the attributes of a given separation constraint. You can extract information from the list with the assoc() function.")

("syReadWireJogConstraint" "d_constraint " "Returns a list of the attributes of a wire-jog constraint. You can extract information from the list with the assoc() function.")

("syReadWireWidthConstraint" "d_constraintId " "Returns a list of wire-width constraint attributes. You can extract information from the list with the assoc() function.")

("syRefCellConstraint" "d_srcCvId d_destCvId " "Matches pins, wells, and cell heights or widths for two cells by setting constraints on the destination cell. The constraints are set so that the cell dimensions and the pin and well locations on all four edges of the cell boundary match those of the source cell after compaction. ")

("syRefEdgeConstraint" "l_srcEdge l_destEdge " "Matches pins, well, and cell heights or widths on two cells by setting constraints on one of the cells (the slave cell) so that the spacing between the pins, wells, and both corners of the cell will match that of the other cell (the master cell) after compaction. ")

("syRemoveProbes" "" "This function is equivalent to the Virtuoso layout editor compactor Show - Cross Probe - Delete menu command.")

("sySetAutoJog" "d_CVId  g_yesOrNo " "Allows or inhibits automatic jog insertion for the specified cellview. ")

("sySetAutoJogByLayer" "d_cvId g_layer g_yesOrNo " "Allows or inhibits automatic jog insertion for the wires on the specified layer.")

("sySetAutoJogByNet" "d_netId  g_yesOrNo " "Allows or inhibits automatic jog insertion for the specified net. ")

("sySetAutoJogByWire" "d_wireId  g_yesOrNo " "Allows or inhibits automatic jog insertion for the specified wire. ")

("sySetBottomAbutted" "d_CVId g_yesOrNo " "Sets the bottom edge of the cell for abutment.")

("sySetEnv" "t_name  g_value " "Sets the compactor environment variable supplied in the t_name argument to the value supplied in the g_value argument. ")

("sySetFixLowLeftBoundary" "d_CVId  g_value " "Specifies whether to use the lower-left corner coordinates of the source cellview as the lower-left corner coordinates of the compacted cellview. Otherwise, the compactor moves the lower-left corner of the compacted cellview to (0,0).")

("sySetForceChildCellCompact" "d_CVId  g_value " "Specifies whether the compactor should compact all child cells during hierarchical compaction. During hierarchical compaction, the compactor normally compacts only those child cells not previously compacted.")

("sySetGeoOptions" "d_CVId x_stopLevel  g_smashDevice  t_mode " "Sets the stop level, smash device flag, and conversion options for sySymToPoly.")

("sySetHardCell" "d_inputCVId  g_yesOrNo " "Controls whether hierarchical compaction compacts a specified cell and its subcells.")

("sySetInitialDirection" "d_CVId  t_XOrY " "Sets the initial direction of compaction.")

("sySetLeftAbutted" "d_CVId g_yesOrNo " "Sets the left edge of the cell for abutment.")

("sySetMaxAutoJogs" "d_CVId  n_value " "Sets the maximum number of jogs that the compactor can add automatically to any one wire. ")

("sySetMaxIterations" "d_CVId  n_maxIter [n_minChange] " "Sets the maximum number of iterations executed by the compactor. Optionally sets the percentage of area the cellview must decrease with each iteration to continue compaction. Compaction stops when either termination criterion is met.")

("sySetPFrame" "d_CVId  t_viewName " "Sets the view name for the protection frames to be used for all child cells of a cellview to be compacted.")

("sySetPeelbackDistance" "d_CVId  n_distance " "Sets the maximum length of an unconnected segment you want deleted. Any unconnected wire segment with a length less than or equal to n_distance is deleted. ")

("sySetPostProcess" "d_CVId  t_WlmEnum " "Specifies whether the compactor should minimize total wire length during compaction. If you turn off wire-length minimization, you can change the default compaction direction. ")

("sySetPreserveCellRow" "d_CVId g_yesOrNo " "Specifies whether the compactor must preserve the structure of cell rows.")

("sySetPreservePathWidth" "" "This function has been replaced by the sySetPreserveWireWidth function.")

("sySetPreserveWireWidth" "d_CVId g_yesOrNo " "Specifies whether the compactor must preserve the wire (path) width specified when the wire was drawn. The sySetPreserveWireWidth function is a replacement for the sySetPreservePathWidth function.")

("sySetRightAbutted" "d_CVId g_yesOrNo " "Sets the right edge of the cell for abutment.")

("sySetTopAbutted" "d_CVId g_yesOrNo " "Sets the top edge of the cell for abutment.")

("sySetUseChildBdy" "d_CVId  g_yesOrNo " "Specifies whether the boundaries of all child cells with boundaries are used as abstractions during compaction.")

("sySetXAnchorBoundary" "d_CVId  g_yesOrNo " "Specifies whether the compactor can move the pin locations on horizontal cell boundary edges.")

("sySetXPinGrid" "d_CVId  f_gridValue " "Sets the X spacing of the grid used for placement of pins. The compactor places pins so that the lower-left corner of each pin region (that is, connection region) has an X coordinate that is an exact multiple of the value f_gridValue.")

("sySetXPinGridOffset" "d_CVId  f_gridOffsetValue " "Sets the offset for the horizontal spacing of the grid used for placement of pins. To set the subsequent spacing, use sySetXPinGrid.")

("sySetYAnchorBoundary" "d_CVId  g_yesOrNo " "Specifies whether the compactor can move the pin locations on vertical cell boundary edges.")

("sySetYFirst" "d_CVId  g_yesOrNo " "Specifies whether the compactor compacts the specified cellview in the Y direction first or in the X direction first.")

("sySetYPinGrid" "d_CVId  f_gridValue " "Sets the Y spacing of the grid you want used for placement of pins. The compactor places pins such that the lower-left corner of each pin region (that is, connection region) has a Y coordinate that is an exact multiple of the value f_gridValue.")

("sySetYPinGridOffset" "d_CVId  f_gridOffsetValue " "Sets the offset for the vertical spacing of the grid used for placement of pins. To set the subsequent spacing, use sySetYPinGrid.")

("sySymToGeo" "d_inputCVId l_outputCVName " "Converts a symbolic layout to a polygon layout. The sySymToGeo function is a replacement for the sySymToPolygon function.")

("sySymToPolygon" "" "This function has been replaced by the sySymToGeo function.")

("syUserAllDel" "d_CVId " "Deletes all user constraints in the specified cellview. These constraints include alignment, separation, magnetic, wire width, and wire jog constraints.")

("syUserAllOff" "d_CVId " "Deactivates all user constraints in the specified cellview. These constraints include alignment, separation, magnetic, wire-width, and wire-jog constraints.")

("syUserAllOn" "d_CVId " "Activates all user constraints in the specified cellview. These constraints include alignment, separation, magnetic, wire-width, and wire-jog constraints.")

("syUserAllXDel" "d_CVId " "Deletes all horizontal user constraints in the specified cellview. These constraints include alignment, separation, magnetic, wire-width, and wire-jog constraints.")

("syUserAllXOff" "d_CVId " "Deactivates all horizontal user constraints in the specified cellview. These constraints include alignment, separation, magnetic, wire-width, and wire-jog constraints.")

("syUserAllXOn" "d_CVId " "Activates all horizontal user constraints in the specified cellview. These constraints include alignment, separation, magnetic, wire-width, and wire-jog constraints.")

("syUserAllYDel" "d_CVId " "Deletes all vertical user constraints in the specified cellview. These constraints include alignment, separation, magnetic, wire-width, and wire-jog constraints.")

("syUserAllYOff" "d_CVId " "Deactivates all vertical user constraints in the specified cellview. These constraints include alignment, separation, magnetic, wire-width, and wire-jog constraints.")

("syUserAllYOn" "d_CVId " "Activates all vertical user constraints in the specified cellview. These constraints include alignment, separation, magnetic, wire-width, and wire-jog constraints.")

("symckClearDisplay" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Clear Display and Status and Post Compact - Symbolic ERC - Clear Display and Status menu commands.")

("symckDRCSetUp" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Set Up menu command.")

("symckDisplayOptions" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Display Options and Post Compact - Symbolic ERC - Display Options menu commands.")

("symckERCSetUp" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic ERC - Set Up menu command.")

("symckExplain" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Explain and Post Compact - Symbolic ERC - Explain menu commands.")

("symckFitCurrent" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Fit Current Error and Post Compact - Symbolic ERC - Fit Current Error menu commands.")

("symckFitNext" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Fit Next Error and Post Compact - Symbolic ERC - Fit Next Error menu commands.")

("symckFitVisible" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Fit Visible Errors and Post Compact - Symbolic ERC - Fit Visible Errors menu commands.")

("symckReset" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Reset Errors and Post Compact - Symbolic ERC - Reset Errors menu commands.")

("symckRunDRC" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Run DRC menu command.")

("symckRunERC" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic ERC - Run ERC menu command.")

("symckStatus" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Error Status and Post Compact - Symbolic ERC - Error Status menu commands.")

("symckView" "" "This function is equivalent to the Virtuoso layout editor compactor Post Compact - Symbolic DRC - Select Error Types and Post Compact - Symbolic ERC - Select Error Types menu commands.")

))
