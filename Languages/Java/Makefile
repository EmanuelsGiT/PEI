# avrora batik biojava cassandra eclipse fop graphchi h2 h2o jme jython kafka luindex lusearch pmd spring sunflow tomcat tradebeans tradesoap xalan zxing

NTIMES=10

export NTIMES

i ?= avrora 

measure:
	echo Processing $(i);
	sudo modprobe msr;\
	sudo ../../RAPL/main "java -jar dacapo-23.11-chopin.jar $(i)" Java $(i) $(NTIMES)\

clean:
	echo "Limpo!"

