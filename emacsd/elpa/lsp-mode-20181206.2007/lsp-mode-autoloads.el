;;; lsp-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "lsp" "lsp.el" (23562 59655 890272 191000))
;;; Generated autoloads from lsp.el

(autoload 'lsp "lsp" "\
Entry point for the server startup.
When IGNORE-MULTI-FOLDER is t the lsp mode will start new
language server even if there is language server which can handle
current language. When IGNORE-MULTI-FOLDER is nil current file
will be openned in multi folder language server if there is
such.

\(fn &optional IGNORE-MULTI-FOLDER)" t nil)

;;;***

;;;### (autoloads nil "lsp-methods" "lsp-methods.el" (23562 59655
;;;;;;  882272 314000))
;;; Generated autoloads from lsp-methods.el

(let ((loads (get 'lsp-mode 'custom-loads))) (if (member '"lsp-methods" loads) nil (put 'lsp-mode 'custom-loads (cons '"lsp-methods" loads))))

(let ((loads (get 'lsp-faces 'custom-loads))) (if (member '"lsp-methods" loads) nil (put 'lsp-faces 'custom-loads (cons '"lsp-methods" loads))))

(defvar lsp-document-sync-method nil "\
How to sync the document with the language server.")

(custom-autoload 'lsp-document-sync-method "lsp-methods" t)

(defvar lsp-project-blacklist nil "\
A list of project directory regexps for which LSP shouldn't be initialized.
LSP should be initialized if the given project root matches one pattern in the
whitelist, or does not match any pattern in the blacklist.")

(custom-autoload 'lsp-project-blacklist "lsp-methods" t)

(defvar lsp-eldoc-render-all t "\
Define whether all of the returned by document/onHover will be displayed.

If `lsp-markup-display-all' is set to nil `eldoc' will show only
the symbol information.")

(custom-autoload 'lsp-eldoc-render-all "lsp-methods" t)

(defvar lsp-enable-completion-at-point t "\
Enable `completion-at-point' integration.")

(custom-autoload 'lsp-enable-completion-at-point "lsp-methods" t)

(defvar lsp-enable-xref t "\
Enable xref integration.")

(custom-autoload 'lsp-enable-xref "lsp-methods" t)

(defvar lsp-enable-indentation t "\
Indent regions using the file formatting functionality provided by the language server.")

(custom-autoload 'lsp-enable-indentation "lsp-methods" t)

(defvar lsp-before-save-edits t "\
If non-nil, `lsp-mode' will apply edits suggested by the language server
before saving a document.")

(custom-autoload 'lsp-before-save-edits "lsp-methods" t)

(defface lsp-face-highlight-textual '((t :inherit highlight)) "\
Face used for textual occurances of symbols." :group (quote lsp-faces))

(defface lsp-face-highlight-read '((t :inherit highlight :underline t)) "\
Face used for highlighting symbols being read." :group (quote lsp-faces))

(defface lsp-face-highlight-write '((t :inherit highlight :italic t)) "\
Face used for highlighting symbols being written to." :group (quote lsp-faces))

;;;***

;;;### (autoloads nil "lsp-mode" "lsp-mode.el" (23562 59655 918271
;;;;;;  759000))
;;; Generated autoloads from lsp-mode.el

(autoload 'lsp-mode "lsp-mode" "\


\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("lsp-clients.el" "lsp-common.el" "lsp-flycheck.el"
;;;;;;  "lsp-imenu.el" "lsp-io.el" "lsp-mode-pkg.el" "lsp-notifications.el")
;;;;;;  (23562 59655 946271 327000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; lsp-mode-autoloads.el ends here
