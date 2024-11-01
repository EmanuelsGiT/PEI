
NTIMES=10

export NTIMES

measure:
	echo Processing Fibonacci;\
	sudo modprobe msr;\
	# sudo ../RAPL/main "python3 fibonacci.py" Python Fibonacci $(NTIMES)
	sudo ../RAPL/main "./a.out" C Fibonacci $(NTIMES)

clean:
	echo "Limpo!"
