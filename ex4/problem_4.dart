// 4. Ստեղծել abstract Vehicle դաս՝ double fuelConsumption(); մեթոդով։
// Ստեղծել երկու ժառանգ դաս.
// ● Car - ունի litersPer100Km
// ● Motorcycle - ունի litersPer100Km
// Յուրաքանչյուր դաս պետք է վերադարձնի իր արժեքը fuelConsumption()-ից։
// Այնուհետեւ գրել. double totalConsumption(List<Vehicle> vehicles, double distance)
// ֆունկցիան, որը հաշվում է տվյալ հեռավորության համար անհրաժեշտ ընդհանուր
// վառելիքը։
// Բանաձեւը՝ liters = litersPer100Km × distance / 100

abstract class Vehicle {
  double fuelConsumption();
}

class Car extends Vehicle {
  double litersPer100Km;
  Car(this.litersPer100Km);

  @override
  double fuelConsumption() {
    return litersPer100Km;
  }
}

class Motorcycle extends Vehicle {
  double litersPer100Km;
  Motorcycle(this.litersPer100Km);

  @override
  double fuelConsumption() {
    return litersPer100Km;
  }
}

double totalConsumption(List<Vehicle> vehicles, double distance) {
  double sum = 0;
  for (int i = 0; i < vehicles.length; i++) {
    sum += vehicles[i].fuelConsumption() * distance / 100;
  }
  return sum;
}
void main() {
  Car car = Car(13);
  Motorcycle motorcycle = Motorcycle(6);
  List<Vehicle> vehicles = [car, motorcycle];
  double result = totalConsumption(vehicles, 200);
  print("Վառելիքը - $result");
}
