import 'package:donators/components/main_button.dart';
import 'package:donators/views/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeView extends StatefulWidget {
  const HomeView({ super.key });

  @override
  createState() => _HomeView();
}

class _HomeView extends HomeController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Donators",
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey),
          ),
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.blue, // Navigation bar
          statusBarColor: Colors.pink, // Status bar
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: const MainButton(title: "clique aqui"),
      ),
    );
  }
}