; looking at stump

; reps is kinda useless
loop reps{
    nm_Walk(10, FwdKey)
    nm_Walk(2, RightKey)
    nm_Walk(8, BackKey)
    nm_Walk(2, RightKey)
    nm_Walk(8, FwdKey)
    nm_Walk(2, RightKey)
    nm_Walk(8, BackKey)
    nm_Walk(2, RightKey)
    nm_Walk(8, FwdKey)
    nm_Walk(2, RightKey)
    nm_Walk(8, BackKey)

    ; back
    nm_Walk(2, LeftKey)
    nm_Walk(8, FwdKey)
    nm_Walk(2, LeftKey)
    nm_Walk(8, BackKey)
    nm_Walk(2, LeftKey)
    nm_Walk(8, FwdKey)

    ; aligment
    nm_Walk(6, LeftKey)
    nm_Walk(14, BackKey)
}
;@NoInterrupt

; by Lorddrak