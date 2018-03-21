;; Have a way to figure out which functions have been defined by the
;; frdcsa, such as emacs lisp, perl and prolog ones.

;;;;;;;;;;;;;;;;;;

(global-set-key "\C-cfos" 'cfo-function-search)
(global-set-key "\C-cfor" 'cfo-function-render-page)
(global-set-key "\C-cfod" 'cfo-function-documentation)

(defun cfo-function (&optional function-name)
 ""
 (interactive)
 (kmax-not-yet-implemented))

(define-derived-mode cfo-function-mode
 emacs-lisp-mode "CFO-Function"
 "Major mode for viewing function KB in CFO.
\\{emacs-lisp-mode-map}"
 (setq case-fold-search nil)

 ;; (define-key cfo-function-mode-map "\C-cfos" 'cfo-function-search)
 ;; (define-key cfo-function-mode-map "\C-cfor" 'cfo-function-render-page)
 ;; (define-key cfo-function-mode-map "\C-cfod" 'cfo-function-documentation)

 ;; (setq font-lock-defaults
 ;;  '(formalog-prolog-font-lock-keywords nil nil ((?_ . "w"))))

 ;; (re-font-lock)
 )

(defun cfo-function-render-page ()
 ""
 (interactive)

 ;; buffer-local function-kb
 ;; query the function-kb for it's name etc

 ;; (clear the page)

 ;; (formalog-query ())

 ;; what kind of function it is

 ;; in what context is it found: i.e. an emacs function?  a shell command, etc.

 ;; (have the planning ontology, operational/denotational/axiomatic etc semantics for it)

 ;; have concomitant grammars related to it

 ;; have observations about the preconditions and effects of running the function

 ;; other IAEC/Cyc/FLP/LogicMoo/Perform info about it

 )

;;;;;;;;;;;;;;;;;;

(defun cfo-function-search ()
 ""
 (interactive)
 (kmax-not-yet-implemented))

(define-derived-mode cfo-function-search-mode
 emacs-lisp-mode "CFO-Function-Search"
 "Major mode for viewing function KB in CFO.
\\{emacs-lisp-mode-map}"
 (setq case-fold-search nil)

 (define-key cfo-function-mode-map (kbd "TAB") 'formalog-complete-or-tab)
 (define-key cfo-function-mode-map [C-tab] 'flp-complete-or-tab)

 ;; (setq font-lock-defaults
 ;;  '(formalog-prolog-font-lock-keywords nil nil ((?_ . "w"))))

 ;; (re-font-lock)

 )

(defun cfo-function-documentation ()
 ""
 (interactive)
 (case major-mode
  ('cperl-mode (perldoc-at-point))))
