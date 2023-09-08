/*1) Crea una clase llamada Cuenta que tendrá los siguientes 
   //atributos: titular y cantidad (puede tener decimales).

   //El titular será obligatorio y la cantidad es opcional. 
   //Crea dos constructores que cumpla lo anterior.
   //Crea sus métodos get, set y toString.

Tendrá dos métodos especiales:

A)  ingresar(double cantidad): se ingresa una cantidad a la cuenta, si la cantidad introducida es negativa, no se hará nada.
B)  retirar(double cantidad): se retira una cantidad a la cuenta, si restando la cantidad actual a la que nos pasan es 
    negativa, la cantidad de la cuenta pasa a ser 0.
*/



void main() {

  //instacia de mi clase Cuenta
  final cuenta = Cuenta( titular:'victor', cantidad:0 );
  
  //ingreso una suma de dinero a mi cuenta
  cuenta.putMoney=44;
  
  //muestro al propietario.
  print( 'Propietario: ${cuenta.showNameHeadline}' );
  //muestro el estado de cuenta
  print( 'Cuenta actual: ${cuenta.showAccount}' );
  
  
  //le resto dinero a su cuenta.
  cuenta.withdrawals=46;
  
  //muestro el estado de cuenta.
  print( 'Cuenta actual: ${cuenta.showAccount}' );
}


class Cuenta {
  final String _titular;
  double _cantidad;
  
  //constructor de mi clase Cuenta.
  Cuenta({ required String titular, double cantidad = 1})
    : assert( cantidad >= 0, 'La cantidad introducida es negativa' ),
      _titular = titular,
      _cantidad = cantidad;
  
  //metodo para mostrar el nombre del titular.
  String get showNameHeadline {
    return _titular;
  }
  
  //muestro el estado de la cuenta.
  double get showAccount {
    return _cantidad;
  }
  
  //metodo para introducir dinero a la cuenta.
  set putMoney( double money ){
    //evaluo si el usuario ingresa un valor negativo.
    if( money < 0 ){
      throw 'La antidad introducida negativa';
    }
    _cantidad += money;
  }
  
  //metodo para retirar dinero de cuenta.
  set withdrawals( double money){
    _cantidad -= money;
    
    //si el usuario retira mas dinero del que posee, la cuenta se pone en "0".
    if(_cantidad < 0 ){
      _cantidad = 0;
    }
  }
  
}