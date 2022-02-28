#include <iostream>
using namespace std;

// somma due numeri e restituisce il risultato
int somma(int a, int b)
{
    return a + b;
}

// duplica tutti i valori dell'array fornito
void dup_array(int *p, int n)
{
    for(int i=0; i<n; i++)
    {
        p[i] = p[i]*2;
    }
}

void stampa(int *par, int c)
{
    for (int i = 0; i != c; ++i)
    {
        cout << par[i] << ' ';
    }
    cout << endl;
}

int main(int argc, char const *argv[])
{
    int array[] = {1,2,3,4,5,6,7,8,9,10,11,12,13};
    int lenght = sizeof(array)/sizeof(*array);
    // qui dovrai chiamare la funzion
    stampa(array, lenght);
    dup_array(array, lenght);
    stampa(array, lenght);

    return 0;
}
