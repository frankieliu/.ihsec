(put 'fm_funs 'symbol-type "frameMaker interface fun")
(setq fm_funs '(
("fmCheckAndRestartFrameEditor" "[t_callBackProc] [t_callBackArg] " "Checks if a Frame tool is currently running and, if not, starts the default editor. ")

("fmCheckFrameRPC" "" "Checks if a Frame tool can respond to a remote procedure call (RPC) request.")

("fmCheckFrameVars" "g_startframe [t_callBackProc] [t_callBackArg] " "Initializes the Design Framework II-FrameMaker environment by setting the default Frame tool, the default Frame path, and the Frame options.")

("fmLinkDoc" "t_docName  t_hypertextTagName " "Displays the FrameMaker document page containing the given hypertext tag. ")

("fmOpenDoc" "t_docName " "Displays the first page of a FrameMaker document.")

))
