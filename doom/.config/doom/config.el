(setq doom-theme 'catppuccin)
;; (setq doom-theme 'doom-gruvbox)
;;(setq doom-gruvbox-contrast 'hard)

(setq display-line-numbers-type 'relative)

(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(map! :n "M-j" #'move-line-down
      :n "M-k" #'move-line-up)

(beacon-mode 1)

(remove-hook 'doom-modeline-mode-hook #'size-indication-mode) ; removes filesize from modeline
(remove-hook 'doom-modeline-mode-hook #'column-number-mode)   ; removes cursor column in modeline

(setq org-directory "~/org/")
(setq projectile-project-search-path '"~/prj/")

(map! :n ";" 'evil-ex)

(map!
 :map company-active-map :desc "<tab>" :nv "<tab>" #'company-complete-selection)
(map! :map lsp-mode-map :desc "<tab>" :nv "<tab>" #'company-indent-or-complete-common)

(setq which-key-show-early-on-C-h t)
(setq which-key-idle-delay 0.1)
(setq which-key-idle-secondary-delay 0.1)

(map! :map org-mode-map
      :n "M-j" #'org-metadown
      :n "M-k" #'org-metaup)

(map! :leader "e" 'neotree-toggle)

(map! "C-/" nil)
(map! :n "C-/" #'+vterm/toggle)
(map! :i "C-/" #'+vterm/toggle)

(setq org-todo-keywords '((sequence "TODO(t}" "INPROGRESS(i)" "WAITING(w)" "DONE(d)" "CANCELLED(c)"))
      org-todo-keyword-faces
      '(("TODO" :foreground "#7c7c75" :weight normal :underline t)
        ("WAITING" :foreground "#0098dd" :weight normal :underline t)
        ("INPROGRESS" :foreground "#50a14f" :weight normal :underline t)
        ("DONE" :foreground "#50a14f" :weight normal :underline t)
        ("CANCELLED" :foreground "#ff6480" :weight normal :underline t))
      org-agenda-skip-scheduled-if-done t)

(after! dap-mode
  (require 'dap-cpptools)  ; Provides C/C++ debugging with DAP
  )
(map! :map dap-mode-map
      :leader
      :prefix ("d" . "dap")
      ;; basics
      :desc "dap next"          "n" #'dap-next
      :desc "dap step in"       "i" #'dap-step-in
      :desc "dap step out"      "o" #'dap-step-out
      :desc "dap continue"      "c" #'dap-continue
      :desc "dap hydra"         "h" #'dap-hydra
      :desc "dap debug restart" "r" #'dap-debug-restart
      :desc "dap debug"         "s" #'dap-debug

      ;; debug
      :prefix ("dd" . "Debug")
      :desc "dap debug recent"  "r" #'dap-debug-recent
      :desc "dap debug last"    "l" #'dap-debug-last

      ;; eval
      :prefix ("de" . "Eval")
      :desc "eval"                "e" #'dap-eval
      :desc "eval region"         "r" #'dap-eval-region
      :desc "eval thing at point" "s" #'dap-eval-thing-at-point
      :desc "add expression"      "a" #'dap-ui-expressions-add
      :desc "remove expression"   "d" #'dap-ui-expressions-remove

      :prefix ("db" . "Breakpoint")
      :desc "dap breakpoint toggle"      "b" #'dap-breakpoint-toggle
      :desc "dap breakpoint condition"   "c" #'dap-breakpoint-condition
      :desc "dap breakpoint hit count"   "h" #'dap-breakpoint-hit-condition
      :desc "dap breakpoint log message" "l" #'dap-breakpoint-log-message)

(after! python
  (run-python)
  (setq python-shell-completion-native-enable t)) ;; Enable native completion

(setq khoj-api-key "kk-H8cGgTJYdw825s-0B-MdMQXn98ZHRQ1Z3fZwG8eqWxI")
