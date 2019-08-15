(put 'dl_funs 'symbol-type "display list fun")
(setq dl_funs '(
("dlAddArc" "w_dlist  x_penNumber  l_point1  l_point2  n_startAngle  n_sweepAngle [s_tagSymbol] " "Adds an arc to the display list.")

("dlAddBox" "w_dlist  x_penNumber  l_point1  l_point2  [s_tagSymbol] " "Adds a box to the display list.")

("dlAddCircle" "w_dlist  x_penNumber  l_point x_radius  [s_tagSymbol] " "Adds a circle to the display list.")

("dlAddDonut" "w_dlist  x_penNumber  l_point  x_innerRadius  x_outerRadius [s_tagSymbol] " "Adds a donut to the display list.")

("dlAddEventObject" "w_dlist  l_point1  l_point2  t_procName  t_procArgs [t_highlightMode] [g_doesGraphics] [s_tagSymbol] " "Adds an EventObject to the display list. EventObjects are SKILL procedures called whenever the user presses a mouse button or a keyboard key. If the s_doesGraphics argument is t, the EventObject is called whenever the display list is drawn.")

("dlAddPath" "w_dlist  x_penNumber  x_pathWidth  t_pathEndType  l_pointsList [s_tagSymbol] " "Adds a path to the display list.")

("dlAddPoint" "w_dlist  x_penNumber  l_point  [s_tagSymbol] " "Adds a point to the display list.")

("dlAddPolygon" "w_dlist  x_penNumber  l_pointsList [s_tagSymbol] " "Adds a polygon to the display list.")

("dlAddRasterText" "w_dlist  x_penNumber  l_point  t_text  t_fontName  [t_verticalJustify]  [t_horizontalJustify] [s_tagSymbol] " "Adds a text string to the display list.")

("dlAddSegment" "w_dlist  x_penNumber  l_point1  l_point2  [s_tagSymbol] " "Adds a line segment to the display list.")

("dlAddSkillObject" "w_dlist  x_penNumber  l_point1  l_point2  t_procName  t_procArgs [s_tagSymbol] " "Adds a SkillObject to the display list. SkillObjects are SKILL procedures called whenever the object should be drawn.")

("dlAddStrokeText" "w_dlist  x_penNumber  l_point  t_text  t_justification  t_fontName  x_height  [t_orientation] [g_drafting] [s_tagSymbol] " "Adds a stroke text string to the display list.")

("dlAttachDlistToWidget" "w_displayList  x_widgetId " "Attaches a display list to a widget.")

("dlAttachDlistToWindow" "w_displayList  w_windowId  " "Attaches a display list to the window defined by w_windowId. This function can be used to preview a display list.")

("dlClearDisplayList" "w_displayList " "Removes all the objects from a display list.")

("dlCloseWidget" "x_widgetId  " "Closes (destroys) a widget.")

("dlConfigureButton" "x_button x_xPosition x_yPosition x_width x_height " "Moves a button to another location. Both the x and y position are specified in X Window System coordinates, where 0:0 is the upper left corner of the screen.")

("dlDetachDlistFromWidget" "w_displayList  x_widgetId " "Detaches a display list from a widget.")

("dlDetachDlistFromWindow" "w_displayList  w_windowId  " "Detaches a display list (w_displayList) from the window defined by w_windowId.")

("dlDisplay" "w_displayList  " "Redraws the display list (w_displayList) in all the windows and buttons it is currently attached to.")

("dlDlistToIcon" "w_displayList  x_width  x_height  [x_backColorIndex]  " "Converts a displayList to an icon.")

("dlDrawArc" "l_point1  l_point2  f_startAngle  f_sweepAngle " "Draws an arc to the screen from within a SkillObject procedure.")

("dlDrawBox" "l_point1  l_point2  " "Draws a box to the screen from within a SkillObject procedure.")

("dlDrawCircle" "l_point  x_radius  " "Draws a circle to the screen from within a SkillObject procedure.")

("dlDrawDonut" "l_point  x_innerRadius  x_outerRadius " "Draws a donut to the screen from within a SkillObject procedure.")

("dlDrawPath" "x_pathWidth  t_pathEndType  l_pointsList " "Draws a path to the screen from within a SkillObject procedure. A path is specified by a center line and a width.")

("dlDrawPoint" "l_point  " "Draws a point to the screen from within a SkillObject procedure.")

("dlDrawPolygon" "l_pointsList " "Draws a polygon to the screen from within a SkillObject procedure.")

("dlDrawRasterText" "l_point  t_text  t_fontName  [t_verticalJustify]  [t_horizontalJustify] " "Draws a text string to the screen from within a SkillObject. The text is drawn using an X Window System font.")

("dlDrawSegment" "l_point1  l_point2  " "Draws a line segment to the screen from within a SkillObject procedure.")

("dlDrawStrokeText" "l_point  t_text  t_justification  t_fontName  x_height  t_orientation " "Draws a stroke text string to the screen from within a SkillObject procedure. The height (and therefore scale) can be specified.")

("dlEnableItem" "w_dlist  x_penNumber  s_symbolTag  g_enableOrDisable  " "Allows you to turn on or off shapes within a display list that match the provided symbol. All shapes on pen x_penNumber are searched and checked to see if the symbolTag matches.")

("dlFitDlistOnDraw" "w_displayList x_widgetId g_doFit  " "Specifies whether a display list should automatically fit within the specified widget.")

("dlMakeDisplayList" "" "Creates an empty display list you can add objects to.")

("dlMakeDlistButton" "x_parentWidgetId x_xPosition x_yPosition x_width x_height w_displayList t_pressCallback [x_backgroundColor] " "Creates a button to display a display list in. The display list button is a rectangular region with a widget or window in which a display list is drawn and which dispatches a callback whenever the left mouse button is pressed within it.")

("dlMakePenTable" "[x_maxPens]  " "Creates a pen table a display list can use.")

("dlMakeStipple" "t_StippleString  " "Creates a stipple pattern from the supplied string.")

("dlMakeWidget" "[x_backgroundColor]  [l_point1] [l_point2] " "Creates a general purpose window (or widget). Uses of this widget can be for fixed menus or graphic display panels. Both points are specified in X Window System coordinates, where 0:0 is the upper-left corner of the screen.")

("dlMapWidget" "x_widgetId  " "Puts a widget back on the screen after a call to dlUnMapWidget. This function also applies to buttons.")

("dlMoveButton" "x_button x_xPosition x_yPosition " "Moves a button to another location. Both the x and y position are specified in X Window System coordinates, where 0:0 is the upper-left corner of the screen.")

("dlResizeButton" "x_button x_width x_height " "Resizes a button.")

("dlSaveDlist" "w_displayList  t_fileName  t_dlistName " "Saves the display list.")

("dlSetClearOnDraw" "w_dlist x_widgetId g_draw " "Specifies whether the area the display list is drawn in is cleared before the display list is drawn.")

("dlSetCurrentPen" "x_penNumber " "Sets the specified pen number to the current pen. Changes the pen number objects are drawn with from within a SkillObject procedure. This function should only be called from within a SkillObject procedure.")

("dlSetDlistPosition" "w_displayList x_widgetId x_xOffset x_yOffset  " "Specifies the scale factor to map from display list coordinates to screen coordinates. The offsets only have effect if auto-fitting was turned off (via dfIIFitDlistOnDraw).")

("dlSetDlistScale" "w_displayList x_widgetId f_scale  " "Specifies the scale factor to map from display list coordinates to screen coordinates. This scale factor only has effect if auto-fitting was turned off (using dfIIFitDlistOnDraw).")

("dlSetPenColor" "x_penNumber  x_colorIndex  [w_penTable] " "Changes the specified pen to the specified color index from the pen table.")

("dlSetPenFillStyle" "x_penNumber  t_fillStyle  [w_penTable]  " "Sets the fill style of a pen.")

("dlSetPenStipple" "x_penNumber  x_stippleId  [w_penTable]  " "Sets the stipple pattern for a pen.")

("dlSetPenTable" "w_displayList  w_penTableOrDisplayList  " "Sets the pen table a display list will use.")

("dlSetWidgetName" "x_widgetId  t_name " "Sets the text displayed by the window manager banner.")

("dlUnMapWidget" "x_widgetId  " "Removes the widget from the screen, but does not destroy it. This function also applies to buttons.")

))
