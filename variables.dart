void main (){
  
  //final => le dice que no podra cambiar su valor a la variable
  final String pokemon = 'Ditto';
  final  int ph = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto/front.png','ditto/back.png'];

  //dynamic == null
  dynamic errorMessage = 'hola';
  errorMessage = 23;
  errorMessage= ['1','2','3','4'];
  
  print("""
  
  $pokemon
  $ph
  $isAlive
  $abilities
  $sprites
  $errorMessage
  
  """); 
}