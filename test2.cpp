#include "lib.hpp"
#include "class/TestCalss.h"

static void test(int a)
{
	if (a > 0)
	{
		std::cout << "Hello World!\n";
	}
	else {
		std::cout << "Hello World!\n";
	}
}

int main()
{
	f3(1);
	f3(-99);
	
	test(1);
	test(-99);

	char str[] = "test";

	TestCalss test;
	test.f1();
	test.f2(1);
	test.f3(str);

	return 0;
}