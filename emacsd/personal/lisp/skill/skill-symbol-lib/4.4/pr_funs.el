(put 'pr_funs 'symbol-type "global&detail routing fun")
(setq pr_funs '(
("prAlignCell" "d_cv  l_cells  t_dir	  t_mode	  t_spacing	  t_position	 " "Aligns a group of cell instances according to the specified direction, spacing, and alignment position options. Usually, this function is used to align standard cells to form a row, to align the IO pads")

("prConnDowndate" "d_cv " "Removes all stub routing and connectivity done by prConnUpdate and all connections that are marked as being made by abutment or stub. This changes the status of nets from connected to unconnected.")

("prConnUpdate" "d_cv  t_stubRoute " "Updates the connectivity of all nets in the current design. Examines the design for connections made by abutment, and marks them as done for routing purposes. Checks legality of abutments, and fails if pins that are in different nets abut. If errors occur, they are created as geometries on the Marker layer and messages are sent to the CDS.log file.")

("prConnUpdateNet" "d_net [t_stubRoute] " "Updates the connectivity of a designated net. Examines the net for connections made by abutment, and marks them as done for routing purposes. Checks legality of abutments, and fails if pins that are in different nets abut. If errors occur, they are created as geometries on the Marker layer and messages are sent to the CDS.log file.")

("prCreateChannels" "d_cv t_mainDir t_prefix " "Creates new channels for the entire design. Any existing channels are deleted before this function creates new ones.")

("prCreateCutlines" "d_cv t_mainDir " "Creates a relation tree, displays the cutlines, and adds the cutline geometries to the database. If a relation tree already exists, it is deleted and a new one is generated.")

("prDbToPtext" "d_cv t_pTextFile x_option " "Generates an ASCII Relative Placement file based on the current placement of instances in the current design.")

("prDeleteChannels" "d_cv " "Deletes all existing channels in the cellview. However, the channel masters are not deleted from the library.")

("prDeleteCutlines" "d_cv " "Deletes the relation tree (if one exists), the cutlines, and the cutline geometries in the database.")

("prGlueIn" "d_cv d_glueCV	 x_numGlue	 t_prefix	 t_startPos	 t_netAssoc	 t_mapFileName	 " "Creates and inserts glue cells into a design. Glue cells are cells that are not in the original connectivity but are used to constrain the routing in certain areas. Common examples of glue cells are IO corner, feedthrough, and fill cells.")

("prGlueRm" "d_cv l_cells	n " "Removes glue cells from a design. The glue cell terminals are disconnected from their associated nets, and the instances are removed.")

("prGrp" "d_cv l_parameters " "Optimizes the global routing based on net length and channel congestion to distribute the congestion evenly along the channels. Cells might be mirrored and interchanged within rows as a result of optimization.")

("prIOPlace" "" "Repositions only the IO pads (or terminals) of a design to minimize the total weighted wire length from the core cells to the IO cells. The IO pads are redistributed across corners of the IO frame to position the cells around the four sides of the IO frame.")

("prIgIrConnUpdateNet" "" "This is the user interface for the single-net connectivity update function. It calls and executes the prConnUpdateNet function to update the connectivity for a designated net, and prints the resulting net connectivity status using dialogs. If the designated net is not completely global routed, a form is displayed letting you specify a global net for decoupled net support. If you leave the net status unconnected, which is the default, the global router can be used to complete the net.")

("prIgIrGetAtermFromInstInst" "" "Returns the d_instTerm pointer for the pin instance on a device instance. The function returns nil if the instTerm is not found.")

("prIgIrGetChannelAccessPins" "" "Returns a list of pins in the d_net that can be accessed from a designated channel. If the net has no pins with access to the d_chan, the function returns nil.")

("prIgIrGetOuterChannels" "" "Lists the outer channels of a cellview. Either the channel instance or its appropriate relation identifier can be listed.")

("prIgIrGetPinAccessChannels" "" "Lists access directions for a pin and the channel by which the pin can be accessed in each direction. The access direction listed is adjusted on the orientation of the cell. If the instance adjacent to the d_cellInst is not a channel, the access to that direction is ignored.")

("prIgIrGetPinAccessDir" "" "Returns the access directions of a pin.The function adjusts the direction definition depending on the cell orientation. If the pin has no access, or the access direction is not defined, nil is returned.")

("prIgIrVerifyRep" "" "Verifies that the cellview is currently legal for interactive global routing (Iglr) or for using prIglr* SKILL functions to write a customized router.")

("prIglrConnectExit" "" "Creates a global routed pin instance of a designated formal pin in a designated channel and in a designated exit channel. If you call the function twice with identical input, it creates two pins because it does not check to see if the pin already exists. Use the prIglrFindPinInChannel function to see if the pin already exists before using this function. The prIglrConnectSet function replaces this lower level function.")

("prIglrConnectPin" "d_net  t_subnetName  d_devInst  d_fPin  d_chan  t_accessDir " "Creates a global routed pin instance of a designated formal pin in a designated channel. If you call the function twice with identical input, it creates two pins because it does not check to see if the pin already exists. Use the prIglrFindPinInChannel function to see if the pin already exists before using this function. The prIglrConnectSet function replaces this lower level function.")

("prIglrConnectSet" "l_pinSet  l_exitSet  d_net " "Connects a set of points (pins or exit points) to create a new subnet. This function accepts pins and exit points rather than interactive snap points. It returns a list of channels in which changes were made.")

("prIglrDisconnectExit" "d_instId  d_exitInst  d_chan  d_exitChan " "Disconnects a designated pin instance that represents the channel exit point in a designated channel.")

("prIglrDisconnectPin" "d_instId d_chan " "Disconnects a designated pin instance in a designated channel.")

("prIglrFeedAssign" "d_Inst  d_fPin  d_net " "Assigns or deassigns (releases) feedthrough pins.")

("prIglrFindExitInChannel" "exitList  d_chan  d_cvNet " "Finds the exit pin instance that corresponds to a specified exit in a designated channel. Use inst~>pin to get the pin and inst~>pin ~>net to get the net. This function calls the prIglrFindInstInChannel function.")

("prIglrFindInstInChannel" "area_bBox  layerPurposePair  d_chan d_net " "Lists instances of pins in a designated channel that are in a designated net and are completely or partially within a given region. If an instance in the channel is attached to a special channel subnet (such as, vddInt@1), a special check is made to be sure this subnet")

("prIglrGetNetByName" "d_cv t_netName " "Finds the database pointer to the net specified by t_netName. The function searches top-level nets and child nets. The dbFindNetByName function does the same thing as this function, but only searches top-level nets. This function returns nil if no net with the given name is found.")

("prImprovePlacer" "d_cv g_feedCv x_initialtemp	 t_mode	 x_jmpSR	 f_VerticalWireWt	 [x_insertFeeds] [x_fixIo]  [x_mirrorcell] " "Uses a simulated annealing algorithm for placement improvement in which the annealing schedule specifies a beginning temperature, a temperature decrement function, an equilibrium condition at each temperature, and a convergence or frozen condition.")

("prInitialPlacer" "d_cv  g_feedCV  t_speedSetting  t_fastPlc  f_verticalWireWeight  t_insertFeeds  f_snapgrid   [t_option1]  [t_option2]   [f_mirrorCells] " "Performs clustered placement on the design specified by the d_cv cellview parameter. The prInitialPlacer function places standard cells in rows, provided any macro cells have been placed previously prInitialPlacer does not move preplaced cells if you set their placement status to Firm. After prInitialPlacer executes, cells that have not yet been placed are placed and assigned a placement status of Placed.")

("prIoJust" "d_cv t_style	 t_position	 f_ioToCellDist	 f_ioToIoMinGap	 " "Adjusts IOs, either instances or pins, around the core. It also sets the PRioSide property on IO instances or sets the access direction of IO pins such that the orientation and alignment of the IOs are modified based on the selected options.")

("prPtextToDb" "d_cv t_pTextFile d_feedCv " "Reads a Relative Placement file, letting you restore placement to the current design.")

("prRelAdjacency" "d_relId/d_instId t_direction [t_type] " "Returns a list of all adjacent relation identifiers or instance identifiers for the given relation identifier or instance identifier. The list always holds the leaf-level relations. Hierarchy in the relation tree is flattened. An instance identifier can be obtained from a relation identifier with prRelGetInst. A relation identifier can be obtained from an instance identifier with prRelFindRel.")

("prRelFindRel" "d_instId " "Returns the relation that matches a designated instance.")

("prRelGetFirst" "d_relId  " "Retrieves the first relation or instance based on the type you specify.")

("prRelGetInst" "d_relId  " "Returns the instance that matches a designated relation.")

("prRelGetLast" "d_relId  " "Retrieves the last child relation or instance under d_relId in the relation tree.")

("prRelGetNext" "d_relId " "Returns the next relation of the specified relation.")

("prRelGetParent" "d_instId " "Gets the parent relation of the instance you specify.")

("prRelGetPrevious" "d_relId " "Returns the previous relation of the specified relation, or nil if the relation you specify is the first child in the relation tree.")

("prRelGroupOf" "d_relId/d_instId  [t_type]  " "Lists all objects in the same group as the object with the given relation identifier or instance identifier. To find the first cell in a group, you can use this function: car(prRelGroupOf(d_relId t_type))")

("prRelLeafGen" "d_relId/d_instId  t_cellType  [t_type] " "Lists all leaf-relation or leaf-instance identifiers. The list is ordered from the deepest relation up. This function is useful for listing all relation tree leaf nodes that correspond directly to an instance exactly once.")

("prRelTopRel" "d_cv  " "Returns the starting relation for the current design revision.")

("prRellsLeaf" "" "Determines whether the relation is a leaf of the relation tree; that is, it has no child relations.")

("prRellsRel" "" "Verifies that the specified relation is in the relation tree.")

("prSave" "d_cv [t_viewName] " "Saves the cellview and the channels within the cellview under the current or a new view name. The cellview is saved into a new view, viewName, and all subordinate channel cellviews also are saved into the same new view name (t_viewName). If the option t_viewName is not specified, the cellview is saved under the current view name.")

("prShiftToOrigin" "d_cv " "Shifts the design to the origin. Use this function before you generate channels with Cell Ensemble to ensure that the channel coordinates have positive values.")

("prSplitNet" "d_cv d_net " "Takes a supply or ground net that is logically connected to both IO and core logic in the given cellview, and splits this net into two nets; one for the ring logic to the IO channels and an internal net for the core logic. All pins on the core cells and blocks are assigned to the internal subnet. All pins on IO cells, except pins of type output, are assigned to the ring subnet. Pins of type output on IO cells are assigned to the internal subnet. All pins on IO corner cells are assigned to the ring subnet.")

("prUnplaceAll" "d_cv " "Moves all cells outside the cell boundary and sets their placement status to Unplaced. The prUpdateAll function places standard cells to the right of the boundary, macro cells to the left of the boundary, and IO cells at the top of the boundary.")

("prUnplaceIO" "d_cv  " "Moves all IO cells to the outside and top of the cell boundary and sets their placement status to Unplaced.")

("prUnplaceMacro" "d_cv  " "Moves all macro cells to the outside and left of the cell boundary and sets their placement status to Unplaced.")

("prUnplaceStd" "d_cv  " "Moves all standard cells to the outside and right of the cell boundary and sets their placement status to Unplaced.")

("prUnsplitNets" "" )

("prUpdateNetStatus" "l_netId t_attribute t_newValue  " "Changes the status of one of several attributes of a net.")

("printFunctions" "t_pattern [ p_outport ] " "Prints all function names that contain the given substring or match the given regular expression.")

("printMIF" "l_statement1 l_statement2 ... l_statementN " "Writes MIF statements, represented in their internal SMIFT list form, to an open output file.")

("printObject" "g_object [ p_outputPort ] " "A generic function that writes a description of an object to an output port.")

("printVariables" "t_pattern [ p_outport ] " "Prints all variable names that contain the given substring or match the given regular expression, along with their values.")

))
