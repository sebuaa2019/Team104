#include<fstream>
#include<iostream> 

using namespace std;

int main(){
	int num;
	cin>>num;
	fstream file("data.txt",ios::out);
	if(file.is_open()){
		file<<num;
		file.close();
	}
}
