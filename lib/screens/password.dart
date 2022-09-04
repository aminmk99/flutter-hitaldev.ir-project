import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final LocalAuthentication authentication = LocalAuthentication();
  bool isAuthorized = false;

  Future<void> authenticate() async {
    var res = await authentication.authenticate(
      localizedReason: 'Enter the pattern',
    );
    setState(() {
      isAuthorized = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Screen'),
      ),
      body: Center(
        child: !isAuthorized
            ? MaterialButton(
                onPressed: authenticate,
                shape: StadiumBorder(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Enter to bank'),
                    SizedBox(width: 15),
                    Icon(Icons.lock),
                  ],
                )
              )
            : Text('You are allowed'),
      ),
    );
  }
}
