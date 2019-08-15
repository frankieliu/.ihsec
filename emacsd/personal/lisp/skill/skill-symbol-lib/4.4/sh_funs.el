(put 'sch_funs 'symbol-type "schematic fun")
(setq sch_funs '(
("schAddSelectPt" "" "Selects the object under the cursor. This function maintains the selected set and adds the object to the selected set.")

("schCheck" "d_cvId " "Performs a check on the specified cellview. This includes extracting connectivity, running the schematic rules checker (SRC) and running the cross-view checker (VIC). You must have write permission to any cellview that is to be checked.")

("schCheckHier" "d_cvId t_viewNames t_refLibs [l_instViewListTable] " "Performs a check of the hierarchy that starts at the given cellview. The hierarchy traversed is defined by t_viewNames. Usually, the hierarchy is confined to the library of the given cellview, but you can specify a list of reference libraries to process if the hierarchy extends beyond the current library. You must have write permission to any cellview that is to be checked.")

("schCheckHierConfig" "h_cfgId [v_pathVector [g_refLibs]] " "Performs a check of the hierarchy. The check starts with the top cellview that is specified in the given hierarchy configuration. The hierarchy traversed is defined by information in this hierarchy configuration. Usually, the hierarchy is confined to the library of the given cellview, but you can specify a list of reference libraries to process if the hierarchy extends beyond the current library.")

("schCloneSymbol" "d_cvId d_masterId l_origin t_orient " "Copies or clones graphics from an existing symbol into the target symbol cellview with the given location and orientation.")

("schCmdOption" "" "Cycles through a predefined set of values. By default, this function is bound to the right mouse button. When you click the right mouse button during an active command, the command applies the next value in the predefined set. You can customize the predefined set of values by making calls to schSetCmdOption.")

("schComputePinRef" "d_cellView [t_reportFile] [t_display] [t_formatString] [t_reportDups] [t_sortByDir] [t_separator] [t_inputDesignator] [t_outputDesignator] [t_ioDesignator] [x_charsPerLine] " "Creates offsheet pin references for multisheet designs. The pin references can be displayed in the schematic next to each pin or in a report file. This function creates an offsheet pin reference report that lists each pin followed by a list of all other locations of this pin. The pin references can also be displayed in the schematic next to each pin.")

("schCopy" "d_fig d_destCV l_transform " "Copies the given object to the given destination cellview.")

("schCreateInst" "d_cvId d_masterId t_instanceName l_origin t_orient    [ n_magnification ] " "Creates an instance of the given master cellview in the specified cellview at the given location with the given orientation.")

("schCreateInstBox" "d_cvId [ l_bBox ] " "Creates an instance box in the given cellview. This function uses a bounding box you specify or determines a bounding box from the pins and device shapes.")

("schCreateNetExpression" "d_cvId t_netExpr d_glueId l_point t_justify t_orient t_font x_height " "Creates an inherited connection and the corresponding net expression label.")

("schCreateNoteLabel" "d_cvId l_point t_text t_just t_orient t_font n_fontHeight t_type " "Creates note labels in a schematic or symbol cellview with the attributes and properties you specify. These labels do not affect the connectivity but can be useful for annotation.")

("schCreateNoteShape" "d_cvId t_type t_lineStyle l_points [n_width] " "Creates note shapes in a schematic or symbol cellview with the attributes and properties you specify. These shapes do not affect the connectivity but can be useful for annotation.")

("schCreatePin" "d_cvId d_master t_termName t_direction g_offSheetP l_origin t_orientation " "Creates instances that are used to represent pins of terminals in a schematic cellview.")

("schCreateSheet" "d_cvId x_number t_borderLibrary t_borderCell t_borderView " "Creates a new sheet for a multisheet schematic. The schematic is generated based on the cell name of the index with the sheet number appended; for example, sheet003. A multisheet symbol is created with the msymbol view and an instance is placed in the index schematic.")

("schCreateSymbolLabel" "d_cvId l_point t_labelChoice t_text t_justify t_orient t_font n_height t_type " "Creates a label on a symbol cellview with the specified attributes.")

("schCreateSymbolPin" "d_cvId d_master t_termName t_direction l_origin t_orientation [g_flatten] " "Creates a pin in the given cellview with the name, direction, and orientation you specify. The figures that describe the pin are taken from the given pin master cellview, which can be accessed with a call to dbOpenCellViewByType, and are copied into the specified cellview. A terminal is created for the pin with the given name. The objects are created in the cellview with the specified orientation.")

("schCreateSymbolShape" "d_cvId t_shape t_style l_points [n_width] " "Creates the specified shape using the given fill style and the list of points in the given cellview.")

("schCreateWire" "d_cvId t_entryMethod t_routeMethod l_points n_xSpacing n_ySpacing n_width " "Creates flight lines, wide wires, or narrow wires in the specified schematic cellview.")

("schCreateWireLabel" "d_cvId d_glue l_point t_text t_justify t_orient t_font n_height g_aliasP " "Creates wire labels and glues them to the object you specify.")

("schDelete" "d_fig " "Deletes the figure you specify.")

("schDeleteIndex" "d_cvId " "Deletes an index schematic if there is one remaining sheet. Converts the remaining sheet into an ordinary schematic with the cell name of the index schematic and replaces any offsheet pins with schematic pins.")

("schDeleteSheet" "d_cvId x_number " "Deletes a sheet from a multisheet schematic design.")

("schDeselectAllFig" "[d_cvId] " "Deselects all objects in a specified cellview. Does not use the selection filter, so all objects are deselected.")

("schDirectEdit" "x_index " "Directly edits the object under the cursor.")

("schDrawSymbolPin" "d_cvId t_termName t_direction l_points " "Creates a symbol pin in the specified cellview by creating a terminal of the given name with the given direction and a polygon shape specified by the given list of points.")

("schEditPinOrder" "d_cvId l_pinList g_updateInstLastChanged " "Updates the pin ordering for schematic or symbol cellviews given a list of pin names contained in the cellview and their desired order. The purpose of this function is to keep the pin ordering of a schematic or symbol synchronized with the port ordering of a Verilog HDL or VHDL model.")

("schEditSheetSize" "d_cvId t_borderLib t_borderCell t_borderView " "Places or replaces a sheet border instance in a schematic. This function works for both multisheet and non-multisheet schematics.")

("schExtendSelSet" "w_window l_pt " "Extends the selection of the object in the specified position by selecting the object around the current object.")

("schExtendSelectPt" "" "Extends the selection of the object under the current cursor position by selecting objects around the current object.")

("schExtractConn" "d_cvId " "Runs the schematic connectivity extractor on the cellview you specify. Figures on the wire layer with drawing, flight, or label purposes are processed. Figures on the pin layer with drawing purposes are processed as schematic pins. Instances are of either cell or pin purpose; components that have cell purpose and pin instances must have objects in the master on the pin layer with drawing purpose to be processed correctly.")

("schExtractStatus" "d_cvId " "Returns the schematic extraction status for the specified cellview. The status is based on the values of the two time stamps, instancesLastChanged and lastSchematicExtraction.")

("schGetCellViewListInSearchScope" "d_cvId t_scope d_topcvId t_origHier t_viewNameList t_libName t_mode " "Returns a list of cellviews in the search scope you specify, which can be hierarchy or library.")

("schGetEnv" "t_variableName " "Gets the value of a schematic environment variable. Along with the schSetEnv function, this function lets you program the values for various options within the schematic editor without using a form. Also, these functions complement the general environment variable mechanism, which lets you preset values at startup using a .cdsenv file.")

("schGetMatchingObjects" "d_cvId t_propName t_condOp t_propValue g_useSelSet " "Finds the set of objects that match the specified search criteria in a cellview. You can search by property to limit the search in the selected set.")

("schGlueLabel" "d_label d_figure " "Glues the label to the figure you specify using a database child/parent relationship in which the label is the child.")

("schHiAlternateView" "" "Changes the view name of a single component by toggling through the list of possible views.")

("schHiCellViewProperty" "" "Displays the options form showing the properties for the current cellview.")

("schHiChangeEditMode" "t_newMode " "Sets the mode for the design in the current window to read or append. The mode is the same as that supplied to dbOpenCellViewByType.")

("schHiCheck" "[t_action] " "Checks the connectivity of a schematic and optionally starts the schematic rules checker (SRC) or the cross-view checker (VIC).")

("schHiCheckAndSave" "" "Performs the checks specified by the check options and saves the schematic to disk under the same cell name and view name, and in the same library.")

("schHiCheckHier" "[t_action][t_refLibs] " "Performs the specified checks on the current schematic and the hierarchy below it. Also updates the connectivity as needed and runs the schematic rules checker (SRC), the cross-view checker (VIC), or both.")

("schHiCloneSymbol" "[t_libraryName][t_cellName][t_viewName] " "Copies graphics from an existing symbol library into the symbol you are currently editing.")

("schHiComputePinRef" "[t_reportFile] [t_display] [t_formatString][t_reportDups] [t_sortByDir] " "Displays the Cross-Reference Options form, which computes, stores, and lists zone references for all pins and offsheet connectors in a multisheet schematic. The zone references identify where pins on other sheets reference the same net. The Sheet - Go To Pin command uses the stored references to identify pin locations. The pin references can be displayed in the schematic alongside each pin or written to a report file.")

("schHiCopy" "[g_formFlag][x_numrows][x_numcols][t_useSelSet] " "Copies objects and data such as object properties. Objects can be copied between different schematic cellviews.")

("schHiCreateBlockInst" "[t_libraryName][t_cellName][t_viewName][t_blockSampleName] [t_instanceName][t_pinNameSeed] " "Creates a block and places an instance of a block in a schematic.")

("schHiCreateInst" "[t_libraryName][t_cellName][t_viewName][t_instanceName][x_rows][x_columns] " "Places an instance of a cellview in a schematic.")

("schHiCreateInstBox" "[g_autoBox] " "Creates an instance box for the symbol you are editing. An instance box defines a rectangular region in which an instance of a symbol is selectable.")

("schHiCreateNetExpression" "[t_netExpr][t_justify][t_fontStyle][x_fontHeight]" "Creates an inherited connection and the corresponding net expression label.")

("schHiCreateNoteLabel" "[t_text][t_justify][t_fontStyle][n_fontHeight][t_type] " "Creates a note label to annotate the design for documentation purposes. These shapes do not affect connectivity.")

("schHiCreateNoteShape" "[t_shape][t_style][x_width] " "Creates a shape to annotate the design for documentation purposes. These shapes do not affect connectivity.")

("schHiCreatePin" "[t_terminalName][t_direction][t_usage][t_interpret][t_mode] " "Creates a pin of a specified type in your schematic.")

("schHiCreateSheet" "[n_number][t_size][t_type] " "Creates a sheet for a multisheet schematic.")

("schHiCreateSimBox" "[t_signalName][t_type] " "Creates a simulation monitor in a schematic.")

("schHiCreateSymbolLabel" "[t_labelChoice][t_text][t_justify][t_fontStyle][n_fontHeight] [t_type] " "Places labels in a symbol.")

("schHiCreateSymbolPin" "[t_terminalName][t_type][t_direction][t_interpret][t_mode] [n_incrCount][t_location] " "Creates pins in a symbol.")

("schHiCreateSymbolShape" "[t_shape][t_style][x_width][g_nonModal] " "Creates a line or shapes that describe a symbol.")

("schHiCreateWire" "[n_width][g_drawMode][t_routeMethod][t_lockAngle][g_nonModal] " "Creates different style wires that represent net connections in a schematic.")

("schHiCreateWireLabel" "[t_text][t_purpose][t_justify][t_fontStyle][n_fontHeight] [t_interpret][t_mode] " "Creates wire labels in a schematic. Physical contact between a label and wire is not required. You can move a label independently from a wire. When you move a wire that has a label glued to it, the label also moves.")

("schHiDelete" "" "Deletes selected objects.")

("schHiDeleteIndex" "" "Converts a multisheet schematic having one drawing sheet and one index sheet into a single-sheet schematic.")

("schHiDeleteSheet" "[n_startSheet][n_endSheet] " "Deletes a sheet or range of sheets from a multisheet schematic.")

("schHiDescend" "[w_window] " "Traverses down the hierarchy of a specified instance and displays the child cellview.")

("schHiDescendEdit" "[w_window] " "Traverses down the hierarchy of a specified instance and displays the child cellview.")

("schHiDescendRead" "[w_window] " "Traverses down the hierarchy of a specified instance and displays the child cellview.")

("schHiDisplayOptions" "[w_window] " "Sets options associated with the window display.")

("schHiDrawSymbolPin" "[t_terminalName][t_direction][t_interpret] " "Draws a polygon that represents a symbol pin.")

("schHiEditInPlace" "[w_window] " "Edits the master of an instance within the context of its parent schematic.")

("schHiEditPinOrder" "[g_updateInstLastChanged] " "Creates or modifies the property on the cellview that specifies the ordering of the pins in the current cellview.")

("schHiEditSheetSize" "[t_size][t_type] " "Edits the sheet border size of a schematic.")

("schHiEditTitleBlock" "" "Changes the properties of a title block in a schematic sheet.")

("schHiEditorOptions" "[w_window] " "Sets variables that affect the environment.")

("schHiExtractConn" "[t_action] " "Sets extraction options and runs the schematic extractor.")

("schHiFind" "[t_propName] [t_condOp] [t_propValue] " "Finds objects that match specified search criteria in a schematic or symbol view. You can specify the object filter as well as a property name or value expression that matches the objects.")

("schHiFindMarker" "" "Searches for the error and warning markers generated by the schematic rules checker (SRC) and displays a form that contains a list of the markers.")

("schHiFollowPin" "[t_order] " "Changes the cellview to one that contains the specified pin or offsheet connector. Operates on the selected set. Brings in the cellview that contains the first reference of the selected pin or offsheet connector.")

("schHiGotoSheet" "[g_sheetNum] " "Traverses sheets in a multisheet schematic.")

("schHiGridOptions" "[w_window] " "Sets options associated with the grid.")

("schHiHiliteLabel" "[t_labelType] [t_display] " "Highlights labels of wires and instances.")

("schHiInstToView" "[t_viewName] [t_dataType] " "Generates a cellview from an instance of a symbol.")

("schHiMousePopUp" "" "Displays a pop-up menu at the location of the cursor. The menu displayed is sensitive to the location of the cursor and the mode of the cellview in the window.")

("schHiMove" "[t_useSelSet] " "Moves objects to a different location. You can move objects between different schematic and symbol cellviews.")

("schHiObjectProperty" "" "Displays a form that lets you modify the properties of selected objects.")

("schHiOpenCellView" "" "Displays the Open File form. You specify the library name, cell name, view name, and edit mode in this form. The specified cellview is displayed in the current window.")

("schHiPinListToView" "[t_libName] [t_cellName] [t_viewName] [t_inPinList] [t_outPinList] [t_ioPinList] [t_swPinList] [t_dataType] " "Generates a cellview from a pin list.")

("schHiPlot" "" "Reads the .cdsplotinit file and brings up the Submit Plot form to let you generate schematic plots.")

("schHiPlotQueueStatus" "" "Displays the plot jobs in the spooling queues.")

("schHiRenumberAllSheet" "" "Sequentially renumbers all sheets in a multisheet schematic.")

("schHiRenumberSheet" "[n_from][n_to] " "Changes the number of a sheet in a multisheet schematic. Changes the cell name of the renumbered schematic to match the destination sheet number. If a sheet already exists with the destination number, then the renumbered sheet is inserted before it. All succeeding sheets will be renumbered accordingly.")

("schHiReplace" "[g_replaceAll] [t_propName] [t_condOp] [t_propValue][t_newPropName] [t_newPropValue] " "Replaces objects that match the specified search criteria with a specified value. The search criteria let you, among other tasks,")

("schHiReturn" "[w_window] " "Returns up the hierarchy.")

("schHiReturnToTop" "[w_window] " "Returns to the top-level cellview in the hierarchy.")

("schHiRotate" "[g_nonModal] " "Rotates objects.")

("schHiRouteFlightLine" "[t_routeMethod] " "Routes logical connections shown as flight lines.")

("schHiSRC" "[t_action] " "Sets schematic rules checker (SRC) options, and runs an SRC.")

("schHiSaveCellView" "" "Saves the design in the current window.")

("schHiSelectAll" "" "Opens a form that you use either to add all specified objects to the selected set or to delete all specified objects from the selected set.")

("schHiSelectByProperty" "[t_selectp] [t_propName] [t_condOp] [t_propValue] " "Adds or removes objects that match specified search criteria in a schematic or symbol view to the selected set.")

("schHiSetSymbolOrigin" "" "Relocates the origin point of a symbol.")

("schHiShowScope" "[w_window] " "Displays the current hierarchical scope in the window.")

("schHiSolder" "" "Creates a solder dot over a + or T wire segment.")

("schHiStretch" "[t_routeMethod][t_useSelSet] " "Moves objects or partially selected objects and maintains connectivity with rubberbands.")

("schHiSymStretch" "" "Moves partially selected objects in the symbol editor.")

("schHiUpdatePinOrder" "[g_updateInstLastChanged] " "Creates or modifies the property on the cellview that specifies the ordering of the pins in the current cellview.")

("schHiVHDLProperty" "" "Edits properties specific to the schematic composer and VHDL netlister.")

("schHiVIC" "[t_viewList] " "Runs the Cross-View Checker (VIC) to check the consistency of the interface of one or more cellviews against the cellview you are editing.")

("schHiVICAndSave" "" "Runs the cross-view checker (VIC) on the cellview in the current active window and optionally saves the cellview.")

("schHiViewToView" "[t_libName][t_cellName][t_viewNameFrom][t_viewNameTo] [t_dataType] " "Generates one type of cellview from another. For example, generates a symbol view from a schematic view, or a Verilog HDL description view from a symbol view.")

("schInstToView" "d_inst t_viewTo t_fromFunc t_toFunc " "Generates a cellview type from an instance of a symbol. For example, generates a Verilog HDL description from a symbol.")

("schInstallHDL" "g_library t_cellName t_viewName t_srcName [@optional g_createSymbol] " "Installs a Verilog HDL source file as an HDL cellview and creates the cell, view, and cellview objects in the library if necessary. This function can also create a matching symbol cellview.")

("schIsIndexCV" "d_cv " "Tests whether the given cellview is an index schematic cellview.")

("schIsSchEditOk" "d_cv [g_dialog] " "Tests whether the given schematic cellview is writable and whether the edit capability is enabled.")

("schIsSheetCV" "d_cv " "Tests whether the given cellview is a multisheet schematic cellview.")

("schIsSymEditOk" "d_cv [g_dialog] " "Tests whether the given schematic symbol cellview is writable and whether the edit capability is enabled.")

("schIsWireLabel" "d_figId " "Tests whether the given database figure is a schematic wire label.")

("schMove" "d_fig d_destCV l_transform " "Moves the object you specify to a destination cellview.")

("schPinListToView" "t_libName t_cellName t_viewName g_pinList t_toFunc " "Generates a cellview from a pin list. For example, generates a symbol from a pin list.")

("schPlot" "[t_file] " "Generates the plot defined in the t_file plot template file. If t_file is not specified, uses the plot options stored in the schPlotOptions property list.")

("schRegPostCheckTrigger" "s_functionName [ g_onceOnly ] " "Registers a function that will be called after a schematic is checked.")

("schRegisterFixedMenu" "t_category r_menuHandle [s_disableTrigger] [s_enableTrigger] " "Registers a vertical fixed-menu handle for specific cellview types to customize the schematic and symbol editor fixed menus. This function also registers triggers to enable and disable specific items in the fixed menu based on whether the editor window is in edit or read mode.")

("schRegisterPopUpMenu" "t_category r_menuHandle [t_mode] " "Registers r_menuHandle for a specific object type to customize the object-sensitive menus (OSMs).")

("schRenumberAllSheet" "d_cvId " "Resequences all sheets starting at one and fills any holes in the sequence.")

("schRenumberInstances" "g_objId [t_scope [g_verbose]] " "Resequences instances of the form instNamePrefix number in a manner that results in unique numbering indexes for each component name prefix encountered. Any voids in a numbering sequence are resolved by renaming instances with the highest numbers to fill the voids.")

("schRenumberSheet" "d_cvId x_from x_to " "Changes the number of a sheet in a multisheet schematic and changes the cell name of the renumbered schematic to match the destination sheet number. If a sheet already exists with the destination number, the new sheet is inserted before it and all succeeding sheets are renumbered accordingly.")

("schReplaceProperty" "l_objId t_propName t_propValue " "Changes the value of t_propName to t_propValue for the object. This function checks if the net, pin terminal, and master properties exist for the object.")

("schSRC" "d_cvId " "Runs the schematic rules checker (SRC) on a specified cellview.")

("schSelectAllFig" "[d_cvId] " "Selects all objects in a cellview that pass the selection filter.")

("schSelectPoint" "w_windowId l_pt g_isPartial g_isAdditive x_timeDelay " "Interactively selects the object under the cursor. With single selection, this function first deselects all objects on the selected set. With additive selection, this function maintains the selected set and adds the current object to the selected set. These procedures have the same functionality as mouseSingleSelectPt and mouseAddSelectPt as defined by the graphics editor.")

("schSetAndLoadTsgTemplateType" "t_tsgType [t_templateFileName] " "This function sets the tsgTemplateType environment variable and performs a load of the corresponding tsg template file.")

("schSetCmdOption" "g_form s_field l_fieldValues x_key t_mousePrompt " "Customizes which form fields are modified by calls to schCmdOption, right mouse button, and schShiftCmdOption, shift-right mouse button, when the command is active.")

("schSetEnv" "t_variableName g_value " "Sets the value of a schematic environment variable. This function, along with the schGetEnv function, lets you program the values for various options within the schematic editor without using a form. Also, these functions complement the general environment variable mechanism, which lets you preset values at startup using a .cdsenv file.")

("schSetSelectOptions" "" "Sets the filter for the selection function. You can select object types by turning toggle switches on or off. You can also choose partial or full selection.")

("schSetSymbolOrigin" "d_cvId l_origin " "Moves all the objects in the specified cellview relative to the given origin point.")

("schSetTextDisplayBBox" "tdId instId " "Sets or updates the value of a bounding box that encloses a given textDisplay object.")

("schShiftCmdOption" "" "Cycles through a predefined set of values. By default, this function is bound to the shift-right mouse button. When you click the right mouse button while pressing the Shift key during an active command, the command applies the next value in the predefined set. You can customize the predefined set of values by making calls to schSetCmdOption.")

("schSingleSelectBox" "[w_win]  [g_partial] [l_bBox] " "Selects objects within a rectangular area from a specified schematic editor window. With no arguments, it prompts you to enter the area to be selected in the current window. Partial selection is performed if the window environment variable partialSelect is set.")

("schSingleSelectPt" "" "Selects the object under the cursor after first deselecting all objects in the selected set.")

("schSolder" "d_cvId l_solderPt " "Solders two wires together in a schematic. This function places the solder dot over the given point if it is a + or T- wire intersection.")

("schSubSelectBox" "[w_win] [g_partial] [l_bBox] " "Deselects objects within a rectangular area from a specified schematic editor window. Implements the sub mode of area selection. With no arguments, it prompts you to enter the deselection area in the current window. Partial deselection is performed if the window environment variable partialSelect is set.")

("schSync" "l_cvId " "Synchronizes the schematic and Cadence database (CDB) data representations.")

("schUnregPostCheckTrigger" "s_funcName " "Unregisters a post check trigger routine. s_funcName must be the symbol for a routine that was registered using schRegPostCheckTrigger.")

("schUnregisterFixedMenu" "t_category " "Unregisters the user-registered fixed menu for specific cellview type and reassigns the default fixed menu.")

("schUnregisterPopUpMenu" "t_category [t_mode] " "Unregisters the specific category and accessMode for object-sensitive menus (OSMs) and reassigns the system default menus.")

("schVIC" "d_cvId " "Runs the cross-view checker (VIC) to check the consistency of the interface of one or more views against the view of the given cellview.")

("schViewToView" "t_sourceLibName t_sourceCellName t_libName t_cellName t_viewFrom t_viewTo t_fromFunc t_toFunc " "Generates one type of cellview from another. For example, generates a symbol from a schematic view or a Verilog HDL description view from a symbol.")

("schZoomFit" "f_scale1 f_scale2 " "Performs a zoom-to-fit with the given zoom scale values.")

))
