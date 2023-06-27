import 'package:anhnhat_test_joke_app/constants/image.dart';
import 'package:anhnhat_test_joke_app/screens/Dashboard/joke_content.dart';
import 'package:anhnhat_test_joke_app/screens/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/joke.dart';
import '../header.dart';

class DashBoard extends StatelessWidget {
  DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 72),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Header(),
            JokeContent(),
            SizedBox(height: 32),
            Footer()
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
