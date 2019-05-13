#include<iostream>
#include<string>
#include<fstream>
using namespace std;
char key[13][8] = { "const","int","char","void","if","while","switch","case","default","scanf","printf","return","main" };
char ksy[13][10] = { "constsy","intsy", "charsy", "voidsy", "ifsy", "whilesy", "switchsy", "casesy", "defaultsy", "scanfsy", "printfsy", "returnsy" ,"mainsy" };
char ch;
string symbol;
//char chengxu[2024];
string chengxu;
//char *p = &chengxu[0];
char *p;
void errormsg(int k) {
	char err[58][20] = { "'!' inlegal symbol ","single in ' '      ","stringcon limited  ","undefine symbol    " };
	cout << err[k];
}
void errorop(int k) {
	if (k = 0) {
		symbol = "noassign";
	}
	if (k = 1) {

	}
}
void error(int k) {//需要参数返回，确定错误类型
	errormsg(k);

}
void readf() {
	/*string filename;
	cout << "输入测试程序的文件源：";
	cin >> filename;*/
	fstream file("test.txt", ios::in);
	if (file.is_open()) {
		/*while (!file.eof()){
			file.getline(chengxu, 2024);
			if (file.tellg() > 0)
				cout << chengxu;
		}*/
		file.seekg(0, ios::end);
		chengxu.resize(file.tellg());
		file.seekg(0, ios::beg);
		file.read(&chengxu[0], chengxu.size());
		file.close();
	}
	p = &chengxu[0];
	ch = *p;

}
void nextch() {
	p++; ch = *p;
}
void options() {//处理正负号

}
void insymbol() {
	//int k;
	/*if (ch == ' ' || ch == '\n' || ch == '\t')
		while (ch == ' ' || ch == '\n' || ch == '\t')
			nextch();	*/
	while (ch == ' ' || ch == '\n' || ch == '\t')
		nextch();
	if ((ch >= 'a'&&ch <= 'z') || (ch >= 'A'&&ch <= 'Z')) {
		int i = 0, j;
		char token[10] = { "\n" };
		char id[8] = { "\n" };
		while ((ch >= 'a' && ch <= 'z') || (ch >= 'A'&&ch <= 'Z') || (ch >= '0'&&ch <= '9') || ch == '_') {
			if (i < 9)
				id[i] = *p;
			token[i] = *p;  i++;
			nextch();
		}
		//k = 0; 
		symbol = "IDSY";
		for (j = 0; j < 32; j++) {
			if (!strcmp(id, key[j])) { symbol = ksy[j];
			//k = j + 1; 
			break; }

		}
		//cout << k << "\t\t" << symbol << "\t\t" << token << endl;
		cout << "\t\t" << symbol << "\t\t" << token << endl;
	}
	else if (ch >= '0'&&ch <= '9') {//无符号整数
		int num = 0;
		if (ch == '0') {
			nextch();
		}
		if (ch >= '1'&&ch <= '9') {
			while ((ch >= '0' && ch <= '9') && *p) {
				num = 10 * num + ch - '0';
				nextch();
			}
		}
		//回溯到前面的insymbol如果为‘=’和‘（’则进行option判断
		//语法分析时再进行option的判断吧
		symbol = "INTSY";// k = 33;
		cout  << "\t\t" << symbol << "\t\t" << num << endl;
		//cout << k << "\t\t" << symbol << "\t\t" << num << endl;
	}
	else if (ch == '<') {
		nextch();
		if (ch == '=') {
			symbol = "lesequ";// k = 35; 
			cout  << "\t\t" << symbol << "\t\t" << "<=" << endl;
			//cout << k << "\t\t" << symbol << "\t\t" << "<=" << endl;
			nextch();
		}
		else {
			symbol = "less";// k = 36;
			cout  << "\t\t" << symbol << "\t\t" << "<" << endl;
			//cout << k << "\t\t" << symbol << "\t\t" << "<" << endl;
		}
	}
	else if (ch == '>') {
		nextch();
		if (ch == '=') {
			symbol = "greequ"; //k = 37; cout << k << "\t\t" << symbol << "\t\t" << ">=" << endl;
			cout << "\t\t" << symbol << "\t\t" << ">=" << endl;
			nextch();
		}
		else {
			symbol = "greater"; //k = 38; cout << k << "\t\t" << symbol << "\t\t" << ">" << endl;
			cout  << "\t\t" << symbol << "\t\t" << ">" << endl;
		}
	}
	else if (ch == '!') {
		nextch();
		if (ch == '=') {
			symbol = "noassign";// k = 0; cout << k << "\t\t" << symbol << "\t\t" << "!=" << endl;
			cout << "\t\t" << symbol << "\t\t" << "!=" << endl;
			nextch();
		}
		else
			error(0);//这里是0号错误
	}
	else if (ch == '=') {
		symbol = "assign"; //k = 47; cout << k << "\t\t" << symbol << "\t\t" << "=" << endl;
		cout  << "\t\t" << symbol << "\t\t" << "=" << endl;
		nextch();
		if (ch == '=') {
			symbol = "become";// k = 0; cout << k << "\t\t" << symbol << "\t\t" << "==" << endl;
			cout << "\t\t" << symbol << "\t\t" << "==" << endl;
		}
	}
	else if (ch == ':') {
		/*nextch();
		if (ch == '='){
			symbol = "becomes"; k = 34; cout << k << "\t\t" << symbol << "\t\t" << ":=" << endl;
			nextch();
		}
		else{
			symbol = "colon"; k = 46; cout << k << "\t\t" << symbol << "\t\t" << ":" << endl;
		}*/
		symbol = "colon";// k = 46; cout << k << "\t\t" << symbol << "\t\t" << ":" << endl;
		cout << "\t\t" << symbol << "\t\t" << ":" << endl;
		nextch();
	}
	else if (ch == ',') {
		nextch();
		symbol = "comma";// k = 44; cout << k << "\t\t" << symbol << "\t\t" << "," << endl;
		cout  << "\t\t" << symbol << "\t\t" << "," << endl;
	}
	else if (ch == ';') {
		nextch();
		symbol = "semi"; //k = 45; cout << k << "\t\t" << symbol << "\t\t" << ";" << endl;
		cout << "\t\t" << symbol << "\t\t" << ";" << endl;
	}
	else if (ch == '(') {
		nextch();
		symbol = "lpar"; //k = 42; cout << k << "\t\t" << symbol << "\t\t" << "(" << endl;
		cout  << "\t\t" << symbol << "\t\t" << "(" << endl;
	}
	else if (ch == ')') {
		nextch();
		symbol = "rpar"; //k = 43; cout << k << "\t\t" << symbol << "\t\t" << ")" << endl;
		cout  << "\t\t" << symbol << "\t\t" << ")" << endl;
	}
	else if (ch == '[') {
		nextch();
		symbol = "lmidpar"; //k = 42; cout << k << "\t\t" << symbol << "\t\t" << "[" << endl;
		cout  << "\t\t" << symbol << "\t\t" << "[" << endl;
	}
	else if (ch == ']') {
		nextch();
		symbol = "rmidpar";// k = 43; cout << k << "\t\t" << symbol << "\t\t" << "]" << endl;
		cout  << "\t\t" << symbol << "\t\t" << "]" << endl;
	}
	else if (ch == '{') {
		nextch();
		symbol = "llarpar";// k = 42; cout << k << "\t\t" << symbol << "\t\t" << "{" << endl;
		cout  << "\t\t" << symbol << "\t\t" << "{" << endl;
	}
	else if (ch == '}') {
		nextch();
		symbol = "rlarpar"; //k = 43; cout << k << "\t\t" << symbol << "\t\t" << "}" << endl;
		cout  << "\t\t" << symbol << "\t\t" << "}" << endl;
	}
	else if (ch == '+') {
		nextch();
		symbol = "plus"; //k = 39; cout << k << "\t\t" << symbol << "\t\t" << "+" << endl;
		cout  << "\t\t" << symbol << "\t\t" << "+" << endl;
	}
	else if (ch == '-') {
		nextch();
		symbol = "minus"; //k = 40; cout << k << "\t\t" << symbol << "\t\t" << "-" << endl;
		cout  << "\t\t" << symbol << "\t\t" << "-" << endl;
	}
	else if (ch == '*') {
		nextch();
		symbol = "star";// k = 41; cout << k << "\t\t" << symbol << "\t\t" << "*" << endl;
		cout  << "\t\t" << symbol << "\t\t" << "*" << endl;
	}
	else if (ch == '/') {
		nextch();
		if (ch == '*') {
			/*do{
				while (ch != '/'){
					nextch();
				}
				p--; ch = *p;
			} while (ch != '*');*/
			int flag = 1;
			while (flag) {
				nextch();
				if (ch == '/') {
					p--; ch = *p;
					if (ch == '*') {
						flag = 0; nextch(); nextch();
					}
					else {
						nextch(); nextch();
					}
				}
			}
		}
		else if (ch == '/') {
			while (ch != '\n') {
				nextch();
			}
			nextch();
		}
		else { symbol = "divi";  cout  << "\t\t" << symbol << "\t\t" << "/" << endl; }
	}
	else if (ch == '\'') {
		char temp;
		nextch();
		if ((ch >= 'a'&&ch <= 'z') || (ch >= 'A'&&ch <= 'Z') | (ch >= '0'&&ch <= '9') || ch == '_' || ch == '+' || ch == '-' || ch == '*' || ch == '/') {
			temp = ch;
			nextch();
			if (ch != '\'') {
				error(1);


				/*error(1);//这里是1号错误
				while (ch != '\''){
					nextch();
					if (ch == '\n'){
						break; error(4);//这是4号错误
					}
				}*/
			}
			else if (ch == '#') {

			}
			else {
				symbol = "charcon";
				cout << "\t\t" << symbol << "\t\t" << "'" << temp << "'" << endl;
				nextch();
			}
		}
	}
	else if (ch == '"') {
		//char* temp ;
		char temp[100] = {"\n"};
		int i = 0;
		nextch();
		while (ch != '"') {
			if (ch == 32 || ch == 33 || (ch >= 35 && ch <= 126)) {
				temp[i] = ch; i++;
				nextch();
				
			}
			else {
				break;
				error(2);//这里是2号错误
			}
			
			/*if (ch == 32 || ch == 33 || (ch >= 35 && ch <= 126)){
				temp[i] = ch; i++;
				nextch();
				symbol = "stringcon";
				cout << "\t\t" << symbol << "\t\t" << """ << temp << """ << endl;
			}
			else{
				break;
				error(2);//这里是2号错误
			}*/
		}
		symbol = "stringcon";
		cout << "\t\t" << symbol << "\t\t" << '"' << temp << '"' << endl;
		nextch();
	}
	else {
		error(3);//这里是3号错误	
		nextch();
	}
}
int main() {
	readf();
	int number = 0;
	cout << chengxu << endl;
	/*number = ch;
	cout << ch <<number<< endl;
	while (ch != '#') {
		nextch(); number = ch;
		cout << ch << number<<endl;
	}*/

	while (ch != '#') {
		cout << number<<" ";
		number++;
		insymbol();
		/*char *q = &chengxu[0];
		q++; ch = *q; */
		//cout << ch << endl;
	}
	/*while (ch != '#') {
		cout << ch ;
		nextch();

	}*/
	system("pause");
	return 0;
}