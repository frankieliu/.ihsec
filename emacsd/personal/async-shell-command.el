(defun execute-commands (buffer &rest commands)
  "Execute a list of shell commands sequentially"
  (with-current-buffer buffer
    (set (make-local-variable 'commands-list) commands)
    (start-next-command)))

(defun start-next-command ()
  "Run the first command in the list"
  (if (null commands-list)
      (insert "\nDone.")
    (let ((command  (car commands-list)))
      (setq commands-list (cdr commands-list))
      (insert (format ">>> %s\n" command))
      (let ((process (start-process-shell-command command (current-buffer) command)))
        (set-process-sentinel process 'sentinel)))))

(defun sentinel (p e)
  "After a process exited, call `start-next-command' again"
  (let ((buffer (process-buffer p)))
    (when (not (null buffer))
      (with-current-buffer buffer
        ;(insert (format "Command `%s' %s" p e) )
        (start-next-command)))))

;; Example use
(with-current-buffer (get-buffer-create "*output*") (erase-buffer))
(execute-commands "*output*"
                  "echo 1"
                  "sleep 1"
                  "echo 2; sleep 1; echo 3"
                  "ls /")
(execute-commands 
 "*output*"
 "nc localhost 1234 < ~/Skill/simple-test.il"
 "echo 1")
