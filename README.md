<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# glass_navigation_bar



## Features

Flutter package is a versatile solution for developers looking to enhance their applications with a modern and visually appealing root landing page with a Navigation Bar.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

To use this plugin, add `glass_navigation_bar` as a dependency in your pubspec.yaml file.

## Example

```dart
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
          // Add more navigation bar buttons if needed
        ],
      ),
    );
  }
}


```
