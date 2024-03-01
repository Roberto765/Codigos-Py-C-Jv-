(defun es-bisiesto (anio)
  (or (and (zerop (mod anio 4)) (not (zerop (mod anio 100))))
      (zerop (mod anio 400))))

(format t "Ingrese un anio: ")
(let ((anio (parse-integer (read-line))))
  (if (es-bisiesto anio)
      (format t "El anio ~a es bisiesto.~%" anio)
      (format t "El anio ~a no es bisiesto.~%" anio)))
