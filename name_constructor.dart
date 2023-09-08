void main (){
  
  final Map<String, dynamic> rawJson = { 
    'name': 'tony Stark',                                    
    'power': 'dinero',
    'isAlive': false
  };
  
  final ironman = Hero.fronJson(rawJson);
  
  print(ironman.toString());
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero.fronJson( Map<String, dynamic> json)
   :name = json['name'] ?? 'no found name',
    power = json['power'] ?? 'no fund power',
    isAlive = json['isAlive'] ?? false;
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${isAlive ? "Yes!" : "no!!"}';
  }    
}
