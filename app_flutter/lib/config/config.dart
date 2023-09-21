import 'package:app_flutter/di/di.dart';

class Config {
  static Future<void> config() async {
    configureDependencies();
  }
}
