import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

import '../components/items.dart';

class PhrasePage extends StatelessWidget {
  PhrasePage({Key? key}) : super(key: key);

  List<AppModel> phrases = [
    AppModel(
      sound: "sounds/phrases/are_you_coming.wav",
      jpName: "Kimasu ka",
      enName: "Are you coming",
    ),
    AppModel(
        sound: "sounds/phrases/yes_im_coming.wav",
        jpName: "Hai, watashi wa kite imasu",
        enName: "Yes I am Coming"),
    AppModel(
        sound: "sounds/phrases/dont_forget_to_subscribe.wav",
        jpName: "Kõdoku suru koto o wasurenaide kudasai",
        enName: "Don\'t forget to subscribe"),
    AppModel(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        jpName: "Go kibun wa ikagadesu ka",
        enName: "How are you feeling"),
    AppModel(
        sound: "sounds/phrases/i_love_anime.wav",
        jpName: "Watashi wa anime ga daisukidesu",
        enName: "I love anime"),
    AppModel(
        sound: "sounds/phrases/i_love_programming.wav",
        jpName: "Watashi wa puroguramingu ga daisukidesu",
        enName: "I love programming"),
    AppModel(
        sound: "sounds/phrases/programming_is_easy.wav",
        jpName: "Puroguramingu wa kantandesu",
        enName: "Programming is easy"),
    AppModel(
        sound: "sounds/phrases/what_is_your_name.wav",
        jpName: "Anata no namae wa nandesuka",
        enName: "What is your name"),
    AppModel(
        sound: "sounds/phrases/where_are_you_going.wav",
        jpName: "Doko ni iku no ",
        enName: "Where are you going"),

  ];

  @override
  Widget build(BuildContext context) {
    final Color pageColor = Colors.cyanAccent;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Family Member"),
        backgroundColor: pageColor,
        elevation: 0,
      ),
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          color: pageColor,
          child: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, index) {
              return Item(
                number: phrases[index],
                color: pageColor,
                fontSize: 16,
              );
            },
          ),
        ),
      ),
    );
  }
}
