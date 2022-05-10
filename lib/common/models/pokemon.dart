import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Pokemon {
  final dynamic nome;
  final dynamic image;
  final dynamic type;
  final dynamic id;
  final dynamic num;

  factory Pokemon.fromMap(Map<String, dynamic> json) {
    return Pokemon(
      nome: json['name'],
      image: json['img'],
      id: json['id'],
      num: json['json'],
      type: (['type']).map((e) => e).toList(),
    );
  }

  Pokemon({
    required this.nome,
    required this.image,
    required this.type,
    required this.id,
    required this.num,
  });
}
