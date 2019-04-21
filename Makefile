SOURCES := $(wildcard *.cpp)

OBJECTS := $(subst .cpp,.o,$(SOURCES))
# OBJECTS := test.o main.o

#ejecutable: test.o main.o
ejecutable: $(OBJECTS)  # utilizando una variable
	g++ -o $@ $^

# reemplazar $^ por main.o o $^ por $(OBJECTS)

%.o: %.cpp
	g++ -o $@ -c $^ -I.
#	g++ -o bin/$@ -c $^ -I.

#test.o: test.cpp
#	g++ -c test.cpp -I.

#main.o: main.cpp
#	g++ -c main.cpp -I.
info:
	$(info $(SOURCES))
	$(info $(OBJECTS))
# regla cuando todos los .o a partir de sus .cpp asumiendo que todos los .o se genera a partir de su cpp
# % para cualquier
# $@ todos los %.o ( lo que está a la izquierda de los dos puntos:)
# $^ todos los %.cpp ( lo que está a la derecha de los dos puntos:)

#subst reemplaza los .cpp por .o
#info imprime en pantalla la variable SOURCE
#wilcard se utiliza como comodín para almacenar en la variable los archivos tal *.