(put 'da_funs 'symbol-type "graph browser fun")
(setq da_funs '(
("dagAddActionToObject" "l_action w_object " "Adds the action to the specified dag node or class. However, if the action is already in the list, it is not replaced. For an existing action, use dagDeleteActionFromObject to delete the action and then call dagAddActionToObject.")

("dagCreateClass" "t_className " "Creates a dagClass and returns it. If a class by this name already exists, it is overwritten.")

("dagCreateNode" "t_nodeName w_class " "Creates a dagNode and returns it.")

("dagDeleteActionFromObject" "t_actionName w_object  " "Deletes the action named t_actionName from the specified class or node. If a node")

("dagDestroyNode" "w_node " "Destroys a dagNode. All descendant nodes and arcs of this node are also destroyed, as well as the arcs linking this node to its parents.")

("dagDisplayTool" "[w_dagTool] [g_runPlacer] " "Redisplays a dagTool. You can use this function if you want to re-display all of the objects in the graph rather than calling dagRefreshObject for each one.")

("dagGetCurrentObject" "" "Often, when writing action procedures or SKILL objects, you need to know the node for which the action was selected. dagGetCurrentObject does this. It takes no arguments and returns the current node, or nil.")

("dagGetCurrentTool" "" "Returns the current dagTool, and nil if there is not a current dagTool. Note that the current dagTool is different from the current window. The current tool might not be the current window.")

("dagLinkParentToChild" "w_parent w_child  " "Creates a dagArc that links the parent node to the child node. It returns the arc it creates. If an error occurs, it returns nil.")

("dagNumToTool" "x_toolNumber " "Returns the dagtool that matches the window number specified by x_toolNumber.")

("dagOpenTool" "x_backGroundColor l_bBox w_startingObject t_name t_help " "Creates a dagTool object and opens a window in which to display the graph starting from the specified starting node.")

("dagPopTool" "w_dagTool " "Pops the tool stack (specified by the w_dagTool argument).")

("dagPushTool" "w_dagTool w_newStartingNode " "Pushes a new starting object (specified by the w_newStartingNode argument) onto the stack of the tool (specified by w_dagTool).")

("dagRefreshObject" "w_dagNode " "Redraws the node (specified by w_dagNode) in all the tools it is currentlydisplayed in.")

("dagSetActionStatus" "t_actionName w_dagObject g_status  " "Sets the status of the specified action in the action list of the class or node. An action that has been turned off is grayed out in the pop-up menu and not available through its action accelerator, if any.")

("dagSetCurrentTool" "w_dagTool " "Sets the current dagTool to the one specified by the w_dagTool argument.")

("dagSetExpandedActionStatus" "t_actionName w_dagObject g_status " "Sets the status of the specified action in the expanded-action list of a node. Setting the status to nil makes the action name appear gray in the pop-up menu and makes the action accelerator unavailable. Once a dagNode has been placed into a tool, the actions from the dagClass are concatenated to make a full list of actions for this node. This is known as the expanded-action list.")

("dagSetFont" "t_XFontName " "Modifies the font used in text mode in any dag tool.")

("dagUnlinkParentFromChild" "w_arc " "Unlinks a parent node from a child node. It takes, as its only argument, the dagArc that connects the parent to the child. The arc is destroyed; however, neither the parent node nor the child node is destroyed. This can be useful if you want to change the parent of a node.")

("dataFilter" "t_monteExprName ( {?sigma x_sigma  | ?upper x_upper ?lower x_lower} ?filterBy s_filterBy ) " "Eliminates bad data points (outliers) from a Monte Carlo data set.")

("dataTypes" "" "Returns the list of data types that are used in an analysis previously specified with selectResult.")

))
