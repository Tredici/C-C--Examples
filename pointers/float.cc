#include <iostream>
using namespace std;


int main(int argc, char const *argv[])
{
    float f = 10.0f;
    float *pf = &f;
    int *pi = (int *)pf;
    
    cout << "f = " << f << endl;
    cout << "*pf = " << pf[0] << endl;
    cout << "*pi = " << *pi << endl;
    cout << "pf = " << pf << endl;
    cout << "pi = " << pi << endl;

    return 0;
}
