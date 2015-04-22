(require 'package)
(add-to-list 'package-archives
             '("elpa-old" . "http://tromey.com/elpa/")
             t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")
	     t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/")
	     t)
(package-initialize)

;(package-install 'smex)
;(package-install 'auto-complete)
;(package-install 'autopair)
;(package-install 'undo-tree)
;(package-install 'switch-window)
;(package-install 'ace-jump-mode)
;(package-install 'alpha)
;(package-install 'js2-mode)
;(package-install 'ac-js2)
;(package-install 'minimap)
;(package-install 'multiple-cursors)
;(package-install 'powerline)
;(package-install 'php+-mode)
;(package-install 'ac-php)
;(package-install 'myterminal-controls)
;(package-install 'ac-html)
;(package-install 'ac-html-bootstrap)
;(package-install 'ac-html-csswatcher)
;(package-install 'web-mode)
;(package-install 'meta-presenter)

(load-theme 'wombat)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-default 'cursor-type 'bar)
(set-cursor-color "#FFFFFF")
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(column-number-mode)
(show-paren-mode)
(powerline-center-theme)
(ido-mode)
;(global-hl-line-mode)
(winner-mode)
(windmove-default-keybindings)
(global-linum-mode)

(setq backup-inhibited t)
(setq auto-save-default nil)
(setq frame-title-format "Kamran's EMACS")
(setq initial-buffer-choice 
      t)
(setq initial-scratch-message 
      "Terminal ready...\n")
(setq powerline-default-separator 'curve)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ac-config-default)
(autopair-global-mode)
(global-undo-tree-mode)
(global-set-key (kbd "M-/") 'undo-tree-visualize)
(global-set-key (kbd "C-M-z") 'switch-window)
(global-set-key (kbd "C->") 'ace-jump-mode)
(require 'alpha)
(global-set-key (kbd "C-M-}") 'transparency-increase)
(global-set-key (kbd "C-M-{") 'transparency-decrease)
(global-set-key (kbd "C-}") 'mc/mark-next-like-this)
(global-set-key (kbd "C-{") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-'") 'myterminal-controls-open-controls)

(myterminal-controls-set-controls-data 
 (list '("1" "Toggle minimap" (lambda ()
                                 (minimap-toggle)))
       '("2" "Toggle tool-bar" (lambda ()
                                 (cond (tool-bar-mode (tool-bar-mode -1))
                                       (t (tool-bar-mode t)))))
       '("3" "Toggle scroll-bar" (lambda ()
                                   (cond (scroll-bar-mode (scroll-bar-mode -1))
                                         (t (scroll-bar-mode t)))))
       '("4" "Invert colors" (lambda ()
                               (invert-face 'default)))))

