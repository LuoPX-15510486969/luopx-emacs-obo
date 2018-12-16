(lazy-set-key
 '(
   ("<f5>" . restart-emacs)

   ))

;; awesome-tab
(lazy-unset-key
 '("M-j" "M-k")
 awesome-tab-mode-map)
(lazy-set-key
 '(
   ("M-j" . awesome-tab-forward-tab)
   ("M-k" . awesome-tab-backward-tab)
   ("M-l" . awesome-tab-backward-group)
   ("M-;" . awesome-tab-forward-group)
 ))

;;find-define
(lazy-set-autoload-key
 '(
   ("C-7" . find-define-back)           ;返回查找符号的定义之前的位置
   ("C-8" . find-define)                ;查找符号的定义
   )
 "find-define")

;;awesome-tab
;;; ### Awesome-Pair ###
;;; --- 结构化编程
(lazy-unset-key
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b" "M-)")
 awesome-pair-mode-map)                 ;卸载按键
(defvar awesome-pair-key-alist nil)
(setq awesome-pair-key-alist
      '(
        ;; 移动
        ("M-n" . awesome-pair-jump-left)
        ("M-p" . awesome-pair-jump-right)
        ;; 符号插入
        ("%" . awesome-pair-match-paren)       ;括号跳转
        ("(" . awesome-pair-open-round)        ;智能 (
        ("[" . awesome-pair-open-bracket)      ;智能 [
        ("{" . awesome-pair-open-curly)        ;智能 {
        (")" . awesome-pair-close-round)       ;智能 )
        ("]" . awesome-pair-close-bracket)     ;智能 ]
        ("}" . awesome-pair-close-curly)       ;智能 }
        ("\"" . awesome-pair-double-quote)     ;智能 "
        ;; 删除
        ("M-o" . awesome-pair-backward-delete) ;向后删除
        ("C-k" . awesome-pair-kill)            ;向前删除
        ;; 包围
        ("M-\"" . awesome-pair-wrap-double-quote) ;用 " " 包围对象, 或跳出字符串
        ("M-[" . awesome-pair-wrap-bracket)       ;用 [ ] 包围对象
        ("M-{" . awesome-pair-wrap-curly)         ;用 { } 包围对象
        ("M-(" . awesome-pair-wrap-round)         ;用 ( ) 包围对象
        ("M-)" . awesome-pair-unwrap)             ;去掉包围对象
        ;; 跳出并换行缩进
        ("M-:" . awesome-pair-jump-out-pair-and-newline) ;跳出括号并换行
        ))
(lazy-set-key awesome-pair-key-alist awesome-pair-mode-map)
















(provide 'init-keys)
