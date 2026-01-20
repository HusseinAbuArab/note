// To parse this JSON data, do
//
//     final noteclass = noteclassFromJson(jsonString);

import 'dart:convert';

List<Noteclass> noteclassFromJson(String str) => List<Noteclass>.from(json.decode(str).map((x) => Noteclass.fromJson(x)));

String noteclassToJson(List<Noteclass> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Noteclass {
    int title;
    String text;
    int idIdnote;

    Noteclass({
        required this.title,
        required this.text,
        required this.idIdnote,
    });

    factory Noteclass.fromJson(Map<String, dynamic> json) => Noteclass(
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
