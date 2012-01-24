if test -z "$GOROOT"
then
    # figure out what GOROOT is supposed to be
    GOROOT=`printf 't:;@echo $(GOROOT)\n' | gomake -f -`
    export GOROOT
fi

# removed PKG_REQS as we resolve these dependencies on our own`
PKG_REQS=""

PKGS="
    quiet
    store
    consensus
    server
    web
    test
    member
    gc
    peer
"

CMDS="
    doozerd
"
