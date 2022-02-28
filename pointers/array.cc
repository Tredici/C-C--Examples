#include <iostream>
using namespace std;


int main(int argc, char const *argv[])
{
    char str[] = "Ciao!";
    int array[] = {1,2,3,4,5,6,7,8,9,10};
    
    cout << "str[] = " << str << endl;
    cout << "Saluti = " << "Persona"[1] << endl;
    cout << "str[1] = " << *(str + 1) << endl;
    cout << "array[1] = " << array[1] << endl;
    cout << "array[1] = " << 1[array] << endl;
    cout << "array[1] = " << *(array + 1) << endl;

    /* code */

    return 0;
}
