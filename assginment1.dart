class Car {
  String brand;
  String model;
  int year;
  double milesDriven;


  static int numberOfCars = 0;


  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }


  void drive(double miles) {
    milesDriven += miles;
  }


  double getMilesDriven() {
    return milesDriven;
  }


  String getBrand() {
    return brand;
  }


  String getModel() {
    return model;
  }


  int getYear() {
    return year;
  }


  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {

  Car car1 = Car('Nissan', ' Rouge', 2015, 20000);
  Car car2 = Car('Corrola', ' Wagon', 2000, 35000);
  Car car3 = Car('Honda', ' HR-V', 2010, 25000);

  // Drive each car a different number of miles
  car1.drive(100);
  car2.drive(200);
  car3.drive(300);


  print('Car 1: ${car1.getBrand()} ${car1.getModel()} (${car1.getYear()}), Miles Driven: ${car1.getMilesDriven()} - Age: ${car1.getAge()} years');
  print('Car 2: ${car2.getBrand()} ${car2.getModel()} (${car2.getYear()}), Miles Driven: ${car2.getMilesDriven()} - Age: ${car2.getAge()} years');
  print('Car 3: ${car3.getBrand()} ${car3.getModel()} (${car3.getYear()}),  Miles Driven: ${car3.getMilesDriven()} - Age: ${car3.getAge()} years');


  print('Total number of cars created: ${Car.numberOfCars}');
}