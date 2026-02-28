nm_Walk(6, BackKey)
nm_Walk(8, BackKey, LeftKey)
nm_Walk(4, LeftKey)


digistop := 0 ; change to 1 if you want to use digistop

if (digistop = 0)
{
    loop reps{
        nm_Walk(8, FwdKey)
        nm_Walk(4, RightKey)
        nm_Walk(6, BackKey)
        nm_Walk(4, RightKey)
        nm_Walk(6, FwdKey)
        nm_Walk(4, RightKey)
        nm_Walk(6, BackKey)
        
        ; going back
        nm_Walk(2, LeftKey)
        nm_Walk(6, FwdKey)
        nm_Walk(4, LeftKey)
        nm_Walk(6, BackKey)
        nm_Walk(4, LeftKey)
        nm_Walk(4, FwdKey)

        ; aligment
        nm_Walk(4, LeftKey)
        nm_Walk(10, BackKey)
    }
}
else
{
    loop reps{
        nm_Walk(4, FwdKey)
        sleep(850)
        nm_Walk(4, FwdKey)
        sleep(850)
        nm_Walk(4, RightKey)
        nm_Walk(6, BackKey)
        nm_Walk(4, RightKey)
        nm_Walk(3, FwdKey)
        sleep(850)
        nm_Walk(3, FwdKey)
        sleep(850)
        nm_Walk(4, RightKey)
        nm_Walk(6, BackKey)
        
        ; going back
        nm_Walk(2, LeftKey)
        nm_Walk(6, FwdKey)
        nm_Walk(4, LeftKey)
        nm_Walk(6, BackKey)
        nm_Walk(4, LeftKey)
        nm_Walk(4, FwdKey)

        ; aligment
        nm_Walk(4, LeftKey)
        nm_Walk(10, BackKey)
    }
}

; by Lorddrak
; thanks Myurius for explaining how loop reps can be used