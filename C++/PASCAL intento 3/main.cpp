#include <iostream>
#include <stdio.h>
#include <wchar.h>
#include <locale.h>
#include <stdlib.h>
using namespace std;

int main()
{
    setlocale(LC_ALL, "");
    int gra=0;
    int rep=0;
    int c=0;
    int i=0;
    int fact1=0;
    int fact2=0;
    int fact3=0;
    int term=0;
    cout << "BIENVENIDO"<<endl<< "Inserte el grado de su binomio, se mostrará el triángulo de Pascal correspondiente hasta ese grado (para que funcione el programa presione ENTER)"<< endl<<"Grado: ";
    cin>>gra;
    gra=gra+1;
    while(rep<gra){
        term=0;
        while(term<=rep){
            fact1=1;
            i=rep;
            while(i>0){
                fact1=fact1*i;
                i=i-1;
            }
            fact2=1;
            i=term;
            while(i>0){
                fact2=fact2*i;
                i=i-1;
            }
            fact3=1;
            i=rep-term;
            while(i>0){
                fact3=fact3*i;
                i=i-1;
            }
            c=fact1/(fact2*fact3);
            cout<<c<<" | ";
            term=term+1;
        }
        rep=rep+1;
        cout<<endl;
    }
    cout<<"Ha finalizado correctamente el programa.";
    return 0;
}
