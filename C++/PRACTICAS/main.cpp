#include <iostream>

using namespace std;

int main()
{
    int num=9;
    int contador=9;
    do{
        cout<<num<<endl;
        num=num+1;
    }while(num<contador);

    while(num<contador){
        cout<<num<<endl;
        num=num+1;
    }
    return 0;
}
