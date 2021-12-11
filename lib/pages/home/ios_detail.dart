import 'package:flutter/material.dart';
import 'components/ios_app_ad.dart';
import 'package:fomagran/utils/constants.dart';

void main() {
  runApp(IosDetail());
}

class IosDetail extends StatefulWidget {
  @override
  _IosDetailState createState() => _IosDetailState();
}

class _IosDetailState extends State<IosDetail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: kBackgroundColor,
          body: SafeArea(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.amberAccent,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.greenAccent,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blueAccent,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
