import 'package:flutter/material.dart';
import 'package:pushy_poc/app_route.dart';

void main() => runApp(const MyApp());

// Please place this code in main.dart,
// After the import statements, and outside any Widget class (top-level)

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _route = AppRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pushy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Light theme with dark action bar
        brightness: Brightness.light,
        primaryColor: Colors.grey[900],
      ),
      // home: const HomePage(),
      onGenerateRoute: _route.onGenerateRoute,
    );
  }
}
