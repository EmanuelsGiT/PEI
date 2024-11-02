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

      
echo "Language,Program,PowerLimit,Package,Core,GPU,DRAM,Time,Temperature,Memory" > measurements_fibonacci_c.csv

# Loop over power limit values
for limit in 1 2 3 4 5 6 7 8 9 10 15 20 -1
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

    #echo "Sleeping 100 seconds"
    #sleep 100
    
    # Fibonacci
    python3 ./Utils/ntimesUpdate.py $NTIMES ./Fibonacci/Makefile
    cd Fibonacci 
    make
    file="measurements.csv"
    tail -n +2 "$file" >> ../measurements_fibonacci_c.csv;
    #make clean
    sleep 5
    cd ../
    
done

cd RAPL/
make clean
cd ..

#sudo reboot
