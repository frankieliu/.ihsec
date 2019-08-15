(put 'prn_funs 'symbol-type "Floorplanning")
(setq prn_funs '(
("prnDetailRouteCompacted" "d_cv  lt_options " "Detail routes a design, based on parameters you specify.")

("prnDetailUnroute" "d_cv " "Removes all detail routing from all channels, but preserves all global routing information. The channel cellviews remain in the design library.")

("prnExplodeChannels" "d_cv " "Moves the routing data from each of the channel cellviews up into the design cellview. This is a necessary prerequisite to symbolic compaction.")

("prnSetCRT" "x_layers x_multiBoundary " "Controls the routing area used by the Cell Ensemble triple-layer metal (TLM) router. Set this function before you detail route a TLM design with prnDetailRouteCompacted to get the best routing results based on channel profiles.")

("prnStripChan" "" "Prepares a design for use in a higher level design; removes the outer channels and their wiring and IO pins that are no longer needed, and adds pins at the top level as necessary to connect to the core cells.")

("prnUnrouteChannel" "d_chanInst  " "Removes all detail routing starting from the specified channel and all adjacent channels upward through the channel hierarchy, while preserving all global routing information. To reroute the design, use the prnDetailRouteCompacted function.")

))
