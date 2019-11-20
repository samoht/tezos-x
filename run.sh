TEZOS_STORAGE='index-log-size=50,v' strace -y -f -o out ./tezos-node snapshot import import.full &> err
