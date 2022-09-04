import 'package:animated_floating_buttons/animated_floating_buttons.dart';
import 'package:flutter/material.dart';

class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: AnimatedFloatingActionButton(
        fabButtons: [
          FloatingActionButton(
            onPressed: (() => print('add')),
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => print('remove'),
            child: Icon(Icons.remove),
          )
        ],
        curve: Curves.easeIn,
        durationAnimation: 500,
        spaceBetween: -10,
        colorStartAnimation: Colors.blue,
        colorEndAnimation: Colors.red,
        animatedIconData: AnimatedIcons.menu_close,
      ),
    );
  }
}
