import 'package:flutter/material.dart';
import 'package:donators/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Donators App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        fontFamily: 'Quicksand',
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
