void main (){
  final mySquare = Square(side:3);
  
  //print(mySquare.calculaterArea());
  //mySquare.side=3;
  
  mySquare.changeSide=2;
  
  print(mySquare.area);
 
}

class Square {
  
  
   double _side;
  
  //constructor
  Square({ required double side})
    :assert(side >= 0, 'valor menor a 0'),
    _side = side;
  
  //metodo get
  double get area {
    return _side*_side;
  }
  
  //metodo set
  set changeSide(double value){
    if(value < 0) throw 'valor menor a 0';
    _side = value;
  }
  
  //metodo
  double calculaterArea(){
    return _side*_side;
  }
  
}
