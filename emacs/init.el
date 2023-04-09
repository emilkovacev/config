;; GUI Customizations

(menu-bar-mode -1)                                         ;; remove menu bar
(tool-bar-mode -1)                                         ;; remove toolbar
;; (toggle-scroll-bar -1)                                     ;; remove scrollbar
(set-frame-size (selected-frame) 100 32)                  ;; set default size
(set-face-attribute 'default (selected-frame) :height 200) ;; increase zoom
(normal-erase-is-backspace-mode 1)

;; Add Ivy-Posframe
(require 'ivy-posframe)
;; display at `ivy-posframe-style'
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-center)))
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-window-center)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-bottom-left)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-window-bottom-left)))
;; (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-top-center)))
(ivy-posframe-mode 1)

;; Melpa Initialization
(require 'package)
(setq font-lock-maximum-decoration t)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)


;; Neotree Customization

(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


;; Custom Themes
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-vivendi-tinted))
 '(custom-safe-themes
   '("d395c1793e0d64797d711c870571a0033174ca321ed48444efbe640bf692bf4f" "f82e68d489e6c21c9552c4e8e35a03d126d9eba632a8e7b4f9329d1374b4a19c" "eb7cd622a0916358a6ef6305e661c6abfad4decb4a7c12e73d6df871b8a195f8" "11873c4fbf465b956889adfa9182495db3bf214d9a70c0f858f07f6cc91cbd47" default))
 '(initial-buffer-choice "~/")
 '(package-selected-packages '(ivy-posframe neotree flycheck modus-themes lsp-mode)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Go Language Server
(require 'lsp-mode)
(add-hook 'go-mode-hook #'lsp-deferred)

;; Set up before-save hooks to format buffer and add/delete imports.
;; Make sure you don't have other gofmt/goimports hooks enabled.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Golint
; (add-to-list 'load-path (concat (getenv "GOPATH")  "/src/golang.org/x/lint/misc/emacs/"))
; (require 'golint)




