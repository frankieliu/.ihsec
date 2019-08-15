(put 'ad_funs 'symbol-type "floor planning fun")
(setq ad_funs '(
("addDefstructClass" "s_name " "Creates a class for the defstruct.")

("addPoint" "l_point " "Adds the point to the enterfunction in the current window. ")

("addSubWindowTitle" "x_windowtitle" "Adds a title to the current subwindow in the active window. The current subwindow is defined using the currentSubwindow command.")

("addSubwindow" "" "Adds a subwindow to the current Waveform window and returns the number for the new subwindow, which is found in the upper right corner.")

("addTitle" "x_windowtitle" "Adds a title to the current active OCEAN window. The current window is defined using the currentWindow command.")

("addWaveLabel" "x_waveIndex l_location t_label [?textOffset l_textOffset] [?Color x_color] [?justify t_justify] [?fontStyle t_fontStyle] [?height x_height] [?orient t_orient] [?drafting g_drafting] [?overBar g_overbar]" "Attaches a label to the specified waveform curve in the current subwindow.")

("addWindowLabel" "l_location t_label " "Displays a label in the current subwindow. The location for the label is specified with a list of two numbers between 0 and 1.")

))
