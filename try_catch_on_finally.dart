void main() async {
  print('inicio programa');
  
  try {
    final value = await httpGet('ww.google.com');
    print(value);
    
  } on Exception catch(error) {
    print('Tenemos una exepcion: ${error}');

  } catch(error) {
    print(error);
    
  } finally {
    print('fin del rpograma try, catch');
  }
  
  
  
  print('fin programa');
}


Future<String> httpGet( String url) async {
  await Future.delayed(const Duration(seconds:2));
  
  if(url != 'www.google.com'){
    throw Exception('no falta un parametro en la url');
  }
  
  return 'respuesta de http';
}
 