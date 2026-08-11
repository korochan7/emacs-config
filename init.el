(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit ddskk)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "C-x C-j") #'skk-mode)
(setq skk-tut-file
      (expand-file-name "SKK.tut" user-emacs-directory))

(defvar my-trading-ai-data-directory
  "C:/Users/guite/Documents/trading_ai/data")

(defun my-open-todays-trading-data ()
  "今日のtrading_aiデータフォルダを開く。"
  (interactive)
  (let ((directory
	 (expand-file-name
	  (format-time-string "%Y-%m-%d")
	  my-trading-ai-data-directory)))
    (if (file-directory-p directory)
	(dired directory)
      (message "今日のフォルダはまだありません: %s"
	       directory))))

;; 不正な入力があった場合ベルを鳴らさないようにする。
(setq ring-bell-function 'ignore)
