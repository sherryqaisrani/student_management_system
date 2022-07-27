class CountryModel {
  int id;
  String name;
  String code;

  CountryModel({required this.id, required this.name, required this.code});

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      CountryModel(id: json['id'], name: json['name'], code: json['code']);
}
