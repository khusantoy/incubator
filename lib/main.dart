import 'package:flutter/material.dart';
import 'package:incubator/home.dart';
import 'package:incubator/list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ListProvider(),
        )
      ],
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
