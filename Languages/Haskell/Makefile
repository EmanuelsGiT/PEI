NTIMES=10

export NTIMES

i ?= pidigits 

measure:
	echo Processing $(i);
	sudo modprobe msr;\
	sudo ../../RAPL/main "sudo make -C nofib/$(i)" Haskell $(i) $(NTIMES)\

clean:
	echo "Limpo!"

