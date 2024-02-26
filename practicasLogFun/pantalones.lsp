(defun calcular-precio-total (numero-pantalones)
  (let ((precio-unitario 1000))
    (let ((descuento (cond ((< numero-pantalones 5) 0)
                           ((< numero-pantalones 12) 0.15)
                           (t 0.30))))
      (* (- 1 descuento) precio-unitario numero-pantalones))))

(format t "Ingrese el número de pantalones que desea comprar: ")
(finish-output)

(let ((numero-pantalones (parse-integer (read-line))))
  (let ((total-a-pagar (calcular-precio-total numero-pantalones)))
    (format t "El total a pagar es: ~a pesos." total-a-pagar)))
