#include <iostream>
#include <string>

using namespace std;

RET_TYPE nome(t1 arg1, t2 arg2, ...)
{
    RET_TYPE ans;
    // fai cose
    
    return ans;
}


string leggi_nome() {
    string s;
    do {
        cout << "Inserisci il tuo nome: ";
        cin >> s;
    } while (s.size() > 10);
    return s;
}

void saluta(string nome) {
    cout << "Ciao " << nome << "!" << endl;
}

int main() {
    string nome = leggi_nome();
    saluta(nome);
    return 0;
}
