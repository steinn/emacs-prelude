;;; prelude-python.el --- Emacs Prelude: python.el configuration.
;;
;; Copyright © 2011-2013 Bozhidar Batsov
;;
;; Author: Bozhidar Batsov <bozhidar@batsov.com>
;; URL: https://github.com/bbatsov/prelude
;; Version: 1.0.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Some basic configuration for python.el (the latest and greatest
;; Python mode Emacs has to offer).

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(require 'prelude-programming)

;; pip install jedi epc
(prelude-ensure-module-deps '(epc auto-complete jedi virtualenv))

;; Setup python-mode
(autoload 'python-mode "python" "Python Mode." t)
(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter "ipython"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

;; Setup jedi (auto-completion)
(setq jedi:setup-keys t)
(autoload 'jedi:setup "jedi" nil t)



(defun prelude-python-mode-defaults ()
  (run-hooks 'prelude-prog-mode-hook) ;; run manually; not derived from prog-mode
  (jedi:setup)
  (auto-complete-mode +1)
  (whitespace-mode +1)
  (virtualenv-minor-mode +1)
  (electric-indent-mode -1))

(setq prelude-python-mode-hook 'prelude-python-mode-defaults)

(add-hook 'python-mode-hook (lambda ()
                              (run-hooks 'prelude-python-mode-hook)))
(provide 'prelude-python)

;;; prelude-python.el ends here
