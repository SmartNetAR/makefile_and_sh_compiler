#include <iostream>
#include <test.h>

test::test(/* args */)
{
    std::cout << "hello test" << std::endl;
}

test::~test()
{
  std::cout << "bye test" << std::endl;
}
