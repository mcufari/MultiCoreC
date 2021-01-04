#include <omp.h>
#include <stdio.h>

static int num_steps = 1000000;
double step;

int main(){
	int i;
	double x, sum, pi;
	step = 1.0 /(double)(num_steps);
	sum = 0.0;

#pragma omp parallel for private(x) reduction(+:sum)
	for(i = 0; i < num_steps; i++){
		x = (i+0.5)*step;
		sum += 4.0/(1.0+x*x);
	}
	pi = sum*step;
	printf("The value of pi is: %f\n", pi);
}
