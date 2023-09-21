import 'package:app_flutter/config/config.dart';
import 'package:flutter/material.dart';
import 'presentations/app/index.dart';

void main() {
  Config.config();
  runApp(const AppScreen());
}
