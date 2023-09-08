void main (){
  
  print(addTwoNumbers(2,2));

  print(saludar( name: 'victor' ));
  
}


//suma de dos numeros
/*int addTwoNumbers(int a, int b ) {
  return (a+b);
}*/

//funcion flecha
//int addTwoNumbers (int a, int b) => a+b;

//valores opcionales
int addTwoNumbers(int a, [int b = 0] ) {
  return (a+b);
}

//vuelve los parametros opcionales y por nombre
String saludar ({required String name, String message = 'hola'}) {
  return '$message, $name';
}
