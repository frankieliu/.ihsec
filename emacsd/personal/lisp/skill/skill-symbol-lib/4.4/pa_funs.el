(put 'pra_funs 'symbol-type "Floorplanning")
(setq pra_funs '(
("praBlockPlace" "d_cv  g_honorInit  x_runMode  f_wireLengthWeight f_RoutingArea  x_softBlockLevel  [f_aspLow]  [f_aspHigh]  [f_maxXdim]  [f_maxYdim] " "Places IO and blocks for a cell-based design. For a fixed die design, use the first six parameters. Use all ten parameters for a variable die design. praBlockPlace honors instance orientation constraints and valid orientations of cell masters.")

("praGEBlockPlace" "d_cv  g_honorInit  x_runMode  f_wireLengthWeight f_RoutingArea  x_softBlockLevel " "Places the contents of blocks for Gate Ensemble. praGEBlockPlace honors instance orientation constraints and valid orientations of cell masters.")

("praOptimizeIO" "d_cv  t_mode  f_space  f_var " "Places IO cells or IO pins in a cell-based design. praOptimizeIO cannot place a design containing a mixture of IO cells and IO pins; the design can contain only one or the other.")

))
