import 'package:flutter/material.dart';
import 'package:hitaldev/screens/floating_button.dart';
import 'package:hitaldev/screens/password.dart';
import 'package:hitaldev/screens/text_to_voice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light().copyWith(primary: Colors.amber),
      ),
      debugShowCheckedModeBanner: false,
      home: TextToVoice(),
    );
  }
}
