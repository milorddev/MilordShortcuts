$DEV_ROOT="D:/Projects"
function milord {
    code "$DEV_ROOT/MilordShortcuts/milord-aliases.ps1"
}

function dev {
    Set-Location $DEV_ROOT
}

function touch {
    Write-Output $null >> $args[0]
}

# DOCKER FUNCTIONS

function dlogs {
    docker-compose logs -f $args[0] --tail 1000
}

function check {
    if ($args.Length -eq 0) {
        docker-compose ps
    } else {
        docker-compose ps | Select-String $args
    }
}

function dbash {
    docker-compose exec $args /bin/bash
}

function dreset() {
	docker-compose stop $args[0]
	docker-compose rm $args[0]
	docker-compose up -d --build $args[0]
	docker-compose logs -f $args[0]
}

function dope() {
    docker-compose $args
}

function doperr() {
    docker-compose ps | grep Exit | xargs sh -c "docker-compose up -d || true"
}

function clindb() {
    docker-compose run --rm postgres psql -h postgres -U postgres
}


# GIT FUNCTIONS
function adal {
    git add --all
}

function chout {
    if ($args.Length -eq 0) {
        git checkout *
    } else {
        git checkout $args
    }
}

function branchall {
    git branch --all
}

function gitmit {
    git commit -m "$args"
}

function stats {
    git status
}

function push {
    git push
}

function pull {
    git pull
}

function glog {
    git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative
}

function newbranch {
    git pull
    git checkout -b $args
}

function prunelocal {
    git pull --prune
}

Set-Alias milordAlias milord
