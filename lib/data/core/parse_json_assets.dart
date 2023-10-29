import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<Map<String, dynamic>> parseJsonFromAssets(String assetsPath) async {
  final data = await rootBundle.loadString('assets/data/cities.json');
  return jsonDecode(data) as Map<String, dynamic>;
}
