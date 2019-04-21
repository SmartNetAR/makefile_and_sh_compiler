
g++ -c -o bin/main.o main.cpp -I. ;
# clases con -c ( sin linkar )
g++ -c -o bin/test.o test.cpp -I. ;

g++ -o bin/ejecutable bin/main.o bin/test.o ;

chmod -X bin/ejecutable #755 == -X

./bin/ejecutable