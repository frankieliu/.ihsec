(put 'en_funs 'symbol-type "enter shape fun")
(setq en_funs '(
("enterArc" "[?prompts l_promptList]  [?points l_pointList]  [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Enters an arc into the current window. ")

("enterBox" "[?prompts l_promptList]  [?points l_pointList]  [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Enters a box in the current window. ")

("enterCircle" "[?prompts l_promptList]  [?points l_pointList]  [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Enters a circle in the current window.")

("enterDonut" "[?prompts l_promptList]  [?points l_pointList]  [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Enter a donut in the current window.")

("enterEllipse" "[?prompts l_promptList]  [?points l_pointList]  [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Enters an ellipse in the current window. ")

("enterLine" "[?prompts l_promptList]  [?points l_pointList]  [?wantPoints x_pointLimit] [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Enters a multisegment line in the current window.")

("enterMultiRep" "[?prompts l_promptList]  [?points l_pointList] [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Identical to enterSegment except that the two points can be in windows viewing different cellviews. ")

("enterNumber" "[?prompts l_promptList] [?form s_form] [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?alwaysMap g_alwaysMap] " "Prompts you to enter a number. ")

("enterPath" "[?prompts l_promptList]  [?points l_pointList]  [?wantPoints x_pointLimit] [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?pathStyle t_pathStyle] [?pathWidth f_pathWidth] [?beginExtent f_beginExtent] [?endExtent f_endExtent]  [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Enters a path in the current window. ")

("enterPoint" "[?prompts l_promptList]  [?points l_pointList]  [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Prompts you to enter a single point. ")

("enterPoints" "[?prompts l_promptList]  [?points l_pointList] [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?wantPoints x_pointLimit]  [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Prompts you to enter a list of points. ")

("enterPolygon" "[?prompts l_promptList]  [?points l_pointList] [?wantPoints x_pointLimit]  [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Digitizes a polygon in the current window. ")

("enterScreenBox" "" "Lets you enter a box in screen coordinates. ")

("enterSegment" "[?prompts l_promptList]  [?points l_pointList] [?form s_form]  [?addPointProc t_addProcName]  [?delPointProc t_delProcName]  [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?dontDraw g_dontDraw] [?alwaysMap g_alwaysMap] [?acceptString g_acceptString] [?acceptNumber g_acceptNumber] [?noInfix g_noInfix] " "Lets you enter a segment into the current window. ")

("enterString" "[?prompts l_promptList] [?form s_form] [?initProc t_initProcName]  [?doneProc t_doneProcName] [?formProc t_formProcName] [?alwaysMap g_alwaysMap] " "Prompts you to enter a string. ")

))
