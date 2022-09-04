import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToVoice extends StatefulWidget {
  @override
  State<TextToVoice> createState() => _TextToVoiceState();
}

class _TextToVoiceState extends State<TextToVoice> {
  // const TextToVoice({Key? key}) : super(key: key);
  FlutterTts flutterTts = FlutterTts();

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Converting Text to Voice'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                isDense: false,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Enter your text',
              ),
            ),
            SizedBox(height: 20),
            // ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
            MaterialButton(
              splashColor: Colors.blue,
              onPressed: ()  async {
                var result = flutterTts.speak(controller.text);
                print(result);
              },
              shape: StadiumBorder(),
              color: Colors.amber,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Read it'),
                  SizedBox(width: 10),
                  Icon(Icons.mic)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
