import 'package:donators/components/main_selectable_card.dart';
import 'package:flutter/material.dart';

class SelectableViewGrid extends StatefulWidget {
  @override
  _SelectableViewGridState createState() => _SelectableViewGridState();
}

class _SelectableViewGridState extends State<SelectableViewGrid> {

  List<MainSelectableCard> items = [
    const MainSelectableCard(
      title: "candidatos", 
      description: "saiba mais",
      avatar: Icon(Icons.person_2_rounded),
    ),
    const MainSelectableCard(
      title: "percentuais",
      description: "saiba mais",
      avatar: Icon(Icons.percent_rounded),
    ),
    const MainSelectableCard(
      title: "item 03",
      description: "saiba mais",
      avatar: Icon(Icons.abc),
    ),
    const MainSelectableCard(
      title: "item 04",
      description: "saiba mais", 
      avatar: Icon(Icons.abc),
    ),
    const MainSelectableCard(
      title: "item 05",
      description: "saiba mais", 
      avatar: Icon(Icons.abc),
    ),
  ];

  List<String> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20, 
        mainAxisSpacing: 20,
        childAspectRatio: 1,
      ),
      itemCount: items.length, 
      itemBuilder: (context, index) {
        final item = items[index];
        final isSelected = selectedItems.contains(item.title);

        return GestureDetector(
          onTap: () {
            // setState(() {
            //   isSelected ? selectedItems.add(item.title) : selectedItems.remove(item.title);
            // });
          },
          child: item,
        );
      }
    );
  }
}