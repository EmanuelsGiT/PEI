# bm_app_mandelbrot.rb bm_regex_dna.rb bm_so_nbody.rb bm_gc_array.rb bm_fasta.rb bm_fannkuch.rb bm_so_mandelbrot.rb bm_partial_sums.rb bm_vm3_thread_create_join.rb bm_mergesort.rb

NTIMES=10

export NTIMES

i ?= bm_app_mandelbrot.rb 

measure:
	echo Processing $(i);
	sudo modprobe msr;\
	sudo ../../RAPL/main "cd ruby-benchmark-suite && rake bench:file FILE=benchmarks/micro-benchmarks/$(i) && cd .. " Ruby $(i) $(NTIMES)\

clean:
	echo "Limpo!"
