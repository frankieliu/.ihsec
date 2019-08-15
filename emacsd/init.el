;;; .emacs
(if nil
    (setq url-proxy-services
          '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
            ("http" . "www-proxy-hqdc.us.oracle.com:80")
            ("https" . "www-proxy-hqdc.us.oracle.com:80")))
  )

(if nil
  (setq url-http-proxy-basic-auth-storage
        (list (list "proxy.com:8080"
                    (cons "Input your LDAP UID !"
                          (base64-encode-string "LOGIN:PASSWORD")))))
  )


(package-initialize)

(add-to-list 'package-archives
	     '("melpa" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("elpa" . "http://elpa.gnu.org/packages/") t)
;; (add-to-list 'package-archives
;;	     '("melpa-milk" . "http://melpa.milkbox.net/packages/") t)

;; (add-to-list 'package-archives
;;	     '("org" . "https://orgmode.org/elpa/") t)

(cond
 ((string-equal (getenv "HOME") "/home/frankliu")
  (add-to-list 'package-archives
	       '("org" . "/home/frankliu/Dev/Emacs/Elpa/") t))
 ((string-equal (getenv "HOME") "/home/fyliu")
  (add-to-list 'package-archives
	       '("org" . "/home/fyliu/Dev/Emacs/Elpa/") t)))

;; (add-to-list 'package-archives
;;	     '("org" . "/home/frankliu/Dev/Emacs/Elpa/") t)
;; (add-to-list 'package-archives
;;	     '("org" . (concat (getenv "HOME") "/Dev/Emacs/Elpa/")) t)
;; (equal (concat (getenv "HOME") "/Dev/Emacs/Elpa/") "/home/frankliu/Dev/Emacs/Elpa/")

;;----------------------------------------------------------------------
;; BROWSER

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

;;----------------------------------------------------------------------
;; PROXY

(cond
 ((string-equal system-type "windows-nt")
  (progn
    (message "Microsoft Windows")))
 ((and (string-equal system-type "gnu/linux")
       (string-equal system-name "jitter"))
  (progn
    (setq url-proxy-services '(("http" . "www-proxy:80") ("https" . "www-proxy:80"))))))
;; (setq url-proxy-services '(("http" . "www-proxy:80") ("https" . "www-proxy:80")))

;;----------------------------------------------------------------------
;; WINDOW SIZE
(setq initial-frame-alist '((width . 102) (height . 54)))  ;; initial window
(setq default-frame-alist '((width . 100) (height . 35)))  ;; default/subsequent window
(setq initial-frame-alist default-frame-alist)             ;; set them to be the same

;; Terminal is set to dark
(if (not (window-system))
    (setq frame-background-mode 'dark))

;;----------------------------------------------------------------------
;; HELM
(defun setup_helm ()

  (require 'helm)
  (require 'helm-config)

  ;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
  ;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
  ;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
  (global-set-key (kbd "C-c h") 'helm-command-prefix)
  (global-unset-key (kbd "C-x c"))

  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
  (define-key helm-map (kbd "C-i")   'helm-execute-persistent-action) ; make TAB work in terminal
  (define-key helm-map (kbd "C-z")   'helm-select-action) ; list actions using C-z

  (when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

  (setq
   helm-split-window-in-side-p       t ; open helm buffer in current window, not other window
   helm-move-to-line-cycle-in-source t ; move to end or beg of source when top or bot of source.
   helm-ff-search-library-in-sexp    t ; search for lib in `require' and `declare-function' sexp.
   helm-scroll-amount                8 ; scroll 8 lines other window using M-<next>/M-<prior>
   helm-ff-file-name-history-use-recentf t
   helm-echo-input-in-header-line t)

  (defun spacemacs//helm-hide-minibuffer-maybe ()
    "Hide minibuffer in Helm session if we use the header line as input field."
    (when (with-helm-buffer helm-echo-input-in-header-line)
      (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
	(overlay-put ov 'window (selected-window))
	(overlay-put ov 'face
		     (let ((bg-color (face-background 'default nil)))
		       `(:background ,bg-color :foreground ,bg-color)))
	(setq-local cursor-type nil))))

  (add-hook 'helm-minibuffer-set-up-hook
	    'spacemacs//helm-hide-minibuffer-maybe)

  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-min-height 20)
  (helm-autoresize-mode 1)

  ;; (helm-mode 1)
  ;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "C-c h o") 'helm-occur)
  )

(setup_helm)

;;----------------------------------------------------------------------
;; YASnippet
;(add-to-list 'load-path
;	     "~/.emacs.d/yasnippet")

(defun top ()
  ;; This one ok
  "~/.emacs.d/snippets"
  ;; Something wrong with this set
  "~/.emacs.d/personal/yasnippet/snippets"
  ;; This one ok
  "~/.emacs.d/personal/yasnippet/yasmate/snippets"
  )

(defun my-yas ()
  ""
  (interactive)
  (yas-recompile-all)
  (yas-reload-all))

;; (use-package yasnippet
;;  :diminish yas-minor-mode
;;  :commands yas-minor-mode
;;  :config (yas-reload-all))

(setq yas-snippet-dirs
      '(
        "~/.emacs.d/personal/yasnippet/snippets"
        ))

(require 'yasnippet)
(yas-global-mode 1)

(if (not (window-system))
    (let ()
      ;; (define-key yas-minor-mode-map (kbd "<tab>") nil)
      ;; (define-key yas-minor-mode-map (kbd "TAB") nil)
      ;; (define-key yas-minor-mode-map (kbd "C-c y") #'yas-expand)
      (define-key yas-minor-mode-map (kbd "C-c y") yas-maybe-expand)
      ;; (define-key yas-minor-mode-map (kbd "SPC") yas-maybe-expand)
      ;; (define-key yas-minor-mode-map (kbd "SPC") nil)
      ))

;; (defun yas/org-very-safe-expand ()
;;   (let ((yas/fallback-behavior 'return-nil)) (yas/expand)))

;; (add-hook 'org-mode-hook
;;           (lambda ()
;;                 (make-variable-buffer-local 'yas/trigger-key)
;;                 (setq yas/triffer-key [tab])
;;                 (add-to-list 'org-tab-first-hook 'yas/org-very-safe-expand)
;;                 (define-key yas/keymap [tab] 'yas/next-field)))


;;----------------------------------------------------------------------
;; HS-MINOR-MODE (hideshow)
(eval-after-load "hideshow"
  '(progn
     (define-key hs-minor-mode-map (kbd "C-c s") (lookup-key hs-minor-mode-map (kbd "C-c @")))
     (define-key hs-minor-mode-map (kbd "C-c @") nil)))
(add-hook 'js-mode-hook 'hs-minor-mode)

;;----------------------------------------------------------------------
;; ORG MODE

(load-file "~/Dropbox/Dev/Emacs/org-mode.el")

(defun my-leet-jump-to-problem ()
  "Jump to problem"
  (interactive)
  (save-excursion
    (beginning-of-line)
    (re-search-forward "[0-9]+")
    (let* ((num (thing-at-point 'word))
           (path (concat "~/github/problems/leetcode/python/" num))
           (file1 (concat num "."))
           (file2 (file-name-completion file1 path))
           (file3 (concat path "/" file2)))
      (message "%s" file3)
      (find-file file3)
      )))
(global-set-key (kbd "C-c n") 'my-leet-jump-to-problem)

(defun w3mext-open-link-or-image-or-url ()
  "Opens the current link or image or current page's uri or any
url-like text under cursor in firefox."
  (interactive)
  (let (url)
    (if (string= major-mode "w3m-mode")
        (setq url (or (w3m-anchor) (w3m-image) w3m-current-url)))
    (browse-url-generic (if url url (car (browse-url-interactive-arg "URL: "))))
    ))
(global-set-key (kbd "C-c N") 'w3mext-open-link-or-image-or-url)



(setq org-link-file-path-type 'relative)

(defun wc-region (beg end)
  "Count words in the active region."
  (interactive "*r")
  (if (region-active-p)
      (shell-command-on-region beg end "wc -w" nil t)
    (message "No active region")))

(defun my-org-tabify (beg end)
  "Count words in the active region."
  (interactive "*r")
  (if (region-active-p)
      (shell-command-on-region beg end "org-tabify.pl" nil t)
    (message "No active region")))

; (add-to-list 'load-path "~/.emacs.d/org-mode/lisp")
; (add-to-list 'load-path "~/.emacs.d/org-mode/contrib/lisp")

;;----------------------------------------------------------------------
;; REMEMBER
;;(load-file "~/Dropbox/Dev/Emacs/capture.el")

;;----------------------------------------------------------------------
;; PYTHON
(load-file "~/Dropbox/Dev/Emacs/python_stuff.el")
(add-hook
 'python-mode-hook
 '(lambda ()
    (message "python-mode-hook1 called")
    ;; get the leet code examples
    (defun buffer-string* (buffer)
      (with-current-buffer buffer
        (buffer-string)))

    (defun my-leet-example ()
      ""
      (interactive)
      (let (p0 p1 p2 prev-buffer temp-buffer)
        (setq p0 (line-beginning-position))
        (beginning-of-buffer)
        (setq p1 (line-beginning-position))
        (end-of-buffer)
        (setq p2 (line-end-position))
        (setq prev-buffer (current-buffer))
        (with-temp-buffer
          (setq temp-buffer (current-buffer))
          (switch-to-buffer prev-buffer nil t)
          (copy-to-buffer temp-buffer p1 p2)
          (switch-to-buffer temp-buffer nil t)
          (rename-buffer "*My Temp Buffer*" t)
          (shell-command-on-region p1 p2 "leet-extract-input.pl")
          )
        (switch-to-buffer prev-buffer nil t)
        (goto-char p0)
        (buffer-string* (get-buffer "*Shell Command Output*"))
        )
      )

    (defun my-leet-example-old ()
      ""
      (interactive)
      (let (p0 p1 p2 funcname)
        (setq p0 (line-beginning-position))
        ;; get the function name
        (setq funcname (progn
                         (beginning-of-buffer)
                         (search-forward "Class Solution:")
                         (search-forward "def ")
                         (forward-char 5)
                         (thing-at-point 'word)))
        (beginning-of-buffer)
        (re-search-forward "Example 1:")
        (setq p1 (line-beginning-position))
        (end-of-buffer)
        (re-search-backward "Output")
        (setq p2 (line-end-position))
        (goto-char p1)
        (push-mark p2)
        (setq mark-active t)
        (setq prev-buffer (current-buffer))
        (with-temp-buffer
          (switch-to-buffer (current-buffer) nil t)
          (rename-buffer "*My Temp Buffer*" t)
          (insert (concat funcname "\n"))
          (insert-buffer-substring prev-buffer p1 p2)
          (shell-command-on-region (point-min) (point-max) "leet-extract-input.pl")
          )
        (switch-to-buffer prev-buffer nil t)
        (goto-char p0)
        (buffer-string* (get-buffer "*Shell Command Output*"))
        )
      )

    (defun my-python-print-arguments ()
      ""
      (interactive)
      (let ()
        (save-excursion
          (back-to-indentation)
          (push-mark)
          (end-of-line)
          (message "%s %s" (region-beginning) (region-end))
          (shell-command-on-region (region-beginning) (region-end) "emacs-python-print-arguments.pl" t t)
          ) ;; save-excursion
        ) ;; let
      ) ;; defun
    (local-set-key (kbd "C-c p a") 'my-python-print-arguments)
    )
 )

(add-hook
 'python-mode-hook
 '(lambda ()
    (message "python-mode-hook2 called")))

;;----------------------------------------------------------------------
;; go
;; (add-to-list 'load-path "~/.emacs.d/personal/go")

;;----------------------------------------------------------------------
;; ENSIME
(setq-default
 indent-tabs-mode nil
 tab-width 4
 c-basic-offset 4
 python-indent-offset 4)

;(require 'use-package)
;(use-package ensime
;	     :ensure t
;	     :pin melpa)

;; Ensime messes up company and yasnippets
;; Some workarounds are here:
;; https://github.com/ensime/ensime-emacs/issues/474
(defun unimacs-company-define-backends (modes-backends-cons)
    (let ((modes    (car modes-backends-cons))
          (backends (cdr modes-backends-cons)))
      (dolist (mode modes)
        (let* ((modename (symbol-name mode))
               (funcname (concat "company-backends-for-" modename))
               (func (intern funcname))
               (hook (intern (concat modename "-hook"))))
          (setf (symbol-function func)
                `(lambda ()
                   (set (make-local-variable 'company-backends)
                        ',backends)))
          (add-hook hook func)))))

;; company: If ensime is on, use ensime and yasnippet. Otherwise, use dabbrev and yasnippet.
;; (unimacs-company-define-backends
;; '((ensime-mode) . ((ensime-company :with company-yasnippet)
;;                    (company-dabbrev-code :with company-dabbrev company-yasnippet)
;;                    company-files)))

;; (unimacs-company-define-backends
;;   '((org-mode) . ((company-irony :with company-yasnippet)
;;                   (company-dabbrev-code :with company-dabbrev company-yasnippet)
;;                   company-org-headers company-files)))

;; Doesn't work either
;; (push '(ensime-company :with company-yasnippet) company-backends)

;; Doesn't work either
(defun yas-advise-indent-function (function-symbol)
  (eval `(defadvice ,function-symbol (around yas-try-expand-first activate)
           ,(format
             "Try to expand a snippet before point, then call `%s' as usual"
             function-symbol)
           (let ((yas-fallback-behavior nil))
             (unless (and (interactive-p)
                          (yas-expand))
               ad-do-it)))))
;; (yas-advise-indent-function 'ensime-company-complete-or-indent)

;;----------------------------------------------------------------------
;; PERL
(defalias 'perl-mode 'cperl-mode)

;; Get rid of background if in terminal mode
(eval-after-load 'cperl-mode
  '(progn
     (if (not (window-system))
         (let ()
           (set-face-attribute
            'cperl-array-face nil
            :foreground "#ffeeff"
            :background 'unspecified
            :weight 'normal
            :slant 'normal)
           (set-face-attribute
            'cperl-hash-face nil
            :foreground "#ddffff"
            :background 'unspecified
            :weight 'normal
            :slant 'normal)
           ))))

;;----------------------------------------------------------------------
;; CPP
(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)

;;----------------------------------------------------------------------
;; RUST
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

;; (require 'rust-mode)
;; (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

;;----------------------------------------------------------------------
;; FFAP (find file at point) ; S-mouse-3 C-S-mouse-3 C-x C-f
(ffap-bindings)
(load-file "~/Dropbox/Dev/Emacs/ffap.el")

;;----------------------------------------------------------------------
;; defaut-text
(global-set-key (kbd "C-M-=") 'default-text-scale-increase)
(global-set-key (kbd "C-M--") 'default-text-scale-decrease)
(global-set-key (kbd "%") 'my-match-paren)

(defun my-match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;;----------------------------------------------------------------------
;; ibm-box-drawing-hydra
(add-to-list 'load-path
	     "~/.emacs.d/box-drawing")

;; (require 'ibm-box-drawing-hydra)

;;----------------------------------------------------------------------
;; Integer at point

(defun integer-bounds-of-integer-at-point (&optional arg)
  "Return the start and end points of an integer at the current point.
The result is a paried list of character positions for an integer
located at the current point in the current buffer.  An integer is any
decimal digit 0 through 9 with an optional starting minus symbol
\(\"-\")."
  (interactive "p")
  (save-excursion
    (skip-chars-backward "-0123456789")
    (if (looking-at "-?[0-9]+")
	(message (cons (point) (1- (match-end 0)))) ; bounds of integer
      (progn
	(message "nothing found")
      nil)))) ; no integer at point

;; I don't have the time to finish this now
;; but would like to be able to select a region in org mode
;; and indent it correctly (especially for lists)
;; https://www.emacswiki.org/emacs/IntegerAtPoint
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Displaying-Messages.html
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Regexp-Search.html#Regexp-Search
;; http://ergoemacs.org/emacs/emacs_grep_find.html
;; https://stackoverflow.com/questions/24089946/how-to-select-text-between-quotes-brackets-in-emacs
(put 'integer 'bounds-of-thing-at-point
     'integer-bounds-of-integer-at-point)

;; (thing-at-point 'integer)
;; (beginning-of-thing 'integer)
;; (end-of-thing 'integer)

(defun integer-integer-at-point (&optional arg)
  "Return the integer at point"
  (interactive "p")
  (let ((i (thing-at-point 'integer))); The string (integer numeral)
    (if (numberp i)
	(progn
	  (message (string-to-number i))
	  )
      (progn
	(message "Nothing found")
	nil))))
;;----------------------------------------------------------------------

(require 'vue-mode)
(add-to-list 'vue-mode-hook #'smartparens-mode)

(require 'lsp-mode)
(require 'lsp-vue)
(add-hook 'vue-mode-hook #'lsp-vue-mmm-enable)
;;(with-eval-after-load 'lsp-mode
;;  (require 'lsp-flycheck))
(require 'lsp-ui)
(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(add-hook 'vue-mode-hook 'flycheck-mode)

(require 'company-lsp)
(push 'company-lsp company-backends)

;;----------------------------------------------------------------------
;; JS
;; (require 'js2-mode)
;; (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;; (add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
;; (add-hook 'js2-mode-hook 'my-javascript-mode-hook)
;; (defun my-javascript-mode-hook()
;;  (setq indent-tabs-mode nil js-indent-level 2))
(setq js-indent-level 2)
;; (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
;; (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
;;----------------------------------------------------------------------
;; multi-web-mode

(defun flymake-xml-init ())  ;; disable flymake check for html

;; (add-to-list 'load-path
;; 	     "~/.emacs.d/multi-web-mode")
;; (require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)

;;	(js2-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")

;; (setq mweb-tags
;;       '((js2-mode "<script[^>]*>" "</script>")
;;         (python-mode
;;          "# --python-start--"
;;          "# --python-end--")))

(setq mweb-filename-extensions '("html"))
;; (multi-web-global-mode 1)

;;----------------------------------------------------------------------

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; Using web-mode for editing plain HTML files can be done this way
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;;----------------------------------------------------------------------

;; Shell ansi colors
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-to-list 'comint-output-filter-functions 'ansi-color-process-output)

;;----------------------------------------------------------------------

(defun frankie/select-line ()
  (interactive)
  (move-beginning-of-line nil)
  (set-mark-command nil)
  (move-end-of-line nil)
  (setq deactivate-mark nil))

;; wrapper for shell-command-on-region
(defun frankie/shell-command-on-line (prefix command)
  (interactive "P\nsShell command on region: ")
  (let (beg end prompt)
    (frankie/select-line)
    (setq beg (region-beginning)
          end (region-end)
          prompt command)
    (message "%d %d %s %s" beg end prompt prefix)
    (shell-command-on-region beg end prompt nil prefix)
    ))

;;----------------------------------------------------------------------
;; Chicken
; (add-to-list 'load-path
;	     "~/.emacs.d/chicken")
; (require 'chicken)
; (require 'flymake-chicken)
; (add-hook 'scheme-mode-hook 'flymake-chicken)
; (add-hook 'scheme-mode-hook 'chicken)
; (setq scheme-program-name "csi -:c")
(setq geiser-active-implementations '(chicken))

;;----------------------------------------------------------------------
;; Markdown-preview-mode
;; (add-to-list 'markdown-preview-stylesheets "https://raw.githubusercontent.com/richleland/pygments-css/master/emacs.css")
;; (add-to-list 'markdown-preview-javascript "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-MML-AM_CHTML")

(defun my-flymd-browser-function (url)
  (let ((browse-url-browser-function 'browse-url-firefox))
    (browse-url url)))

(setq flymd-browser-open-function 'my-flymd-browser-function)

;;----------------------------------------------------------------------
;; Writing your own backend for orgmode
;;
;; https://linevi.ch/en/org-pygments.html?utm_source=reddit&utm_medium=post&utm_campaign=org_pygments
;;
;; From org-pygments

(require 'org)
(require 'ox)
(require 'ox-html)

;; Path for pygments or command name
(defvar pygments-path "pygmentize")

(defun pygments-org-html-code (code contents info)
  ;; Generating tmp file path.
  ;; Current date and time hash will ideally pass our needs.
  (setq temp-source-file (format "/tmp/pygmentize-%s.txt"(md5 (current-time-string))))
  ;; Writing block contents to the file.
  (with-temp-file temp-source-file (insert (org-element-property :value code)))
  ;; Exectuing the shell-command an reading an output
  (shell-command-to-string (format "%s -l \"%s\" -f html %s"
                                   pygments-path
                                   (or (org-element-property :language code)
                                       "")
                                   temp-source-file)))

;; This only exports a code snippet without the css
;; There are two ways of exporting with the style
;;
;; 1. pygmentize -l "python"
;;               -f html
;;               -O full
;;               -o test.html
;;               pygmentize-e4efb23ad1b27bf536fa5d6eb6d29d1b.txt
;;
;; 2. pygmentize -S default -f html -a .hightlight > default.css
;;    then include the style
;;    <head>
;;      <link rel="stylesheet" href="default.css">
;;    </head>

(org-export-define-derived-backend 'pelican-html 'html
  :translate-alist '((src-block . pygments-org-html-code)
                     (example-block . pygments-org-html-code)))

;; how to export the above (found in elpa/org-.../ox.el
;; call:
;; (org-export-to-buffer 'pelican-html "*Test*")

;; (setq org-src-fontify-natively t)

;;----------------------------------------------------------------------

(add-hook 'sgml-mode-hook 'zencoding-mode)

;;----------------------------------------------------------------------
;; CUSTOMIZATION
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(org-agenda-files
   (quote
    ("~/sampling-xyz-uv.org" "~/github/Admin/personal-orgfiles/agenda.org")))
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(org-latex-default-packages-alist
   (quote
    (("AUTO" "inputenc" t
      ("pdflatex"))
     ("T1" "fontenc" t
      ("pdflatex"))
     ("" "graphicx" t nil)
     ("" "grffile" t nil)
     ("" "longtable" nil nil)
     ("" "wrapfig" nil nil)
     ("" "rotating" nil nil)
     ("normalem" "ulem" t nil)
     ("" "amsmath" t nil)
     ("" "textcomp" t nil)
     ("" "amssymb" t nil)
     ("" "capt-of" nil nil)
     ("" "hyperref" nil nil)
     ("" "lmodern" t nil))))
 '(package-selected-packages
   (quote
    (magit company company-lsp elpy org yasnippet pyvenv org-ref helm-bibtex ob-async json-mode ox-hugo lsp-vue tern-auto-complete vue-mode auto-complete zencoding-mode typescript-mode racket-mode nasm-mode modern-cpp-font-lock go-mode elixir-mode elixir-yasnippets rjsx-mode multi-web-mode groovy-mode gradle-mode lua-mode yaml-mode graphviz-dot-mode ox-reveal org-page ego sphinx-doc ## zygospore ws-butler volatile-highlights shrink-whitespace helm-gtags gnuplot color-theme cl-lib-highlight anzu)))
 '(safe-local-variable-values
   (quote
    ((eval plist-put org-format-latex-options :scale 1.5)
     (eval plist-put org-format-latex-options :scale 2.0)
     (org-agenda-files list "~/Dev/Emacs/Todo/todo.org")
     (org-agenda-files list "~/Admin/todo.org")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide '.emacs)
;;; .emacs ends here
