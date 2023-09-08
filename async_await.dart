void main() async {
  print('inicio programa');
  
  try {
    final value = await httpGet('www.google.com');
    print(value);
  } on Exception {
    print('Tenemos una exepcion');

  } catch(error) {
    print(error);
  }
  
  print('fin programa');
}


Future<String> httpGet( String url) async {
  await Future.delayed(const Duration(seconds:2));
  
  throw Exception('no falta un parametro en la url');
  //throw 'error en la peticion http';
  //return 'respuesta de http';
}