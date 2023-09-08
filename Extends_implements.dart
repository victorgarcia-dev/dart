void main (){
  
  final windPlant = WindPlant(initialEnergy:100);
  final nuclearPlant = NuclearPlant(energyLeft:1000);
  
  // windPlant.consumeEnergy(10);
  
  //print(windPlant.energyLeft);
  print(changePhone(windPlant));
  print(changePhone(nuclearPlant));

}

double changePhone( EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('la bateria no es suficiente');
  }
  
  return plant.energyLeft - 10;
}

//typo de dato
enum PlantType {nuclear,
                wind,
                water
               }

abstract class EnergyPlant {
  
  //atributos
  double energyLeft;
  final PlantType type; //nuclear , wind, water
  
  //constructor
  EnergyPlant({required this.energyLeft, required this.type});
  
  //metodo
  void consumeEnergy( double amount);
}


class WindPlant extends EnergyPlant {
  
  WindPlant({required double initialEnergy})
         : super( energyLeft:initialEnergy, type: PlantType.wind);
  
  //metodo
  @override
  void consumeEnergy( double amount){
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  
  //atributos
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear; 
  
  NuclearPlant({required this.energyLeft});
  
  //metodo
  @override
  void consumeEnergy( double amount){
    energyLeft -= (amount*0.5);
  }
}