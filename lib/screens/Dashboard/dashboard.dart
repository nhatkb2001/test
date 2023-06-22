import 'package:anhnhat_test_joke_app/screens/Dashboard/joke_content.dart';
import 'package:flutter/material.dart';

import '../../models/joke.dart';

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
            Container(
              height: 48,
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(bottom: 24),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Handicrafted by",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text("Jim HLS", style: TextStyle(color: Colors.black))
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            shape: BoxShape.circle),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 56 * 3,
              color: Colors.green,
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "A joke a day keeps the doctor away",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    SizedBox(height: 16),
                    Text(
                        "If you joke wrong way, your teeth have to pay.(Serious)",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14))
                  ]),
            ),
            JokeContent()
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
