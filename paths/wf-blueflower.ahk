GetRobloxClientPos()
send("{" RotUp " 11}"), sleep(100), send("{" RotDown " 4}")
loop 5
    send("{" ZoomIn "}"), sleep(50)
send "{" RotRight " 2}"
nm_Walk(17, BackKey)
nm_Walk(8, FwdKey)
nm_Walk(40, Leftkey)
nm_Walk(3, RightKey)
nm_Walk(3, FwdKey)
eButton := Gdip_BitmapFromBase64("iVBORw0KGgoAAAANSUhEUgAAADIAAAAEAQMAAAD20v5CAAAAA1BMVEXu7vKXSI0iAAAAK0lEQVR4AQEgAN//AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAABaSL1yAAAAABJRU5ErkJggg==")
while (A_Index<5 || (Gdip_ImageSearch(pBMScreen := Gdip_BitmapFromScreen(windowX+windowWidth//2-200 "|" windowY+offsetY+36 "|400|120"), ebutton, , , , , , 2, , 6)))
    send("{" SC_E "}"), Sleep(400)
Sleep(500)
nm_Walk(8, BackKey, LeftKey)
nm_Walk(18, Leftkey)
nm_Walk(5, BackKey, LeftKey)
nm_Walk(7.5, BackKey, RightKey)
nm_Walk(1, LeftKey)
loop 5 ; zooming out
    send("{" ZoomOut "}"), sleep(50)
; made by dully176 with care
