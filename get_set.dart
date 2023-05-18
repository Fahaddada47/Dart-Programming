class Person{
  late String _name;
  late int _age;

  String get name => _name;
  int get age => _age;
  set name (String value){
    _name=value;
  }
  set age (int value){
    if (value >0){
      _age= value;
    }
    else{
      throw ArgumentError("Age can't be 0 or negative");
      // print('Invalied');
    }
  }
}

void main(){
  Person profile1=  Person();
  profile1.name='Fahad';
  profile1.age= 8;
  print(profile1.name);
  print(profile1.age);

}