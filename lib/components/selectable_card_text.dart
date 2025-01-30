import 'package:flutter/material.dart';

class SelectableCardText extends StatelessWidget {

  final String title;
  final String description;

  const SelectableCardText({
    super.key, required this.title, required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: 
        Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black45,
                fontSize: 16,
                fontWeight: FontWeight.w800,
                height: 1.0
              ),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(fontSize: 12),  
            )
          ],
        ),
    );
  }
}