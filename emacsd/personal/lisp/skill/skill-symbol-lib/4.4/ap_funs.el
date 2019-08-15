(put 'adp_funs 'symbol-type "Advance Design Planner Functions")
(setq adp_funs '(
("adpBlockAnalysis" "l_blockInstances " "Physically analyzes the cell master of each block instance.")

("adpBlockAnalysisReport" "l_blockInstances t_fileName " "Creates a file that you can display containing the results of physical analysis of the cell master of each block instance, done by adpBlockAnalysis.")

("adpCheckRgnOverlap" "d_cv  [l_regions] " "Checks for overlapping regions, based on the parameters you specify.")

("adpChipAnalysis" "d_cv  " "Physically analyzes the design and saves the results in the cellview.")

("adpChipAnalysisReport" "d_cv  t_fileName " "Physically analyzes the design and saves the results in the cellview.")

("adpGroupAnalysis" "l_groups " "Physically analyzes the groups you specify in the cellview.")

("adpGroupAnalysisReport" "l_groups t_fileName " "Creates a file that you can display containing the results of physical analysis of groups done by adpGroupAnalysis.")

("adpGroupAreaEst" "d_groupId " "Estimates the area of a group. Although partitioning automatically estimates areas of groups during partitioning, you might want to know the estimated area of a specific group when you create groups by partitioning the design using one of the following methods: regular structure, ratio-cut, or manual.")

("adpHierGen" "t_libName t_cellName t_viewName t_versionName " "Flattens the design hierarchy to create an autoLayout cellview from either a schematic or netlist view.")

("adpIORandomPlaceGE" "d_cv " "Randomly places IO cells into sites in a gate array design. You can use adpIORandomPlaceGE during the initial placement phase to get a rough placement of IOs. This function places and correctly orients IO cells about the soft blocks before you use praGEBlockPlace to complete placement. For flat designs that are not partitioned into blocks, you can use the Gate Ensemble placer to place IOs and cells.")

("adpInitFloorplan" "d_cv  t_engine [?all g_all 	t  ?design g_design	 t ?rgn g_region 	t  ?grp g_group 	t ?grid g_grid 	t ?status g_status	t ?sRoute g_specialRoute 	t ?froute g_finalRoute 	t ?prsvIO g_preserveIOcell 	nil  ?prsvMacro g_preserveStdCell 	nil  ?prsvMacro g_preserveMacro 	nil ?array t_array	 ?sdFile t_sdfFileName	 ?fpFile t_floorplanFileName	 ?origin t_origin	 center ?aspr f_aspectRatio 	1.0 ?X f_Xdimension 	0.0 ?Y f_Ydimension 	0.0 ?coreUtil f_coreUtil 	0.8 ?rowUtil f_rowUtil 	0.9  ?iotc f_iotc 	0.0  ?createRow g_createRow 	nil  ?flipRow g_flipRow	nil ] " "Initializes the floorplan of a design based on the options you specify. Because most of the arguments are keywords, you can specify only those parameters you want to control. Parameters you do not specify use the default values shown.")

("adpPartition" "d_libId  d_cv  x_num  x_r1  x_r2  x_ppnIgnore  l_criticality  l_path l_weights  t_create  t_prefix  t_pinType  l_subjects  x_dump " "Creates partition groups or blocks by using a ratio-cut 2-way partition algorithm. A ratio-cut algorithm is a variation of a min-cut algorithm. Similar to a min-cut algorithm, a ratio-cut algorithm considers connections between partitions, but also tries to keep the partitions as equal in size as possible.")

("adpRegionAnalysis" "l_regions " "Physically analyzes a list of regions.")

("adpRegionAnalysisReport" "l_regions t_fileName " "Creates a file that you can display containing the results of physical analysis done by adpRegionAnalysis in a file you specify.")

("adpSimpleAreaEst" "d_cv  [f_coreU]  [f_AR] [f_rowU] [f_iotc] " "Estimates the initial chip size and core area, using one of two methods, based on the parameters you supply.")

("adpfpCheckInstOverlap" "d_cv  [l_InstId] [g_full] " "Checks for partially or fully overlapping instances, based on the parameters you specify.")

("adphmGrpToBlock" "d_cv grpShapes auViewName abViewName area minAR maxAR areaUtil devName " "Creates a soft block from a list of selected groups. Note that you cannot specify the cell name for the new block; it is derived from the group names.")

("adphmRgnToBlock" "d_cv selRgns auViewName abViewName blkBd devName " "Creates a soft block from a list of selected regions, using the region boundaries for the block bounderies. Note that you cannot specify the cell name for the new block; it is derived from the placement class of the regions.")

("adppaEstNetDelay" "d_cv  t_tblName  l_hLayer  l_vLayer  d_nets  x_estMode  t_hier t_allHierNet t_rcOnly " "Computes net delays.")

("adppaEstPathDelay" "d_cv  t_tblName  l_hLayer  l_vLayer  d_paths  X_estMode  t_hier " "Computes path delays.")

("adppaGenRCReport" "d_cv  t_fileName  l_nets " "Writes a Resistance Capacitance (RC) report.")

("adppaGenRSPF" "d_cv  t_fileName  l_nets  t_map t_allHierNet " "Writes a Reduced Standard Parasitic Format (RSPF) file.")

("adppaGenSDF" "d_cv  t_fileName  l_nets  t_map t_allHierNet " "Writes a Standard Delay Format (SDF) file.")

("adppaLoadSDF" "d_cv  t_fileName  g_overWrite x_weight " "Reads a Standard Delay Format (SDF) file and places the path timing constraints specified by the file (t_fileName) into the cellview (d_cv). For more information on reading an SDF file, refer to the Preview Fundamentals Reference Manual.")

))
