void main(){
  //final flipper = Delfin();
  //flipper.nadar();
  
  final patoDonald = Pato();
  patoDonald.caminar();
  patoDonald.nadar();
  patoDonald.volar();
}

abstract class Animal {}

abstract class Mamifero extends Animal{}

abstract class Ave extends Animal{}

abstract class Pez extends Animal{}



mixin class Volador {
  void volar() => print('Estoy volando');
}

mixin class Caminante {
  void caminar() => print('Estoy caminando');
}

mixin class Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Nadador, Volador{}
class Gato extends Mamifero with Caminante {}
class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante, Nadador, Volador{}
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Caminante, Nadador {}