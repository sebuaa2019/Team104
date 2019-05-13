#include<iostream>
#include<time.h>
using namespace std;
clock_t pre, post;
void Systime() {
	post = clock();
	cout << "stop" << endl;	
}
int main() {
	pre = clock();
	cout << pre<<endl;
	while (1) {
		cout << "run" << endl;
		Systime();
		if ((post - pre) > 1000)
			break;
	}
	Systime();
	system("pause");
}