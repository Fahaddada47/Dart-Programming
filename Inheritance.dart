// class Add {
//
//   void adding(){
//     print(56+78);
//   }
//   void subtract(){
//     print(56-78);
//   }
//
//   }
//
// class B extends Add{
//
//   @override
//   void subtract() {
//     // TODO: implement subtract
//     super.subtract();
//     print("hello boss");
//   }
//   void  mul(){
//     print(56*78);
//   }
// }
//
//
// void main(){
//   B first= B();
//   first.adding();
//   first.subtract();
//   first.mul();
//   Add second= Add();
//   second.adding();
//   second.subtract();
// }



class Father {
  late String name;
  Father(this.name);

  void info() {
    print('Father name is $name');
  }
}

class Son  extends Father{


  //Son(String name):super(name);
  Son(super.name);

  @override
  void info() {
    print('Son name is  ${super.name}');
    // print('Son name is  $name');

  }
  }

main(){
  Father dad= Father('Toni');
   dad.info();
  Son son = Son('Ozzy');
  son.info();
}












