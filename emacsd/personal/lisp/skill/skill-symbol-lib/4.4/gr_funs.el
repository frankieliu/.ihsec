(put 'gr_funs 'symbol-type "global routing fun")
(setq gr_funs '(
("grAutoBias" "d_cv d_net " "Calculates the default routing biases used by the tree router for net (d_net) and returns them in a two-element list, l_biases.")

("grAvoidRouting" "d_channel g_avoidStatus " "Marks the channel (d_channel) to be avoided during global routing. The global router assigns no nets to the channel as long as it is avoided. If you use this function to control routing, you must not avoid channels containing pins having no other access.")

("grClose" "d_cv " "Closes the global routing session and transfers the routing information from the global router")

("grExpand" "d_cv d_net t_congestionCost t_expansionMode " "Global routes the specified net with the expansion router.")

("grInit" "d_cv t_statFile t_tempPinFile [g_stubRoute] " "Initializes the global routing environment, creating data structures and performing other setup tasks for the global routing functions.")

("grPrintNetPairs" "d_cv " "Returns a list of net pairs registered by the global router.")

("grRegisterNetPair" "d_cv d_net1 d_net2 g_register  " "Registers or unregisters net pairs (d_net1 and d_net2) in the global routing environment. The global router attempts to keep these nets mutually planar, minimizing the number of crossings.")

("grRouteAll" "d_cv t_expansionMode t_congestionCost " "Global routes one or more nets. After running this function, run grClose before running grInit if you want to reinitialize the global router.")

("grSetEqInputPinLimitLayer" "" "halfLayerName")

("grTree" "d_cv d_net l_(t_horizBias t_vertBias) t_congestionCost t_expansionMode " "Global routes the specified nets in the cellview using the tree router.")

("grUndoAll" "d_cv " "Removes all global routing, including channel pins and connections.")

("grUndoNet" "d_cv d_net " "Removes global routing for the specified net (d_net).")

("groupDelay" "o_waveform " "Computes the group delay of a waveform.")

))
