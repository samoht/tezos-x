all:
	docker build . -t samoht/tezos-x:2 && \
	docker run -it --privileged samoht/tezos-x:2

clone:
	git clone -b zeronet https://github.com/samoht/tezos
	curl -OL https://coutosuisse.fagny.fr/transfer/BMGghi3W2pvUbo5kedvGGhzqV24SpFs4NtBfabfn6jspXSm4WSj.full
