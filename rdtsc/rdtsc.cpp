#include <iostream>

int main(){
	unsigned int low, high;
	asm volatile("rdtsc" 
			: "=a" (low),
			  "=d" (high)
		    );
	uint64_t tsc = ((uint64_t)high << 32) | low;
	std::cout << "TSC : " << tsc << std::endl;
	return 0;
}
