(put 'ge_funs 'symbol-type "graphics editor fun")
(setq ge_funs '(
("geAddHilightArc" "g_hlSetId l_ellipse_bBox l_arc_bBox " "Adds an arc to a highlight set.")

("geAddHilightCircle" "g_hlSetId l_center n_radius " "Adds a circle to a highlight set.")

("geAddHilightDonut" "g_hlSetId l_center n_outR n_holeR " "Adds a donut to a highlight set.")

("geAddHilightDot" "g_hlSetId l_point n_width n_height " "Adds a dot to a highlight set.")

("geAddHilightEllipse" "g_hlSetId l_bBox " "Adds a ellipse to a highlight set.")

("geAddHilightFig" "g_hlSetId d_figId [g_drawAll] " "Adds a figure to a highlight set.")

("geAddHilightLabel" "g_hlSetId l_origin t_label t_just t_orient t_font n_height g_draftingP [g_overBar] " "Adds a label to a highlight set.")

("geAddHilightLine" "g_hlSetId l_points " "Adds a line to a highlight set.")

("geAddHilightPath" "g_hlSetId l_points n_width " "Adds a path to a highlight set.")

("geAddHilightPolygon" "g_hlSetId l_points " "Adds a polygon to a highlight set.")

("geAddHilightRectangle" "g_hlSetId l_bBox " "Adds a rectangle to a highlight set.")

("geAddInstProbe" "[w_windowId] [l_lpp] [lt_probeSpec] " "Adds an instance probe to a window.")

("geAddNetProbe" "[w_windowId] [l_lpp] [lt_probeSpec] " "Adds a net probe to a window.")

("geAddPathProbe" "[w_windowId] [l_lpp] [lt_probeSpec1] [lt_probeSpec2] " "Adds a path probe to a window.")

("geAddSelectBox" "[w_windowId] [g_partial] [l_bBox] " "Implements the add mode of area selection.")

("geAddSelectPoint" "[w_windowId] [g_partial] [l_point] " "Implements the add mode of point selection.")

("geAddTermProbe" "[w_windowId] [l_lpp] [lt_probeSpec] " "Adds a terminal probe to a window.")

("geCellViewToDlist" "d_cellViewId " "Returns a display list of all the objects in a cellview.")

("geCenter" "[w_windowId] " "Pans the display so that the edit cellview is centered in the window.")

("geChangeCellView" "[w_windowId] [t_libName] [t_cellName] [t_viewName] [t_access_mode] " "Opens a design in an existing window.")

("geChangeEditMode" "t_newMode [w_windowId] " "Sets the mode of a design, allowing you to edit or view the design.")

("geClosePolygon" "d_cellViewId l_points t_snapMode " "Creates a closed polygon from a list of points.")

("geCompressPointArray" "d_cellViewId l_points g_closedList " "Searches a point list in a cellview for colinear points and deletes the intermediate colinear points.")

("geCoordp" "coord " "Determines whether the data supplied in coord is a point coordinate.")

("geCopySelSet" "[w_windowId] [l_sourcePt] [l_destPt] " "Procedural interface to copy the selected set.")

("geCreateBend" "d_cellViewId tx_layer l_points f_width1  f_width2 t_bendStyle f_bendFac f_radFac f_chamFac  x_nPtsToPI " "Creates a transmission line bend in a cellview.")

("geCreateHilightSet" "d_cellViewId l_layerPurposePair  [g_notGlobal] " "Creates a highlight set.")

("geCreateMarker" "d_dbobjectId t_severity t_owner t_reason  t_displayText " "Creates a box-shaped marker whose size and position are determined by the software.")

("geCreateMarkerByBBox" "d_cellViewId t_type t_owner t_reason  t_displayText l_bBox " "Creates a rectangular marker whose size you define with l_bBox.")

("geCreateMarkerByPoints" "d_cellViewId t_type t_owner t_reason  t_displayText l_points " "Creates a polygon-shaped marker.")

("geCreateTaper" "d_cellViewId tx_layer l_points f_width1  f_width2 t_taperStyle x_nPtsToTaper " "Creates a tapered transmission line in a cellview.")

("geCreateTri" "" "Creates a transmission line in a cellview.")

("geDeleteAllAreaViewLevel" "w_windowId " "Removes all area view levels from a window.")

("geDeleteAllInstViewLevel" "w_windowId " "Removes all instance-specific view levels from a window.")

("geDeleteAllMarker" "d_cellViewId [l_owner [l_severity] ] " "Deletes all markers in cellview d_cellViewId that have owner l_owner and severity l_severity.")

("geDeleteAllProbe" "[w_windowId] [g_crossProbeFlag] " "Removes all the probes from a window.")

("geDeleteAreaViewLevel" "w_windowId l_bBox " "Removes from a window all area view levels located in the bounding box l_bBox.")

("geDeleteHilightObject" "g_hlObjectId " "Deletes the highlight object from the highlight set.")

("geDeleteHilightSet" "g_hlSetId " "Deletes a highlight set.")

("geDeleteInstProbe" "[w_windowId] [lt_probeSpec] " "Deletes an instance probe from a window.")

("geDeleteInstViewLevel" "[w_windowId] d_instId " "Removes all instance-specific view levels associated with an instance ID.")

("geDeleteNetProbe" "[w_windowId] [lt_probeSpec] " "Deletes a net probe from a window.")

("geDeletePathProbe" "[w_windowId] [lt_probeSpec] " "Deletes a path probe from a window.")

("geDeleteProbe" "w_windowId o_userType [g_crossProbeFlag] " "Removes a probe from a set of probes in a window.")

("geDeleteSelSet" "[w_windowId] " "Deletes all selected objects in the specified window. If w_windowId is not specified, the current window is used.")

("geDeleteTermProbe" "[w_windowId] [lt_probeSpec] " "Deletes a terminal probe from a window.")

("geDeselectAll" "[w_windowId] " "Deselects everything in the specified window. If w_windowId is not specified, the current window is used.")

("geDeselectAllFig" "[d_cellViewId] " "Deselects all objects in a cellview.")

("geDeselectAllObject" "[d_cellViewId] " "Deselects everything in the specified cellview. If d_cellViewId is not specified, the cellview in the current window is used.")

("geDeselectArea" "[w_windowId] [l_bBox] " "Calls geSubSelectBox to deselect objects within the specified bounding box in the specified window. ")

("geDeselectFig" "d_figId " "Removes an object from the selected set if the object passes the selection filter.")

("geDeselectFigNoFilter" "d_figId " "Deselects the specified figure.")

("geDeselectFigPoint" "d_figId l_vertex " "Removes vertices from the selected set if they pass the selection filter.")

("geDeselectObject" "d_figId [l_path] " "Deselects the specified object at the specified hierarchical path, if it passes the selection filter. ")

("geDeselectObjectNoFilter" "d_figId [l_path] " "Deselects the specified object at the specified hierarchical path.")

("geDeselectObjectPoint" "d_figId l_path l_points " "Deselect the specified vertices of the specified figure if it passes the selection filter. ")

("geDeselectPoint" "[w_windowId] [l_point] " "Calls geSubSelectPoint to deselect the figure at the specified point in the specified window. This might deselect just a vertex or edge, or the whole figure, depending on the state of the partialSelect window environment variable. Use the F4 key to toggle this variable. You can see the state of partialSelect in the window banner.")

("geDiscardEdits" "[w_windowId] " "Discards all edits made to a design.")

("geEditInPlace" "w_windowId t_accessMode d_instId x_iteration  x_row x_col g_cancel " "Edits an instance in place.")

("geEditSelSet" "[d_cellViewId] " "Displays and edits the properties of each object in the selected set in a cellview.")

("geEditSingleObject" "d_objectId " "Displays and edits the properties of an object.")

("geEditToWindowPoint, geWindowToEditPoint" "" "Translates coordinate values when you are using edit in place. geWindowToEditPoint applies the top-level cellview")

("geEquivWindow" "w_windowId " "Returns the ID of a window that has the same edit cellview as the specified window.")

("geEquivWindowSet" "w_windowId " "Returns a list of all windows that have the same edit cellview as the specified window.")

("geExplainProbe" "[w_windowId] [lt_probeSpec] " "Explains the probes in a window.")

("geFindPathToCellViewInst" "d_cellViewId d_master_Id " "Returns a hierarchical path of one of the references to a particular master in a cellview.")

("geGetAdjustedPath" "w_winId t_pathList [d_cellViewId] [t_viewnameList] " "Reduces the given hierarchical net path to the shortest hierarchical name that is equivalent to this net.")

("geGetAllAreaViewLevel" "w_windowId " "Retrieves all area view levels set for a window.")

("geGetAllInstViewLevel" "w_windowId " "Retrieves the start level and stop level assigned within a window.")

("geGetAllProbe" "[w_windowId] " "Gets a list of all the probes in a window.")

("geGetAreaViewLevel" "w_windowId l_bBox " "Retrieves an area view level overlapping a bounding box.")

("geGetCellViewWindow" "d_cellViewId " "Returns the ID of a window in which the specified cellview is displayed.")

("geGetCrossProbeValue" "t_viewTypeName " "Queries the view type to see if it is set.")

("geGetCurrentHilightSet" "d_cellViewId " "Retrieves the current highlight set.")

("geGetDisabledMenus" "windowId [menuList] " "Given a windowId, returns all the disabled submenus for all banner menus on that window. If menuList (optional) is given, only the disabled submenus on those banner menus are returned.")

("geGetEditCellView" "[w_windowId] " "Returns the ID for the cellview being edited.")

("geGetEnablePredicate" "menu appName " "Returns the enable predicate of the menu for the application named appName or nil if undefined.")

("geGetFigHilightObjectId" "g_hlSetId d_figId " "Returns the highlight object ID of the object d_figId in the highlight set g_hlSetId.")

("geGetHierMemInst" "[w_windowId] " "Returns a list describing the hierarchy of instances that have been descended into or edited-in-place to arrive at the cellview in the window.")

("geGetInstHier" "[w_windowId] " "Returns a string describing the hierarchy of instances that have been descended into or edited-in-place in the current window to arrive at the cellview in the window.")

("geGetInstHierPath" "w_windowId " "Similar to geGetInstHier but returns additional information for mosaic instances.")

("geGetInstTransform" "dbInstId " "Evaluates a path to an instance returned by dbGetTrueOverlaps and concatenates the overall offset, transform, and magnification of the instance placed within the design hierarchy. The value returned by geGetInstTransform is a three member list containing the values of the three variables mentioned above. This transform list can be passed to the functions dbCopyFig or dbMoveFig as their third argument to copy or move the shape to the cellView passed to dbGetTrueOverlaps as its first argument.")

("geGetInstViewLevel" "w_windowId d_instId " "Retrieves the start level and stop level of an instance.")

("geGetMarkerDisplayText" "d_figId " "Displays the text associated with a marker.")

("geGetMarkerOwner" "d_figId " "Displays the owner of a marker.")

("geGetMarkerReason" "d_dbobjectId " "Displays the reason for a marker.")

("geGetMarkerType" "d_figId " "Displays the type of a marker.")

("geGetObjectSelectedSet" "" )

("geGetProbeNetStopLevel" "" "Gets the display stop level of net probes.")

("geGetProbeUserLPP" "" "Gets the layer-purpose pair to be used by the geAdd*Probe functions if no layer-purpose pair is passed into these functions.")

("geGetScrollPercent" "" "Obtains the percentage used by geScroll when shifting the drawing.")

("geGetSelSet" "[w_windowId | d_cellViewId] " "Returns a list of the currently selected objects in a window or cellview.")

("geGetSelSetCount" "[d_cellViewId] " "Counts selected objects in a cellview.")

("geGetSelSetFigPoint" "d_figId " "Returns a list indicating whether points are selected for an object.")

("geGetSelectedSet" "[d_cellViewId] " "Returns a list of selected objects in a cellview.")

("geGetTopLevelCellView" "[w_windowId] " "Returns the ID of the top-level cellview displayed in a window.")

("geGetWindowBox" "w_windowId " "Returns the lower left and upper right coordinates of the current window display.")

("geGetWindowCellView" "[w_windowId] " "Returns the ID of the cellview displayed in a window.")

("geGetWindowRep" "[w_windowId] " "An alias for geGetWindowCellView.")

("geGetWindowStatus" "windowId appName " "Returns the status for the application named appName on the window windowId. Returns nil if the status for appName is undefined.")

("geHasMarker" "d_cellViewId [l_owner [l_type] ] " "Queries whether the cellview contains any markers with owner l_owner and type l_type.")

("geHiCommonFindMarker" "" "Opens the Find Marker form and highlights the current marker in the current window.")

("geHiDeleteMarker" "" "Deletes the current marker in the current window.")

("geHiExplainMarker" "" "Explains the current marker in the current cellview.")

("geHiFindMarker" "" "Highlights the current marker in the current window.")

("geInstIdToFileSpec" "d_instId t_mode " "Creates a fileSpec (disassociated property list) from the data in an instance and the given mode.")

("geIsFigAllSelected" "d_figId " "Checks whether an object is completely selected.")

("geIsFigPartiallySelected" "d_figId " "Checks whether an object is partially, but not completely, selected.")

("geIsFigSelected" "d_figId " "Checks whether an object is at least partially selected.")

("geIsMarkerShape" "d_dbobjectId " "Checks whether a shape was created as a marker.")

("geIsObjectAllSelected" "d_figId [l_path] " "Tests if the specified figure is fully selected.")

("geIsObjectPartiallySelected" "d_figId [l_path] " "Tests if the specified figure is partially selected.")

("geIsObjectSelected" "d_figId [l_path] " "Tests if the specified figure is partially or fully selected.")

("geIsPathReentrant" "d_cellViewId l_points n_width [t_style]  [n_beginExt] [n_endExt] " "Determines whether a path is self-intersecting.")

("geIsPolygonReentrant" "d_cellViewId l_points " "Determines whether a polygon is self-intersecting.")

("geIsValidHilightObject" "h_hlObjectId " "Determines whether the highlighted object is valid.")

("geIsValidHilightSet" "h_hlSetId " "Determines whether a highlight set is valid.")

("geLoadIcon" "[t_iconName] [t_fileName] [x_width] [x_height]  [x_bgColor] " "Creates an icon from a SKILL file.")

("geLoadNextProbe" "[w_window] [p_port] [s_prop] [s_cond] [g_value] [s_loadCount] " "Loads a probe into a window. Identical to geLoadProbe except that s_loadCount is a symbol containing the index of the probe to be loaded.")

("geLoadProbe" "[w_windowId] [p_port] [s_prop] [s_cond]  [g_value] " "Loads probes into a window.")

("geMakeProbeWithColor" "?window w_windowId ?name t_name  ?object g_object ?otherObject g_otherObject  ?color g_color ?probeType t_probeType ?displayStyle t_displayStyle  ?viewTypeList l_viewTypesToCrossProbe  ?message t_messageString " "Creates a probe of the specified type and gives it the specified color.")

("geMakeProbeWithLabel" "?window w_windowId  ?name t_name  ?object g_object  ?otherObject g_otherObject  ?label g_label  ?probeType t_probeType  ?displayStyle t_displayStyle  ?viewTypeList g_viewTypesToCrossProbe  ?message t_messageString  ?labelName t_labelName  ?labelColor l_labelColor  ?labelOffset l_labelOffset  ?labelFont t_labelFont ?labelFontSize f_labelFontSize  ?labelJust t_labelJust  ?labelOrient t_labelOrient " "Creates a probe and gives it the specified label.")

("geMakeProbeWithOnColor" "?window w_windowId  ?name t_name  ?object g_object  ?otherObject g_otherObject  ?onColor g_onColor  ?probeType t_probeType  ?displayStyle t_displayStyle  ?viewTypeList g_viewTypesToCrossProbe  ?message t_messageString " "Creates an instance probe and gives it the specified color.")

("geNewWindow" "[w_windowId] " "Makes a copy of a window.")

("geOpen" "?window w_windowId ?lib t_lib ?cell t_cell  ?view t_view ?viewType t_viewType ?mode t_mode " "Opens a design in a new window.")

("gePointQuery" "w_windowId l_point t_filterProc " "Returns the ID of the object found at the point l_point.")

("gePointToFig" "[w_windowId] [g_ignoreSelect] [l_list] " "Returns the IDs of all objects located at the coordinates given in l_list.")

("gePopHilightStack" "d_cellViewId " "Pops the current highlight set out of the highlight stack.")

("gePrintAllProbe" "[w_windowId] [p_port] " "Prints a list of the probes in a window.")

("geProbeP" "o_probe " "Checks if the value passed in is a probe.")

("gePush" "w_windowId t_accessMode d_instId x_iteration x_row x_col g_cancel " "Pushes into an instance.")

("gePushHilightStack" "g_hlSetId " "Pushes a highlight set into the highlight stack of the cellview to which the highlight belongs.")

("geQuerySelSet" "[w_windowId] " "Displays the properties of each object in the selected set.")

("geRefresh" "" "Redraws all areas of all windows that have not been updated since the last redraw, and need redrawing.")

("geRefreshCellView" "d_cellViewId [l_bBox] " "Redraws a cellview if neccssary. If a bounding box is specified, only that area is redrawn.")

("geRefreshWindow" "[w_windowId] [l_bBox] " "Refreshes a window. If a bounding box is specified, only that area is refreshed.")

("geResetCellView" "d_cellViewId " "Redisplays the last saved version of a cellview.")

("geRestoreWinView" "w_windowId " "Restores the view saved with geSaveWinView.")

("geReturn" "[w_windowId] " "Returns to the previous (parent) level displayed in a window before a descend, edit in place, or switch was done.")

("geReturnToLevel" "w_windowId " "Displays a list box containing the levels to which you can return.")

("geSave" "[w_windowId] " "Saves a design.")

("geSaveAs" "[w_windowId] [t_libName] [t_cellName] [t_viewName] " "Saves a design under another name.")

("geSaveIcon" "[w_windowId] [t_iconName] [t_fileName] " "Saves a cellview as a SKILL icon file.")

("geSaveProbe" "[w_windowId] [p_port] " "Saves probes to a port.")

("geSaveWinView" "[w_windowId] [t_name] " "Saves the current view of the window w_windowId to the name t_name.")

("geScroll" "[g_windowId] [t_dir] [g_zoom] " "Scrolls a view.")

("geSelectAllFig" "[d_cellViewId] " "Selects all objects in a cellview that pass the selection filter.")

("geSelectArea" "[w_windowId] [l_bBox] " "Calls geAddSelectBox to add selected objects within the specified bounding box in the specified window.")

("geSelectFig" "d_figId " "Adds an object to the selected set if it passes the selection filter.")

("geSelectFigNoFilter" "d_figId " "Selects the specified figure regardless of the selection filter.")

("geSelectFigPoint" "d_figId l_vertex " "Adds vertices of an object to the selected set if they pass the selection filter.")

("geSelectObjectNoFilter" "d_figId [l_path]" "Selects the specified figure regardless of the selection filter.")

("geSelectPoint" "[w_windowId] [l_point] " "Calls geAddSelectPoint to add a selected object at the specified location in the specified window.")

("geSetAreaViewLevel" "w_windowId l_bBox n_start n_stop " "Sets display start and stop threshold levels for an area independently of the window levels.")

("geSetCrossProbeValue" "t_viewTypeName [g_value] " "Sets the view types to cross-probe.")

("geSetEnablePredicate" "menu appName enablePredicate " "Sets the enable predicate of the menu for appName to enablePredicate.")

("geSetInstViewLevel" "w_windowId d_instId n_start n_stop " "Sets display start and stop threshold levels for an instance independently of the window levels.")

("geSetProbeNetStopLevel" "x_netDisplayStopLevel " "Sets the display stop level of net probes.")

("geSetProbeUserLPP" "l_lpp " "Sets the layer-purpose pair to be used by the geAdd*Probe functions if no layer-purpose pair is passed in to these functions.")

("geSetScrollPercent" "n_percent " "Controls the percentage of the drawing currently visible that is shifted when geScroll is activated.")

("geSetWindowStatus" "windowId appName status " "Sets the status for windowId and appName to status.")

("geShift" "[w_windowId] [t_dir] " "Shifts the window w_windowId in the direction t_dir.")

("geSingleSelectBox" "[w_windowId] [g_partial] [l_point] " "Implements the single mode of area selection.")

("geSingleSelectPoint" "[w_windowId] [g_partial] [l_point] " "Implements the single mode of point selection.")

("geSubSelectBox" "[w_windowId] [g_partial] [l_bBox] " "Implements the sub mode of area selection.")

("geSubSelectPoint" "[w_windowId] [g_partial] [l_bBox] " "Implements the sub mode of point selection.")

("geSwitch" "w_windowId t_accessMode d_instId x_iteration  x_row x_col g_cancel " "Switches into an instance.")

("geToggleFilterSize" "" "Description")

("geTogglePartialSelect" "" "Toggles partial selection off and on.")

("geTransformUserBBox" "l_point l_list " "Transforms a coordinate pair or list of coordinate pairs by the displacement and rotation passed in. Similar to geTransformUserPoint but always uses exactly two coordinate pairs as arguments and always resolves the resulting pair of coordinate pairs such that the first coordinate pair is the lower left corner and the second coordinate pair is the upper right corner of the resulting box.")

("geTransformUserPoint" "l_point l_list " "Transforms a coordinate pair or list of coordinate pairs by the displacement and rotation passed in.")

("geUpdateWindowMenus" "windowId " "Updates the enabled status of all the menu items in the window")

("geValidateWindow" "[w_windowId] " "Verifies the database ID of a window.")

("geWriteCellView" "d_cellViewId t_libName t_cellName t_viewName [t_version] [d_contextId] " "Creates a copy of a cellview.")

("geZoomToGrid" "w_windowId " "Zooms in on a subject up to the last point at which the major grid is still visible.")

("getAllLoadedFiles" "" "Returns a list of all files loaded since debug mode was turned on.")

("getCurrentTime" "" "Returns a string representation of the current time.")

("getData" "t_name " "Returns the number or waveform for the signal name specified.")

("getDirFiles" "S_name " "Returns a list of the names of all files and directories, including . and .., in a directory.")

("getFnWriteProtect" "s_name " "Checks if the given function is write-protected.")

("getFunType" "u_functionObject " "Returns a symbol denoting the function type for a given function object.")

("getFunctions" "t_fileName " "Returns functions defined in a file loaded after debug mode is turned on.")

("getInstallPath" "" "Returns the absolute path of the Cadence DFII installation directory where the DFII products are installed on your system as a list of a single string.")

("getLogin" "" "Returns the user")

("getMIFFile" "t_fileName " "Opens a MIF file for input and reads the file. ")

("getShellEnvVar" "t_UnixShellVariableName " "Returns the value of a UNIX environment variable, if it has been set.")

("getSkillPath" "" "Returns the current SKILL path.")

("getSkillVersion" "" "Returns the version of the SKILL that is currently running.")

("getTempDir" "" "Returns the system temp directory as a string.")

("getVarWriteProtect - SKILL mode" "s_name " "Checks if a variable is write-protected. Does not work in SKILL++ mode. In SKILL++ mode, use getFnWriteProtect instead.")

("getVersion" "" "Returns the version number of the Cadence software you are currently using.")

("getWarn" "" "Returns the buffered warning if it has not already been printed.")

("getWorkingDir" "" "Returns the current working directory as a string.")

))
