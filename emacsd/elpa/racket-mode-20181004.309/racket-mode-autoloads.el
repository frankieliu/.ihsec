;;; racket-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "racket-bug-report" "racket-bug-report.el"
;;;;;;  (23481 54742 683111 117000))
;;; Generated autoloads from racket-bug-report.el

(autoload 'racket-bug-report "racket-bug-report" "\
Fill a buffer with data to make a racket-mode bug report.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "racket-debug" "racket-debug.el" (23481 54742
;;;;;;  715112 365000))
;;; Generated autoloads from racket-debug.el

(autoload 'racket--debug-send-definition "racket-debug" "\


\(fn BEG END)" nil nil)

(autoload 'racket--debug-on-break "racket-debug" "\


\(fn RESPONSE)" nil nil)

;;;***

;;;### (autoloads nil "racket-edit" "racket-edit.el" (23481 54742
;;;;;;  647109 712000))
;;; Generated autoloads from racket-edit.el

(add-to-list 'hs-special-modes-alist '(racket-mode "(" ")" ";" nil nil))

;;;***

;;;### (autoloads nil "racket-mode" "racket-mode.el" (23481 54742
;;;;;;  967122 198000))
;;; Generated autoloads from racket-mode.el

(autoload 'racket-mode "racket-mode" "\
Major mode for editing Racket.
\\{racket-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.rkt[dl]?\\'" . racket-mode))

(modify-coding-system-alist 'file "\\.rkt[dl]?\\'" 'utf-8)

(add-to-list 'interpreter-mode-alist '("racket" . racket-mode))

(autoload 'racket-mode-start-faster "racket-mode" "\
Compile racket-mode's .rkt files for faster startup.

racket-mode is implemented as an Emacs Lisp \"front end\" that
talks to a Racket process \"back end\". Because racket-mode is
delivered as an Emacs package instead of a Racket package,
installing it does _not_ do the `raco setup` that is normally
done for Racket packages.

This command will do a `raco make` of racket-mode's .rkt files,
creating bytecode files in `compiled/` subdirectories. As a
result, when a `racket-run' or `racket-repl' command must start
the Racket process, it will start faster.

If you run this command, _ever_, you should run it _again_ after:

- Installing an updated version of racket-mode. Otherwise, you
  might lose some of the speed-up.

- Installing a new version of Racket and/or changing the value of
  the variable `racket-program'. Otherwise, you might get an
  error message due to the bytecode being different versions.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "racket-repl" "racket-repl.el" (23481 54743
;;;;;;  415139 681000))
;;; Generated autoloads from racket-repl.el

(autoload 'racket-repl "racket-repl" "\
Run the Racket REPL and display its buffer in some window.

If the Racket process is not already running, it is started.

If NOSELECT is not nil, does not select the REPL
window (preserves the originally selected window).

Commands that don't want the REPL to be displayed can instead use
`racket--repl-ensure-buffer-and-process'.

\(fn &optional NOSELECT)" t nil)

;;;***

;;;### (autoloads nil "racket-unicode-input-method" "racket-unicode-input-method.el"
;;;;;;  (23481 54743 343136 870000))
;;; Generated autoloads from racket-unicode-input-method.el

(autoload 'racket-unicode-input-method-enable "racket-unicode-input-method" "\
Set input method to `racket-unicode`.

The `racket-unicode` input method lets you easily type various
Unicode symbols that might be useful when writing Racket
code.

To automatically enable the `racket-unicode` input method in
`racket-mode` buffers use `M-x customize-variable <RET>
racket-mode-hook` or put the following code in your Emacs init
file:

    (add-hook 'racket-mode-hook #'racket-unicode-input-method-enable)

Likewise for `racket-repl-mode` buffers:

    (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)

To temporarily enable this input method for a single buffer you
can use `M-x racket-unicode-input-method-enable`.

Use `C-\\` to toggle the input method.

When the `racket-unicode` input method is active, you can for
example type `All` and it is immediately replaced with `∀`. A few
other examples:

    omega     ω
    x_1       x₁
    x^1       x¹
    |A|       𝔸
    test-->>E test-->>∃ (racket/redex)

To see a table of all key sequences use `M-x
describe-input-method <RET> racket-unicode`.

If you don’t like the highlighting of partially matching tokens you
can turn it off by setting `input-method-highlight-flag' to nil via
`M-x customize-variable`.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("racket-collection.el" "racket-common.el"
;;;;;;  "racket-complete.el" "racket-custom.el" "racket-font-lock.el"
;;;;;;  "racket-imenu.el" "racket-indent.el" "racket-keywords-and-builtins.el"
;;;;;;  "racket-logger.el" "racket-make-doc.el" "racket-mode-pkg.el"
;;;;;;  "racket-ppss.el" "racket-profile.el" "racket-stepper.el"
;;;;;;  "racket-util.el") (23481 54743 563145 455000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; racket-mode-autoloads.el ends here
