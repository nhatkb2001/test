import 'package:anhnhat_test_joke_app/constants/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(Object context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 48,
          padding: EdgeInsets.only(left: 20, right: 20),
          margin: EdgeInsets.only(bottom: 10),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 48,
                width: 48,
                color: Colors.grey.withOpacity(0.5),
                child: Image.asset(AppImages.logo,
                    fit: BoxFit.cover, width: 300, height: 100),
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
                    child:
                        Image.asset(AppImages.avatar, width: 300, height: 100),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 150,
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
                Text("If you joke wrong way, your teeth have to pay.(Serious)",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14))
              ]),
        ),
      ],
    );
  }
}
