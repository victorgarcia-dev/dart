void main (){
  
  final windPlant = WindPlant(initialEnergy:100);
  
  windPlant.consumeEnergy(10);
  
  print(windPlant.energyLeft);
  print(windPlant.type);
  
}

enum PlantType {nuclear, wind, water}

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;
  
  EnergyPlant({ required this.energyLeft,
                required this.type 
               });
  
  
  void consumeEnergy(double amunt);
  
}

class WindPlant extends EnergyPlant {
  
  WindPlant({required double initialEnergy})
    :super( energyLeft:initialEnergy, type: PlantType.wind );
  
  @override
  void consumeEnergy( double amunt){
    energyLeft -= amunt;
  }
}