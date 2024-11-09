
NTIMES=10

export NTIMES

i ?= default? 

measure:
	echo Processing $(i);
	sudo modprobe msr;\
	sudo ../../RAPL/main "command $(i)" CPP $(i) $(NTIMES)\

clean:
	echo "Limpo!"
