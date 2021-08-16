import 'package:flutter/material.dart';
import 'package:fomagran/pages/components/header.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              child: Header(),
            )
          ]),
        ),
      ),
    );
  }
}
