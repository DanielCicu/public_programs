#include <iostream>

using namespace std;

int main()
{
    int n=0;
    int fact=1;
    int i=0;
    cout << "BIENVENIDO" << endl;
    cin>>n;
    i=n;
    while(i>0){
        cout<<i<<"*";
        fact=fact*i;
        i=i-1;
    }
    cout<<"="<<n<<"!"<<"="<<fact<<endl;
    return 0;
}
