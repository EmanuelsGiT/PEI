## TP1 - EES

### Authors

- Dinis Estrada (pg53770)

- Emanuel Silva (pg53802)

- Simão Matos (Pg54239)

### Pre requisites

| Language | Benchmark |  |
|----------|----------|----------|
| Java   | Dacapo   | [link download](https://github.com/dacapobench/dacapobench/releases/tag/v23.11-chopin)   |
| Haskell  | NoFib   | [link download](https://gitlab.haskell.org/ghc/nofib)   |
| Python   | Pyperformance   | [link download](https://pypi.org/project/pyperformance/1.10.0/)   |

In the case of Java and Haskell you need to put the programs in the same folder as the Makefile of each Language.

In the case of python you should do `sudo pip install pyperformance==1.10.0`

### Required libraries
1. RAPL
2. lm-sensors
3. Powercap
4. Raplcap

### Setup
In order to install all the required libraries, you should execute the script:

```sudo sh runSetup.sh```

Then, to generate the CSV file, execute the script:

```sh run.sh```

### Meaning of the CSV file columns
* **Language** : Programming language of the Bechmark;
* **Program** : Name of the program running;
* **Package** : Energy consumption of the entire socket- all cores consumption, GPU e external core components;
* **Core** : Energy consumption by all cores and caches;
* **GPU** : Energy consumption by the GPU;
* **DRAM** : Energy consumption by the RAM;
* **Time** : Algorithm's execution time (in ms);
* **Temperature** : Mean temperature in all cores (in ºC);
* **Memory** : Total physical memory assigned to the algorithm execution (in KBytes);
* **PowerLimit** : Power cap of the cores (in Watts)
