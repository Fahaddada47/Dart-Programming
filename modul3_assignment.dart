class Car {
  late String brand;
  late String model;
  late int year;
  int currentyear =2023;
  late double milesDriven;
  static int numberOfCars = 0;

  Car(String brand, String model, int year, double milesDriven) {
    this.brand = brand;
    this.model = model;
    this.year = year;
    this.milesDriven = milesDriven;
    // this.currentyear = currentyear;
    numberOfCars++;
    print('creating new object........');
  }

  void getBrand() {
    print("Brand: ${this.brand}");
  }

  void getModel() {
    print("Model: ${this.model}");
  }

  int getYear() {
    return this.year* 2;
    // print("Year: ${this.year}");
  }

  void getAge() {
    print('Ages of this car is : ${currentyear - year} years');
  }

  void getMilesDriven() {
    print("MilesDriven: ${this.milesDriven} miles");
  }
}

 main() {
  Car car1 = Car('Toyota', 'corrola', 2009, 235.34);
  car1.getBrand();
  car1.getModel();
  car1.getYear();
  car1.getMilesDriven();
  car1.getAge();
  print('year 2x= ${car1.getYear()}');

  Car car2 = Car('Audi', 'A3', 2022, 130.343);
  car2.getBrand();
  car2.getModel();
  car2.getYear();
  car2.getMilesDriven();
  car2.getAge();

  print('Number of Cars is: ${Car.numberOfCars}');
}




