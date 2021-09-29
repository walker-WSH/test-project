// test.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include "lib.hpp"
#include "LIB2/libIgnore.hpp"
#include <Windows.h>

int main()
{
	f1(1);
	f1(-99);

	printf("start sleep %u \n", GetTickCount() / 1000);
	Sleep(2000);
	printf("end sleep %u \n", GetTickCount() / 1000);

	return 0;
}