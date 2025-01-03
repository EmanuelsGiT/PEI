echo "Setting up dependencies..."

# echo "#### Essenctials"
# sudo apt install build-essential

# echo "#### Installing Git"
# sudo apt install git

# echo "#### Installing CMake"
# sudo apt install cmake 

# echo "#### Installing lm-sensors"
# sudo apt install lm-sensors 

# echo "### Installing Sloc Cloc and Code (scc)"
# sudo snap install scc 

echo "#### Installing Powercap"
git clone https://github.com/powercap/powercap.git
cd powercap
mkdir _build
cd _build
cmake ..
make
sudo make install

cd ../../
 
# echo "#### Installing package config"
# sudo apt install pkg-config 

echo "#### Installing Raplcap"
git clone https://github.com/powercap/raplcap.git
cd raplcap 
mkdir _build
cd _build
cmake ..
make
sudo make install
 
# cd ../../

# echo "#### Installing Python"
# sudo apt install python3 python3-pip

# echo "#### Installing Python Benchmark"
# sudo pip install pyperformance --break-system-packages

# echo "#### Installing Haskell"
# sudo apt install ghc cabal-install 

# echo "#### Installing Haskell Benchmark"
# cd ./Languages/Haskell
# git clone https://gitlab.haskell.org/ghc/nofib.git
# cd ../../

# echo "#### Installing Java"
# sudo apt install default-jdk

# echo "#### Installing Java Benchmark"
# cd ./Languages/Java
# wget https://download.dacapobench.org/chopin/dacapo-23.11-chopin.zip
# unzip dacapo-23.11-chopin.zip
# cd ../../
 
# echo "#### Installing C Benchmark"
# cd ./Languages/C
# git clone https://github.com/bamos/parsec-benchmark.git
# cd ../../

# echo "#### Installing Cpp Benchmark"
# cd ./Languages/Cpp
# git clone https://github.com/bamos/parsec-benchmark.git
# cd ../../


# echo "#### Installing Ocaml Benchmark"
# cd ./Languages/Ocaml
# git clone https://github.com/ocaml-bench/sandmark
# cd ../../


# echo "#### Installing Ruby"
# sudo apt install ruby 


# echo "#### Installing Ruby Benchmark"
# cd ./Languages/Ruby
# git clone https://github.com/acangiano/ruby-benchmark-suite
# cd ../../


# echo "#### Installing Swift Benchmark"
# cd ./Languages/Swift
# git clone https://github.com/swiftlang/swift.git
# cd ../../


# echo "#### Installing Rust"
# sudo apt  install rustc

# echo "#### Installing Rust Benchmark"
# cd ./Languages/Rust/benchmarksRust
# make
# cd ../../../



# echo "#### Installing Go"
# sudo apt install go 
