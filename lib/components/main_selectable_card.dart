
import 'package:donators/components/selectable_card_text.dart';
import 'package:flutter/material.dart';

class MainSelectableCard extends StatelessWidget {

  const MainSelectableCard({
    super.key, required this.title, required this.avatar, required this.description
  });

  final String title;
  final String description;
  final Icon avatar;

  final _paddingInsets = const EdgeInsets.fromLTRB(20, 20, 20, 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        elevation: 0.0,
        color: Colors.white,
        child: Container(
          padding: _paddingInsets,
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      child: avatar,
                    ),
                    const SizedBox(height: 20,),
                    SelectableCardText(
                      title: title,
                      description: description
                    )
                  ],)
              ) 
            ],
          )
        ),
      ),
    );
  }
}