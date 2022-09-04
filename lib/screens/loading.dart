import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  List<Widget> kits = [
    SpinKitRotatingCircle(color: Colors.red),
    SpinKitRotatingPlain(color: Colors.white),
    SpinKitChasingDots(color: Colors.white),
    SpinKitPumpingHeart(color: Colors.white),
    SpinKitPulse(color: Colors.white),
    SpinKitDoubleBounce(color: Colors.white),
    SpinKitWave(color: Colors.white, type: SpinKitWaveType.start),
    SpinKitWave(color: Colors.white, type: SpinKitWaveType.center),
    SpinKitWave(color: Colors.white, type: SpinKitWaveType.end),
    SpinKitThreeBounce(color: Colors.white),
    SpinKitThreeInOut(color: Colors.white),
    SpinKitWanderingCubes(color: Colors.white),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF012F46),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 80,
          childAspectRatio: 1,
        ),
        itemCount: kits.length,
        itemBuilder: (context, index) => kits[index],
        padding: EdgeInsets.only(top: 32, bottom: 64),
      ),
    );
  }
}
