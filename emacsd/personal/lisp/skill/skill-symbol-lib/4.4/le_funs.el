(put 'le_funs 'symbol-type "layout editor fun")
(setq le_funs '(
("leAttachFig" "d_figId1  d_figId2 " "Attaches d_figId1 to d_figId2 by making d_figId1 a child of d_figId2. If d_figId1 is already attached to another object, it is detached from it. If d_figId2 is not specified, d_figId1 is detached from any object it is currently attached to without attaching it to anything else.")

("leChopShape" "d_shapeId  l_points  g_closed  [g_remove]  [x_sides] " "Cuts the shape d_shapeId using the chop shape l_points. ")

("leClearAllRuler" "d_cellViewId " "This procedure removes all rulers currently attached to cellview d_cellViewId.")

("leConvertShapeToPolygon" "d_shapeId  [x_sides] " "Converts shape d_shapeId to an equivalent polygon. If it is a conic, the polygon has the specified number of sides.")

("leCreateAutoInstPin" "d_cellViewId  l_point  t_termName t_termDir " "Creates a pin shape in cellview d_cellViewId. ")

("leCreateAutoPin" "d_cellViewId  l_point  t_termName t_termDir " "Creates a pin shape in cellview d_cellViewId. ")

("leCreateContact" "d_cellViewId  t_contact  l_origin  t_orient  n_width  n_length x_rows  x_cols  n_xPitch  n_yPitch  t_xBias  t_yBias " "Creates t_contact type of instances in cellview d_cellViewId with the specified attributes. The specified contact must be defined in the library of d_cellViewId.")

("leCreatePath" "d_cellViewId  l_layerPurposePair l_points  n_width  [t_pathStyle]  [n_offset]  [t_justification] " "Creates a path in cellview d_cellViewId on the specified layer with point list l_points and width n_width.")

("leCreatePin" "d_cellViewId  l_layerPurposePair t_shape  l_points  t_termName  t_termDir  l_accessDir " "Creates a pin shape in cellview d_cellViewId on the specified layer. ")

("leCreateRuler" "d_cellViewId  l_points  " "Creates a ruler in cellview d_cellViewId with vertices at the coordinates listed in l_points. ")

("leDefineExternalPins" "" "Starts the Define External Pins enter function in the current window. The Define External Pins enter function provides a user interface for defining one or more pins on a net as being externally connected outside of a device.")

("leDefineInternalPins" "" "Starts the Define Internal Pins enter function in the current window. The Define Internal Pins enter function provides a user interface for defining one or more pins on a net as being internally connected within a device.")

("leDefineWeaklyConnectedPins" "" "Starts the Define Weak Pins enter function in the current window. The Define Weak Pins enter function provides a user interface for defining one or more pins on a net as being weakly connected within a device.")

("leDeiconifyLSW" "" "Deiconifies the Layer Selection Window (LSW). It can be used if the LSW has been iconified. If the LSW is already displayed, this function has no effect. ")

("leDescend" "w_windowId  d_instId  [x_row]  [x_column] " "Descends through the hierarchy to open the master of instance d_instId. leDescend attempts to open the cellview in the same mode as the current cellview, but if an editable version is not available, leDescend opens the master in read-only mode.")

("leEditDesignProperties" "[d_cellviewId] " "Opens the Edit Cellview Properties form, which lets you change the design properties in the cellview d_cellViewId. If d_cellViewId is not specified, the cellview in the current window is used.")

("leEditInPlace" "w_windowId  l_hierlist  " "Descends through the hierarchy to edit a cell in place.")

("leEnvLoad" "" "Loads the layout editor environment variables from the .cdsenv files. This file must be in your home directory. The variables are read into memory, but the windows are not updated with the new values. When new windows are created, they assume the new values.")

("leFlattenInst" "d_instId  x_levels  [g_flattenPCells] [g_preservePins] " "Flattens instance d_instId up through x_levels of hierarchy. ")

("leGetContactDefaultParam" "d_cellViewId " "Returns a list of default parameters associated with a contact as defined in the technology file using symContactDevice. The list contains the following items: width, length, rows, columns, xPitch, yPitch, xBias, and yBias.")

("leGetContactNameArray" "d_techFileId " "Returns a list of names of all defined contacts in the specified technology file.")

("leGetContactParam" "d_instId " "Returns a list of the parameters associated with a contact instance. The list contains the following items: width, length, rows, columns, xPitch, yPitch, xBias, and yBias.")

("leGetContactRule" "d_cellViewId " "Returns a list of the contact rules in the supermaster cellview of the contact. The list contains the following items: viaLayer, layer1, layer2, encByLayer1, encByLayer2, layer1ImpLayer, layerImpEnc, layer2ImpLayer, and layer2ImpEnc.")

("leGetEntryLayer" "[d_techFileId] " "Returns the entry layer for technology file d_techFileId as a list containing the layer name and layer purpose. If d_techFileId is not specified, the current technology file is used.")

("leGetLSWBBox" "[g_includesBorder] " "Returns the bounding box of the Layer Selection Window (LSW). The bounding box is set by either leSetLSWBBox(), Opus.LSWGeometry, or by moving the LSW window.")

("leGetRefPoint" "d_cellViewId " "Returns the reference point of cellview d_cellViewId. The reference point must be active. ")

("leGetValidLayerList" "[d_techFileId] " "Returns a list of the valid entry layers for technology file d_techFileId. A layout view must be open for leGetValidLayerList to return the list of valid entry layers.")

("leHiAddShapeToNet" "[w_windowId] " "Opens the Add Shape To Net form, which lets you associate a shape with a net. If w_windowId is not specified, the current window is used.")

("leHiAttach" "[w_windowId] " "Attaches a selected object in the specified window to another object in the window. The attached object is called the child object, and the object it is attached to is called the parent object. When you move, copy, or delete the parent, the child is also moved, copied, or deleted. If w_windowId is not specified, the current window is used.")

("leHiChop" "[w_windowId] " "Opens the Chop form, which lets you remove parts of objects or break objects into multiple objects. If w_windowId is not specified, the current window is used.")

("leHiClearRuler" "[w_windowId] " "Clears the rulers that stay in the window when the Keep Ruler option is selected using leHiCreateRuler. If w_windowId is not specified, the current window is used.")

("leHiConvertShapeToPolygon" "[w_windowId] " "Converts a selected object in the specified window to a polygon. Converts rectangles, paths, donuts, circles, and ellipses using the number of conic sides specified using leHiEditEditorOptions. If w_windowId is not specified, the current window is used.")

("leHiCopy" "[w_windowId] " "Opens the Copy form, which lets you copy selected objects in the specified window. If w_windowId is not specified, the current window is used.")

("leHiCreateBend" "[w_windowId] " "Opens the Create Transmission Line Bend form, which lets you create a transmission line bend in the specified window. If w_windowId is not specified, the current window is used.")

("leHiCreateCircle" "[w_windowId] " "Creates a circle in the specified window. You are prompted to point to a location for the center of the circle and the outer edge of the circle. If w_windowId is not specified, the current window is used. ")

("leHiCreateContact" "[w_windowId] " "Opens the Create Contact form, which lets you create a contact in the specified window. If w_windowId is not specified, the current window is used.")

("leHiCreateDonut" "[w_windowId] " "Creates a donut in the specified window. You are prompted to point to a location for the center of the donut, the inner edge of the donut, and the outer edge of the donut. If w_windowId is not specified, the current window is used.")

("leHiCreateEllipse" "[w_windowId] " "Creates an ellipse in the specified window. You are prompted to point to the corners of the bounding box for the ellipse. If w_windowId is not specified, the current window is used. ")

("leHiCreateInst" "[w_windowId] " "Opens the Create Instance form, which lets you create an instance in the specified window. If w_windowId is not specified, the current window is used.")

("leHiCreateLabel" "[w_windowId] " "Opens the Create Label form, which lets you create a label in the specified window. If w_windowId is not specified, the current window is used.")

("leHiCreatePath" "[w_windowId] " "Opens the Create Path form, which lets you create a path in the specified window. If w_windowId is not specified, the current window is used.")

("leHiCreatePin" "[w_windowId] " "Opens the Create Shape Pin form, which lets you create a geometric pin in the specified window. If w_windowId is not specified, the current window is used.")

("leHiCreatePinsFromLabels" "[w_windowId] " "Opens the Create Pins From Labels form, which lets you create pins from text labels in your layout cellview or selected instances. This command creates pins with terminal names matching labels on a specified text layer with pin dimensions that you specify, centered on the origin of your text label. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiCreatePolygon" "[w_windowId] " "Opens the Create Polygon form, which lets you create a polygon in the specified window. If w_windowId is not specified, the current window is used. ")

("leHiCreateRect" "[w_windowId] " "Creates a rectangle in the specified window. You are prompted to point to two coordinates for the opposite corners of the rectangle. If w_windowId is not specified, the current window is used.")

("leHiCreateRuler" "[w_windowId] " "Opens the Create Ruler form, which lets you create a ruler in the specified window. If w_windowId is not specified, the current window is used.")

("leHiCreateSymDev" "[w_windowId] " "Opens the Create Device form, which lets you create a symbolic device in the specified window. The symbolic devices are defined in the technology file. If w_windowId is not specified, the current window is used.")

("leHiCreateSymPin" "[w_windowId] " "Opens the Create Symbolic Pin form, which lets you create a symbolic pin as in the specified window. The symbolic devices are defined in the technology file. If w_windowId is not specified, the current window is used.")

("leHiCreateTaper" "[w_windowId] " "Opens the Create Transmission Line Taper form, which lets you create a transmission line taper in the specified window. If w_windowId is not specified, the current window is used. ")

("leHiCreateTrl" "[w_windowId] " "Opens the Create Transmission Line form, which lets you create a transmission line in the specified window. If w_windowId is not specified, the current window is used.")

("leHiDelete" "[w_windowId] " "Deletes selected objects in the specified window. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiDeleteAllAreaViewLevel" "[w_windowId] " "Removes all special display areas in window w_windowId. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiDeleteAreaViewLevel" "[w_windowId]  " "Displays all currently defined area view levels using the layer-purpose pair hilight drawing1, and prompts you to point at the area to be removed. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiDeleteShapeFromNet" "[w_windowId] " "Opens the Delete Shape From Net form, which lets you remove the selected shape from the net. If w_windowId is not specified, the current window is used.")

("leHiDescend" "[w_windowId] " "Lets you push down one level into the design hierarchy. You can preselect the instance to descend into. If no instances are selected, you are prompted to select an instance. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiEditDisplayOptions" "[w_windowId] " "Opens the Display Options form, which lets you change the display options in the specified window. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiEditEditorOptions" "" "Opens the Layout Editor Options form, which lets you change the layout editor environment. You can also set these variables in your .cdsenv file, so the layout editor defaults to these options on start up.")

("leHiEditInPlace" "[w_windowId] " "Lets you edit an instance")

("leHiEditProp" "[w_windowId] " "Opens the Edit Properties form, which lets you edit the properties set in the specified window. You are prompted to select objects whose properties you want to edit. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiFlatten" "[w_windowId] " "Opens the Flatten form, which lets you explode a cell instance or array, moving the contents of the cell or array up one or more levels into the current level of the hierarchy. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiLayerGen" "[w_windowId]  " "Opens the Layer Generation form, which lets you create new shapes by performing logical operations on selected objects in the specified layers. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiLayerTap" "[w_windowId] " "Sets the entry layer to the layer of an indicated shape in the current window. You are prompted to point to the shape to be tapped. You can point to shapes anywhere in the hierarchy. If you point to more than one shape, the layer with the highest priority is tapped. If you do not point to any shapes that are on valid layers, the function calls hiGetAttention and prompts you again. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiMakeCell" "[w_windowId] " "Opens the Make Cell form, which lets you create a cell from the selected objects in the specified window. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiMerge" "[w_windowId] " "Merges selected objects that touch or overlap each other into one object. You can merge shapes of different types that are on the same layer. You cannot merge shapes on different layers. If you do not specify w_windowId, the layout editor uses the current window.  Note: Pins cannot be merged.")

("leHiModifyCorner" "[w_windowId] " "Opens the Modify Corner form, which lets you modify corners of rectangles and polygons in the specified window. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiMove" "[w_windowId] " "Opens the Move form, which lets you move an object in the specified window to another location or layer in the same window or in a different window. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiMoveOrigin" "[w_windowId] " "Enter this function with only the window ID argument; the system prompts you to point to the new origin. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiPaste" "[w_windowId] " "Opens the Paste form, which lets you place the contents of the yank buffer in the specified window. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiPlotQueueStatus" "" "Opens the Plot Job Queue form, which shows the status of the plot job queue.")

("leHiPropagateNets" "[w_windowId] " "Opens the Propagate Nets form, which lets you promote net information from pins in selected blocks one level down in the hierarchy up to the top level where the router can recognize and route the nets. You use this command when you do not have a schematic for your layout cellview. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiReshape" "[w_windowId] " "Opens the Reshape form, which lets you modify the vertices of rectangles, polygons, paths, and transmission lines. You can add vertices, remove vertices, or modify vertex locations. The modified shape is stored in its most efficient form. For example, if a polygon is modified to have a rectangular shape, it is converted into a rectangle. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiRotate" "[w_windowId] " "Opens the Rotate form, which lets you change the orientation of geometric objects. If w_windowId is not specified, the current window is used.")

("leHiSearch" "[w_windowId] " "Opens the Search form, which lets you search the specified window for objects that match user-specified query requests. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiSetAreaViewLevel" "[w_windowId] " "Opens the Set Area View Level form, which lets you create a special display area in the window. This lets you override the window")

("leHiSetRefPoint" "[w_windowId] " "Sets a reference point in the specified window. You are prompted to point to location for the reference point. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiSetValidLayer" "" "Opens the Set Valid Layer form, which lets you set which layers in your library are displayed in the Layer Selection Window.")

("leHiShowSelSet" "[w_windowId] " "Displays information about the selected set in the specified window. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiSize" "[w_windowId] " "Opens the Size form, which lets you enlarge or reduce a shape in the specified window. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiSplit" "[w_windowId] " "Opens the Split form, which lets you reshape an object by stretching part of it relative to a split line in the specified window. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiStretch" "[w_windowId] " "Opens the Stretch form, which lets you stretch objects in the specified window. If you do not specify w_windowId, the layout editor uses the current window.")

("leHiSubmitPlot" "" "Opens the Submit Plot form, which lets you submit plots to a plotter.")

("leHiSummary" "[w_windowId] " "Displays information about the specified window. If you do not specify w_windowId, the layout editor uses the current window. ")

("leHiTree" "[w_windowId] " "Displays information about the design hierarchy in the specified window. If you do not specify w_windowId, the layout editor uses the current window. ")

("leHiYank" "[w_windowId] " "Opens the Yank form, which lets you copy a set of objects in a cellview into the yank buffer for later pasting. A yank shape defines the area enclosing the objects to copy. If you do not specify w_windowId, the layout editor uses the current window.")

("leIconifyLSW" "" "Iconifies the Layer Selection Window (LSW). If the LSW is already iconified, this function has no effect. ")

("leIsAnyContact" "d_instId " "Tests if the specified instance is a contact.")

("leIsAnyContactMaster" "d_cellViewId " "Tests if the specified cellview is a contact.")

("leIsContact" "d_instId " "Checks if the specified instance is a contact.")

("leIsContactMaster" "d_cellViewId " "Checks if d_cellViewId is a supermaster of a contact.")

("leIsContactName" "d_techFileId t_contactName " "Checks if the name specified by t_contactName is a defined contact in the specified technology file.")

("leIsFigSelectable" "d_figId " "Checks whether the figure d_figId is selectable. ")

("leIsInstSelectable" "[d_techFileId] " "Checks whether the instances in d_techFileId are selectable. If d_techFileId is not specified, the current technology file is used.")

("leIsLSWIconified" "" "Checks if the Layer Selection Window (LSW) is iconified. ")

("leIsLayerSelectable" "l_layerPurposePair [d_techFileId] " "Checks whether the layer l_layerPurposePair is selectable. ")

("leIsLayerValid" "l_layerPurposePair [d_techFileId] " "Checks whether layer l_layerPurposePair is a valid layer. If d_techFileId is not specified, the current technology file is used.")

("leIsLayerVisible" "l_layerPurposePair [d_techFileId] " "This procedure checks whether the layer specified by l_layerPurposePair is visible. If d_techFileId is not specified, the current technology file is used.")

("leIsPinSelectable" "[d_techFileId] " "Checks whether the pins in d_techFileId are selectable. If d_techFileId is not specified, the current technology file is used.")

("leIsRefPointActive" "d_cellViewId " "Checks whether the cellview d_cellViewId contains an active reference point.")

("leLayerAnd" "d_cellViewId  g_lpp1  g_lpp2  g_lpp3 " "Creates shapes in cellview d_cellViewId on layer g_lpp3 that correspond to the intersections of all shapes on layers g_lpp1 and g_lpp2. A layer-purpose pair is a list containing a layer name followed by a layer purpose.")

("leLayerAndNot" "d_cellViewId g_lpp1  g_lpp2  g_lpp3 " "Creates shapes in cellview d_cellViewId on layer g_lpp3 that correspond to the shapes on layer g_lpp1 minus the intersections with the shapes on layer g_lpp2. A layer-purpose pair is a list containing a layer name followed by a layer purpose. ")

("leLayerOr" "d_cellViewId g_lpp1  g_lpp2  g_lpp3 " "Creates shapes in cellview d_cellViewId on layer g_lpp3 that correspond to the union of shapes on layers g_lpp1 and g_lpp2. A layer-purpose pair is a list containing a layer name followed by a layer purpose. ")

("leLayerSize" "d_cellViewId  g_lpp1  n_sizeAmount g_lpp2 " "Creates shapes in cellview d_cellViewId on layer g_lpp2 by oversizing the shapes on layer g_lpp1 by n_sizeAmount number of units, which can be either positive (oversize) or negative (undersize). A layer-purpose pair is either a layer name or a list containing a layer name followed by a layer purpose. ")

("leLayerXor" "d_cellViewId g_lpp1  g_lpp2  g_lpp3 " "Creates shapes in cellview d_cellViewId on layer g_lpp3 that are the result of the union of the shapes on layers g_lpp1 and g_lpp2 minus their intersection. A layer-purpose pair is a list containing a layer name followed by a layer purpose. ")

("leMakeCell" "l_figs  t_libName  t_cellName  t_viewName  g_replace  " "Creates the cellview specified by t_libName, t_cellName, and t_viewName. If the cellview already exists, it is overwritten.")

("leMergeShapes" "l_shapes  [x_sides] " "Merges the list of shapes l_shapes. The input shapes can be on multiple layers. Merges only shapes on the same layer. Returns the list of shapes resulting from the operation.")

("leModifyCorner" "d_figId l_selArray g_chamfer x_distance [x_sides] " "Rounds or cuts off selected corners of the rectangle or polygon specified by d_figID.")

("leMoveCellViewOrigin" "d_cellViewId  l_point " "Moves the contents of cellview d_cellViewId so that the origin is at l_point.")

("leMoveCursor" "f_dX  f_dY " "Moves the cursor in the current window a relative distance specified by f_dX and f_dY.")

("leMoveCursorToRefPoint" "" "Moves the cursor to the reference point of the cellview contained in the current window. ")

("lePasteFigs" "d_cellViewId  l_destPt  [t_rotation] " "lePasteFigs works in layout editor windows opened using menus. It does not work in nongraphical windows opened with dbOpenCellViewByType.")

("lePlot" "[t_fileName] " "Procedural plot submission command that generates the plot defined in the t_fileName plot template file. Plot options are stored in a disembodied property list called lePlotOptions. When lePlot() loads the plot template file, it reads the plot options from the lePlotOptions property list. There are two ways to create the plot template file: use vi, or save the options in the Submit Plot form to a file. The plot template file is used by lePlot() and by the Load command in the Submit Plot form. However, the following options are ignored by the Load command: library, cell, view, and plotSize.")

("leRemapLSW" "" "If the Layer Selection Window (LSW) has been unmapped (made invisible) by leUnmapLSW, it restores the LSW window.")

("leReplace" "d_cellViewId  l_objects l_replaceValues " "Replaces the specified values on the specified list of objects in the cellview d_cellViewId.")

("leReplaceAnyInstMaster" "d_instId t_libName/nil t_cellName/nil t_viewName/nil " "Changes the master library, cell, or view name for the instance. If you do not want to change any of these names, you must type nil in its place.")

("leResizeLSW" "l_bBox  " "Sets the Layer Selection Window")

("leSearchHierarchy" "d_cellViewId l_bBox x_stopLevel t_objectType l_criteriaList " "Searches the cellview d_cellViewId for objects that match the type and criteria specified. The search is bounded by the specified l_bBox and restricted to the specified x_stopLevel. The search assumes all figures are valid if the Layer Selection Window (LSW) has not been initialized.")

("leSetAllLayerSelectable" "g_isSelectable [d_techFileId] " "Sets the selectability of all layers in technology file d_techFileId as specified by g_isSelectable. If d_techFileId is not specified, the current technology file is used.")

("leSetAllLayerValid" "g_isValid [d_techFileId] " "Sets the validity of all layers in technology file d_techFileId as specified by g_isValid. If d_techFileId is not specified, the current technology file is used.")

("leSetAllLayerVisible" "g_isVisible [d_techFileId]  " "Sets the visibility of all layers in technology file d_techFileId as specified by g_isVisible. If d_techFileId is not specified, the current technology file is used.")

("leSetContactParam" "d_instId n_width n_length x_rows x_columns n_xPitch n_yPitch t_xBias t_yBias " "Updates all the pcell parameters of a particular contact instance.")

("leSetEntryLayer" "l_layerPurposePair [d_techFileId] " "Sets the entry layer for technology file d_techFileId to the layer specified by l_layerPurposePair, which can be either a list containing a layer name and a layer purpose, or just a layer name (the layer purpose then defaults to drawing). If d_techFileId is not specified, the current technology file is used.")

("leSetInstSelectable" "g_isSelectable [d_techFileId]  " "Sets the selectability of instances in the technology file specified by d_techFileId as specified by g_isSelectable. If d_techFileId is not specified, the current technology file is used.")

("leSetLSWBBox" "l_bBox [g_includesBorder] " "Sets the Layer Selection Window")

("leSetLayerSelectable" "l_layerPurposePair g_isSelectable [d_techFileId]  " "Sets the selectability of shapes on layer l_layerPurposePair in technology file d_techFileId as specified by g_isSelectable. If d_techFileId is not specified, the current technology file is used. For shapes on a layer to be selectable, the layer must be valid, visible, and selectable.")

("leSetLayerValid" "l_layerPurposePair g_isValid [d_techFileId]  " "Sets the validity of layer l_layerPurposePair as specified by g_isValid. If d_techFileId is not specified, the current technology file is used. Only valid layers are displayed in the Layer Selection Window.")

("leSetLayerVisible" "l_layerPurposePair g_isVisible [d_techFileId]  " "Sets the visibility of the layer specified by the layer-purpose pair as specified by g_isVisible. If d_techFileId is not specified, the current technology file Layer Selection Window (LSW) is used. ")

("leSetPinSelectable" "g_isSelectable [d_techFileId]  " "Sets the selectability of pins in the technology file specified by d_techFileId as specified by g_isSelectable. If d_techFileId is not specified, the current technology file is used.")

("leSetRefPoint" "d_cellViewId  l_point " "Sets the reference point of cellview d_cellViewId to the point l_point. The reference point is set to be active if it was inactive. ")

("leSetRefPointInactive" "d_cellViewId " "Marks the reference point for cellview d_cellViewId as inactive. To make a reference point active again, use leSetRefPoint.")

("leSizeShape" "d_shapeId  g_sizeFactor " "Sizes shape d_shapeId by g_sizeFactor.")

("leSplitShape" "d_shapeId  l_delta  l_splitLine  g_leftOrRight  [g_lockAngles] " "Splits a shape and moves one portion of it. Uses a multisegment split line to divide the shape.")

("leStretchShape" "d_shapeId  l_delta  l_freePoints  [g_lockAngles] " "Stretches shape d_shapeId by the delta l_delta. Donuts cannot be stretched.")

("leToggleGravity" "" "Turns gravity on or off.")

("leToggleGuidedPath" "" "Turns Guided Path on or off.")

("leToggleGuidedPathCreate" "" "Turns the Guided mode of Create Path on or off. When on, paths are created according to the minspacing rules in the technology file.")

("leToggleGuidedPathMaintainConnections" "" "Turns Maintain Connections with Guided Path on or off.")

("leToggleMaintainConnections" "" "Turns Maintain Connections on or off.")

("leUnmapLSW" "" "Unmaps (makes invisible) the Layer Selection Window (LSW).")

("leYankFigs" "d_cellViewId  l_ptArray  x_nLevels [l_refPt]  [x_nSides] " "Copies specified objects into a yank buffer for later pasting. Copies objects in cellview d_cellViewId that fall within the shape defined by the points in l_ptArray and that are in the levels of hierarchy specified by x_nLevels. Optionally uses l_refPt as the reference point for the yank and x_nSides as the number of polygon sides to use when converting objects intersected by the yank shape.")

("leZoomToSelSet" "[w_windowId] " "Zooms to fit the selected objects in the specified window. If w_windowId is not specified, the current window is used.")

))
