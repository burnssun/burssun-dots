(fset 'yes-or-no-p 'y-or-n-p)

(setq create-lockfiles nil)

(put 'dired-find-alternate-file 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(setq compilation-scroll-output 1)
(setq compilation-window-height 10)
;; (setq dired-listing-switches "-AlhR -I.git")
(setq list-directory-brief-switches "-CF --group-directories-first")
(setq x-select-enable-clipboard t)
(savehist-mode 1)
(show-paren-mode t)
(tool-bar-mode -1)
(tooltip-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(setq inhibit-startup-screen t)
(transient-mark-mode 1)
(delete-selection-mode 1)


(setq backup-inhibited t)
(setq kill-whole-line t)
(setq confirm-kill-emacs nil)
(global-auto-revert-mode t)
(setq make-backup-files nil) 
(setq auto-save-default nil)
(setq next-line-add-newlines nil)
(setq require-final-newline t)
(setq scroll-preserve-screen-position t)
(setq-default set-buffer-file-coding-system 'utf-8-unix)
(setq default-input-method "korean-hangul")

(when (eq system-type 'windows-nt)
  (require 'tramp)
  (setq tramp-default-method "plinkx")
  (setq tramp-chunksize "200")
  (setenv "PATH" (concat
                  "C:/bin;"
                  "c:/bin/git/bin;"
                  "C:/bin/ruby-2.0.0-p0-i386-mingw32/bin;"
                  (getenv "PATH")))

  (setq exec-path (append exec-path '("c:/bin/git/bin" "c:/bin"))))

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "RET") 'reindent-then-newline-and-indent)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "\C-x l") 'linum-mode)
(global-set-key (kbd "\C-x m") 'menu-bar-mode)

(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window

(require 'misc)
(global-set-key [M-f] 'forward-to-word)
(global-set-key [M-b] 'backward-to-word)

(when window-system
  ;; (global-hl-line-mode t)
  (mwheel-install)
  (set-selection-coding-system 'compound-text-with-extensions))

(setq desktop-missing-file-warning nil)
(setq desktop-load-locked-desktop t)
(desktop-save-mode 1)

(set-frame-parameter nil 'alpha '(100 100))


(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; (require 'cl)
;; (eval-when-compile (require 'cl))
;; (defun toggle-transparency ()
;;   (interactive)
;;   (if (/= (cadr (frame-parameter nil 'alpha)) 100)
;;       (set-frame-parameter nil 'alpha '(100 100))
;;     (set-frame-parameter nil 'alpha '(85 70))))
;; (global-set-key (kbd "C-c t") 'toggle-transparency)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)

;; (add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
;; (add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

;; (dired-details-install)

(global-set-key (kbd "C-x b") 'lusty-buffer-explorer)
(global-set-key (kbd "C-x C-f") 'lusty-file-explorer)
(global-set-key (kbd "C-x f") 'find-file)

(add-to-list 'auto-mode-alist '("[Rr]akefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("[Cc]apfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rbw" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor" . ruby-mode))

(color-theme-railscasts)
(add-to-list 'default-frame-alist '(font . "Bitstream Vera Sans Mono"))

;; (yas/load-directory "~/.emacs.d/burnssun-yasnippet") 
;; (yas-global-mode 1)

;; (require 'auto-complete)
;; (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (require 'auto-complete-config)
;; (ac-config-default)
;; ;; (ac-set-trigger-key nil)
;; (setq ac-auto-start t)
;; (require 'ac-dabbrev)
;; (setq ac-sources
;;       (list ac-source-dabbrev
;; 	    ))


(add-to-list 'load-path "~/.emacs.d/vendor/jade-mode")
(require 'stylus-mode)
(require 'jade-mode)    
(add-to-list 'auto-mode-alist '("\\.styl$" . stylus-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(setq coffee-tab-width 2)

(add-hook 'coffee-mode-hook
          (lambda ()
            (make-local-variable 'tab-width)
            (set 'tab-width 2)
            ))
(put 'upcase-region 'disabled nil)

(require 'mmm-mode)
(setq mmm-global-mode 'maybe)

(setq-default tab-width 2)                      
(setq-default indent-tabs-mode nil)
(setq indent-line-function 'insert-tab)
