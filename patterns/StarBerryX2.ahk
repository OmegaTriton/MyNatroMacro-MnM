;   STAR BERRY X2
;   Just cleaning up old code because StrawberryxSnake was ass
;   NESTED LOOPS CAUSE IM SO LAZY :SKULL:
send "{" RotUp " 8}"
send "{" TCLRKey " down}"
Walk(22.5)
send "{" TCLRKey " up}{" TCFBKey " down}"
Walk(10)
send "{" TCFBKey " up}"
loop reps {
	send "{" AFCLRKey " down}"
    Walk(10 * size)
    send "{" AFCLRKey " up}{" TCLRKey " down}{" AFCFBKey " down}"
    Walk(13 * size)
    send "{" AFCFBKey " up}{" TCLRKey " up}{" AFCLRKey " down}"
    Walk(10 * size)
    send "{" AFCLRKey " up}{" TCFBKey " down}"
    Walk(2 * size)
    send "{" TCFBKey " up}{" TCLRKey " down}"
    Walk(10 * size)
    send "{" TCLRKey " up}{" TCFBKey " down}"
    Walk(2 * size)
    send "{" TCFBKey " up}{" AFCLRKey " down}"
    Walk(10 * size)
    send "{" AFCLRKey " up}{" TCFBKey " down}"
    Walk(2 * size)
    send "{" TCFBKey " up}{" TCLRKey " down}"
    Walk(10 * size)
    send "{" TCLRKey " up}{" TCFBKey " down}"
    Walk(2 * size)
    send "{" TCFBKey " up}"
}