all: show_env
	gcc -Wall -o copr-c-test copr-test.c
	g++ -Wall -o copr-cpp-test copr-test.cpp

install:
	install copr-c-test /usr/bin
	install copr-cpp-test /usr/bin
	ldd /usr/bin/copr-c-test
	ldd /usr/bin/copr-cpp-test

uninstall:
	rm /usr/bin/copr-c-test /usr/bin/copr-cpp-test

clean:
	rm copr-c-test copr-cpp-test

show_env:
	gcc --version
	g++ --version
	make --version
	cmake --version
	clang --version
	clang++ --version
	llvm-config --version

