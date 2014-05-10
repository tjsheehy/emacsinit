(require 'cask "~/.emacs.d/.cask/24.3.1/elpa/cask-20140324.15/cask.el")
(cask-initialize)

(require 'pallet)

(add-to-list 'load-path "~/.emacs.d/custom")

;; Powerline
;; (require 'cl)
;; (require 'powerline)
;; (require 'powerline-separators)

;; Show backtrace when an error occurs
;; (setq debug-on-error t)

;; Enhanced Ruby mode settings
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode)) 
(add-hook 'enh-ruby-mode-hook 'robe-mode)

;; Web mode settings
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; CSS settings
(add-to-list 'auto-mode-alist '("css\\.scss" . css-mode))

;; TODO: Should really be underlining syntax error and showing tooltip
;; Flycheck for syntax highlighting. Integrates with rubocop and ruby-lint gems.
(add-hook 'after-init-hook 'global-flycheck-mode)

;; TODO: Company robe not firing!
;; Use company-mode for autocompletion
(require 'company)
(global-company-mode t)
(eval-after-load 'company
 '(add-to-list 'company-backends 'company-robe))
;;(require 'robe)
;;(push 'company-robe company-backends)

;; Smartparens
(require 'smartparens-config)
(smartparens-global-mode)
(show-smartparens-global-mode)

;; Projectile
(projectile-global-mode)
(setq projectile-enable-caching t)
(require 'persp-projectile)
(persp-mode)

(define-key projectile-mode-map [?\M-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\M-o] 'projectile-switch-project)
(define-key projectile-mode-map [?\M-p] 'projectile-find-file)
(define-key projectile-mode-map [?\M-g] 'projectile-grep)
(define-key projectile-mode-map [?\M-s] 'projectile-persp-switch-project)

;; Don't use tabs for indent
(setq-default indent-tabs-mode nil)

(prefer-coding-system 'utf-8)

;; Show line numbers 
(global-linum-mode 1)
(require 'linum)

;; Don't use tabs for indent
(setq-default indent-tabs-mode nil)

;; Show line numbers 
(global-linum-mode 1)
(setq linum-format "%d ")

;; Highlight current line 
;;(global-hl-line-mode 1)

;; Hide menu bar and scroll bar
(menu-bar-mode 0)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Disable backup
(setq backup-inhibited t)

;; Disable auto save
(setq auto-save-default nil)

;; Allow pasting from clipboard
(setq x-select-enable-clipboard t)

;; Show time
(display-time)

