#include "lib.hpp"

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

	return 0;
}