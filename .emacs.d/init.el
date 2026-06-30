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

;; タブをスペースに
(setq-default indent-tabs-mode nil)

;; バックアップ不要
(setq make-backup-files nil)
(setq auto-save-default nil)

;; UTF-8
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; package
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)