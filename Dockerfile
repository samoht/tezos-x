FROM registry.gitlab.com/tezos/opam-repository:09853d4ae678917990a532ff06e67466d9e50dd3
RUN sudo apk add libc-dev gdb strace musl-dbg
COPY BMGghi3W2pvUbo5kedvGGhzqV24SpFs4NtBfabfn6jspXSm4WSj.full /src/import.full
COPY tezos /src
COPY run.sh /src
RUN sudo chown tezos:nogroup -R /src
WORKDIR /src
RUN opam exec -- make
