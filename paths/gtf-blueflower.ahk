nm_gotoramp()
nm_gotocannon()
send "{e down}"
HyperSleep(100)
send "{e up}{" LeftKey " down}"
HyperSleep(700)
send "{space 2}"
HyperSleep(4450)
send "{" LeftKey " up}{space}"
HyperSleep(1000)
send "{" RotLeft " 2}"
nm_Walk(7, LeftKey)
nm_Walk(10, LeftKey, FwdKey)
nm_Walk(9, FwdKey)
nm_Walk(10, BackKey)
nm_Walk(3, BackKey, RightKey)
nm_Walk(2.5, RightKey)
