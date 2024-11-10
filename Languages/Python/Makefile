# avrora batik biojava cassandra eclipse fop graphchi h2 h2o jme jython kafka luindex lusearch pmd spring sunflow tomcat tradebeans tradesoap xalan zxing

NTIMES=1

export NTIMES

i ?= 2to3 

measure:
	echo Processing $(i);\
	sudo modprobe msr;\
	sudo ../../RAPL/main "pyperformance run -b $(i)" Python $(i) $(NTIMES)\

clean:
	rm -r venv/

