import 'package:flutter/material.dart';
import 'package:toku_app/components/items.dart';
import 'package:toku_app/models/number.dart';

// ignore: camel_case_types
class Numbers_Page extends StatelessWidget {
  final List<AppModel> numbers = [
    AppModel(
      sound:"sounds/number_sounds/number_one_sound.mp3" ,
      image: "assets/Images/Numbers/number_one.png",
      jpName: "Ichi",
      enName: "one",
    ),
    AppModel(
      sound:"sounds/number_sounds/number_two_sound.mp3",
      image: "assets/Images/Numbers/number_two.png",
      jpName: "Ni",
      enName: "Two",
    ),
    AppModel(
      sound:"sounds/number_sounds/number_three_sound.mp3",
      image: "assets/Images/Numbers/number_three.png",
      jpName: "San",
      enName: "Three",
    ),
    AppModel(
      sound:"sounds/number_sounds/number_four_sound.mp3",
      image: "assets/Images/Numbers/number_four.png",
      jpName: "Shi",
      enName: "Four",
    ),
    AppModel(
      sound:"sounds/number_sounds/number_five_sound.mp3",
      image: "assets/Images/Numbers/number_five.png",
      jpName: "Itsutsu",
      enName: "Five",
    ),
    AppModel(
      sound:"sounds/number_sounds/number_six_sound.mp3",
      image: "assets/Images/Numbers/number_six.png",
      jpName: "Roku",
      enName: "six",
    ),
    AppModel(
      sound:"sounds/number_sounds/number_seven_sound.mp3",
      image: "assets/Images/Numbers/number_seven.png",
      jpName: "Sebun",
      enName: "Seven",
    ),
    AppModel(
      sound:"sounds/number_sounds/number_eight_sound.mp3",
      image: "assets/Images/Numbers/number_eight.png",
      jpName: "Hachi",
      enName: "Eight",
    ),
    AppModel(
      sound:"sounds/number_sounds/number_nine_sound.mp3",
      image: "assets/Images/Numbers/number_nine.png",
      jpName: "Kokonotsu",
      enName: "Nine",
    ),
    AppModel(
      sound:"sounds/number_sounds/number_ten_sound.mp3",
      image: "assets/Images/Numbers/number_ten.png",
      jpName: "Ju",
      enName: "Ten",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final Color numberPageColor=Colors.orangeAccent;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Numbers"), backgroundColor: numberPageColor,elevation: 0,),
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: GlowingOverscrollIndicator(

          axisDirection:AxisDirection.down,
          color: numberPageColor,
          child: ListView.builder(
            itemCount: numbers.length,
              itemBuilder: (context,index){
                return Item(number: numbers[index],color: Colors.orangeAccent,);
              },

          ),
        ),
      ),
    );
  }

//   List<Widget> getList(List<Number> numbers) {
//     List<Widget> itemList = [];
//     for (int index = 0; index < numbers.length; index++) {
//       itemList.add(Item(
//         number: numbers[index],
//       ));
//     }
//     return itemList;
//   }
 }
