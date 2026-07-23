;;; early-init.el ends here;;; early-init.el --- Early startup settings

;; package.el を init.el の前に自動初期化しない
(setq package-enable-at-startup nil)

;; 起動中のGCを抑えて高速化
(setq gc-cons-threshold most-positive-fixnum)
(setq gc-cons-percentage 0.6)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 128 1024 1024))
            (setq gc-cons-percentage 0.1)))

;; GUI部品は存在する場合だけ無効化する
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; フレームサイズ変更時の無駄な再描画を抑える
(setq frame-inhibit-implied-resize t)

;; 起動画面を抑制
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;;; early-init.el ends heretup-message t)
(setq initial-scratch-message nil)

;;; early-init.el ends here
