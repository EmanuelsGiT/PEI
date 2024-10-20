# echo "Setting up dependencies..."
# 
# echo "#### Installing Base-devel"
# sudo pacman -S base-devel --noconfirm
# 
# echo "#### Installing yay"
# sudo pacman -S yay --noconfirm
# 
# echo "#### Installing Git"
# sudo pacman -S git --noconfirm
# 
# echo "#### Installing CMake"
# sudo pacman -S cmake --noconfirm
# 
# echo "#### Installing lm-sensors"
# sudo pacman -S lm_sensors --noconfirm

# echo "### Installing Sloc Cloc and Code (scc)"
# git clone https://github.com/boyter/scc.git
# cd scc
# go build
# sudo cp scc /usr/local/bin/
# cd ..

# echo "#### Installing Powercap"
# git clone https://github.com/powercap/powercap.git
# cd powercap
# mkdir _build
# cd _build
# cmake ..
# make
# sudo make install

# cd ..
# cd ..

# echo "#### Installing package config"
# sudo pacman -S pkgconf --noconfirm

# echo "#### Installing Raplcap"
# git clone https://github.com/powercap/raplcap.git
# cd raplcap 
# mkdir _build
# cd _build
# cmake ..
# make
# sudo make install

# cd ..
# cd ..
# 
# echo "#### Installing Python"
# sudo pacman -S python --noconfirm
# 
# echo "#### Installing Python Benchmark"
# yay -S python-pyperformance --noconfirm
# 
# echo "#### Installing Haskell"
# sudo pacman -S ghc --noconfirm
#git clone https://gitlab.haskell.org/ghc/nofib.git

# 
# echo "#### Installing Haskell Benchmark"
# git clone https://github.com/ghc/nofib.git
# 
# echo "#### Installing Java"
# sudo pacman -S jdk-openjdk --noconfirm
# 
#echo "#### Installing Java Benchmark"
#cd ./Languages/Java
#wget https://download.dacapobench.org/chopin/dacapo-23.11-chopin.zip
#cd ../../

# echo "#### Installing C"
# sudo pacman -S gcc --noconfirm
# 
# echo "#### Installing C Benchmark"
# 
# 
# echo "#### Installing Go"
# sudo pacman -S go --noconfirm
# 
# echo "#### Installing Ruby"
# sudo pacman -S ruby --noconfirm
# 
# 
# 