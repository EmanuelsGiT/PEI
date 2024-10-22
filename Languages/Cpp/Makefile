# facesim swaptions x264

NTIMES=10

export NTIMES

i ?= facesim 

measure:
	echo Processing $(i);
	sudo modprobe msr;\
	sudo ../../RAPL/main "parsec-benchmark/bin/parsecmgmt -a build -p  $(i)" CPP $(i) $(NTIMES)\

clean:
	echo "Limpo!"
