# 100door Ackermann fibonacci hailstone mergeSort N-Queens quickSort removeDuplicateElements SieveOfEratosthenes

NTIMES=1

export NTIMES

i ?= 100door 

measure:
	echo Processing $(i);
	sudo modprobe msr;\
	sudo ../../RAPL/main "benchmarksRust/$(i)" Rust $(i) $(NTIMES)\

clean:
	echo "Limpo!"
