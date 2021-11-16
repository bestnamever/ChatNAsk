import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/log_page.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreeneState createState() => _IntroScreeneState();
}

class _IntroScreeneState extends State<IntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Chats",
        description: "Need a talk? Search with name and start chating!",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    slides.add(
      new Slide(
        title: "Ask anyone",
        description:
            "Being eager to know the answer? Ask now, a question will help!",
        backgroundColor: Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        title: "Express youself wordlessly?",
        description:
            "Feeling the same regarding a question? Share it let people know!",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LogScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
