CXX = g++

RM = del /Q /F

CXXFLAGS = -Wall -Wextra -c -I include/

run: pythagoras.a main.o pythagoras.o
	$(CXX) $? -o $@

pythagoras.a: pythagoras.o
	ar cr $@  $?

pythagoras.o: src/pythagoras.cpp include/pythagoras.h
	$(CXX) $(CXXFLAGS) src/pythagoras.cpp -o $@

main.o: src/main.cpp include/pythagoras.h
	$(CXX) $(CXXFLAGS) src/main.cpp -o $@

clean:
	$(RM) *.o run *.a