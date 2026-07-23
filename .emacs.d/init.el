;;;; バッファを一発でリロードする

(defun revert-buffer-no-confirm (&optional force-reverting)
  (interactive "P")
  ;;(message "force-reverting value is %s" force-reverting)
  (if (or force-reverting (not (buffer-modified-p)))
      (revert-buffer :ignore-auto :noconfirm)
    (error "The buffer has been modified")))

;; reload buffer
(global-set-key "\M-r" 'revert-buffer-no-confirm)

;; C-h を Backspace
(keyboard-translate ?\C-h ?\C-?)

;; 起動画面なし
(setq inhibit-startup-message t)

;; ベルなし
(setq ring-bell-function 'ignore)

;; y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; 行番号
(global-display-line-numbers-mode t)

;; 列番号
(column-number-mode t)

;; 括弧対応
(show-paren-mode t)

;: command, option -> meta
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'meta)

;; タブをスペースに
(setq-default indent-tabs-mode nil)

;; バックアップ不要
(setq make-backup-files nil)
(setq auto-save-default nil)

;; UTF-8
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; theme setting
 (load-theme 'modus-vivendi t)

;; package
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
