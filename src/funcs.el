;; Exploring function as basic programming units in Emacs

(defun count-words-buffer ()
  "Count the number of words in the current buffer;
print a message in the minibuffer with the result."
  (interactive)
  (let ((count 0))
    (save-excursion
     (goto-char (point-min))
     (while (< (point) (point-max))
       (forward-word 1)
       (setq count (1+ count)))
     (message "buffer contains %d words." count))))

(defun pluralize (word count &optional plural)
  "Apply the proper plural form of word, given a certain count"
  (if (= count 1)
      word
    (if (null plural)
	(concat word "s")
      plural)))
