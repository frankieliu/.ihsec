;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '(("scala_" "#+BEGIN_SRC scala\n$0\n#+END_SRC\n" "scala" nil
			("frankie")
			nil "/home/fyliu/.emacs.d/snippets/org-mode/scala" nil nil)
		       ("ffig_" "#+NAME: fig:${1:figure_name}\n#+CAPTION: $1\n#+ATTR_ORG: :width ${2:400}\n#+ATTR_HTML: :width $2\n#+ATTR_LaTeX: :width ${2:$(/ (string-to-number yas-text) 100)}\n#+LABEL: fig:$1\n" "ffigure" nil
			("frankie")
			nil "/home/fyliu/.emacs.d/snippets/org-mode/ffigure" nil nil)))


;;; Do not edit! File generated at Fri Mar 16 10:48:06 2018
