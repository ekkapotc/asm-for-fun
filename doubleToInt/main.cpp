#include <iostream>


int main(int argc,char * argv []){
	double input = 12.3;
	int result;

	//cast via truncation a double to an int

	__asm__ __volatile__ (
	"movsd %[val], %%xmm0\n\t"
    	"cvttsd2si %%xmm0, %%eax\n\t"
	"movl %%eax, %[res]\n\t"
    	: [res]"=m"(result)
    	: [val]"m"(input)
    	: "xmm0", "eax"
	);

	std::cout << "result = " << result << std::endl;
	return 0;
}
