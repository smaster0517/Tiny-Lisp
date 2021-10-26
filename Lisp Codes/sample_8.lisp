(defun funcd (mylist mycount)		
	(cond
		((null mylist) mylist)			
		((null (cdr mylist)) (list (list (+ mycount 1) (car mylist))))
		((eq (car mylist) (cadr mylist)) (funcd (cdr mylist) (+ mycount 1)))
		(T  (cons (list (+ mycount 1) (car mylist)) (funcd (cdr mylist) 0)))
	) 
)
(funcd '(a b a a a c c) 0)