function dev() {
    Set-Location "C:\Users\immun\Projects"
}
function milord() {
    code "C:\Users\immun\OneDrive\Documents\WindowsPowerShell\profile.ps1"
}

# 
# git stuff
function stats() {
    git status
}

function adal() {
    git add --all
}

function ginit() {
    git init
}

function pull() {
    git pull
}

function push() {
    git push
}

function gitmit() {
    git commit -m $args
}

function branchall() {
    git branch --all
}

function newbranch() {
    git pull
    git checkout -b $args
}

function surgessh() {
    ssh -p 1804 root@66.228.40.55
}

function hackssh() {
    ssh -p 1804 root@173.255.194.59
}

function tokenstarterssh() {
    ssh -p 1804 root@50.116.59.253
}

# docker stuff
function dope() {
    docker-compose $args
}

function check() {
    docker-compose ps
}

function dbash() {
    docker-compose exec $args /bin/bash
}

function dlogs() {
    docker-compose logs -f $args
}

function displayoff() {
    (Add-Type '[DllImport("user32.dll")]public static extern int SendMessage(int hWnd, int hMsg, int wParam, int lParam);' -Name a -Pas)::SendMessage(-1,0x0112,0xF170,2)
}

function bscan() {
    start chrome -join("https://bscscan.com/address/", "", $args);
}

function abicp() {
    #if $args null then exit
    if ($args -eq "" -Or $args -eq " " -Or $args.Count -eq 0) {
        Write-Output "enter a BSC token contract address"
    } else {        
        # abi variable from request
        $abi = Invoke-WebRequest -Uri "https://api.bscscan.com/api?module=contract&action=getabi&address=$args&apikey=P8QYB1BFDHSEDQCUK42U37936JZXEU757M"
        # copy $abi.content to clipboard
        $responseJson = $abi.Content | ConvertFrom-Json
        if ($responseJson.message -eq "OK") {
            $responseJson.result | Set-Clipboard
            Write-Output "abi copied to clipboard"
        } else {
            Write-Output "error: $responseJson.result"
        }
    }
}