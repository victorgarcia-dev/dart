void main(){
  print('inicio programa');
 
  httpGet().then( (value){
    print(value);
  }).catchError((error) {
    print('Error: ${error}');
  });
  
  
  print('fin programa');
}


Future<String> httpGet(){
  return Future.delayed(const Duration(seconds:2), ()  {
    
    throw 'Error en el future';
    //return 'Respuesta de la petición http';
  });
}