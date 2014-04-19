//============================================================================
// Name        : Demo_ArrayAddr.cpp
// Author      : Simba
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <stdio.h>

using namespace std;

int main()
{
    cout << "!!!Hello World!!!" << endl; // prints !!!Hello World!!!

    int a[5] =
        { 1, 2, 3, 4, 5 };
    int *ptr = (int *) (&a + 1); //a的地址 + sizeof(a), a的地址是a的首个元素的地址。
    printf("a: 0x%x\n", a);
    printf("&(a[0]): 0x%x\n", &(a[0]));
    printf("&(a[4]): 0x%x\n", &(a[4]));
    printf("sizeof(a): 0x%x\n", sizeof(a));
    printf("ptr: 0x%x\n", ptr);
    printf("ptr-1: 0x%x\n", ptr - 1);
    printf("0x%x,0x%x\n", *(a + 1), *(ptr - 1));
    //2, 5
    return 0;
}
