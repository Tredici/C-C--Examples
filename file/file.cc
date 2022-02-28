#include <iostream>
#include <fstream>
#include <string>
using namespace std;


int main(int argc, char const *argv[])
{
    ifstream fin("in.txt");
    string name;
    fin >> name;
    cout << "Hello " << name << endl;
     
    return 0;
}
