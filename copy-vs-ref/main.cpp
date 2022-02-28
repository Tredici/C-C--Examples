#include <iostream>

using namespace std;


void fun(int val)
{
    cout << "fun():  &val = " << &val << endl;
    cout << "fun(): All'inizio      val = " << val << endl;
    val++;
    cout << "fun(): Alla fine di    val = " << val << endl;
}


int main() {
    int val = 0;

    cout << "main(): &val = " << &val << endl;
    cout << "main(): All'inizio     val = " << val << endl;
    fun(val);
    cout << "main(): Alla fine      val = " << val << endl;

    return 0;
}
