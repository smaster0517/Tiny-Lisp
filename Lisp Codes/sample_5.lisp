(defun funca (mylist)
	(cond
		((null mylist) mylist)
		((eq (car mylist) (cadr mylist)) (funca (cdr mylist)))
		(T (cons (car mylist) (funca (cdr mylist))))
	) 
)
(funca '(a b a a a c c))