(define tree
  '(1 (2 (2 6) (3 5 4)) 6 (7 8 (1 3) 9)) )

(define map-tree
  (lambda (fn tree)
    (cond ((null? tree) '())
          ((pair? tree) (cons (map-tree fn (car tree)) (map-tree fn (cdr tree))))
          (else         (fn tree))
	  )))

(define map-tree2
  (lambda (fn tree)
    (cond ((null? tree) '())
          ((pair? tree) (map (lambda (tree) (map-tree2 fn tree)) tree))
          (else         (fn tree))
	  )))
