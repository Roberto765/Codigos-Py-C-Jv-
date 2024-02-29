(defun determinar-tipo-letra (letra)
  (cond ((member letra '(#\a #\e #\i #\o #\u)) "Es una vocal.")
        ((char= letra #\y) "Es una semivocal.")
        (t "Es una consonante.")))

(format t "Ingrese una letra minuscula: ")
(let ((letra (read-char)))
  (format t "~a~%" (determinar-tipo-letra letra)))
