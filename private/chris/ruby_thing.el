(defun camelize (s)
  "Convert under_score string S to CamelCase string."
  (mapconcat 'identity (mapcar
                        '(lambda (word) (capitalize (downcase word)))
                        (split-string s "_")) ""))

(defun get_ruby_path (path)
  (let* ((foo (split-string path "/"))
         (camel (mapcar 'camelize foo)))
    camel
    ;;(insert (string-join camel "::"))
    ))

(get_ruby_path "hello/world.rb")



;;(mapcar camelize ["hello" "world"])
