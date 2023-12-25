enum AutoMobile { car, jeep, suv, truck, bike }

class EnumExample {
  final AutoMobile vehicle;

  EnumExample(this.vehicle);

  void displayYourVehicle() {
    switch (vehicle) {
      case AutoMobile.car:
        print("You have a ${AutoMobile.car.name}");
      case AutoMobile.jeep:
        print("You have a ${AutoMobile.jeep.name}");
      case AutoMobile.suv:
        print("You have a ${AutoMobile.suv.name}");
      case AutoMobile.truck:
        print("You have a ${AutoMobile.truck.name}");
      case AutoMobile.bike:
        print("You have a ${AutoMobile.bike.name}");
    }
  }
}
