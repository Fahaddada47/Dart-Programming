class Person {
  late String name;
  late int age;
  late String address;


  Person(this.name , this.age, this.address);
  // Person(String name, int age, String address)
  // {
  //   this.name = name;
  //   this.age = age;
  //   this.address = address;
  // }

  void sayHello() {
    print("Hello, my name is  ${this.name}");
  }

  void getAgeInMonths() {
    print(" I am  ${this.age * 12} months old");
  }

  void gerAddress() {
    print("I'm from  ${this.address}");
  }

}

void main(){
  Person person1= Person('Fahad', 23, 'Dhaka');
  person1.sayHello();
  person1.getAgeInMonths();
  person1.gerAddress();
}