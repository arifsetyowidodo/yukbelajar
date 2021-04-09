import 'dart:convert';

List<DoaModel> DoaFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<DoaModel>.from(data.map((item) => DoaModel.fromJson(item)));
}

String doaToJson(DoaModel data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}

String welcomeToJson(List<DoaModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DoaModel {
  DoaModel({
    this.doaId,
    this.doaNama,
    this.doaArab,
    this.doaLatin,
    this.doaArti,
  });

  String doaId;
  String doaNama;
  String doaArab;
  String doaLatin;
  String doaArti;

  factory DoaModel.fromJson(Map<String, dynamic> json) => DoaModel(
        doaId: json["doa_id"],
        doaNama: json["doa_nama"],
        doaArab: json["doa_arab"],
        doaLatin: json["doa_latin"],
        doaArti: json["doa_arti"],
      );

  Map<String, dynamic> toJson() => {
        "doa_id": doaId,
        "nama_id": doaNama,
        "doa_arab": doaArab,
        "doa_latin": doaLatin,
        "doa_arti": doaArti,
      };
}
