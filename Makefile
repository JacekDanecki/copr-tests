all: show_env
	gcc -Wall -o copr-c-test copr-test.c
	g++ -Wall -o copr-cpp-test copr-test.cpp

install:
	install -d ${DESTDIR}/usr/bin
	install copr-c-test ${DESTDIR}/usr/bin
	install copr-cpp-test ${DESTDIR}/usr/bin
	ldd ${DESTDIR}/usr/bin/copr-c-test
	ldd ${DESTDIR}/usr/bin/copr-cpp-test

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

