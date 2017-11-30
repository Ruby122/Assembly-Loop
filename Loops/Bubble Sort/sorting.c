#include <stdio.h>
long a[10] = {3, 2, 4, 5, 1, 9,7, 10, 13, 17};
void bubble(long*, long);
int main(){
	long count = 10;
	bubble(a, count);
	if(a[0] == 1){
		printf("Y");
	}	
}

void bubble(long *data, long count)  
{
 long i, last; 
 for (last = count - 1; last > 0; last--)  
  { 
    for (i = 0; i < last; i++) 
    if (data[i+1] < data[i])  
     { 
      /* Swap adjacent elements */ 
      long t = data[i+1];
      data[i+1] = data[i];
      data[i] = t;
     } 
   } 
} 
