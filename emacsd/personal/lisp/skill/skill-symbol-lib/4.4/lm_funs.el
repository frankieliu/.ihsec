(put 'lm_funs 'symbol-type "license manager fun")
(setq lm_funs '(
("lmCheckIn" "st_license " "Releases the specified license.")

("lmCheckOut" "st_license  r_version,  [ i_numLic  st_wait  st_lic_type  st_failFunc ] " "Checks out the specified license.")

("lmFeatList" "[ st_outFunc ] " "Returns a list of features the user has checked out. Feature status is not updated if the feature was lost because of a connection problem or if it was removed by lmremove. This is consistent with the FLEXlm behavior.")

("lmFeatureExists" "st_license r_version " "Verifies that the specified license is in the license file, not that the license is available.")

("lmFeatureStatus" "st_license " "Returns the current status of a feature.")

("lmGetStatus" "" "Returns the latest status set by the last lm function. The status corresponds to the error message numbers.")

("lmMessage" "[ i_status ] " "Returns the SoftShare message corresponding to status.")

("lmRecheck" "errfunc " "Rechecks the validity of all checked-out features.")

("lmUserList" "st_license " "Returns a list of users using st_license from all license servers within the search path of the current SoftShare configuration.")

))
