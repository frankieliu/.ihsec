(put 'sc_funs 'symbol-type "struct compiler fun")
(setq sc_funs '(
("scAddCell" "x_column:x_row  t_icon  t_direction  [t_orientation] " "Adds a new cell to the array at a specified location.")

("scAddColumn" "x_column  t_direction  n_width " "Adds a column of empty cells in a column-biased array. When you add a new column to the left or right of an existing column (not permitted in row-biased arrays), the new column has the same number of cells as the column specified in the first argument. All cells in the new column are initially empty cells with the same height as the corresponding cells in the adjacent column. You can specify the width of the new cells in the width argument. The existing columns in the array move to the right when you add a new column.")

("scAddMaster" "t_master-name  t_icon " "Enlarges the set of masters and/or icons of an array and updates the masterList. This function makes a change only within the database. It does not make any visible change to the array.")

("scAddRow" "" "Adds a row of empty cells in a row-biased array. If you add a new row above or below an existing row (not permitted in column-biased arrays), the new row has the same number of cells as the adjacent row specified in the first argument. The cells in the new row are initially empty cells with the same width as the corresponding cells in the adjacent row; however, you can specify their height. You can then fill the new row using scChangeCell. The existing rows in the array move up when you add a new row.")

("scBias" "" "Call this function only within the scPlane function or in the procedure field of a template plane.")

("scCellHeight" "t_icon | x_column:x_row " "Takes an icon or a cell location as argument and returns the height of its corresponding master in user units.")

("scCellWidth" "t_icon | x_column:x_row " "Takes an icon or a cell location as argument and returns the width of its corresponding master in user units.")

("scCellsPerColumn" "x_column " "Finds the number of cells in a specified column of an array.")

("scCellsPerRow" "x_row " "Finds the number of cells in a specified row of an array.")

("scChangeBias" "t_bias " "Alters the bias of an array. Call this function only within the scPlane function or in the procedure field of a template plane. scChangeBias fails if the array does not meet the criteria for the intended bias. This function makes a change only within the database. It does not make any visible change to the array.")

("scChangeCell" "x_column:x_row  t_icon  [t_orientation] " "Changes the master represented in an individual cell.")

("scChangeIcon" "t_fromIcon  t_toIcon " "Changes the icon that represents a specified master cell. scChangeIcon changes all the cells in the array with the specified old icon to the new icon.")

("scChangeMaster" "t_icon t_master-name " "Changes an existing icon to a new master. The cells with the specified icon in the array block change to the new master. The icon itself does not change.")

("scChangeOrient" "x_column:x_row  t_orientation " "Changes the orientation of an individual cell. The dimensions of the transformed cell must be such that it fits correctly into the grid of the array.")

("scCompileArray" "" "Compiles an array.")

))
