import 'package:flutter/material.dart';
import 'package:just_play/bootstrap.dart';
import 'package:just_play/features/app/app.dart';

void main() async {
  await bootstrap(
    () => const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    ),
  );
}
