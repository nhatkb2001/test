import 'package:anhnhat_test_joke_app/constants/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          Container(
            height: 0.1,
            color: Colors.black,
          ),
          SizedBox(height: 8),
          Text(
              "This appis created as part of HLsolutions program. The materials contained on  this website are provided for general information only an do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.w400,
                  fontSize: 11)),
          SizedBox(height: 8),
          const Text("Copyright 2021 HLS",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 12)),
        ],
      ),
    );
  }
}
