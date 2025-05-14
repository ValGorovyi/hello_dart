//mixin daet vozmoznost dobavlat funkcional bez nasledovaniya

//ne nasledovanie
mixin WiFi {
  var wifiState = false;
  onWiFi() {
    wifiState = !wifiState;
    print('wi-fi ON');
  }
  offWiFi() {
    wifiState = !wifiState;
    print('wifi OFF');
  }
}

class TV with WiFi{}
class phone with WiFi{}
class superAnimals with WiFi{}

void main() {
  TV samsung = TV();
  samsung.onWiFi();
  print(samsung.wifiState);
  samsung.offWiFi();
}