(fred bob (dave (pete)) ed)
;; 
(defun times (x y)			;
  (let ((i 0)
	(result 0))
    (while
	(< i x)
      (setq result (+ result y)
	    i (1+ i)))
    result))

(times 1 1)
