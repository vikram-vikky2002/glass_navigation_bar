import 'package:flutter/material.dart';
import 'package:glass_navigation_bar/glass_navigation_bar.dart';
import '../pages/Page1.dart';
import '../pages/Page2.dart';
import '../pages/Page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RootPage(
        buttons: const [
          {
            'icon': Icons.home,
            'text': 'HOME',
            'page': Page1(),
          },
          {
            'icon': Icons.calendar_month_sharp,
            'text': 'EVENTS',
            'page': Page2(),
          },
          {
            'icon': Icons.person,
            'text': 'PROFILE',
            'page': Page3(),
          },
          // Add more pages if needed
        ],
      ),
    );
  }
}
