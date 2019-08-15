(put 'ic_funs 'symbol-type "p&r floorplan fun")
(setq ic_funs '(
("icCreateArraySiteInstances" "d_cellview_ID d_site_master f_llx f_lly  x_x_num x_y_num f_x_space f_y_space  t_orien " "This function creates a simple mosaic instance of sites or site patterns in a cellview.")

("icCreateBus" "d_cv t_busName l_netList " "Creates a bus from the nets you specify, giving it the name you specify. You can use this function with Gate Ensemble.")

("icCreateSiteInst " "d_cellview_ID d_site_master f_x f_y t_orien" "The function creates an instance of a site cellview in a cellview at the location and in the orientation you specify. The point of location is the Design Framework II location, which is not always the lower left corner as in Gate Ensemble. The point of location varies with the orientation.")

("icGE2OpusOrien " "t_ge_orien " "Given a Gate or Cell3 Ensemble orientation, returns a Preview orientation.")

("icGE2OpusinstLoc " "f_x f_y f_width f_height t_ge_orien " "Given an instance location, width, height, and orientation, returns the Preview instance location.")

("icGetAllSiteInstFromSpat " "d_site_pat_CV " "Returns a list of the site instances in the site pattern cellview location. This site pattern cellview must have a prCellType property of sitePattern and site instance masters must have a prCellType property of site or the functions returns nil.")

("icGetArraySiteInstances " "d_cellview_ID " "Given a cellview ID, returns site information in a list. Each element of the list describes site instance information.")

("icGetBasicSites " "d_cellview_ID " "Given a cellview, returns a list of basic site cellviews.")

("icGetCVCellTypeProp " "d_cellview_ID " "Returns prCellType property of a given cellview.")

("icGetSiteInstFromSpatbyLoc " "d_site_pat_CV f_x f_y " "Returns a site instance in site pattern cellview at (f_x f_y). The site pattern cellview must have a prCellType property of sitePattern and site instance masters must have a prCellType property of site or the function returns nil.")

("icGetSiteInstFromSpatbySiteName " "d_site_pat_CV t_site_name " "Returns a list of site instances of site (master) named t_site_name in a site pattern cellview. The site pattern cellview must have a prCellType property of sitePattern and site instance masters must have a prCellType property of site or the function returns nil.")

("icGetSiteSize " "d_cellview_ID " "Returns a list showing width and height of the given site, if the prCellType property is set to site; otherwise returns nil.")

("icGetSiteSymmetryProp " "d_cellview_ID " "Returns the symmetry property value.")

("icHierSave" "d_cv " "Saves the design and all modified instance masters. Modified instances have the modifiedButNotSaved property set to t.")

("icIsBaseArrayCV " "d_cellview_ID " "Returns t if the property prCellType exists and has the value baseArray on the given cellview; otherwise returns nil.")

("icOpus2GEInstLoc " "f_x f_y f_width f_height t_orien " "Given a Preview instance location, width, height, and orientation, returns a Gate or Cell3 Ensemble instance location.")

("icOpus2GEOrien " "t_orien " "Given a Preview orientation, returns a Gate or Cell3 Ensemble orientation.")

("icSetBaseArrayCellTypeProp " "d_cellview_ID " "Adds prCellType property with a value of baseArray. You must have write or append access to the cellview.")

("icSetPRengine" "d_cv t_engine " "Sets the place-and-route engine you want to use for specific functions. For example, when you analyze groups, regions, blocks, or the design, you must use this function so the analysis function performs correctly.")

("icSetSitePattCellTypeProp " "t_cell_type " "Adds prCellType property with a value of sitePattern. You must have write or append access to the cellview.")

("icSetSiteSize " "d_cellview_ID f_width f_height " "Draws a rectangle of given width and height on the prBoundary layer. The rectangle is drawn in the first quadrant with the lower left point at (0 0). You must have write or append access to the cellview.")

("icSetSiteSymmetryProp " "d_cellview_ID t_symmetry " "Sets the symmetry property for a given site. This property determines the legal orientations for the site.")

("iccDisplayExportForm" "[d_cellview_id]" "Displays the Export to IC Craftsman form.")

("iccDisplayImportForm" "[d_cellview_id]" "Displays the Import from IC Craftsman form.")

("iccExportCellview" "" layoutCellview)

("iccImportCellview" "" session)

("iccIsConnected" "d_cellview_ID" "Determines whether a cellview has an associated IC Craftsman process.")

("iccNewRules" "[tech_library_name]" "Displays the New DFII-ICC Craftsman Rules form. This command is equivalent to the New Rules command.")

("iccOpenCurrentCellviewRules" "" "Displays the Open Rules browser for the current cellview. This command is equivalent to the Open Rules command.")

("iccOpenRules" "[location path tech_library_name]" "Displays the Open DFII-IC Craftsman file-library browser so that you can open a rules file from a file or a library. This command is equivalent to the Open Rules command.")

("iccSendCommand" "d_cellview_ID t_command" "Sends a command to the IC Craftsman command line interpreter.")

("iccSendSkillCommand" "d_cellview_ID t_command" "Sends a SKILL command to IC Craftsman.")

("iccStartICC" "[options]" "Starts IC Craftsman as separate process. This function is equivalent to the Start ICC command.")

))
