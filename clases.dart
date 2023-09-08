void main (){
  
  //instancia de mi clase
  final wolverine =  Hero( name:'Logan', power:'regeneración' );
  
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  
}

class Hero {
  String name;
  String power;
  
  
  //otra forma de inicializar valores en el constructor
  Hero({ required this.name,
         required this.power
       });
  
  
  /*
  // forma de inicializar los valores en el constructor
  //constructor
  Hero(String pName, String pPower)
    :name = pName,
     power = pPower;
  */
  
  //@override
  @override
  String toString() {
    return 'hola mundo';
  }
}

