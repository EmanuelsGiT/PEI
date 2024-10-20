# blackscholes canneal fluidanimate streamcluster swaptions

NTIMES=10

export NTIMES

i ?= blackscholes 

measure:
	echo Processing $(i);
	sudo modprobe msr;\
	sudo ../../RAPL/main "java -jar dacapo-23.11-chopin.jar $(i)" Java $(i) $(NTIMES)\

clean:
	echo "Limpo!"
