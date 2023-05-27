import 'package:flutter/src/widgets/framework.dart';

class flowerStat {
  final String plantName;
  final String plantKingdom;
  final String plantFamily;
  final String plantGenus;
  final String localName;
  final String plantDescription;
  final String url;

  flowerStat ({
  required this.plantName,
  required this.plantKingdom,
  required this.plantFamily,
  required this.plantGenus,
  required this.localName,
  required this.plantDescription,
  required this.url
  });

  static of(BuildContext context) {}
}

