class DriveCar {
  int level = 0;
  void driveACar() {
    level += 1;
    print('+Category B');
  }
  void driveMoto() {
    level += 1;
    print('+Category A');
  }
}

//inogdA NET CODA CLASSA. MOZNO EGO RAZSHIRIT. EXTENSion ON
//dostyp k peremennym est y naslednokov

extension DriveTruckCar on DriveCar {
  void driveTruck() {
    level +=1;
    print('+Category C');
  }
}

extension DriveCarWithTrailer on DriveCar {
  void driveWithTrailer(){
    level += 2;
    print('+Category E');
  }
}

void main() {
  final driver = DriveCar();

  driver.driveACar();
  driver.driveMoto();
  driver.driveTruck();
  driver.driveWithTrailer();

  print(driver.level);
}