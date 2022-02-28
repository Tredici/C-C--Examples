#include <iostream>

using namespace std;

int somma(int, int);
double somma(double, double);

int main()
{
    
    cout << somma(1,2) << endl;
    cout << somma(0.1,0.2) << endl;

    return 0;
}

int somma(int a, int b)
{
    return a+b;
}

double somma(double a, double b)
{
    return a+b;
}

