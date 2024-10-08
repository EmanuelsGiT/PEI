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
for limit in -1 5
    do
    echo ""
    echo "______Setting power limit to $limit ________________"
    echo ""
    python3 ./Utils/raplCapUpdate.py $limit ./RAPL/main.c
    #Make RAPL lib
    cd ./RAPL
    rm sensors.so
    make
    cd ..

    echo "Sleeping 10 seconds"
    sleep 10

    echo "
    # tratar de Python (NAO FUNCIONA FALAR COM PROF)
    echo "activate python 3.6 "
    python3 ./Utils/ntimesUpdate.py $NTIMES ./Languages/Python_3.6/Makefile
    cd Languages/Python_3.6 # 
    for prog in chameleon docutils html5lib 2to3 tornado_http nbody json_dumps pidigits async_tree django_template ; #   float json_loads   async_tree_eager_io 
        do
        make measure i="$prog"
        file="measurements.csv"
        tail -n +2 "$file" >> ../../measurements_python36.csv;
        #make clean
        sleep 5
    done
    

    cd ../../

    echo "Sleeping 10 seconds"
    sleep 10
    "

        # tratar de Python (NAO FUNCIONA FALAR COM PROF)
    python3 ./Utils/ntimesUpdate.py $NTIMES ./Languages/Python_3.8/Makefile
    cd Languages/Python_3.8 # 
    echo "activate python 3.8!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11 "
    #conda activate py38
    for prog in chameleon docutils html5lib 2to3 tornado_http nbody json_dumps pidigits async_tree django_template ; #   float json_loads   async_tree_eager_io 
        do
        make measure i="$prog"
        file="measurements.csv"
        tail -n +2 "$file" >> ../../measurements_python38.csv;
        #make clean
        sleep 5
    done
    conda deactivate
    cd ../../
    

done

cd RAPL/
make clean
cd ..

#sudo reboot
