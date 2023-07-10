$Global:budRevPath = "C:\Users\КапитанС\source\repos\BudRev"
$Global:identityPath = "C:\Users\КапитанС\source\repos\Identity"
$Global:generalWebServicesPath = "C:\Users\КапитанС\source\repos\GeneralWebServices"

function build {
    C:/"Program Files"/"Microsoft Visual Studio"/2022/Community/MSBuild/Current/Bin/MSBuild.exe "C:/Users/КапитанС/source/repos/BudRev/BudRev.sln" -property:Configuration=Debug -verbosity:minimal -maxCpuCount -nologo
}

function git-stash {
    git -C $budRevPath stash --include-untracked
    git -C $identityPath stash --include-untracked
    git -C $generalWebServicesPath stash --include-untracked
}

function git-stash-drop {
    git -C $budRevPath stash drop
    git -C $identityPath stash drop
    git -C $generalWebServicesPath stash drop
}

function git-stash-pop {
    git -C $budRevPath stash pop
    git -C $identityPath stash pop
    git -C $generalWebServicesPath stash pop
}

function git-pull {
    git -C $budRevPath pull
    git -C $identityPath pull
    git -C $generalWebServicesPath pull
}

function git-push {
    param([String]$m)
    if (!$m) {
        Write-Error -Message "Error: m is empty. Example: push -m `"test`"" -Category InvalidArgument
        return;
    }
    
    git -C $budRevPath pull
    git -C $budRevPath add .
    git -C $budRevPath commit -a -m $m
    git -C $budRevPath push

    git -C $identityPath pull
    git -C $identityPath add .
    git -C $identityPath commit -a -m $m
    git -C $identityPath push

    git -C $generalWebServicesPath pull
    git -C $generalWebServicesPath add .
    git -C $generalWebServicesPath commit -a -m $m
    git -C $generalWebServicesPath push
}

function git-commit {
    param([String]$m)
    if (!$m) {
        Write-Error -Message "Error: m is empty. Example: commit -m `"test`"" -Category InvalidArgument
        return;
    }

    git -C $budRevPath commit -a -m $m
    git -C $identityPath commit -a -m $m
    git -C $generalWebServicesPath commit -a -m $m
}

function git-reset {
    git -C $budRevPath reset HEAD~1
    git -C $identityPath reset HEAD~1
    git -C $generalWebServicesPath reset HEAD~1
}

function git-clean {
    git -C $budRevPath restore -S .
    git -C $budRevPath reset --hard
    git -C $budRevPath clean -fd

    git -C $identityPath restore -S .
    git -C $identityPath reset --hard
    git -C $identityPath clean -fd

    git -C $generalWebServicesPath restore -S .
    git -C $generalWebServicesPath reset --hard
    git -C $generalWebServicesPath clean -fd
}

function git-delete-branch {
    param([String]$n)
    if (!$n) {
        Write-Error -Message "Error: m is empty. Example: remove-branch -n `"Name`"" -Category InvalidArgument
        return;
    }

    git -C $budRevPath branch -d $n
    git -C $budRevPath push origin --delete $n

    git -C $identityPath branch -d $n
    git -C $identityPath push origin --delete $n

    git -C $generalWebServicesPath branch -d $n
    git -C $generalWebServicesPath push origin --delete $n
}

function git-switch-branch {
    param([String]$n)
    if (!$n) {
        Write-Error -Message "Error: m is empty. Example: switch-branch -n `"Name`"" -Category InvalidArgument
        return;
    }

    git -C $budRevPath switch $n
    git -C $identityPath switch $n
    git -C $generalWebServicesPath switch $n
}

function git-checkout-branch {
    param([String]$n)
    if (!$n) {
        Write-Error -Message "Error: m is empty. Example: checkout-branch -n `"Name`"" -Category InvalidArgument
        return;
    }

    git -C $budRevPath checkout $n
    git -C $identityPath checkout $n
    git -C $generalWebServicesPath checkout $n
}

function git-create-branch {
    param([String]$n)
    if (!$n) {
        Write-Error -Message "Error: m is empty. Example: checkout-branch -n `"Name`"" -Category InvalidArgument
        return;
    }

    git -C $budRevPath stash --include-untracked
    git -C $budRevPath checkout -b $n
    git -C $budRevPath stash pop

    git -C $identityPath stash --include-untracked
    git -C $identityPath checkout -b $n
    git -C $identityPath stash pop

    git -C $generalWebServicesPath stash --include-untracked
    git -C $generalWebServicesPath checkout -b $n
    git -C $generalWebServicesPath stash pop
}

function git-reset-merge {
    git -C $budRevPath reset --merge
    git -C $identityPath reset --merge
    git -C $generalWebServicesPath reset --merge
}