import 'dart:async';
import 'dart:convert';
import 'dart:core' ;
import 'package:mdreve/models/maisonModel.dart';

import 'package:flutter/services.dart' show rootBundle;


Future<String> chargerJson() async{
  return await rootBundle.loadString("assets/details.json");

}

Future loadchargerJson() async {
  final charge = await chargerJson();
  Iterable response = json.decode(charge);
  List<Locventes> arr = response.map((i) =>Locventes.fromJson(i)).toList();

  return arr;
}
