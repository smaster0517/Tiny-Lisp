(defun funcc (mylist)
	(cond
		((null mylist) mylist)
		((and (eq (car mylist) (cadr mylist)) (eq (car mylist) (caddr mylist))) (funcc (cdr mylist)))
		((eq (car mylist) (cadr mylist)) (cons (car mylist) (funcc (cddr mylist))))
		(T  (funcc (cdr mylist)))
	) 
)
(funcc '(a b a a a c c))