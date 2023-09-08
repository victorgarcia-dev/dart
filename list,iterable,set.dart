void main (){
  
 final numbers = [1,2,3,4,5,5,5,6,7,7,8,9,9,10];
  
  print('lista original $numbers');
  print('longitud de la lista ${numbers.length}');
  print('index 0: ${numbers[0]}');
  print('index 0: ${numbers.first}');
  print('index 0: ${numbers.last}');
  
  //reversed => devuelve un iterable
  print('reversed: ${numbers.reversed}');
  
  //iterable
  final reversedNumbers = numbers.reversed;
  print('iterable: $reversedNumbers');
  
  //volver a una lista
  print('list: ${reversedNumbers.toList()}');
  
  //convertir a set: devuelve valores unicos
  print('set: ${reversedNumbers.toSet()}');
  
  //where : siver para hacer
  final numerosMayores5 = numbers.where((int num) {
    return num > 5;
  });
  print('mayor a 5: ${numerosMayores5.toSet()}');
  
}