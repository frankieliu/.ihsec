(require 'comint)
(require 'tcl)

(if t 
 (define-derived-mode skill-mode tcl-mode "Skill"
  "Major mode for skill."
  (set (make-local-variable 'indent-line-function) 'tcl-indent-line)
  (set (make-local-variable 'comment-indent-function) 'tcl-comment-indent)

  ;;(set (make-local-variable 'comment-start) "; ")
  (set (make-local-variable 'comment-start) ";")
  (set (make-local-variable 'comment-end) "")
  
  (setq case-fold-search nil)
  ;; (kill-all-local-variables)
  (use-local-map skill-mode-map)
  (set-syntax-table skill-mode-syntax-table)
  ;; Set up font-lock
  (set (make-local-variable 'font-lock-defaults) '(skill-font-lock-keywords))
  ;; Register our indentation function
  (setq major-mode 'skill-mode)
  (setq mode-name "skill")
  (run-hooks 'skill-mode-hook)
  (with-current-buffer (get-buffer-create "*output*") (erase-buffer)))
 ); if

;; Check to see if prog-mode is being used
;; (fboundp 'prog-mode)
;; (unload-feature 'skill-mode)

;; Copied from tcl.el
(defvar outline-regexp)
(defvar outline-level)

(if nil
    (define-derived-mode skill-mode prog-mode "Skill"
      "Major mode for skill."
      
      ;; Indentation
      (set (make-local-variable 'indent-line-function) 'tcl-indent-line)
      (set (make-local-variable 'comment-indent-function) 'tcl-comment-indent)

      ;; comment
      (set (make-local-variable 'comment-start) "# ")
      (set (make-local-variable 'comment-start-skip)
	   "\\(\\(^\\|[;{[]\\)\\s-*\\)#+ *")
      (set (make-local-variable 'comment-end) "")

      (set (make-local-variable 'outline-regexp) ".")
      (set (make-local-variable 'outline-level) 'tcl-outline-level)

      (set (make-local-variable 'font-lock-defaults)
	   '(tcl-font-lock-keywords nil nil nil beginning-of-defun))
      (set (make-local-variable 'syntax-propertize-function)
	   tcl-syntax-propertize-function)

      (set (make-local-variable 'imenu-generic-expression)
	   tcl-imenu-generic-expression)

      ;; Settings for new dabbrev code.
      (set (make-local-variable 'dabbrev-case-fold-search) nil)
      (set (make-local-variable 'dabbrev-case-replace) nil)
      (set (make-local-variable 'dabbrev-abbrev-skip-leading-regexp) "[$!]")
      (set (make-local-variable 'dabbrev-abbrev-char-regexp) "\\sw\\|\\s_")

      (set (make-local-variable 'parse-sexp-ignore-comments) t)
      ;; XEmacs has defun-prompt-regexp, but I don't believe
      ;; that it works for end-of-defun -- only for
      ;; beginning-of-defun.
      (set (make-local-variable 'defun-prompt-regexp) tcl-omit-ws-regexp)
      (set (make-local-variable 'add-log-current-defun-function)
	   'tcl-add-log-defun)

      (easy-menu-add tcl-mode-menu)

      (setq case-fold-search nil)
      ;; (kill-all-local-variables)

      (use-local-map skill-mode-map)
      (set-syntax-table skill-mode-syntax-table)

      ;; Set up font-lock
      (set (make-local-variable 'font-lock-defaults) '(skill-font-lock-keywords))
      ;; Register our indentation function
      (setq major-mode 'skill-mode)
      (setq mode-name "skill")
      (run-hooks 'skill-mode-hook)
      (with-current-buffer (get-buffer-create "*output*") (erase-buffer)))
); if nil

; Skill-mode, associated with the .il .ocn and .cdf files
; To use the skill mode for another file, use "M-x skill-mode"
; binding with file endings

(add-to-list 'auto-mode-alist '("\\.il\\'" . skill-mode))
(add-to-list 'auto-mode-alist '("\\.ils\\'" . skill-mode))
(add-to-list 'auto-mode-alist '("\\.ocn\\'" . skill-mode))
(add-to-list 'auto-mode-alist '("\\.cdf\\'" . skill-mode))

(defvar skill-mode-hook nil)
;; (defvar skill-mode-map
;;   (let ((map (make-keymap)))
;;     (define-key map "\C-j" 'newline-and-indent)
;;     map)
;;   "Keymap for skill major mode")

(defvar skill-mode-map
  (let ((skill-mode-map (make-keymap)))
    (define-key skill-mode-map "\C-j" 'skill-indent-line)
    skill-mode-map)
  "Keymap for SKILL major mode")

(defconst skill-font-lock-keywords-1
  (list
   (cons 
    (concat 
     "\\<" 
     (regexp-opt
      '("add1" "and" "apply" "argc" "argv" "arrayp" "arrayref" "atof" "atoi" "atom" "band" "begin" "bitfield1" "bitfield" "blankstrp" "bnand" "bnor" "bnot" "booleanp" "bor" "boundp" "bxnor" "bxor" "case" "caseq" "ceiling" "concat" "cond" "cons" "constar" "copy" "copyDefstructDeep" "declare" "declareLambda" "declareNLambda" "declareSQNLambda" "define" "defmacro" "defprop" "defstruct" "defstructp" "defun" "defUserInitProc" "defvar" "do" "dtpr" "eq" "equal" "eqv" "err" "error" "errset" "errsetstring" "eval" "evalstring" "evenp" "exit" "expandMacro" "fboundp" "fixp" "floatp" "for" "forall" "foreach" "funcall" "funobj" "gc" "gensym" "geqp" "get" "get_pname" "get_string" "getd" "getFnWriteProtect" "getFunType" "getq" "getqq" "getVarWriteProtect" "greaterp" "if" "then" "else" "inportp" "inScheme" "inSkill" "integerp" "intToChar" "isCallable" "isInfinity" "isNaN" "lambda" "leftshift" "leqp" "lessp" "let" "letrec" "letseq" "listp" "listToVector" "load" "loadi" "loadstring" "makeTable" "makeVector" "map" "mapc" "mapcan" "mapcar" "maplist" "minus" "minusp" "mod" "modulo" "mprocedure" "needNCells" "negativep" "neq" "nequal" "newline" "nindex" "nlambda" "not" "nprocedure" "null" "numberp" "oddp" "onep" "openportp" "or" "otherp" "outportp" "pairp" "plist" "plus" "plusp" "portp" "postdecrement" "postincrement" "predecrement" "preincrement" "procedure" "procedurep" "prog" "prog1" "prog2" "progn" "putd" "putprop" "putpropq" "putpropqq" "quote" "quotient" "realp" "regExitAfter" "regExitBefore" "remainder" "remExitProc" "remprop" "return" "rexCompile" "rexExecute" "rexMagic" "rexMatchAssocList" "rexMatchList" "rexMatchp" "rexReplace" "rexSubstitute" "rightshift" "round" "set" "setarray" "setFnWriteProtect" "setplist" "setq" "setqbitfield1" "setqbitfield" "setVarWriteProtect" "stringp" "sub1" "sxtd" "symbolp" "symeval" "symstrp" "system" "tablep" "tailp" "times" "truncate" "type" "typep" "unalias" "unless" "vector" "vectorp" "warn" "when" "which" "while" "xdifference" "xplus" "xquotient" "xtimes" "zerop" "zxtd"
	) t )
     "\\>")  'font-lock-keyword-face)
   (cons (concat "\\<" (regexp-opt '("nil" "t") t)  "\\>")  'font-lock-constant-face)
   )
  "Basic SKILL functions - arithmetic&logic operators, type tests, flow control, loops, rounding")

(defconst skill-font-lock-keywords-2
  (append
   skill-font-lock-keywords-1
   (list
    (cons 
     (concat 
      "\\<" 
      (regexp-opt
       '( "append" "append1" "bcdp" "buildString" "caar" "caaar" "caadr" "cadr" "caddr" "cdar" "cddr" "car" "cdr" "cdsGetInstPath" "changeWorkingDir" "charToInt" "clearExitProcs" "close" "compress" "defMathConstants" "deleteDir" "deleteFile" "difference" "display" "drain" "exists" "fileLength" "fileSeek" "fileTell" "fileTimeModified" "fprintf" "fscanf" "scanf" "sscanf" "get_filename" "getc" "getchar" "getDirFiles" "gets" "getWorkingDir" "infile" "instring" "isDir" "isExecutable" "isFile" "isFileEncrypted" "isFileName" "isLargeFile" "isLink" "isMacro" "isReadable" "isWritable" "last" "lconc" "length" "lineread" "linereadstring" "list" "makeTempFileName" "member" "memq" "memv" "nconc" "ncons" "nth" "nthcdr" "nthelem" "numOpenFiles" "outfile" "parseString" "pprint" "print" "printf" "printlev" "println" "read" "readstring" "readTable" "renameFile" "reverse" "rplaca" "rplacd" "setcar" "setcdr" "setof" "simplifyFilename" "sort" "sortcar" "sprintf" "strcat" "strcmp" "stringToFunction" "stringToSymbol" "stringToTime" "strlen" "strncat" "strncmp" "subst" "substring" "symbolToString" "tconc" "upperCase" "vectorToList" "write" "writeTable" "xcons" "xCoord" "yCoord")
       t )
      "\\>")  'font-lock-keyword-face)
    )
   )
  "Additional SKILL functions - mostly string, list and file operations")

(defconst skill-font-lock-keywords-3
  (append
   skill-font-lock-keywords-2
   (list
    (cons
     (concat
      "\\<"
      (regexp-opt
       '("abs" "acos" "addDefstructClass" "alias" "alphalessp" "alphaNumCmp" "asin" "assoc" "assq" "assv" "atan" "atan2" "compareTime" "cos" "cputime" "createDir" "csh" "ed" "edi" "edit" "edl" "envobj" "exp" "expt" "fix" "float" "floor" "getCurrentTime" "getInstallPath" "getLogin" "getPrompts" "getTempDir" "getShellEnvVar" "getSkillPath" "getSkillVersion" "getVersion" "getWarn" "go" "help" "importSkillVar" "index" "log" "log10" "lowerCase" "max" "measureTime" "min" "prependInstallPath" "random" "range" "remd" "remdq" "remove" "remq" "rindex" "schemeTopLevelEnv" "setPrompts" "setShellEnvVar" "setSkillPath" "sh" "shell" "sin" "sqrt" "srandom" "sstatus" "status" "tableToList" "tan" "theEnvironment" "timeToString" "timeToTm" "tmToTime" "vi" "vii" "vil"
       ) t)
      "\\>")  'font-lock-keyword-face) ) )
  "Other SKILL functions")

(defvar skill-font-lock-keywords skill-font-lock-keywords-3
  "Default highlighting expressions for SKILL mode.")

(defvar skill-mode-syntax-table
  (let ((skill-mode-syntax-table (make-syntax-table)))
    
    ; block comments
    (modify-syntax-entry ?/ ". 14" skill-mode-syntax-table)
    (modify-syntax-entry ?* ". 23" skill-mode-syntax-table)

    ; line comments
    (modify-syntax-entry ?\; "< b" skill-mode-syntax-table)
    (modify-syntax-entry ?\n "> b" skill-mode-syntax-table)
 
   skill-mode-syntax-table)
  "Syntax table for skill-mode")

;; (defun skill-indent-line ()
;;   "Indent current line as skill code"
;;   (interactive)  
;;   (newline)
;;   (indent-relative)
;; )

;; (provide 'skill-indent-line)

;; Ed modifs.end

;; (global-set-key  "\C-cu" 'uncomment-region)
;; (global-set-key  "\C-cc" 'comment-region);; ca marchouille
;; (global-set-key  [(control c) (control c)] 'comment-region)
  
(provide 'skill-mode)

;; ed modif for emacs2icfb

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
;; (with-current-buffer (get-buffer-create "*output*") (erase-buffer))

;; (execute-commands "*output*"
;;                   "echo 1"
;;                   "sleep 1"
;;                   "echo 2; sleep 1; echo 3"
;;                   "ls /")

;; (execute-commands 
;;  "*output*"
;;  "nc localhost 1234 < ~/Skill/simple-test.il"
;;  "echo 1")

(if (version< emacs-version "24")

 (defun write2icfb (beg end &optional stuff ) (unless stuff (setq stuff ""))
   (let (file1 file2 ext)
     (setq ext (file-name-extension (buffer-file-name)))
     (setq file1 (concat "~/Skill/emacs2icfb." ext))
     (setq file2 (concat "~/Skill/load-emacs2icfb." ext))
     (write-region beg end file1)
     (write-region (format "\n") t file1 t) ; last t means append=tru
     ;; send-string-to-terminal doesn't work
     ;; (send-string-to-terminal
     ;;  (format "load(\"%s\") eval(t) " "~/Skill/emacs2icfb.ils"))
     (message file1)
     (execute-commands 
      "*output*"
      (concat "nc localhost 1234 < " file2))))

 (defun write2icfb (beg end &optional stuff ) (unless stuff (setq stuff ""))
   
  (write-region beg end "~/Skill/emacs2icfb.ils")
  (write-region (format "\n") t "~/Skill/emacs2icfb.ils" t) 
;; last t means append=true
;; <= ^^ prevent : *WARNING* (reader): too few right parentheses,
;;       (')' added at EOF 
;; <== when load a fine with a function => force load vs read

;;  (execute-commands "*output*"
;;		    "nc localhost 1234 < ~/Skill/emacs2icfb.il"))

;; Instead of sending the buffer over, just load the file
  (execute-commands "*output*"
		    "nc localhost 1234 < ~/Skill/load-emacs2icfb.ils"))
 ); if emacs>22 requires an intermediate script to create pipe to stdout

;; (execute-commands "*output*"
;; 		  "nc localhost 1234 < ~/Skill/emacs2icfb.il")

(defun send-buffer-to-icfb () "" (interactive) (write2icfb (point-min) (point-max)))
(defun send-region-to-icfb () "" (interactive) (write2icfb (region-beginning) (region-end) "region"))
(defun send-func-to-icfb () "" (interactive) (write2icfb (region-beginning) (region-end) "load"))
(defun send-line-to-icfb   () "" (interactive) (write2icfb (line-beginning-position) (line-end-position)))
(defun send-line-to-icfb-mv-forward () "" (interactive)
        (write2icfb (line-beginning-position) (line-beginning-position 2) )
        (forward-line 1)
)

(defun send-function-from-icfb-insert () "" (interactive) 
    (newline) (forward-line -1)
    (push-mark)  (insert ";=> ") 
    (insert-file-contents "~/Skill/virtuoso2emacs.txt")
    (end-of-line) (exchange-point-and-mark)
)

;(define-key skill-mode-map "\C-c\C-f" 'send-func-to-icfb)
(define-key skill-mode-map "\C-c\C-b" 'send-buffer-to-icfb)
;(define-key skill-mode-map "\C-c\C-r" 'send-region-to-icfb)
;(define-key skill-mode-map "\C-c\C-l" 'send-line-to-icfb)
;(define-key skill-mode-map "\C-c\C-v" 'send-line-to-icfb-mv-forward)
;(define-key skill-mode-map "\C-c\C-s" 'send-function-from-icfb-insert)
(define-key skill-mode-map "\C-c\C-c" 'revert-buffer)

(provide 'skill-mode)
