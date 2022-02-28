#include <iostream>
using namespace std;


int main(int argc, char const *argv[])
{
    char str[] = "Ciao!";
    int array[] = {1,2,3,4,5,6,7,8,9,10};
    
    cout << "array[1] = " << *(array + 100) << endl;

    return 0;
}
