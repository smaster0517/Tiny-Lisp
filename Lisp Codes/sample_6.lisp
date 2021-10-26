(defun funcb (mylist)
	(cond
		((null mylist) mylist)
		((and (eq (car mylist) (cadr mylist)) (eq (car mylist) (caddr mylist))) (funcb (cdr mylist)))
		((eq (car mylist) (cadr mylist)) (funcb (cddr mylist)))
		(T (cons (car mylist) (funcb (cdr mylist))))
	) 
)
(funcb '(a b a a a c c))
