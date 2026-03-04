/*******************************************************
 * This creates a new folder based on the commit SHA
 * WILL NOT DELETE THE OLDER FILES
 * You must manually move the files from the new folder
   to the main folder and delete the new folder after
********************************************************/

#Requires AutoHotkey v2.0
#Include JSON.ahk

#Warn VarUnset, Off

owner := "OmegaTriton"
repo := "MyNatroMacro-MnM"
SHA := "fbaeb11acde989146030406e521e2068d04ded9d" ; edit this for the commit SHA (or leave empty to use branch `tree`)

Response := MsgBox("Are you sure you want to create a forced update to " SHA "?", "ForceUpdate", "YesNo")
if Response = "No"
    ExitApp

_HttpDownloadFile(url, outPath, token:="") {
    http := ComObject("WinHttp.WinHttpRequest.5.1")
    http.Open("GET", url, false)
    http.SetRequestHeader("User-Agent", "AutoUpdate AHK")
    if (token != "")
        http.SetRequestHeader("Authorization", "token " token)
    http.Send()
    http.WaitForResponse()

    ; Save binary response using ADODB.Stream
    blob := http.ResponseBody
    stream := ComObject("ADODB.Stream")
    stream.Type := 1 ; adTypeBinary
    stream.Open()
    stream.Write(blob)
    stream.SaveToFile(outPath, 2) ; adSaveCreateOverWrite
    stream.Close()
}

DownloadCommitZip(owner, repo, commitSha, outZipPath, token:="") {
    ; Use GitHub zipball API which supports commit SHA or branch name
    url := "https://api.github.com/repos/" owner "/" repo "/zipball/" commitSha
    _HttpDownloadFile(url, outZipPath, token)
}

ExtractZipWithPowerShell(zipPath, destDir) {
    if !DirExist(destDir)
        DirCreate(destDir)
    psCmd := "Expand-Archive -Path '" zipPath "' -DestinationPath '" destDir "' -Force"
    ; Use powershell.exe to extract (blocking)
    RunWait('powershell -NoProfile -NonInteractive -Command "' . psCmd . '"', , "Hide")
}

DownloadAndExtractCommit(owner, repo, commitSha, destDir := "commit_files", token:="") {
    if !DirExist(destDir)
        DirCreate(destDir)
    tempZip := destDir "\" repo "-" SubStr(commitSha, 1, 8) ".zip"
    DownloadCommitZip(owner, repo, commitSha, tempZip, token)
    ExtractZipWithPowerShell(tempZip, destDir)
    return tempZip
}

DownloadAndExtractCommit(owner, repo, SHA)
MsgBox "Done"