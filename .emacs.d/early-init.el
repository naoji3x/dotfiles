;;; early-init.el --- Early startup settings

;; package.el を init.el の前に自動初期化しない
(setq package-enable-at-startup nil)

;; 起動中のGCを抑えて高速化
(setq gc-cons-threshold most-positive-fixnum)
(setq gc-cons-percentage 0.6)

;; 起動後にGC設定を戻す
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 128 1024 1024))
            (setq gc-cons-percentage 0.1)))

;; メニューバー、ツールバー、スクロールバーを早めに無効化
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; フレームサイズ変更時の無駄な再描画を少し抑える
(setq frame-inhibit-implied-resize t)

;; 起動時の画面ちらつきを抑える
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;;; early-init.el ends here