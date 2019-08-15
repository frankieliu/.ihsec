(put 'lx_funs 'symbol-type "VirtuosoXL prefixing")
(setq lx_funs '(
("lxHiAlign" "" "Starts the Virtuoso XL Align command and opens the Virtuoso XL Alignment form.")

("lxHiHideIncNets" "" "Runs the Virtuoso XL Hide Incomplete Nets command. Removes the Show Incomplete Nets form, if present. Prints a cellview ID number in the CIW output window.")

("lxHiMoveAutomatically" "" "Starts the Virtuoso XL Place From Schematic command. If a connectivity reference is not found, it opens the Define Connectivity Reference form.")

("lxHiProbe" "" "Starts the Virtuoso XL Probe command.")

("lxHiReInitDesign" "" "Starts the Virtuoso XL Gen from Source command.")

("lxHiShowIncNets" "" "Starts the Virtuoso XL Show Incomplete Nets command and opens the Show Incomplete Nets form. It also prints in the CIW the number of incomplete nets you had when the command was initiated.")

("lxHiSwapComps" "" "Starts the Virtuoso XL Swap Components command.")

("lxHiUpdateCellViewPair" "" "Starts the Virtuoso XL Update - Source command and opens the Define Connectivity Reference form.")

("lxHiUpdateComponentsAndNets" "" "Starts the Virtuoso XL Update - Components and Nets command. Opens the Define Connectivity Reference form.")

("lxHiUpdateDeviceCorr" "" "Starts the Virtuoso XL Update - Device Correspondence command. Opens the Define Connectivity Reference form.")

("lxHiUpdateLayParameters" "" "Starts the Virtuoso XL Update - Layout Parameters command.")

("lxHiUpdateSchParameters" "" "Starts the Virtuoso XL Update - Schematic Parameters command.")

("lxHiUpdateSwitchViews" "" "Starts the Virtuoso XL Update - Change Instance View command.")

("lxHiVerifyDesign" "" "Starts the Virtuoso XL Check - Against Source command. Opens the Define Connectivity Reference form.")

("lxHiVerifyStatus" "" "Starts the Virtuoso XL Check - Shorts and Opens command. Opens the Virtuoso XL Info form and writes the number of incomplete nets, shorts between nets, and invalid overlaps into the form.")

("lxPermPermutePins" "" "Starts the Virtuoso LX Permute Pins command.")

("lxProbeRemoveAll" "" "Removes all probes from the layout window.")

("lxToggleIncNets" "" "If the Show Incomplete Nets command is on, this command turns it off. If the Show Incomplete Nets command is off, this command turns it on and opens the Show Incomplete Nets form.")

))
