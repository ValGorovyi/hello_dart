void main() {
  final  mapStructure = <dynamic, dynamic>{
    'watermellon': 12,
    'aple': 13,
    'mexico': 94,
    13: 2,
    88: true,
  };

  final statistick = <String, int>{
    'xiaomi': 5,
    'asus': 0,
    'philips': 6,
  };
  statistick['hp'] = 18;
// remove = delete

  statistick.remove('asus');

// addAll = dobavit vse

  statistick.addAll({
    'sampsung': 63,
    'siemens': 440
  });

// slovari map. key: value
  print(statistick.containsKey('key'));
  print(statistick.containsValue(18));
  print(statistick.length);
  print(statistick.keys.toList());
  print(statistick.values.toList());
  print (statistick);
  print(mapStructure);
}