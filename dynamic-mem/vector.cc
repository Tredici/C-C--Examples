#include <iostream>
using namespace std;

/**
 * @brief vector
 * 
 * @param argc 
 * @param argv 
 * @return int 
 * 
 * vector (vettore)
 * lista
 * albero binario
 */

struct vector
{
    // lunghezza dell'array
    int len;
    // puntatore ad array di int
    int *p;

    /**
     * costruttore - stesso nome della struttura
     *  Viene chiamato in automatico quando la
     *  variabile viene creata
     */
    vector()
    {
        len = 0;
        p = nullptr;
    }

    /**
     * distruttore - stesso nome della struttura
     * con la tilde (~) davanti
     *  Viene chiamato in automatico quando la
     *  variabile viene distrutta (termina la
     *  funzione dove viene creata o, se creata
     *  con new, quando ci viene chiamato sopra
     *  delete)
     */
    ~vector()
    {
        if (len > 0)
        {
            delete p;
        }
    }

    void stampa()
    {
        cout << "[ ";
        for (int i = 0; i != len; ++i)
        {
            cout << p[i] << " ";
        }
        cout << "]" << endl;
    }

    /**
     * Aumenta la lunghezza dell'array p di 1
     * e mette n in coda (in ultima posizione)
     * all'array
     * 
     * @param n un semplice intero
     */
    void push_back(int n)
    {
        // prima che la funzione
        // venga chiamata ci sono
        // due possibilità:
        //  1. len == 0 e p == nullptr
        //      che è vero all'inizio
        //      perché l'array è vuoto
        //  2. len > 0 e p punta a un
        //      array di len elementi
        if(len<=0)
        {
            // crea un array di un elemento
            p = new int[1];
            // assegna n al primo
            // elemento dell'array
            p[0] = n;
            // aggiorna la lunghezza dell'array
            len = 1;
        }
        else
        {
            int *tmp;
            // bisogna allungare l'array
            // crei prima un array luno len+1
            tmp = new int[len+1];
            // poi devi copiarci i vecchi valori
            for (int i=0; i<len; i++)
            {
                tmp[i] = p[i];
            }
            // poi aggiungere il nuovo elemento
            // nell'ultima posizione del nuovo
            // array
            tmp[len] = n;
            // aggiorni la dimensione dell'array
            len = len+1;
            // distruggi il vecchio array
            delete p;
            // e sostituisci il nuovo
            p = tmp;
        }
    }

    /**
     * Se il vector è vuoto (len==0) non fa nulla.
     * Altrimenti (len>0) riduce la dimensione del
     * vector di 1 rimuovendo l'ultimo elemento.
     *
     * È necessario ridurre la dimensione dell'array
     * per ottenere questo risultato? Oppure si può
     * ottenerlo in maniera più efficiente?
     */
    void pop_back()
    {
        ;
    }
};

/**
 * Il programma chiede ciclicamente un intero n all'utente:
 *  -se n è diverso da 0 lo aggiunge al vector
 *  -se n vale 0 allora stampa i valori raccolti e termina
 */
int main(int argc, char const *argv[])
{
    vector numbers;
    int n;

    cout << "Inserisci un numero n:" << endl;
    cout << "\tn>0: n viene inserito nel vector" << endl;
    cout << "\tn<0: l'ultimo elemento viene rimosso dal vector" << endl;
    cout << "\tn=0: il ciclo termina" << endl;
    while (true)
    {
        cout << "Dammi n: ";
        cin >> n;
        if (n == 0)
            break; // break serve per uscire dai cicli
        else if (n > 0)
            numbers.push_back(n);
        else
            numbers.pop_back();
    }

    numbers.stampa();
    /* code */
    return 0;
}
