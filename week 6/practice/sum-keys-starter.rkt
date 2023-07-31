
;; sum-keys-starter.rkt

;
; PROBLEM:
;
; Design a function that consumes a BST and produces the sum of all
; the keys in the BST.
;


;; Data definitions:

(define-struct node (key val l r))
;; A BST (Binary Search Tree) is one of:
;;  - false
;;  - (make-node Integer String BST BST)
;; interp. false means no BST, or empty BST
;;         key is the node key
;;         val is the node val
;;         l and r are left and right subtrees
;; INVARIANT: for a given node:
;;     key is > all keys in its l(eft)  child
;;     key is < all keys in its r(ight) child
;;     the same key never appears twice in the tree

(define BST0 false)
(define BST1 (make-node 1 "abc" false false))
(define BST4 (make-node 4 "dcj" false (make-node 7 "ruf" false false)))
(define BST3 (make-node 3 "ilk" BST1 BST4))
(define BST42
  (make-node 42 "ily"
             (make-node 27 "wit" (make-node 14 "olp" false false) false)
             false))
(define BST10 (make-node 10 "why" BST3 BST42))

; .

#;
(define (fn-for-bst t)
  (cond [(false? t) (...)]
        [else
         (... (node-key t)    ;Integer
              (node-val t)    ;String
              (fn-for-bst (node-l t))
              (fn-for-bst (node-r t)))]))

;; Template rules used:
;;  - one of: 2 cases
;;  - atomic-distinct: false
;;  - compound: (make-node Integer String BST BST)
;;  - self reference: (node-l t) has type BST
;;  - self reference: (node-r t) has type BST

;; BST -> Natural
;; calculate the sum of all the keys of a BST
(check-expect (sum-keys BST0) 0)
(check-expect (sum-keys BST1) 1)
(check-expect (sum-keys BST3) (+ 3 1 4 7))
#;
(define (sum-keys bst) 0)

(define (sum-keys bst)
  (cond [(false? bst) 0]
        [else
         (+ (node-key bst)
              (sum-keys (node-l bst))
              (sum-keys (node-r bst)))]))

(sum-keys BST3)
(sum-keys BST10)