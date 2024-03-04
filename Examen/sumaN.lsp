(defun suma-hasta-n (n)
  (concatenate 'string (loop for i from 1 to n
                          collect (write-to-string i))))
(format t "Ingrese un numero: ")
(let ((n (parse-integer (read-line))))
  (if (and n (> n 0))
      (format t "La suma hasta ~d es: ~a~%" n (suma-hasta-n n))
      (format t "Debe ingresar un número entero positivo.~%"))))
