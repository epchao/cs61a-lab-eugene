(define (split-at lst n)
    (define (splitter new_lst lst n)
        (cond
            ((= n 0) new_lst)
            (else (cons (car lst) (splitter nil (cdr lst) (- n 1))))
        )
    )

    (define (comparator lst1 lst2)
        (cond
            ((null? lst1) (append lst2 lst1))
            (else (= (car lst1) (car lst2)) (comparator (cdr lst1) (cdr lst2)))
        )
    )
    
    (if (> n (length lst))
        (cons lst nil)
        (cons (splitter nil lst n) (comparator (splitter nil lst n) lst))
    )
)

(define (compose-all funcs)
    (lambda(x)
        (if (null? funcs)
            x
            ((compose-all (cdr funcs)) ((car funcs) x))
        )
    )
)
