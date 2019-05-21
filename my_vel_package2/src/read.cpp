#include<fstream>
#include<iostream> 

using namespace std;

int main(){
	int num;
	while(1){
	fstream file("data.txt",ios::in);
	if(file.is_open()){
		file>>num;
		file.close();
	}
	if(num==0){
		cout<<"read fault"<<endl; 
	}
	else if(num==1){
		cout<<"read true"<<endl;
	}
	else{
		continue;
	}
	fstream file1("data.txt",ios::out);
	if(file1.is_open()){
		file1<<2;
		file1.close();
	}
}
} 
