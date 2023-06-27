import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../models/joke.dart';

class JokeContent extends StatefulWidget {
  JokeContent({super.key});

  @override
  State<JokeContent> createState() => _JokeContentState();
}

class _JokeContentState extends State<JokeContent> {
  PageController controller =
      PageController(keepPage: true, viewportFraction: 1);
  List<JokeModel> jokesContent = [];
  int currentPageValue = 0;
  JokeModel joke1 = JokeModel(
      id: '0',
      content:
          'A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on." The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now." The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."',
      vote: []);
  JokeModel joke2 = JokeModel(
      id: '1',
      content:
          'Teacher: "Kids,what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!"',
      vote: []);
  JokeModel joke3 = JokeModel(
      id: '2',
      content:
          'The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy, "I am going to eat that pussy once Jimmy leaves for school today!""',
      vote: []);
  JokeModel joke4 = JokeModel(
      id: '3',
      content:
          'A housewife, an accountant and a lawyer were asked "How much is 2+2?" The housewife replies: "Four!". The accountant says: "I think it is either 3 or 4. Let me run those figures through my spreadsheet one more time." The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"',
      vote: []);
  bool checkEnd = false;
  List result = []; //I set "funny" is 0, and "not funny" is 1
  int sumFunny = 0;
  int sumNotFunny = 0;
  @override
  void initState() {
    jokesContent.add(joke1);
    jokesContent.add(joke2);
    jokesContent.add(joke3);
    jokesContent.add(joke4);
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!.toInt();
        print((currentPageValue).toString());
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 324,
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: jokesContent.length,
              controller: controller,
              itemBuilder: (BuildContext context, int index) {
                return (checkEnd == true)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "That's all the jokes for today! Come back another day!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.9),
                                fontSize: 14),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "You voted $sumFunny jokes funny today",
                            style: TextStyle(
                                color: Colors.blue.withOpacity(0.9),
                                fontSize: 14),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "You voted $sumNotFunny jokes no funny today",
                            style: TextStyle(
                                color: Colors.green.withOpacity(0.9),
                                fontSize: 14),
                          ),
                        ],
                      )
                    : Container(
                        alignment: Alignment.topCenter,
                        margin: const EdgeInsets.only(top: 32),
                        child: Text(
                          jokesContent[index].content,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.9),
                              fontSize: 14),
                        ),
                      );
              },
            ),
          ),
          (checkEnd == true)
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      result.clear();
                      controller.jumpToPage(0);
                      checkEnd = false;
                      sumFunny = 0;
                      sumNotFunny = 0;
                    });
                  },
                  child: Container(
                    height: 36,
                    width: 140,
                    alignment: Alignment.bottomCenter,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        "Clear Cache!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              : Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (currentPageValue != jokesContent.length - 1) {
                          print("This is funny!");
                          result.add(0);
                          controller.jumpToPage(currentPageValue + 1);
                        } else {
                          setState(() {
                            result.add(0);
                            checkEnd = true;
                            result.forEach((element) {
                              if (element == 0) {
                                sumFunny++;
                              }
                            });
                            sumNotFunny = result.length - sumFunny;
                          });
                        }
                      },
                      child: Container(
                        height: 36,
                        width: 140,
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            "This is funny!",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        if (currentPageValue != jokesContent.length - 1) {
                          print("This is not funny!");
                          result.add(1);
                          controller.jumpToPage(currentPageValue + 1);
                        } else {
                          setState(() {
                            result.add(1);
                            checkEnd = true;
                            result.forEach((element) {
                              if (element == 0) {
                                sumFunny++;
                              }
                            });
                            sumNotFunny = result.length - sumFunny;
                          });
                        }
                      },
                      child: Container(
                        height: 36,
                        width: 140,
                        color: Colors.green,
                        child: const Center(
                          child: Text(
                            "This is not funny!",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
        ],
      ),
    );
  }
}
