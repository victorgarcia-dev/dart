void main (){
  
  final Map<String, dynamic> pokemon = {
    'name': 'ditto',
    'hp' : 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, dynamic>{ 1:'ditto/front.png', 
                               2: 'ditto/back.png'
                             },
  };
  
  //acceder a una llave del map
  print('${pokemon['name']}');
  
  //accedo a sprites back
  print('${pokemon['sprites'][2]}');
  
  //accedo a sprites front
  print('${pokemon['sprites'][1]}');
  
  
  //accedo a abilites
  print('${pokemon['abilities'][0]}');
  
}