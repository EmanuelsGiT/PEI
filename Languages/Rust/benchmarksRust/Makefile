SRC_FILES = 100door.rs Ackermann.rs fibonacci.rs hailstone.rs mergeSort.rs N-Queens.rs quickSort.rs removeDuplicateElements.rs SieveOfEratosthenes.rs

EXEC_FILES = $(SRC_FILES:.rs=)

all: $(EXEC_FILES)

$(EXEC_FILES): %: %.rs
	rustc $<

clean:
	rm -f $(EXEC_FILES)
