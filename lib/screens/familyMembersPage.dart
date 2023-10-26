import 'package:flutter/material.dart';
import 'package:toku_app/components/items.dart';
import 'package:toku_app/models/number.dart';

class Family_Page extends StatelessWidget {
  final List<AppModel>familyMembers = [
    AppModel(
      sound: "sounds/family_members/father.wav",
      image: "assets/Images/Family/family_father.png",
      jpName: "Chichioya",
      enName: "Father",
    ),
    AppModel(
      sound: "sounds/family_members/mother.wav",
      image: "assets/Images/Family/family_mother.png",
      jpName: "Hahaoya",
      enName: "Mother",
    ),
    AppModel(

      sound: "sounds/family_members/son.wav",
      image: "assets/Images/Family/family_son.png",
      jpName: "Musuko",
      enName: "Son",
    ),
    AppModel(
      sound: "sounds/family_members/daughter.wav",
      image: "assets/Images/Family/family_daughter.png",
      jpName: "Musume",
      enName: "Daughter",
    ),

    AppModel(
      sound: "sounds/family_members/grand father.wav",
      image: "assets/Images/Family/family_grandfather.png",
      jpName: "Ojīsan",
      enName: "Grandfather",
    ),
    AppModel(
      sound: "sounds/family_members/grand mother.wav",
      image: "assets/Images/Family/family_grandmother.png",
      jpName: "Sobo",
      enName: "Grandmother",
    ),

    AppModel(
      sound: "sounds/family_members/older bother.wav",
      image: "assets/Images/Family/family_older_brother.png",
      jpName: "Nīsan",
      enName: "Older Brother",
    ),
    AppModel(
      sound: "sounds/family_members/older sister.wav",
      image: "assets/Images/Family/family_older_sister.png",
      jpName: "Ane",
      enName: "Older Sister",
    ),

    AppModel(
      sound: "sounds/family_members/younger brohter.wav",
      image: "assets/Images/Family/family_younger_brother.png",
      jpName: "Otõto",
      enName: "Younger Brother",
    ),
    AppModel(
      sound: "sounds/family_members/younger sister.wav",
      image: "assets/Images/Family/family_younger_sister.png",
      jpName: "Imõto",
      enName: "Younger Sister",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final Color PageColor=Colors.green;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Family Member"), backgroundColor: PageColor,elevation: 0,),
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          color: PageColor,
          child: ListView.builder(
            itemCount: familyMembers.length,
            itemBuilder: (context,index){
              return Item(number: familyMembers[index],color: Colors.green,);
            },

          ),
        ),
      ),);

  }
}
