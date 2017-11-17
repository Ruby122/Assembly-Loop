long sum = 0, y = 200;
long add (long *, long);
long main(){
	long x = 100;
	sum = add(&x, y);
	return sum;
}
long add(long* a, long b){
	long t = 0;	
	while(b >= *a){
		t += *a;
		*a++;
	}
	return t;
}
