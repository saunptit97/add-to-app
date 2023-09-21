import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({
    super.key,
    this.title,
    this.onBack,
  });

  final String? title;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? "List Page"),
        leading: BackButton(onPressed: onBack),
      ),
    );
  }
}
