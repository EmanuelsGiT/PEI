# blackscholes canneal fluidanimate streamcluster swaptions

NTIMES=10

export NTIMES

i ?= blackscholes 

measure:
	echo Processing $(i);
	sudo modprobe msr;\
	parsec-benchmark/bin/parsecmgmt -a build -p  $(i)
	sudo ../../RAPL/main "parsec-benchmark/bin/parsecmgmt -a run -p $(i)" C $(i) $(NTIMES)\

clean:
	echo "Limpo!"
