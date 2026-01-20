// To parse this JSON data, do
//
//     final showOp = showOpFromJson(jsonString);

import 'dart:convert';

List<ShowOp> showOpFromJson(String str) =>
    List<ShowOp>.from(json.decode(str).map((x) => ShowOp.fromJson(x)));

String showOpToJson(List<ShowOp> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ShowOp {
  int title;
  String text;
  int idIdnote;

  ShowOp({required this.title, required this.text, required this.idIdnote});

  factory ShowOp.fromJson(Map<String, dynamic> json) => ShowOp(
    title: json["title"],
    text: json["text"],
    idIdnote: json["id_idnote"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "text": text,
    "id_idnote": idIdnote,
  };
}
