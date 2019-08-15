(put 'hi_funs 'symbol-type "human interface fun")
(setq hi_funs '(
("hiAbout" "w_windowId " "Displays the application")

("hiAbsolutePan" "[w_window]  [n_%x]  [n_%y]  " "Scrolls a window in any direction by specifying the amount to pan as a percentage of the window size.")

("hiAddCyclicChoice" "r_form  s_cyclicField  g_newChoice  " "Adds newChoice to the end of the list of choices in the cyclic field in the form.")

("hiAddField" "r_form  g_fieldDescription  [i_fieldAttachment] " "Adds a field to a form. The form must already exist, and the field must have been created with one of the field creation routines.")

("hiAddFields" "r_form  l_fieldDescriptions  [l_fieldAttachments] " "Adds fields to a form. The form must already exist, and the fields must have been created with one of the field creation routines.")

("hiAddFixedMenu" "[?window w_window]  ?fixedMenu r_fixMenu  [?menuSide s_menuSide]  " "Adds or replaces a fixed menu on a window.")

("hiAddMenuItem" "r_hiMenu  r_menuItem " "Adds the menuItem to the end of all instances of the specified hiMenu.")

("hiAppendInputCmd" "w_window  t_cmd  " "Appends a command to the input area of an encapsulation window.")

("hiChangeBannerLabel" "w_windowId  t_bannerLabel  x_labelPosition  " "Overwrites or adds a banner label in a window.")

("hiChangeFormCallback" "r_form g_newCallback " "Changes the doneAction and/or the cancelAction of the specified form to the SKILL callback procedure defined by newCallback. newCallback can be a symbol, a string, or a list of two symbols/strings. The first callback will be taken as the doneAction. The second callback will be taken as the cancelAction. After this routine is called, if the OK or Apply button of the form is pressed, the doneAction is executed, and if the Cancel button is pressed, the cancelAction is executed.")

("hiChangeFormTitle" "r_form  t_newTitle " "Changes the window manager title of the specified form to newTitle. ")

("hiCloseWindow" "w_windowId  " "Closes and deletes a window.")

("hiCreate2DMenu" "s_menuHandle t_menuName l_menuItems " "Returns an internal data structure describing a two dimensional menu object. Once this menu is created, you can display it with hiDisplayMenu.")

("hiCreateAppForm" "?name s_name  ?fields l_fieldEntries  [?attachmentList l_fieldAttachments] [?tabOrderIsAddOrder g_tabOrderIsAddOrder] [?formTitle t_formTitle]  [?callback g_callback] [?unmapAfterCB g_unmapAfterCB]  [?formType s_formType]  [?dialogStyle s_dialogStyle] [?buttonLayout g_buttonLayout]  [?buttonDisabled s_buttonDisabled] [?help g_help]  [?initialSize g_initialSize] [?minSize g_minSize [?maxSize g_maxSize [?dontBlock g_dontBlock] [?fieldFocus s_fieldFocus] " "Returns the SKILL representation of a form with the specified field entries, setting it to the specified name. All standard forms, from simple forms to property lists, are generated using hiCreateAppForm, with varying field entries. Use this function rather than hiCreateForm, which does not provide as much functionality.")

("hiCreateBBoxField" "?name s_fieldName  [prompt t_fieldPrompt]  [?value l_currentValue] [?help g_fieldHelp]  [?defValue l_defaultValue]  [?font t_font]  [?callback t_callback]  [?modifyCallback t_modifyCallback] [?editable g_editable]  [?enabled g_enabled] [?nextField g_nextField] " "Creates a bounding box field for a form. ")

("hiCreateBooleanButton" "?name s_fieldName  ?buttonText t_buttonText [?callback t_callback] [?value g_booleanValue] [?defValue g_defaultValue] [?help g_fieldHelp]  [?font t_font]  [?enabled g_enabled] " "For efficiency, boolean buttons should always be used in preference to single toggle buttons. ")

("hiCreateButton" "?name s_fieldName  ?buttonText t_buttonText  ?callback t_callback  [?buttonIcon l_buttonIcon]  [?help g_fieldHelp]  [?font t_font]  [?enabled g_enabled] " "Creates a standalone push button for a form or two-dimensional menu. The button must have an associated callback procedure to be executed when the button is selected. A button only field differs from a button box field in that there is no prompt associated with this button. ")

("hiCreateButtonBoxField" "?name s_fieldName  ?choices l_buttonText  ?callback l_callbackList  ?prompt t_fieldPrompt [?help g_fieldHelp]  [?font t_font]  [?enabled g_enabled] " "Creates a button box field for a form. A button box field contains individual buttons to be displayed in one row. Each button in the button box will have an associated callback procedure that is executed when that button is selected. A prompt is displayed on this row as well. ")

("hiCreateColorArray" "" "Returns a 27-element color array that can be used in a call to hiStringToIcon. The first 26 items correspond to the letters in the alphabet; the 27th item corresponds to `.")

("hiCreateCyclicField" "?name s_fieldName  ?choices l_enumerations  ?prompt t_fieldPrompt  [?value g_currentValue]  [?defValue g_defaultValue]  [?callback t_callback]  [?help g_fieldHelp]  [?font t_font] [?enabled g_enabled] " "Creates a cyclic field for a form. A cyclic field contains a list of string or iconic enumerations. Only one item may be chosen at a time. Using the mouse, the user displays all cyclic choices in pulldown menu form. Once the user has brought up this cyclic choice menu, a selection may be made from it. ")

("hiCreateFloatField" "?name s_fieldName  [?value f_currentValue] [?acceptNil g_acceptNil] [?prompt t_fieldPrompt]  [?defValue f_defaultValue]  [?help g_fieldHelp]  [?font t_font]  [?callback t_callback]  [?modifyCallback t_modifyCallback] [?range l_fieldRange]  [?format t_fieldFormat]  [?editable g_editable]  [?enabled g_enabled] [?nextField g_nextField] " "Creates a float field for a form. A float field is a field which accepts floating-point input only. A format string can be specified which will automatically be imposed on any user input. An optional range can be specified and enforced for this field as well.")

("hiCreateForm" "s_formHandle  t_formName  g_formAction  l_fieldEntries  t_formHelp [g_unmapAfterCB]  " "hiCreateForm is now just a wrapper function to hiCreateAppForm. Forms, from simple forms to property lists, are generated using hiCreate{App}Form, with varying field entries.")

("hiCreateFrameField" "?name s_fieldName  [?labelText t_labelText] [?enabled g_enabled] " "Creates a frame field for a two-dimensional form. A frame field is a border that surrounds a group of related fields so they are easier to see.")

("hiCreateHorizontalFixedMenu" "s_menuHandle  l_menuItems  x_rows  x_cols  " "Returns an internal data structure that describes a horizontal fixed menu object. The fixed menu is created as a grid of row x column dimensions, and contains menu item objects created by hiCreateMenuItem. An additional Done item is added as the last item. Selecting this Done menu item will remove the fixed menu from the screen.")

("hiCreateIntField" "?name s_fieldName  [?prompt t_fieldPrompt]  [?value x_currentValue] [?acceptNil g_acceptNil] [?help g_fieldHelp]  [?defValue x_defaultValue]  [?font t_font]  [?callback t_callback]  [?modifyCallback t_modifyCallback] [?format t_fieldFormat]  [?range l_fieldRange]  [?editable g_editable]  [?enabled g_enabled] [?nextField g_nextField] " "Creates an integer field entry for a form. An int field is a field that accepts integer input only. A format string can be specified which will automatically be imposed on any user input. An optional range can be specified and enforced for this field as well.")

("hiCreateLabel" "?name s_fieldName  ?labelText t_labelText  [?justification s_justification]  [?font t_font]  [?enabled g_enabled] [?help g_fieldHelp] " "Creates a standalone label entry for a form or two-dimensional menu. A labelOnly field contains a descriptive label. This field can provide additional features to a form or two-dimensional menu.")

("hiCreateLayerCyclicField" "d_techFileId  t_fieldPrompt  t_callback  l_layers  [l_LPpair] " "Creates a cyclic field entry containing iconic representations of specified layers for a form. ")

("hiCreateListBoxField" "?name s_fieldName [?prompt t_prompt] ?choices l_listItems [?value l_selectedItem]  [?defValue l_defSelectedItem]  [?callback t_callback] [?changeCB t_changeCB] [?numRows x_numRows] [?multipleSelect g_multipleSelect] [?doubleClickCB t_doubleClickCB] [?CBOnReselect g_CBOnReselect] [?keepHistory g_keepHistory] [?enabled g_enabled] [?help g_fieldHelp] " "Creates a list box field for a form. ")

("hiCreateListField" "?name s_fieldName  [?value l_currentValue] [?help g_fieldHelp]  [?prompt t_fieldPrompt]  [?defValue l_defaultValue]  [?font t_font]  [?callback t_callback]  [?modifyCallback t_modifyCallback] [?editable g_editable] [?enabled g_enabled] [?nextField g_nextField] " "Creates a list field entry for a form. A list field accepts a valid SKILL expression as input. SKILL")

("hiCreateMLTextField" "?name s_fieldName  [?prompt t_prompt]  [?value t_value]  [?defValue t_defaultValue]  [?font t_font]  [?hasVerticalScrollbar g_hasVerticalScrollbar] [?hasHorizontalScrollbar g_hasHorizontalScrollbar] [?enableWordWrap g_enableWordWrap] [?editable g_editable] [?enabled g_enabled] [?callback t_callback] [?changeCB t_changeCB] [?nextField g_nextField]  " "Creates a multiline text field entry for a form. Any input typed into this field will be converted to a single string accessible through SKILL. ")

("hiCreateMenu" "s_menuHandle  t_menuTitle  l_menuItems  " "Returns the SKILL representation of a popup menu. Once this menu is created, you can display it with hiDisplayMenu or associate it with a window using hiSetWindowMenu. ")

("hiCreateMenuItem" "?name s_itemHandle  ?itemText t_menuItemText  [?itemIcon l_menuIcon]  [?callback t_itemCallback] [?disable g_disabled]  " "Creates a menu item that is used in the argument list to create any menu (except two-dimensional menus and simple menus).")

("hiCreateOptionsForm" "s_formHandle  t_formName  l_fieldEntries  t_help  " "Generates a form with the specified field entries, setting it to formHandle. ")

("hiCreatePointField" "?name s_fieldName  [?value l_currentValue] [?help g_fieldHelp]  [?prompt t_fieldPrompt]  [?defValue l_defaultValue]  [?font t_font]  [?callback t_callback]  [?modifyCallback t_modifyCallback] [?editable g_editable] [?enabled g_enabled] [?nextField g_nextField] " "Creates a point field entry for a form.")

("hiCreatePointListField" "?name s_fieldName  [?value l_currentValue] [?help g_fieldHelp]  [?prompt t_fieldPrompt]  [?defValue l_defaultValue]  [?font t_font]  [?callback t_callback]  [?modifyCallback t_modifyCallback] [?editable g_editable] [?enabled g_enabled] [?nextField g_nextField] " "Creates a point list field entry for a form. ")

("hiCreatePulldownMenu" "s_menuHandle  g_menuTitle  l_menuItems  " "Returns the SKILL description of a pulldown menu. It creates a menu that contains text, icon, or slider menuItems. The menuHandle is the SKILL symbol set to the created menu.")

("hiCreateRadioField" "?name s_fieldName  ?choices l_radioList  [?help g_fieldHelp]  [?prompt t_fieldPrompt]  [?value t_currentSelection]  [?defValue t_defaultSelection]  [?itemsPerRow x_itemsPerRow]  [?font t_font] [?enabled g_enabled] [?callback l_radioListCallbacks]  " "Creates a radio field for a form. ")

("hiCreateReportField" "?name s_name [?title t_title] [?titleAlignment g_titleAlignment] [?value g_value] [?help g_fieldHelp] [?headers g_headers] [?callback g_callback] [?nextField g_nextField] [?selectMode s_selectMode] " "Creates a report field. The report field is used to display information in a complex format. You can select items in a report field; you cannot edit the fields.")

("hiCreateScaleField" "?name s_fieldName  [?prompt t_prompt}  [?value x_currentValue] [?callback t_callback]  [?isContinuous g_isContinuous] [?range l_range] [?defValue x_defaultValue] [?help g_fieldHelp]  [?font t_font]  [?enabled g_enabled] " "Creates a scale field for a form. ")

("hiCreateScrollRegion" "?name s_name [?fields l_fieldEntries] [?attachmentList l_fieldAttachments] [?tabOrderIsAddOrder g_tabOrderIsAddOrder] [?labelText t_labelText]  [?borderWidth x_borderWidth] [?scrollBars g_scrollBars] [?rightMargin x_rightMargin] [?bottomMargin x_bottomMargin] [?help g_help]   " "Creates a scroll region field, which can be scrolled and can contain any type of field. A scroll region field is like a sub-form within a form.")

("hiCreateSeparatorField" "?name s_fieldName " "Creates a separator field for a form. ")

("hiCreateSeparatorMenuItem" "?name s_itemHandle " "Creates a menu separator-a horizontal line that separates menu items. This menu item is used in the l_menuItems argument of the hiCreateMenu and hiCreatePulldownMenu functions. You can use the separator menu item in more than one menu or in multiple locations in the same menu.")

("hiCreateSimpleMenu" "s_menuHandle  t_menuTitle  l_menuItems  l_menuItemCallbacks  " "Returns the SKILL description of a simple menu, in that it is a single level menu containing only text menu items, and none of its menu entries invoke a submenu. Once this menu is created, you can display it with hiDisplayMenu or associate it with a window using hiSetWindowMenu.")

("hiCreateSliderMenuItem" "?name s_itemHandle  ?itemText t_menuItemText  ?subMenu r_pulldownMenu  [?itemIcon l_menuIcon] [?disable g_disabled] " "Creates a slider menu item that is used in the argument list to create a menu (all menus except simple, fixed or 2D menus). Slider menu items bring up submenus when selected. They can contain text (menuItemText) or icon (menuIcon) information.")

("hiCreateStringField" "?name s_fieldName  [?prompt t_fieldPrompt]  [?value t_currentValue] [?help g_fieldHelp]  [?defValue t_defaultValue]  [?font t_font]  [?callback t_callback] [?modifyCallback t_modifyCallback] [?format t_fieldFormat]  [?editable g_editable] [?enabled g_enabled] [?nextField g_nextField] " "Creates a string field entry for a form. Any input typed into this field is surrounded by double quotation marks before being passed to SKILL to interpret. ")

("hiCreateToggleField" "?name s_fieldName  ?choices l_toggleList  [?help g_fieldHelp]  [?numSelect x_numSelectable]  [?prompt t_fieldPrompt]  [?value l_currentValues]  [?defValue l_defaultValues] [?itemsPerRow x_itemsPerRow]  [?font t_font]  [?enabled g_enabled] [?callback l_toggleListCallbacks]  " "Creates a toggle field entry for a form. ")

("hiCreateVerticalFixedMenu" "s_menuHandle  l_menuItems  x_rows  x_cols  " "Returns an internal data structure that describes a vertical fixed menu object. The fixed menu is created as a grid of row x column dimensions, and contains menu item objects created by hiCreateMenuItem. An additional Done item is added as the last menu item. Selecting this Done menu item will remove the fixed menu from the screen. ")

("hiCreateWindow" "g_boxSpec  t_widgetType  t_applicationType  [t_help] [g_scrollbars] [g_form]  [l_iconPosition] " "Creates but does not display a window. ")

("hiDeiconifyWindow" "w_windowId  " "Converts an icon to a window. ")

("hiDeleteBannerLabel" "w_windowId  x_labelPosition  " "Deletes a label in the banner of a window.")

("hiDeleteBannerMenu" "w_windowId  x_menuPosition  " "Deletes a menu from the banner of a window.")

("hiDeleteBannerMenus" "w_windowId  " "Deletes all menus from the banner of a window.")

("hiDeleteField" "r_form  s_field  " "Deletes a field from a form. ")

("hiDeleteFields" "r_form  l_fields  " "Deletes a field from a form.")

("hiDeleteForm" "r_form  " "Deletes the form specified and any fields the form contains. ")

("hiDeleteMenu" "r_hiMenu  " "Destroys the menu given by hiMenu, which must be a valid data structure. Individual menu items contained in this menu are also destroyed. .")

("hiDeleteMenuItem" "r_hiMenu  s_itemHandle " "Deletes the menuItem from all instances of the specified hiMenu. ")

("hiDeleteStatusBanner" "w_windowId  " "Deletes the status banner of a window.")

("hiDeltaPan" "[w_window]  [n_deltax]  [n_deltay]  " "Pans the view of a design in any direction by specifying the displacements in user units. ")

("hiDisableMenuItem" "r_hiMenu  s_itemHandle [w_windowId]  " "Grays out menu items (itemHandle) on pull-down, pop-up, or fixed menus (hiMenu), making them unselectable. ")

("hiDisableTailViewfile" "w_windowId  " "Turns off the ability to repeatedly read from the end of a file.")

("hiDisplayAppDBox" "?name s_dboxHandle  [?dboxBanner t_dboxBanner]  [?dboxText t_dboxText] [?callback t_callback]  [?dialogType x_dialogType] [?dialogStyle s_dialogStyle]  [?buttonLayout s_buttonLayout] [?defaultButton x_defaultButton] [?location l_location] [?help t_help] " "Creates and displays a dialog box. The dialog box is destroyed when it is removed from the screen.")

("hiDisplayEdgeMenu" "r_hiMenu  [l_menuLocation] [x_width] [x_height]  " "Displays an Edge-style popup or fixed menu, created from the menutrans program. ")

("hiDisplayFixedMenu" "r_hiMenu  g_menuLocation [x_width] [x_height]  " "Displays the specified fixed menu in the default root window (screen) for the application. They appear on a side of the screen, to be shared among Cadence application windows contained within the screen. This function will display both Opus-style (created from hiCreateHorizontalFixedMenu or hiCreateVerticalFixedMenu) and Edge-style fixed menus (created from the menutrans program). ")

("hiDisplayForm" "r_form  [l_location]  " "Displays a form. Do not use hiDisplayForm for displaying options forms. You can also use this function to bring a form to the top of the screen if the form is covered by other windows. ")

("hiDisplayListBox" "s_listBoxHandle  t_listBoxTitle  l_listItems  t_help " "Creates and displays a list box. The list box will display a list of strings. The user can select exactly one of these strings by clicking over the item with the left mouse button. The list box remains on the screen until the user selects OK or Cancel. The list box is destroyed when it is removed from the screen")

("hiDisplayMenu" "r_hiMenu  [l_position]  " "Displays a menu created by hiCreateMenu, hiCreateSimpleMenu, or hiCreate2DMenu. For non-2D menus, the menu is always displayed at the current cursor")

("hiDisplayModalDBox" "s_dBoxHandle  t_dBoxBannerText  t_dBoxMsg  t_dBoxHelp  t_confirmAction [l_location] [x_dboxType] " "hiDisplayAppDBox( ) is the recommended dialog box interface. Please use that function instead of this one.")

("hiDisplayModelessDBox" "s_dBoxHandle  t_dBoxBannerText  t_dBoxMsg  t_dBoxHelp  t_confirmAction [l_location] [x_dboxType]  " " hiDisplayAppDBox( ) is the recommended dialog box interface. Please use that function instead of this one and set ?dialogStyle to ")

("hiDisplaySysModalDBox" "s_dBoxHandle  t_dBoxBannerText  t_dBoxMsg  t_dBoxHelp  t_confirmAction [l_location] [x_dboxType]  " " hiDisplayAppDBox( ) is the recommended dialog box interface. Please use that function instead of this one and set ?dialogStyle to ")

("hiDisplayWindow" "w_windowId  " "Displays the window created by hiCreateWindow.")

("hiDisplayWindowMenu" "w_windowId  " "Displays the popup menu associated with the given windowId, which must be a valid data structure returned by a call to hiOpenWindow or hiCreateWindow. ")

("hiEdgeFixedMenuDone" "r_hiMenu  " "Removes the specified Edge-style fixed menu from the screen. ")

("hiEditPropList" "g_object  [t_title]  [g_modifiable]  " "Invokes the property list editor for the given g_object. ")

("hiEnableMenuItem" "r_hiMenu  s_itemHandle [w_windowId]  " "Makes unselectable menu items (itemHandle) in pull-down, pop-up, or fixed menus (hiMenu) selectable (ungrays them). ")

("hiEnableTailViewfile" "w_windowId  " "Turns on the ability to repeatedly read from the end of a file and update the viewfile window. This will continually update the viewfile window with text that is appended to the end of the file being viewed. This only works when appending to a file. If the file is modified in another way (such as edited using an editor), the results are unpredictable. This function is equivalent to the Unix command tail_f and works the same way.")

("hiEncap" "[g_boxSpec] [t_cmd] [t_title] " "Invokes an encapsulation session by creating and displaying an encapsulation window.")

("hiEndLog" "" "Stops writing the transaction log to the file previously specified by hiStartLog.")

("hiFixedMenuDown" "r_hiMenu  " "Removes the specified fixed menu from the screen. This function should only be used for Edge-style fixed menus; it is automatically placed as the callback for the Done menu item on Opus-style fixed menus.")

("hiFocusToCIW" "[w_windowId]  " "Temporarily refocuses the input window to the CIW until a return is entered. ")

("hiFocusToCursor" "g_cursorFocus  " "Sets the window focus mechanism.")

("hiFocusToEncap" "w_encap  [w_window]  " "Temporarily focuses the keyboard input to an encapsulation window.")

("hiFormApply" "r_form  " "Performs the same action as would be performed by selecting the Apply button on the form. ")

("hiFormCancel" "r_form  " "Performs the same action as would be performed by selecting the Cancel button on the form. ")

("hiFormDone" "r_form  " "Performs the same action as would be performed by selecting the OK button on the form. This function is identical to the hiFormFinish function. ")

("hiFormFinish" "" "Equivalent to pressing the OK button on a form. This function is identical to the  hiFormDone function.")

("hiFormUnmap" "r_form  " "Unmaps the form from the screen before a callback is completed. ")

("hiGenTextIndex" "w_windowId  t_text  x_fromIndex  " "Returns the character position that is the next occurrence of the text string relative to a specified position in the file.")

("hiGetAbsWindowScreenBBox" "w_windowId  [g_includeWMOffsets] " "Returns the absolute screen coordinates of a window, assuming 0:0 is the lower-left corner of the screen. ")

("hiGetAppType" "w_windowId  " "Returns the application type of a window. ")

("hiGetAttention" "[x_loudness] " "Rings the bell in the keyboard or terminal.")

("hiGetBBoxResource" "t_resourceName [t_resourceClass]  " "Returns the bounding box specification defined in the .Xdefaults file for the specified resource. ")

("hiGetBannerMenus" "w_windowId  " "Creates a list of menus that are in the menu banner of a window.")

("hiGetBeepVolume" "" "Retrieves the loudness of the beep.")

("hiGetBindKey" "[t_application_type]  [t_key]  " "Returns the SKILL command string bound to a key or mouse button for an application.")

("hiGetBindKeyInheritAlias" "t_application_type  " "Returns a list of application names that inherit the bindkeys from t_application_type.")

("hiGetBindKeyInheritRoot" "t_application_type  " "Returns the application name from which t_application_type inherits its bindkeys.")

("hiGetBindKeyPrefixList" "" "Returns a list of registered applications. This list is used to build the menu for the Cyclic button on the Bind Keys form.")

("hiGetCIWindow" "" "Retrieves the window identity of the CIW.")

("hiGetCommandPoint" "[w_windowId]  " "Gets the location where the cursor was the last time a mouse button or keyboard key was pressed, but only until the cursor leaves that window. ")

("hiGetCurrentField" "r_form " "Returns the symbol name of the field that currently has input focus. The type of field that can be returned by this function is determined by the ?fieldFocus setting on the form at the time of form instantiation.")

("hiGetCurrentForm" "" "Returns the last active form, that is, the form that the cursor was last in.")

("hiGetCurrentIndex" "w_windowId  " "Returns the current cursor index position of text relative to 0:0.")

("hiGetCurrentWindow" "" "Returns the ID of the current window. getCurrentWindow is an alias for hiGetCurrentWindow and is defined for compatibility with earlier versions of the software.")

("hiGetCursor" "w_windowId " "Identifies the type of cursor that is currently set for the specified window.")

("hiGetEncapSkillCmd" "w_window  " "Returns the SKILL function associated with a window.")

("hiGetFieldInfo" "r_2DFormOr2DMenu  s_field  " "Returns the dimensions of any form field or 2D menu item. Do not use the return value of hiGetFieldInfo to restore a field to its original location. Instead, use the values you specified originally.")

("hiGetFieldOverlaps" "r_formHandle " "Generates warnings if the form specified contains any fields whose bounding boxes overlap with other fields, or any fields in which the bounding box for the prompt portion of the field overlaps with the main portion of the field. The function generates an initial warning that overlaps were found, then additional warnings for each overlap. Returns nil if the form is uninstantiated; t otherwise.")

("hiGetFont" "t_fontType  " "Returns the name of the font associated with the specified type font.")

("hiGetGeometryResource" "t_resourceName [t_resourceClass] " "Gets geometry resources from the X resource database. ")

("hiGetHelp" "w_windowId " "Retrieves the help string that is defined for the window.")

("hiGetIconName" "w_windowId  " "Retrieves the icon name of a window.")

("hiGetLayerCyclicValue" "d_techFileId r_form  " "Returns the layer object associated with the current value of the layer cyclic field. ")

("hiGetMaxScreenCoords" "" "Retrieves the screen coordinates of the upper-right corner on the display screen. The lower-left corner of the screen always has screen coordinates 0:0. ")

("hiGetNumMenus" "w_windowId  " "Counts the menus in the menu bar of a window.")

("hiGetPoint" "w_windowId  " "Retrieves the xy position for the current location of the cursor within the boundaries of the window. It returns the xy position even if the cursor is in another window or form that is covering the specified window, as long as the cursor is within the boundaries of the specified window.")

("hiGetStringResource" "t_resourceName [t_resourceClass] " "Gets resources from the resource database of the X Window System.")

("hiGetTextClass" "w_windowId  " "Returns the value of the current active text class. If hiSetTextClass() has not been set, the current active text class will be 0. Also, a few other functions may reset the active text class back to 0 or possibly another value. Otherwise the currently active text class will be the one set by the last call to hiSetTextClass().")

("hiGetTextFieldFit" "x_rows x_columns t_font g_hasVerticalScrollbar g_hasHorizontalScrollbar " "Computes and returns the pixel size needed for a multiline text field entry for a form. The value returned is based on the specified font and character extents. ")

("hiGetTextSelByLoc" "w_windowId [x_class] " "Returns a list of starting and ending location pairs of all selected text strings in the specified class.")

("hiGetTextSelection" "w_windowId [x_class] " "Retrieves the currently selected text strings from within a specified class.")

("hiGetTextWidth" "t_fontName t_text  " "Returns the width in pixels of a text string in a specified font. ")

("hiGetTopListItem" "o_listbox " "Returns the top item position of a listbox field.")

("hiGetUndoLimit" "" "Returns the maximum number of hiUndo commands it is possible to perform.")

("hiGetViewBBox" "[w_window]  " "Returns the bounding box displayed in a window.")

("hiGetWMOffsets" "" "Returns a list of offsets (dimensions) of the window manager border placed around each window. ")

("hiGetWidgetType" "w_windowId  " "Returns the widget type of a window. ")

("hiGetWindowFixedMenu" "[w_window] " "Identifies the fixed menu on a window.")

("hiGetWindowIconifyState" "w_windowId  " "Returns the icon position of an iconified window. ")

("hiGetWindowList" "" "Returns a list of all window IDs that have been created and not closed. ")

("hiGetWindowMenu" "w_windowId  " "Returns the symbol of the menu associated with the specified window. This menu was associated with a window by using hiSetWindowMenu.")

("hiGetWindowName" "w_windowId  " "Gathers the text in the window manager frame of a window.")

("hiGetWindowState" "w_windowId " "Identifies the display state of a window.")

("hiHelp" "s_objType S_objName  [g_objDetail] [g_moreDetail] " "Constructs a help symbol from its arguments, invokes the OpenBook API to display the help document associated with that help symbol, and if that fails, extracts a help response from the help response file, and evaluates the help response. hiHelp is the main service routine for the online help system.")

("hiHighlightField" "g_form  s_field  g_highlightType  " "Highlights a type-in field depending on the value of highlightType. ")

("hiIconifyWindow" "w_windowId  " "Converts a window into its icon. ")

("hiIgnoreProp" "s_objType  t_propName  " "Does not display the specified property of a given object type in the Property List Editor form. ")

("hiInFormApply" "r_form " "Checks whether the Apply button on a mapped form is selected.")

("hiInheritBindKey" "t_application_type  t_from_app_type  " "Causes a registered application to inherit bindkeys from another application.")

("hiInsertBannerMenu" "w_windowId  g_menu  x_menuPosition  " "Inserts a menu into the banner of the window.")

("hiInsertMenuItem" "r_hiMenu  r_menuItem g_position  " "Inserts the menuItem into a specified position of all instances of hiMenu.")

("hiInstantiateForm" "r_form  " "Instantiates the C structure of a form from SKILL. ")

("hiIs2DMenu" "g_menu  " "Determines whether the specified argument is a valid 2D menu. ")

("hiIsForm" "g_FormOrMenu  " "Checks whether a form or menu is a valid one.")

("hiIsFormDisplayed" "r_form  " "Checks whether a form is displayed.")

("hiIsIcon" "g_icon  " "Determines whether the specified argument is a valid icon. ")

("hiIsInFieldCancel" "" "Query this function during a field or form callback to determine if the form is currently being cancelled (the callback may be initiated by the cancel operation). If the form is being cancelled, the form handle is returned; otherwise nil is returned.")

("hiIsInstantiated" "r_formOrMenu  " "Returns t if a form has been displayed at least once or a menu has been placed in a window.")

("hiIsMenu" "g_menu  " "Determines whether the specified argument is a valid menu.")

("hiIsMenuItemEnabled" "r_hiMenu s_itemHandle [w_windowId] " "Determines whether a menu item is enabled. ")

("hiIsMenuSlotFilled" "w_windowId  x_position " "Checks a menu position in the banner of a window for the existence of a menu.")

("hiIsScrollRegion" "g_item " "Returns t if the item is a scroll region field, nil if it is not a scroll region field.")

("hiIsWidgetType" "t_widgetType  " "Determines if a widget type is valid or not.")

("hiIsWindowSpecifier" "g_winspec " "Validates a window specifier, which is passed as the ?bBox argument to the hiOpenWindow function and as the g_boxSpec argument to the hiCreateWindow function.")

("hiLayerMatchCyclicStr" "l_choices t_layer  " "Returns the layer cyclic value associated with the specified t_layer. ")

("hiLayerStringToLPP" "d_techFileId t_layer  " "Returns the layer object in the specified d_techFileID associated with the specified t_layer. ")

("hiListBoxCancel" "o_listBox  " "Performs the same action as the Cancel button on the listbox.")

("hiListBoxDone" "o_listBox  " "Performs the same action as the OK button on the listbox.")

("hiListView" "[t_viewName] [w_window] " "Lists the saved viewing parameters for a given view, for all saved views if viewName is not specified. ")

("hiLowerWindow" "w_windowId  " "Lowers a window to the bottom of the list of visible windows. ")

("hiMakerHelp" "t_docName  t_tagName [quiet] " "Opens a FrameViewer document to the page containing a hypertext tag name. ")

("hiMapWindow" "w_windowId  " "Displays a window on screen. ")

("hiMatchColor" "l_RGBcolor  " "Returns the colormap index of the layer color (currently in the colormap) that most closely matches the specified RGB triplet. The index returned by hiMatchColor( ) can change with each invocation of Cadence software and should not be hard coded into any SKILL program.")

("hiMatchColorByName" "t_colorName  " "Returns the colormap index of the layer color (currently in the colormap) that most closely matches the color name supplied.")

("hiModalDBoxHelp" "t_helpString  [t_dboxName] " "Displays a message in a modal dialog box. ")

("hiModelessDBoxHelp" "t_helpString  [t_dboxName] " "Displays a message in a modeless dialog box. ")

("hiMoveField" "r_2DFormOr2DMenu  s_field  l_location  " "Moves the specified field to a new location. This function cannot be used for fields that have field attachments. Use hiReattachField for fields with field attachments.")

("hiMoveFixedMenu" "[?window w_window]  [?menuSide s_menuSide]  " "Moves the fixed menu to the opposite side of the window.")

("hiMoveInsBarToEnd" "r_form s_field " "Places the cursor (insertion point) at the end of a text field, scrolling the field so the cursor is visible.")

("hiMoveWindow" "w_windowId  l_point  " "Moves the lower left corner of a window to a new screen location. ")

("hiNextWinView" "w_window  " "Undoes hiPrevWinView.")

("hiOffsetField" "r_2DFormOr2DMenu  s_field  l_offsets  " "Offsets one field from its current position. This function cannot be used for fields that have field attachments. Use hiReattachField for fields with field attachments.")

("hiOffsetFields" "r_2DFormOr2DMenu  l_fields l_offsets  " "Offsets several fields from their current positions. All fields are offset by the same distance (l_offsets); they move as a block. This function cannot be used for fields that have field attachments. Use hiReattachField for fields with field attachments.")

("hiOpenWindow" "[?bBox l_boxSpec]  [?type t_widgetType]  [?appType t_applicationType]  [?menus l_menus]  [?labels l_labels]  [?help t_helpString]  [?scroll g_scrollbars] [?form g_form] [?closeProc s_closeProc] [?iconPosition l_iconPosition] " "Creates and displays a window. ")

("hiPan" "[w_window]  [l_point]  " "Scrolls a window so that the display is centered on a point. ")

("hiPickWindow" "" "Allows selecting a window without changing the current window. When this function is called, the pointer is grabbed and not released until either the mouse button or the Escape key are pressed. Any other keyboard event is ignored and the mouse click is not passed on to anything else.")

("hiPrevWinView" "w_window  " "Restores a window to the view displayed before the last zoom or pan command.")

("hiQueryFont" "t_fontName  " "Returns the values of the attributes of t_fontName. ")

("hiRaiseWindow" "w_windowId  " "Raises a window to the top of the list of visible windows. ")

("hiReattachField" "g_formOrScrollRegion s_field l_positionalInfo i_fieldAttachment " "Reattaches a field in a two-dimensional form or scroll region that has field attachments. This function places the field according to the new position and attachment information. This function can be used only with forms or scroll regions that already have field attachments. For forms or scroll regions that do not have field attachments, use the hiMoveField, hiResizeField, hiOffsetField, and hiOffsetFields functions.")

("hiRedo" "" "Undoes the last hiUndo, assuming no other database modifications have occurred.")

("hiRedraw" "[w_window]  " "Redraws the content of a window. ")

("hiRefreshTextWindow" "" "Redraws all the selections and refreshes the viewfile window.")

("hiRegCloseProc" "w_windowId  s_closeProc  " "Registers the procedure to be performed when a specified window is closed.")

("hiRegTimer" "t_callbackString x_tenthsofSeconds " "Registers a SKILL function string that is executed after the specified time.")

("hiRegisterBindKeyPrefix" "t_application_type [t_widgetType] " "Registers the application bindkey prefix that you do not want or need to register with the Design Editor application.")

("hiRemoveFixedMenu" "[w_window]  " "Removes the current fixed menu from a window. To delete fixed menus, first use hiRemoveFixedMenu to remove the fixed menu from the window, and then use hiDeleteMenu to destroy the fixed menu.")

("hiRepeat" "" "Re-executes the last command processed by the CIW.")

("hiReplaceAllBannerMenus" "w_windowId  l_menulist " "Replaces all banner menus in a window with new menus.")

("hiReplayFile" "s_fileName  " "Replays a log file. Use this function only for testing or debugging. In general, use the functions load or loadi instead of hiReplayFile. hiReplayFile is intended to be run only from a Command Interpreter Window.")

("hiResizeField" "r_2DForm  s_field  l_resizeDescription  " "Changes the width, height, or promptBox width of a specified field. This function cannot be used for fields that have field attachments. Use hiReattachField for fields with field attachments.")

("hiResizeWindow" "w_windowId  l_bBox  " "Resizes a window to the size of a bounding box. ")

("hiRestoreView" "t_viewName  [w_window]  " "Restores a window to the view specified by viewName.")

("hiSaveAsViewfile" "[w_windowId]  [t_fileName]  " "Saves the contents of the current window to the specified name.")

("hiSaveView" "t_viewName  [w_window]  " "Saves the current viewing parameters for a window.")

("hiSaveViewfile" "[w_windowId]  [t_fileName]  [g_donotOverwrite] " "Saves the contents of the viewfile window to a file on disk.")

("hiScrollWindowBottom" "w_windowId  " "Scrolls the window to the bottom position of the viewable window.")

("hiScrollWindowDown" "w_windowId  " "Scrolls the window down one screenful of text at a time.")

("hiScrollWindowLeft" "w_windowId  " "Scrolls the window left one screenful of text at a time.")

("hiScrollWindowRight" "w_windowId  " "Scrolls the window right one screenful of text at a time.")

("hiScrollWindowToCurrentIndex" "w_windowId  " "Scrolls the window to the current cursor index position in the viewable window.")

("hiScrollWindowToIndex" "w_windowId  x_index  " "Scrolls the window to the index position in the specified window and forces the text at the given position to be displayed.")

("hiScrollWindowTop" "w_windowId  " "Scrolls the window to the top position of the viewable window.")

("hiScrollWindowUp" "w_windowId  " "Scrolls the window up one screenful of text at a time.")

("hiSelectTextByLoc" "w_windowId  l_locationPair [x_class] " "Highlights a list of strings specified as a list of starting and ending location pairs.")

("hiSetBeepVolume" "[x_loudness] " "Sets the loudness of the beep.")

("hiSetBindKey" "[t_application_type]  [t_key]  [t_skill_cmd]  " "Binds a SKILL command string to a keyboard key or a mouse sequence for an application.")

("hiSetBindKeys" "t_application_type  l_bindKeyList  " "Sets multiple bindkeys for an application at one time. For more information about restrictions, see hiSetBindKey().")

("hiSetButtonLabel" "g_Button g_Label " "Changes a button")

("hiSetCallbackStatus" "r_form  g_booleanStatus  " "Overrides the removal (unmapping) of a form when the form")

("hiSetCurrentField" "g_form  s_fieldName [g_limitSearch] " "Makes the specified type-in field the current field (sets input focus to the field). If the field is not visible, hiSetCurrentField scrolls the form or scroll region field so the field becomes visible.")

("hiSetCurrentIndex" "w_windowId  x_index  " "Sets the current cursor index position of the text in a window.")

("hiSetCurrentWindow" "w_windowId  " "Sets the current window to be the window you specify.")

("hiSetCursor" "w_windowId x_cursor " "Sets the cursor you specify for the window.")

("hiSetEncapHistory" "w_window  t_msg [g_redraw]  " "Copies a message into the next available insertion position in an encapsulation output window.")

("hiSetEncapPrompt" "w_window  t_prompt  " "Sets the prompt for an encapsulation window.")

("hiSetEncapSkillCmd" "w_windowId t_skillCmd  " "Registers the SKILL function that wraps or embraces the input command line entered during the current encapsulation session.")

("hiSetFieldEditable" "r_field  g_editable  " "Sets the specified field editable or noneditable, in all forms where it appears. ")

("hiSetFieldEnabled" "g_field g_enabled " "Enables or disables a form field. A disabled field is greyed-out. This function updates all instances of the field. You can use hiSetFieldEnabled with all types of fields except scroll region fields and separator fields.")

("hiSetFilter" "[s_filter] " "Sets the output message filter for the CIW with the option specified by s_filter. If no option is specified, a form appears allowing you to specify the display options you want. ")

("hiSetFilterOptions" "inputMenuCommands inputPrompts outputProgramResults outputMenuCommands outputUser messageErrors messageWarnings " "Sets the output message filter for the CIW with the specified options. ")

("hiSetFixedMenuSize" "w_windowId  " "Sets the window position and size of an Edge-style fixed menu that has been created in Opus. ")

("hiSetFont" "[t_fontType] [t_fontName] " "Sets the font type to use the specified font t_fontName. ")

("hiSetFormBlock" "r_form [g_blockUpdates] [g_unmanage] " "Prevents time-consuming multiple updates to a form during multiple changes (such as adding, deleting, moving, or resizing elements). You can also blank out the form during extensive changes. Updates are blocked until you call hiSetFormBlock( r_form nil) or hiUpdateFormBlock( r_form).")

("hiSetFormButtonEnabled" "r_form s_buttonSym g_enabled " "Enables or disables a button on a form. To enable or disable fields on a form, use the hiSetFieldEnabled function.")

("hiSetFormHighlights" "g_form  g_highlightType " "Highlights all type-in fields for form, depending on the value of highlightType.")

("hiSetFormMinMaxSize" "r_form g_minSize g_maxSize " "Sets the minimum or maximum size of the form. The size excludes the window manager")

("hiSetFormPosition" "l_location " "Sets the default initial location for forms displayed without an explicit location argument. ")

("hiSetFormToDefaults" "r_form  " "Sets each field in the form to its default value. ")

("hiSetIconName" "w_windowId  t_iconName  " "Sets the icon name of a window. ")

("hiSetLayerCyclicValue" "d_techFileId l_lpp r_form  " "Sets the current value of the layer cyclic field. ")

("hiSetListItemCenter" "o_listBoxField x_position " "Brings the specified list box item into view in the center of the list box, if possible.  Takes a list box field of a form as the first argument and the numeric position of the item you want to bring into view as the second argument.")

("hiSetListItemVisible" "o_listBoxField x_position " "Brings the specified list box item into view in the list box. Takes a list box field of a form as the first argument and the numeric position of the item you want to bring into view as the second argument. If the numeric position specified is 0 or less than 0, the last item in the list is scrolled into view.")

("hiSetMenuItemCallback" "r_hiMenu  s_itemHandle  t_callback  " "Changes the callback associated with all instances of a specified menu item.")

("hiSetMenuItemText" "r_hiMenu  s_itemHandle  t_itemText  " "Changes the item text associated with all instances of a specified menu item.")

("hiSetSplashBackground" "t_XPMfileName " "Sets the background for the application")

("hiSetSplashDefaultBackground" "" "Sets the splash screen background to the default background.")

("hiSetSplashFamily" "t_string " "Sets the product family name on the application")

("hiSetSplashIcon" "t_XPMfileName " "Sets the new icon for the application")

("hiSetSplashLicense" "t_string " "Sets the license information in the application")

("hiSetSplashProduct" "t_string " "Sets the product name on the application")

("hiSetTextClass" "w_windowId  x_class " "Sets the active selection (highlight) text class in a window.")

("hiSetTextHighlightColor" "x_class l_foreground l_background  " "Sets the foreground and background highlight colors of a class to the specified RGB value.")

("hiSetTextSelectAll" "w_windowId  t_text [x_class] " "Highlights all occurrences of a specified string and resets the cursor to the top of the file.")

("hiSetTextSelection" "w_windowId  t_text [x_class] " "Highlights the next occurrence of a specified string relative to the current cursor position. If no matching string is found between the current cursor position and the end of the file, it wraps around to the beginning of the file and continues the search.")

("hiSetTopListItem" "r_listBoxField x-itemPosition " "Sets the first visible item in a list box field to the specified position (x_itemPosition). A position value of 1 indicates the first item, a position value of 2 indicates the second item, and so on. A value of 0 (zero) specifies the last item in the list. ")

("hiSetUndoLimit" "n_undoLimit " "Sets the maximum number of hiUndo commands that can be performed in sequence. ")

("hiSetViewfile" "w_windowId  t_fileName  " "Reads a file and displays its contents in a viewfile window that has already been created.")

("hiSetWindowAtts" "[?window w_windowId]  [?appType t_applicationType]  [?help t_help]  [?scroll g_scrollbars] " "Changes the application type, help string, or scroll bar attributes of a window. You must have registered the new application type before using this function.")

("hiSetWindowIcon" "w_windowId  l_icon  " "Sets the icon of a window. ")

("hiSetWindowMenu" "g_menu  w_windowId  " "Associates the given menu with the specified windowId. You can also use hiSetMenu, to get the same results. ")

("hiSetWindowName" "w_windowId  t_label  " "Sets the text in the window manager frame of a window. ")

("hiShowBindKeys" "[g_appTypeOrWindow] " "Displays the bindkeys for an application type or window in a Viewfile window.")

("hiShowBindKeysByAppType" "[t_application_type] " "Displays the bindkey for an application in a Viewfile window.")

("hiShowBindKeysByWindow" "[w_window1] [w_window2] " "Displays the bindkeys for a window in a Viewfile window.")

("hiShowListBox" "?name s_listBoxHandle  ?choices lt_listItems  ?callback s_callback  [?title t_listBoxTitle]  [?multipleSelect g_multiSelect] [?value lt_selectedItem] [?appData g_appData] [?applyButton g_applyButton] " "Creates and displays a list box. The list box displays a list of strings. The list box can be created so that one item is selectable or multiple items are selectable. While the list box is displayed on the screen, the user may change the items in the list box, or change the item(s) selected. The list box remains on the screen until the user selects OK or Cancel. The list box is destroyed when it is removed from the screen.")

("hiStartGenTextIndex" "w_windowId  t_text  " "Searches the specified text string from the beginning of the file and returns the first character position of the matching text.")

("hiStartLog" "t_filename " "Writes a transaction log to a file.")

("hiStoreFormLocation" "s_formName  l_location  " "Stores a form")

("hiStringToIcon" "a_colorArray  t_iconString  x_width  x_height  " "Returns an internal icon description that can be used in calls to hiCreatePulldownMenu, hiCreateMenuItem, hiCreateSliderMenuItem, hiCreateButton, hiCreateCyclicField, and hiAddCyclicChoice.")

("hiSwitchWindowType" "w_windowId  t_widgetType t_appType t_help [g_scroll]  " "Switches the widget type of a window from text to graphics or from graphics to text. ")

("hiTextDisplayString" "w_windowId  t_text g_erase [g_dontScrollTop] " "Displays a text string in a window.")

("hiTextWidth" "t_fontName t_string " "Determines the width, in pixels, of a text string if it were displayed in the font you specify. Returns nil if the font is not valid.")

("hiToggleEnterForm" "[g_form] " "Displays or removes the options form of the enterfunction in the current window. ")

("hiUndo" "" "Undoes the last user command that modified the database and that has not been undone by a previous hiUndo. ")

("hiUnmapWindow" "w_windowId  " "Removes a window from the screen without closing it or destroying it. ")

("hiUnregCloseProc" "w_windowId  s_closeProc " "Unregisters the closing procedure for a window.")

("hiUnselectText" "w_windowId t_text [x_class] " "Unhighlights the next occurrence of selected text in the viewfile relative to the cursor position.")

("hiUnselectTextAll" "" )

("hiUnselectTextByLoc" "w_windowId l_locationPair [x_class] " "Unhighlights selected text specified as a list of starting and ending location pairs in the given window.")

("hiUnselectTextClass" "w_windowId x_class " "Unhighlights all occurrences of selected text belonging to the specified class.")

("hiUpdateFormBlock" "r_form " "Used to reset a form if you have blocked multiple updates with the hiSetFormBlock function. Calling hiUpdateFormBlock( r_form) is equivalent to calling hiSetFormBlock( r_form nil).")

("hiVectorPan" "[w_window]  [l_refPt]  [l_destPt]  " "Scrolls the view of the design in any direction by specifying two points in user units. ")

("hiZoomAbsoluteScale" "[w_window]  [n_scale]  " "Zooms in or out with an absolute scale. ")

("hiZoomIn" "[w_window]  [l_bBox]  " "Zooms in to a design. ")

("hiZoomOut" "[w_window]  [l_bBox]  " "Zoom out of a design.")

("hiZoomRelativeScale" "[w_window]  [n_scale]  " "Zooms in or out with a scale relative to the current window.")

))
