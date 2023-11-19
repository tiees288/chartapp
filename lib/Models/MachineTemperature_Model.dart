class MachineTemperatureModel {
  String name;
  String dateTime;
  int value;

  MachineTemperatureModel({
    required this.name,
    required this.dateTime,
    required this.value,
  });

  factory MachineTemperatureModel.fromJson(Map<String, dynamic> json) {
    return MachineTemperatureModel(
      name: json['name'],
      dateTime: json['dateTime'],
      value: json['value'],
    );
  }
}
