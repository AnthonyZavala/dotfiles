export GOPROXY=https://goproxy.githubapp.com/mod,https://proxy.golang.org/,direct
export GOPRIVATE=
export GONOPROXY=
export GONOSUMDB='github.com/github/*'

if [ "github/github" == $GITHUB_REPOSITORY ]; then
    export PATH=$PATH:/workspaces/github/bin

    if [ ! -e "$HOME/.netrc" ]; then
        echo "machine goproxy.githubapp.com login nobody password $GITHUB_TOKEN" >> $HOME/.netrc
    fi
fi
