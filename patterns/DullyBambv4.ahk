loop 4 {
    dy_Walk(2.75, LeftKey)
    dy_Walk(1.55, FwdKey)
    align()
    dy_Walk(1.5, FwdKey)
    loop 2 {
        dy_Walk(6, LeftKey)
        dy_Walk(1.5, BackKey)
        dy_Walk(6, RightKey)
        dy_Walk(1.5, BackKey)
    }
    dy_Walk(6, LeftKey)
    if (A_Index=2)
        align(1)
    dy_Walk(1.5, FwdKey)
    dy_Walk(6, RightKey)
    dy_Walk(1.5, FwdKey)
    dy_Walk(2.75, LeftKey)
}
align(dir?) { ; 1 = back->forward, 0 = right->left
    m:=IsSet(dir)?[BackKey,FwdKey]:[RightKey, LeftKey]
    nm_Walk(IsSet(dir)?6:13,m[1])
    nm_Walk(IsSet(dir)?3:3.5,m[2])
}
dy_Walk(t, d) => (nm_Walk(t, d), Sleep(30))
; made by dully176 with care
