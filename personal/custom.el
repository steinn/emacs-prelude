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

(eval-after-load  "zenburn" (custom-theme-set-faces
                             `zenburn
                             `(flymake-infoline ((t (:underline "green"))))
                             `(flymake-warnline ((t (:underline "blue"))))
                             ))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
