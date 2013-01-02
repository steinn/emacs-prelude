(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(abbrev-file-name "~/.emacs.d/personal/abbrev_defs")
 '(ac-comphist-file "/home/steinn/.emacs.d/personal/ac-comphist.dat")
 '(dired-listing-switches "-al --group-directories-first")
 '(ediff-merge-split-window-function (quote split-window-vertically))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(safe-local-variable-values (quote ((eval when (fboundp (quote rainbow-mode)) (rainbow-mode 1)))))
 '(scroll-bar-mode nil)
 '(whitespace-line nil))

;; modify zenburn after it has loaded
;; (eval-after-load  "zenburn" (custom-theme-set-faces
;;                              `zenburn
;;                              `(flymake-infoline ((t (:underline "green"))))
;;                              `(flymake-warnline ((t (:underline "blue"))))
;;                              `(whitespace-space ((t (:background ,"#3f3f3f" :foreground ,"#4f4f4f"))))
;;                              `(whitespace-hspace ((t (:background ,"#3f3f3f" :foreground ,"#4f4f4f"))))
;;                              ))

(let ((class '((class color) (min-colors 89)))
      ;; Zenburn palette
      ;; colors with +x are lighter, colors with -x are darker
      (zenburn-fg "#dcdccc")
      (zenburn-fg-1 "#656555")
      (zenburn-bg-1 "#2b2b2b")
      (zenburn-bg-05 "#383838")
      (zenburn-bg "#3f3f3f")
      (zenburn-bg+1 "#4f4f4f")
      (zenburn-bg+2 "#5f5f5f")
      (zenburn-bg+3 "#6f6f6f")
      (zenburn-red+1 "#dca3a3")
      (zenburn-red "#cc9393")
      (zenburn-red-1 "#bc8383")
      (zenburn-red-2 "#ac7373")
      (zenburn-red-3 "#9c6363")
      (zenburn-red-4 "#8c5353")
      (zenburn-orange "#dfaf8f")
      (zenburn-yellow "#f0dfaf")
      (zenburn-yellow-1 "#e0cf9f")
      (zenburn-yellow-2 "#d0bf8f")
      (zenburn-green-1 "#5f7f5f")
      (zenburn-green "#7f9f7f")
      (zenburn-green+1 "#8fb28f")
      (zenburn-green+2 "#9fc59f")
      (zenburn-green+3 "#afd8af")
      (zenburn-green+4 "#bfebbf")
      (zenburn-cyan "#93e0e3")
      (zenburn-blue+1 "#94bff3")
      (zenburn-blue "#8cd0d3")
      (zenburn-blue-1 "#7cb8bb")
      (zenburn-blue-2 "#6ca0a3")
      (zenburn-blue-3 "#5c888b")
      (zenburn-blue-4 "#4c7073")
      (zenburn-blue-5 "#366060")
      (zenburn-magenta "#dc8cc3"))

  (eval-after-load  "zenburn" (custom-theme-set-faces
                               `zenburn
                               `(flymake-infoline ((t (:underline "green"))))
                               `(flymake-warnline ((t (:underline "blue"))))
                               `(whitespace-space ((t (:background ,zenburn-bg :foreground ,zenburn-bg+1))))
                               `(whitespace-hspace ((t (:background ,zenburn-bg :foreground ,zenburn-bg+1))))
                               `(whitespace-tab ((t (:background ,zenburn-bg :foreground ,zenburn-red))))
                               `(whitespace-newline ((t (:foreground ,zenburn-bg+1))))
                               `(whitespace-trailing ((t (:foreground ,zenburn-red :background ,zenburn-bg))))
                               `(whitespace-line ((t (:background ,zenburn-bg-05 :foreground ,zenburn-magenta))))
                               `(whitespace-space-before-tab ((t (:background ,zenburn-orange :foreground ,zenburn-orange))))
                               `(whitespace-indentation ((t (:background ,zenburn-yellow :foreground ,zenburn-red))))
                               `(whitespace-empty ((t (:background ,zenburn-yellow :foreground ,zenburn-red))))
                               `(whitespace-space-after-tab ((t (:background ,zenburn-yellow :foreground ,zenburn-red))))
                               )))
