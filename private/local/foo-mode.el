(make-variable-buffer-local
(defvar foo-count 0 "Number of foos inserted"))

(defun insert-foo()
  (interactive)
  (setq foo-count (+ foo-count 1))
  (insert "FOO"))

;;;###autoload
(define-minor-mode foo-mode
   "Get your foos"
   :lighter " foo"
   :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-c f") 'insert-foo) map)
   (make-local-variable 'foo-count))

;;;###autoload
(add-hook 'ruby-mode-hook 'foo-mode)

(provide 'foo-mode)
