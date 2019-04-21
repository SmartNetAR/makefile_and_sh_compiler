#include <iostream>
#include <test.h>

int main () {

    std::cout << "hello world" << std::endl ;
    test *t = new test() ;
    delete t ;

    return 0 ;
}