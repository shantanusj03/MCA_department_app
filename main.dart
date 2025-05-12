import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'screens/home_screen.dart';
void main() => runApp(const MCADepartmentApp());

class MCADepartmentApp extends StatelessWidget {
  const MCADepartmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF2A4C7D),
        secondaryHeaderColor: const Color(0xFFD9D9D9),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFFFFA000)),
      ),
      home: const HomeScreen(),
    );
  }
}