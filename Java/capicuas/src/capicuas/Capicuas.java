
package capicuas;
import java.util.Scanner;
import java.math.*;
        
public class Capicuas {
static int num=0;
static int mun=0;
static int i=0;
static int n=0;
static int cant=0;
static Scanner s = new Scanner(System.in);
static int pedirnum(){
    System.out.println("Inserte el número a comparar (entero y mayor a 9 para hacer mejor la comparación, también que sea de máximo 9 dígitos): ");
    num=s.nextInt();
    return num;
}
static int caso(int N){
    int cos=1;
    n=num;
    if(num<=0){
        cant=0;
    }else{
    for(i=0;i<10;i++){
    if(cos!=0){
        cos=n/10;
        cant++;
        n=n/10;
    }
    }
    }
    return cant;
}
static boolean comp(int v){
    boolean c;
    n=num;
    if(v<=1){
            c=false;
    }else{for(i=0;i<9;i++){
        if(i<v){
        mun=(mun+(n%10))*10;
        n=n/10;
            }
    }
    mun=mun/10;
    if(num==mun){
        c=true;
    }else{
        c=false;
    }
    }
    return c;
}

static void mostrar(boolean A){
    if(cant>9){
        System.out.println("El número debe ser de máximo 9 dígitos");
    }else{
    if(A){
        System.out.println("El número es capicúa");
    }else{
        System.out.println("El número no es capicúa");
    }
    }
}
    public static void main(String[] args) {
        System.out.println("Bienvenido");
        mostrar(comp(caso(pedirnum())));
    }
    
}



//int pedirnum(){
//    cout<<"Inserte el número a comparar (entero y mayor a 9 para hacer mejor la comparación, también que sea de máximo 9 dígitos): "<<endl;
//    cin>>num;
//    return num;
//}
//
//int caso(int N){
//    int cos=1;
//    n=num;
//    if(num<=0){
//        cant=0;
//    }else{
//    for(i=0;i<10;i++){
//    if(cos!=0){
//        cos=n/10;
//        cant++;
//        n=n/10;
//    }
//    }
//    }
//    return cant;
//}
//
//bool comp(int v){
//    bool c;
//    n=num;
//    if(v<=1){
//            c=false;
//    }else{for(i=0;i<9;i++){
//        if(i<v){
//        mun=(mun+(n%10))*10;
//        n=n/10;
//            }
//    }
//    mun=mun/10;
//    if(num==mun){
//        c=true;
//    }else{
//        c=false;
//    }
//    }
//    return c;
//}
//
//void mostrar(bool A){
//    if(cant>9){
//        cout<<endl<<"El número debe ser de máximo 9 dígitos"<<endl;
//    }else{
//    if(A){
//        cout<<endl<<"El número es capicúa"<<endl;
//    }else{
//    cout<<endl<<"El número no es capicúa"<<endl;
//    }
//    }
//}
//
//int main()
//{
//    cout<<"BIENVENIDO"<<endl<<endl;
//    srand(time(NULL));
//    setlocale(LC_ALL, "");
//    mostrar(comp(caso(pedirnum())));
//    return 0;
//}
