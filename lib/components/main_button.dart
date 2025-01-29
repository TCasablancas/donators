import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        onPressed: () => { },
        minWidth: double.infinity,
        height: 42,
        color: Colors.blueAccent,
        elevation: 0,
        highlightElevation: 0,
        textColor: Colors.white,  
        child: Text(
            title,
            style: const TextStyle(fontFamily: 'Quicksand', fontSize: 16, fontWeight: FontWeight.bold),
          ),
      );
  }
}