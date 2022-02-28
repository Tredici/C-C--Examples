#include <iostream>
using namespace std;


void inc(int x)
{
    ++x;
}
void inc(int *i)
{
    ++(*i);
}
void incRef(int &i)
{
    ++i;
}

int main(int argc, char const *argv[])
{
    int array[] = {1,2,3,4,5,6,7,8,9,10};
    int x = 10;
    int *p = &x;
    int *q = p;

    cout << "x = " << x << endl;
    cout << "x = " << *p << endl;
    cout << "x = " << *q << endl;
    
    inc(x);
    cout << "inc(x): " << x << endl;
    inc(&x);
    cout << "inc(&x): " << x << endl;
    incRef(x);
    cout << "incRef(x): " << x << endl;

    /* code */

    return 0;
}
