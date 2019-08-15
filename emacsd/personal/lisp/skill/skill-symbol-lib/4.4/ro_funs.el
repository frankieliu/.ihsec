(put 'rod_funs 'symbol-type "Relative Object Design")
(setq rod_funs '(
("rodAddMPPChopHole" "" "Adds a chop hole to all choppable parts of a ROD multipart path. To define a chop hole, you specify a list of points on the centerline of the master path. The results depend on whether the master path is choppable or not. ")

("rodAddPoints" "" "Adds two points together and returns the resulting point as l_point.")

("rodAddToX" "" "Adds a number to the X coordinate of l_point and returns the resulting point as l_point.")

("rodAddToY" "" "Adds a number to the Y coordinate of l_point and returns the resulting point as l_point.")

("rodAlign" "" "Aligns a named object by a point handle on that object to a specific point or to a point handle on a reference object. You can align objects that are at different levels of hierarchy as long as both objects are in the same top-level layout cellview. You can specify positive or negative separation between alignment points in the direction of both the X and Y axes, either as absolute distances or with Cadence, SKILL language expressions. The system applies the offset from the reference point or reference object to the object to be aligned.")

("rodAssignHandleToParameter" "" "Assigns one or more user- or system-defined point handles on a ROD object within a SKILL-based parameterized cell (pcell) to a single pcell parameter so that you can change the value of the parameter by graphically stretching the handle(s). Stretching a handle has the same effect as changing the value of the associated parameter for the pcell instance using the Edit Properties form. You cannot stretch handles on the pcell master. All rodAssignHandleToParameter statements must occur within the body-of-code section of a SKILL-based pcell.")

("rodCreateHandle" "" "Creates a user-defined handle for any ROD object (named shape, instance, or cellview); the object must be at level zero in the hierarchy. For example, you can create a handle for polyRect or for instance I1, but not for I1/polyRect.")

("rodCreatePath" "" "Creates a path consisting of one or more parts at level zero in the hierarchy on the same or on different layers from a list of points or from one or more exsiting objects. A path consisting of multiple parts is called a multipart path. You can use the rodCreatePath function to create one-part paths, simple multipart paths, or complex multipart paths such as guard rings, transistors, buses, and shielded paths.")

("rodCreatePolygon" "" "Creates one polygon from a list of points or from one or more named objects. Also creates a ROD object containing information associated with the polygon, including its name and database ID. The associated ROD object is identified by a ROD object ID. The polygon is created at level zero in the hierarchy. You can specify connectivity for the polygon by associating it with a specific terminal and net. You can also make the polygon into a pin.")

("rodCreateRect" "" "Creates a single rectangle, one or more rows and/or columns of rectangles, or fills a bounding box with rectangles. Also creates a ROD object for each rectangle, containing information about the rectangle, including its name and database ID. Each ROD object is identified by a ROD object ID. Each rectangle is a separate object, created at level zero in the hierarchy. You can also specify connectivity to associate the entire set of rectangles with the same terminal and net and to turn the entire set of rectangles into a pin on the specified terminal and net.")

("rodDeleteHandle" "" "Deletes a user-defined handle. You provide the ROD object ID and handle name.")

("rodGetHandle" "R_rodObj 	S_name  " "Returns the value of a system- or user-defined handle. You specify the handle name and the ROD object ID for the object with which the handle is associated.")

("rodGetNamedShapes" "" "Returns a list of the ROD object IDs for all named shapes (rectangles, polygons, and paths) at level zero in the hierarchy within the specified cellview that are ROD objects. This function looks only at the top level of hierarchy and does not return the ROD object ID for instances or cellviews.")

("rodGetObj" "" "Lets you find a named object at any level of hierarchy in your cellview. You must specify either the database ID for the object or its hierarchical name and the cellview ID. If your rodGetObj statement occurs in the body of a pcDefinePCell function or tcCreateDeviceClass function call, you can let the cellview ID default to pcCellView or tcCellView, respectively.")

("rodIsFigNameUnused" "" "Determines whether the name specified by S_name is a valid name and whether it is already assigned to a ROD object, instance, or mosaic in the cellview specified by d_cvId. A valid name cannot contain hierarchy (indicated by one or more slashes) and cannot be an empty string.")

("rodIsHandle" "" "Determines whether the name specified for S_name identifies a valid system- or user-defined handle associated with the object specified by R_rodObj. Use this function prior to the rodGetHandle function when you want to verify that the handle exists before you try to access it.")

("rodIsObj" "" "Determines whether the object specified for g_object identifies a valid ROD object. This function is useful for testing variables and parameters to see if they contain a ROD object ID.")

("rodNameShape" "" "Assigns a name to an unnamed database shape and creates a ROD object containing information associated with the shape, including its name and database ID. The associated ROD object is identified by a ROD object ID. You can assign a name to any of the following shapes:")

("rodPointX" "" "Returns the X coordinate of the point specified by l_point.")

("rodPointY" "" "Returns the Y coordinate of the point specified by l_point.")

("rodSubPoints" "" "Subtracts l_point2 from l_point1 and returns the resulting point as l_point.")

("rodUnAlign" "" "When you specify only one ROD object ID, removes all alignments for the object specified. When you specify two ROD object IDs, removes only the alignment between the two objects.")

("rodUnNameShape" "" "Removes the name from a named shape or list of named shapes. The ROD object ID for the shape and all user-defined handles associated with it are deleted. If the object is an instance, the instance keeps its name but all user-defined handles associated with the instance are deleted. Also removes all alignment constraints that reference the shape.")

))
