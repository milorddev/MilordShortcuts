function dev() {
    Set-Location "D:\Projects"
}
function milord() {
    code "C:\Users\mmilord\OneDrive\Documents\WindowsPowerShell\profile.ps1"
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