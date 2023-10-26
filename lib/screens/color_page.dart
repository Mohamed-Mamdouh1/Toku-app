import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

import '../components/items.dart';

class ColorPage extends StatelessWidget {
  ColorPage({Key? key}) : super(key: key);

  List<AppModel> colors = [
    AppModel(
      sound: "sounds/colors/black.wav",
      image: "assets/Images/colors/color_black.png",
      jpName: "Burakku",
      enName: "Black",
    ),
    AppModel(
        sound: "sounds/colors/brown.wav",
        image: "assets/Images/colors/color_brown.png",
        jpName: "Chairo",
        enName: "Brown"),
    AppModel(
        sound: "sounds/colors/dusty yellow.wav",
        image: "assets/Images/colors/color_dusty_yellow.png",
        jpName: "Okorippoi Kiiro",
        enName: "Dusty Yellow"),
    AppModel(
        sound: "sounds/colors/gray.wav",
        image: "assets/Images/colors/color_gray.png",
        jpName: "Gurē",
        enName: "Gray"),
    AppModel(
        sound: "sounds/colors/green.wav",
        image: "assets/Images/colors/color_green.png",
        jpName: "Midori",
        enName: "Green"),
    AppModel(
        sound: "sounds/colors/red.wav",
        image: "assets/Images/colors/color_red.png",
        jpName: "Aka",
        enName: "Red"),
    AppModel(
        sound: "sounds/colors/white.wav",
        image: "assets/Images/colors/color_white.png",
        jpName: "Shiroi",
        enName: "White"),
    AppModel(
        sound: "sounds/colors/yellow.wav",
        image: "assets/Images/colors/yellow.png",
        jpName: "Kiiro",
        enName: "Yellow"),
  ];

  @override
  Widget build(BuildContext context) {
    final Color pageColor = Colors.purple;
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
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Item(
                number: colors[index],
                color: pageColor,
              );
            },
          ),
        ),
      ),
    );
  }
}
