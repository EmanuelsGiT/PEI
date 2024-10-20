#!/bin/bash
NTIMES=10

#echo "sleeping 100"
#sleep 100

#Compile sensors wich will be used to calculate cool temperature
cd RAPL
echo "Compiling sensors"
gcc -shared -o sensors.so sensors.c
cd ..

#sleep 10
#Update the temperature value
cd Utils/
python3 temperatureUpdate.py

cd ..

      
echo "Language,Program,PowerLimit,Package,Core,GPU,DRAM,Time,Temperature,Memory" > measurements.csv

# Loop over power limit values
for limit in -1
    do
    echo ""
    echo "______Setting power limit to $limit ________________"
    echo ""
    python3 ./Utils/raplCapUpdate.py $limit ./RAPL/main.c
    cd ./RAPL
    rm sensors.so
    make
    cd ..

    echo "Sleeping 10 seconds"
    sleep 10

    # Java
    # python3 ./Utils/ntimesUpdate.py $NTIMES ./Languages/Java/Makefile
    # cd Languages/Java # cassandra
    # for prog in avrora batik biojava eclipse spring tomcat graphchi jme jython kafka ; #  fop  h2 h2o  luindex lusearch pmd  sunflow  tradebeans tradesoap xalan zxing;
    #    do
    #    make measure i="$prog"
    #    file="measurements.csv"
    #    tail -n +2 "$file" >> ../../measurements_java.csv;
    #    sleep 3
    #    done
    # cd ../../


    #echo "Sleeping 100 seconds"
    #sleep 100
    
    # Python
    python3 ./Utils/ntimesUpdate.py $NTIMES ./Languages/Python/Makefile
    cd Languages/Python # 
    for prog in chameleon docutils html5lib 2to3 tornado_http nbody json_dumps pidigits async_tree django_template ; #   float json_loads   async_tree_eager_io 
        do
        make measure i="$prog"
        file="measurements.csv"
        tail -n +2 "$file" >> ../../measurements_python.csv;
        #make clean
        sleep 5
    done
    cd ../../

    #echo "Sleeping 10 seconds"
    #sleep 10

    # Haskell
    # binary-trees fannkuch-redux fasta k-nucleotide n-body pidigits reverse-complement spectral-norm
#       python3 ./Utils/ntimesUpdate.py $NTIMES ./Languages/Haskell/Makefile
#       cd Languages/Haskell
#       for prog in spectral/sorting real/grep real/compress real/compress2 real/gg real/rsa imaginary/rfib shootout/binary-trees shootout/fannkuch-redux shootout/spectral-norm; #; #   
#           do
#           make measure i="$prog"
#           file="measurements.csv"
#           tail -n +2 "$file" >> ../../measurements_haskell.csv;
#           make clean
#           sleep 2
#       done
#       cd ../../

    #echo "Sleeping 10 seconds"
    #sleep 10

    # tratar de Ruby
    # python3 ./Utils/ntimesUpdate.py $NTIMES ./Languages/Ruby/Makefile
    # cd Languages/Ruby
    # for prog in app_objects app_fib app_mandelbrot app_sieve app_strconcat app_tak app_tarai app_whileloop; #; #   
    #     do
    #     make measure i="$prog"
    #     file="measurements.csv"
    #     tail -n +2 "$file" >> ../../measurements_ruby.csv;
    #     make clean
    #     sleep 2
    # done
    # cd ../../

    #echo "Sleeping 10 seconds"
    #sleep 10

    # tratar de Go
    # python3 ./Utils/ntimesUpdate.py $NTIMES ./Languages/Go/Makefile
    # cd Languages/Go
    # for prog in app_fib app_mandelbrot app_sieve app_strconcat app_tak app_tarai app_whileloop; #; #   
    #     do
    #     make measure i="$prog"
    #     file="measurements.csv"
    #     tail -n +2 "$file" >> ../../measurements_go.csv;
    #     make clean
    #     sleep 2
    # done
    # cd ../../

    #echo "Sleeping 10 seconds"
    #sleep 10

    # tratar de C
    # python3 ./Utils/ntimesUpdate.py $NTIMES ./Languages/C/Makefile
    # cd Languages/C
    # for prog in app_fib app_mandelbrot app_sieve app_strconcat app_tak app_tarai app_whileloop; #; #   
    #     do
    #     make measure i="$prog"
    #     file="measurements.csv"
    #     tail -n +2 "$file" >> ../../measurements_c.csv;
    #     make clean
    #     sleep 2
    # done
    # cd ../../

    #echo "Sleeping 10 seconds"
    #sleep 10

    # tratar de C++
    # python3 ./Utils/ntimesUpdate.py $NTIMES ./Languages/C++/Makefile
    # cd Languages/C++
    # for prog in app_fib app_mandelbrot app_sieve app_strconcat app_tak app_tarai app_whileloop; #; #   
    #     do
    #     make measure i="$prog"
    #     file="measurements.csv"
    #     tail -n +2 "$file" >> ../../measurements_cpp.csv;
    #     make clean
    #     sleep 2
    # done
    # cd ../../


    
done

cd RAPL/
make clean
cd ..

#sudo reboot
