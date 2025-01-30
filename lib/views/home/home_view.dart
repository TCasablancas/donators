import 'package:donators/components/selectable_view_grid.dart';
import 'package:donators/views/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeView extends StatefulWidget {
  const HomeView({ super.key });

  @override
  createState() => _HomeView();
}

class _HomeView extends HomeController {

  // Properties
  final _mainColor = const Color.fromRGBO(237, 237, 237, 0.93);
  final _mainMargin = const EdgeInsets.fromLTRB(20, 0, 20, 0);

  // Widget
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Donators",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey),
            ),
          centerTitle: true,
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.blue,
            statusBarColor: Colors.pink,
          ),
          backgroundColor: _mainColor,
        ),
        body: Container(
          margin: _mainMargin,
          child: SelectableViewGrid()
        ),
        backgroundColor: _mainColor,
      )
    );
  }
}