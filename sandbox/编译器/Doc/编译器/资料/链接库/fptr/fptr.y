(  !原型:① fptr(②, ③);
功能:运行参数③所指的函数（类似函数指针）。
说明:参数③是一个函数的地址（可以用数组代替间接调用，见举例2），参数②为该函数所需的参数列表，①为该函数的返回值。
注意:
 1.使用该函数时，参数③所指的函数必须是yan的编译器Y2.24及以上版本编译。
 2.调用该库的程序无法通过优化系统优化，这是正常的（不是程序有bug）。
举例1:
#include<fptr.y>

int fun(int a, int b)//被fptr函数调用的函数
{
 return a + b;
}

void main()
{
 int a = 3, b = 7;

 SetScreen(1);
 printf("%d + %d = %d\n", a, b, fptr(a, b, fun));
 getchar();
}
举例2:
#include<fptr.y>

int fun(int a, int b)//被fptr函数调用的函数
{
 return a + b;
}

void ff(int a, int b, long f)
{
 printf("%d + %d = %d\n", a, b, fptr(a, b, #attr(f, 1, 2)));//f有2个参数且有返回值
/*
 * 因为f不是函数，所以只能用#attr命令临时修改f的属性，使其转换为函数。#attr(f, ①, ②)，①:是否有返回值,0:没有 1:有 ②:参数个数。这两个参数最好不要缺省！
 * 注意#attr的用法，参见帮助。
 *
 */
}

void main()
{
 int a = 3, b = 7;

 SetScreen(1);
 ff(a, b, fun);
 getchar();
}   �>	 㩳	              fptr                �  8	   �   �  	 ?