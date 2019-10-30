all: bin/test_1_nocona_O0 bin/test_1_nocona_O3 bin/test_1_ivybridge_O3 bin/test_1_haswell_O3 bin/test_1_skylake-avx512_O3

bin/test_1_nocona_O0: src/test_1.cpp
	g++ -o $@ -march=nocona -O0 $^

bin/test_1_nocona_O3: src/test_1.cpp
	g++ -o $@ -march=nocona -O3 $^

bin/test_1_ivybridge_O3: src/test_1.cpp
	g++ -o $@ -march=ivybridge -O3 $^

bin/test_1_haswell_O3: src/test_1.cpp
	g++ -o $@ -march=haswell -O3 $^

bin/test_1_skylake-avx512_O3: src/test_1.cpp
	g++ -o $@ -march=skylake-avx512 -O3 $^
