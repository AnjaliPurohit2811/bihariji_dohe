class DoheModel {
  int id;
  String hindi, meaning, guj, eng;


  DoheModel({
    required this.id,
    required this.hindi,
    required this.meaning,
    required this.guj,
    required this.eng,

  });

  factory DoheModel.fromJson(Map json) {
    return DoheModel(
      id: json['id'],
      hindi: json['hindi'],
      meaning: json['meaning'],
      guj: json["guj"],
      eng: json["eng"],
    );
  }
}