#include <iostream>

int main(int argc,char * argv[]){
  	double x = 1.44;
	double y;

	__asm__ __volatile__ (
	  "fldl %[_x]\n\t"
	  "fsin \n\t"
	  "fstpl %[_y]\n\t"
	  :[_y]"=m"(y)
 	  :[_x]"m"(x)
	  :"st"
	);

	std::cout << "sin(" << x << ") = " << y << std::endl;
	return 0;
}
