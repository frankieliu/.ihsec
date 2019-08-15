(put 'las_funs 'symbol-type "layout synthesizer fun")
(setq las_funs '(
("lasAddPerNetOptByCell" "t_libName t_cellName t_viewName l_options " "Adds routing options to specific nets in a cellview. Note that this function overwrites any existing per-net routing options in a cellview. To apply per net routing options when using the lasGenCell() function to generate a layout, you must set the g_perNetAction argument to t.")

("lasAddPerNetOptByNet" "t_netName t_libName t_cellName t_viewName l_options " "Adds routing options to a single net in a cellview. To apply per net routing options when using the lasGenCell() function to generate a layout, you must set the g_perNetAction argument to t.")

("lasAddUtility" "t_prompt 	t_callback 	[ x_position -1 ] " "Adds SKILL functions as pulldown menu entries in the graphical user interface LAS - Utilities menu. To remove any of the SKILL functions you add, use lasDeleteUtility.")

("lasDeletePerNetOptByCell" "t_libName t_cellName t_viewName " "Deletes all per net routing options from a cellview.")

("lasDeletePerNetOptByNet" "t_netName t_libName t_cellName t_viewName " "Deletes routing options from a specific net in a cellview.")

("lasDeletePinConstraint" "t_cellName  t_pinName  [?topSide g_topSide] [?bottomSide g_bottomSide] [?leftSide g_leftSide] [?rightSide g_rightSide] [?allSides g_allSides] " "Removes pin constraints from one or more sides of a cell for the specified terminal.")

("lasDeleteUtility" "stx_item " "Removes a pulldown menu entry from the graphical user interface LAS - Utilities menu.")

("lasExtractPlacement" "t_inLibName  t_outLibName t_cellName  [?inView t_inView] [?outView t_outView] [?numRow x_numRow] [?aspectRatio f_aspectRatio] [?nThreshold f_nThreshold] [?pThreshold f_pThreshold] [?lasNDeltaWidth f_lasNDeltaWidth] [?lasPDeltaWidth f_lasPDeltaWidth] [?bottomDiffStrip t_bottomDiffStrip] [?routingStyle t_routingStyle] [?mergePower g_mergePower] " "Creates an extracted cellview that you can use to edit transistor placement.")

("lasGeGenLibCell" "" "Displays the cell optimization utility in LAS. For more information about optimizing cells, see the Optimizing Cells chapter in the Virtuoso Layout Synthesizer User Guide.")

("lasGePreviewRoute" "" "Displays the LAS Preview Net Connections form. Select net names from a list box for the cellview from which this command was activated. The current layer-purpose pair of the LSW is used. The LAS environment variable suggestedRouteWidth is used as the path width. This function opens a window, if necessary, to display the results.")

("lasGeRemoveRoute" "" "Displays the Remove Net Connections form. Select net names from a list box for the cellview from which this command was activated.")

("lasGeSelectLibCell" "" "Displays the Select Layouts utility in LAS. For more information about the LAS Select Layouts utility, see the Optimizing Cells chapter in the Virtuoso Layout Synthesizer User Guide.")

("lasGenCell" "t_inLibName t_outLibName t_inCellName [?inView t_inView] [?outCellName t_outCellName] [?outView t_outView] [?runPlace g_runPlace] [?runRoute g_runRoute] [?wantCompact g_wantCompact] [?numRow x_numRow] [?aspectRatio f_aspectRatio] [?firstCompDir t_firstCompDir] [?lasVddConnectionWidth f_lasVddConnectionWidth] [?lasVssConnectionWidth f_lasVssConnectionWidth] [?lasNToGroundThreshold f_lasNToGroundThreshold] [?lasPToPowerThreshold f_lasPToPowerThreshold] [?nThreshold f_nThreshold] [?pThreshold f_pThreshold] [?lasNDeltaWidth f_lasNDeltaWidth] [?lasPDeltaWidth f_lasPDeltaWidth] [?lasNWellExtension f_lasNWellExtension] [?lasPWellExtension f_lasPWellExtension] [?nWellAlign f_nWellAlign] [?pWellAlign f_pWellAlign] [?nContLimit x_nContLimit] [?pContLimit x_pContLimit] [?vertConstr f_vertConstr] [?vddWidth f_vddWidth] [?vssWidth f_vssWidth] [?lasSubContLocation t_lasSubContLocation] [?maxSubContDist f_maxSubContDist] [?lasSubsToGateDist f_lasSubsToGateDist] [?objectGrid f_objectGrid] [?diffWireJog g_diffWireJog] [?vertWireJog g_vertWireJog] [?horiWireJog g_horiWireJog] [?lasInternalPin g_lasInternalPin] [?internalPinAccess t_internalPinAccess] [?lasXPinGrid f_lasXPinGrid] [?lasXPinGridOffset f_lasXPinGridOffset] [?lasYPinGrid f_lasYPinGrid] [?lasYPinGridOffset f_lasYPinGridOffset] [?routingStyle t_routingStyle] [?mergePower g_mergePower] [?preferInterRow g_preferInterRow] [?noInterRow g_noInterRow] [?polyRoute x_polyRoute] [?lasInterRowPolyRoute g_lasInterRowPolyRoute] [?lasM2ReplaceM1 g_lasM2ReplaceM1] [?pgList l_pgList] [?polyTextLayer t_polyTextLayer] [?polyTextPurpose t_polyTextPurpose] [?m0TextLayer t_m0TextLayer] [?m0TextPurpose t_m0TextPurpose] [?m1TextLayer t_m1TextLayer] [?m1TextPurpose t_m1TextPurpose] [?m2TextLayer t_m2TextLayer] [?m2TextPurpose t_m2TextPurpose] [?m3TextLayer t_m3TextLayer] [?m3TextPurpose t_m3TextPurpose] [?m4TextLayer t_m4TextLayer] [?m4TextPurpose t_m4TextPurpose] [?prBoundary g_prBoundary] [?quickPlace g_quickPlace] [?randomSeed x_randomSeed] [?lasExhaustivePlaceThreshold x_lasExhaustivePlaceThreshold] [?cluster t_cluster] [?flattenHier t_flattenHier] [?yNetBias f_yNetBias] [?rowWidthFactor l_rowWidthFactor] [?preplaceFile t_preplaceFile] [?confNameList l_confNameList] [?grpNameList l_grpNameList] [?timingFile t_timingFile] [?autoJog g_autoJog] [?maxAutoJogPerWire x_maxAutoJogPerWire] [?bentGate t_bentGate] [?bottomDiffStrip t_bottomDiffStrip] [?intraRowRouting t_intraRowRouting] [?intraRowTrack x_intraRowTrack] [?overXtrRoute t_overXtrRoute] [?polyInterRow t_polyInterRow] [?ioPolyRouting t_ioPolyRouting] [?polyN2PGateRouting t_polyN2PGateRouting] [?doublePolyRouting g_doublePolyRouting] [?polyInterconnectWidth g_polyInterconnectWidth] [?pgNoJogBus g_pgNoJogBus] [?pgNoJogBranch g_pgNoJogBranch] [?stackVias g_stackVias] [?grdRingNtpy f_grdRingNtpy] [?grdRingPtpy f_grdRingPtpy] [?grdRingOpenLeft g_grdRingOpenLeft] [?grdRingOpenRight g_grdRingOpenRight] [?grdRingOpenTop g_grdRingOpenTop] [?grdRingOpenBottom g_grdRingOpenBottom] [?perNetAction g_perNetAction] [?suggestedRoute g_suggestedRoute] [?prCellType t_prCellType] [?minDiffMode g_minDiffMode] [?allRigid g_allRigid] [?pinPlacement t_pinPlacement] [?onePointTBIO g_onePointTBIO] [?onePointLRIO g_onePointLRIO] [?oneInternalPoint g_oneInternalPoint] [?metalSD g_metalSD] [?lessMetalOverDiff g_lessMetalOverDiff] [?powerGridWidth f_powerGridWidth] [?groundGridWidth f_groundGridWidth] [?powerGridOffset f_powerGridOffset] [?groundGridOffset f_groundGridOffset] [?supplyGridType t_supplyGridType] [?gridDist f_gridDist] [?pgGridPin g_pgGridPin] [?diffConnect g_diffConnect] [?contArrayOnPg t_contArrayOnPg] [?m3StackMetal g_m3StackMetal] [?m3PowerWidth f_m3PowerWidth] [?m3GroundWidth f_m3GroundWidth] [?hBusCoord g_hBusCoord] [?pwrHBusCoord l_pwrHBusCoord] [?gndHBusCoord l_gndHBusCoord] [?m3ContDist f_m3ContDist] [?m2IntraRowRoute g_m2IntraRowRoute] [?mergeWidthPwr f_mergeWidthPwr] [?mergeWidthGnd f_mergeWidthGnd] [?addLeakContact g_addLeakContact] [?leakSide t_leakSide] [?matchContDir g_matchContDir] [?subDensity f_subDensity] [?nSubSignalName t_nSubSignalName] [?nSubSignalWidth f_nSubSignalWidth] [?pSubSignalName t_pSubSignalName] [?pSubSignalWidth f_pSubSignalWidth] [?DirControl t_DirControl] [?gridOn g_gridOn] [?combOn g_combOn] [?polyMatchXtr t_polyMatchXtr] [?logFileName t_logFileName] [?diffEdgeAlign t_diffEdgeAlign] [?maxDiffContCutN x_maxDiffContCutN] [?maxDiffContCutP x_maxDiffContCutP] [?minBusContact x_minBusContact] [?maxBusContact x_maxBusContact] [?abutWells g_abutWells] [?ChainEffort t_ChainEffort] [?SLAction ] [?SLConnect ] [?SLPower ] [?SLIO ] [?SLInter ] [?SLGate ] [?SLMax ] [?SLAutoJog ] [?SLStackingContact ] [?SLPolyConnect ] [?SLDiffCont ] [?SLNDiffCover ] [?SLPDiffCover ] " "This function generates a symbolic layout from a schematic or netlist, subject to the options and constraints you specify.")

("lasGetPerNetOptByCell" "t_libName t_cellName t_viewName " "Returns a list of the per net routing options applied to a cellview.")

("lasGetPerNetOptByNet" "t_netName t_libName t_cellName t_viewName " "Returns the routing options applied to a specific net in a cellview.")

("lasLoadPerNetOpt" "t_fileName t_libName t_cellName t_viewName " "Loads the per net routing options from an ASCII file into the cellview you specify. The per net information in the ASCII file replaces any existing per net routing options in the cellview. Note that the per net routing options in the ASCII file must be in LAS statement format.")

("lasLoadPinConstraint" "t_cellName t_fileName [?libName t_libName] [?viewName t_viewName] [?metal0LayerName t_metal0LayerName] [?metal1LayerName t_metal1LayerName] [?metal2LayerName t_metal2LayerName] [?metal3LayerName t_metal3LayerName] [?metal4LayerName t_metal4LayerName] [?polyLayerName t_polyLayerName] [?filteredPins t_filteredPins] [?loadAspectRatio g_loadAspectRatio] " "Loads pin constraints from a file or from a cellview containing floorplan data.")

("lasPreviewRoute" "d_cellView lt_netList [?routingStyle 	t_routingStyle] [?mergePower	g_mergePower] [?intraRowRouting 	t_intraRowRouting] [?intraRowTrack 	x_intraRowTrack] [?layer		t_layer] [?purpose		t_purpose] [?width		f_width] [?openWindow		g_openWindow] " "Use LAS router to produce routes for a selected set of nets in a placed cellview. The routes are represented in the cellview with paths on a single layer/purpose.")

("lasRemoveRoute" "d_cellView  lt_netList  " "Removes any existing routes from a cellview for a given net or list of nets.")

("lasSavePerNetOpt" "t_fileName t_libName t_cellName t_viewName " "Saves per net routing options from a cellview into an ASCII file you specify. Note that the per net routing options saved to the ASCII file are in LAS statement format.")

("lasSavePinConstraint" "t_cellName t_fileName " "Saves the current pin side and pin order constraints for the specified cell in a constraints file.")

("lasSetCompact1Process" "t_funcName  " "Assigns or removes an assignment from a function as the process you want LAS to run directly after the first compaction round for a layout. Once assigned, LAS automatically processes this function right after the first round of compaction completes.")

("lasSetCompact2Process" "t_funcName  " "Assigns or removes an assignment from a function as the process you want LAS to run directly after the second compaction round for a layout. Once assigned, LAS automatically processes this function right after the second round of compaction completes.")

("lasSetCompact3Process" "t_funcName  " "Assigns or removes an assignment from a function as the process you want LAS to run directly after the third compaction round for a layout. Once assigned, LAS automatically processes this function right after the third round of compaction completes.")

("lasSetEndOptProcess" "t_funcName  " "Assigns or removes an assignment from a function as the process run after LAS optimizes a cell or list of cells. Once assigned, LAS processes this function after it optimizes a cell or list of cells.")

("lasSetInitOptProcess" "t_funcName  " "Assigns or removes an assignment from a function as the process run before cell optimization. Once assigned, LAS automatically processes this function right before it optimizes a cell or list of cells.")

("lasSetOrderConstraint" "t_cellName [?topSide l_topSideOrderList] [?bottomSide l_bottomSideOrderList] [?leftSide l_leftSideOrderList] [?rightSide l_rightSideOrderList] [?topPositionMax f_topPositionMax] [?bottomPositionMax f_bottomPositionMax] [?leftPositionMax f_leftPositionMax] [?rightPositionMax f_rightPositionMax] [?topType t_topType] [?bottomType t_bottomType] [?leftType t_leftType] [?rightType t_rightType] " "Places the specified pins with the order and position calculation method you specify. Pins constrained to the left or right sides of the cell are placed from the bottom to the top of the side, and pins constrained to the top or bottom sides of the cell are placed from the left to the right of the side.")

("lasSetPinConstraint" "d_cellViewID t_pinName [?topSide g_topSide] [?bottomSide g_bottomSide] [?leftSide g_leftSide] [?rightSide g_rightSide] [?anySide g_anySide] [?topLayer t_topLayer] [?bottomLayer t_bottomLayer] [?leftLayer t_leftLayer] [?rightLayer t_rightLayer] [?topWidth f_topWidth] [?bottomWidth f_bottomWidth] [?leftWidth f_leftWidth] [?rightWidth f_rightWidth] [?feedthru g_feedthrough] [?replace t_replace] " "Applies side, layer, and width constraints to a pin you specify.")

("lasSetPostCompactProcess" "t_funcName  " "Allows you to define and insert postcompaction data-processing operations into the LAS layout synthesis process. LAS runs this function automatically after compaction for the layout completes.")

("lasSetPreCompactProcess" "t_funcName  " "Allows you to define and insert precompaction data-processing operations into the LAS layout synthesis process. LAS runs this function after it routes the layout. After this function is complete, compaction begins.")

("lasSetPreOptProcess" "t_funcName  " "Allows you to define and insert cell optimization data processing operations for a specific cellview before LAS optimizes the cellview. LAS runs this function before it begins optimizing a cellview.")

("lasShowUtility" "" "Prints information about the utility functions currently installed. The utility functions are custom SKILL routines that appear as menu items in the LAS - Utilities menu.")

))
