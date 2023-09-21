import 'package:app_flutter/presentations/list/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const channel = "com.app.flutter.integrate";
const platformChannel = MethodChannel(channel);

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  Widget currentScreen = Scaffold(
    appBar: AppBar(
      title: const Text("Default"),
    ),
  );

  @override
  void initState() {
    super.initState();
    platformChannel.setMethodCallHandler(_triggerFromNative);
  }

  Future<void> _triggerFromNative(MethodCall call) async {
    switch (call.method) {
      // handle navigate to other screen
      case "navigate_page":
        switch (call.arguments) {
          case "list":
            String result = await _getParamsFromNative();
            setState(() {
              currentScreen = ListScreen(
                title: result,
                onBack: () async => await platformChannel.invokeMethod("back"),
              );
            });
            break;
          case "detail":
            break;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: currentScreen,
    );
  }

  _getParamsFromNative() async {
    try {
      String result = await platformChannel.invokeMethod('getParams');
      return result;
    } on PlatformException {
      rethrow;
    }
  }
}
