import 'package:flutter/material.dart';
import 'package:toku_app/components/Category_item.dart';
import 'package:toku_app/screens/color_page.dart';
import 'package:toku_app/screens/familyMembersPage.dart';
import 'package:toku_app/screens/numbersPage.dart';
import 'package:toku_app/screens/phrase_page.dart';
import 'package:toku_app/screens/translator_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("Toku App",),

      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Category(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context){
               return Numbers_Page();
              } ));
            },
            text: "Numbers",
            color: Colors.orange,
            photo: "assets/Images/Sir teaching maths in the class.gif",
          ),
          Category(
            onTap: (){ Navigator.push(context,MaterialPageRoute(builder:(context){
              return Family_Page();
            } ));},
            text: "Family Members",
            color: Colors.green,
            photo: "assets/Images/Family distributing diwali sweets.gif",

          ),
          Category(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context){
                return ColorPage();
              } ));
            },
            text: "Colors",
            color: Colors.purple,
            photo: "assets/Images/Teacher Teaching at Online Presentation.gif",

          ),
          Category(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context){
                return PhrasePage();
              } ));
            },
            text: "Phrase",
            color: Colors.cyan,
            photo: "assets/Images/Japan Flag Hand (1).gif",

          ),
          Category(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(context){
                return TranslatorPage();
              } ));
            },
            text: "Translation",
            color: Colors.yellow,
            photo: "assets/Images/lo.png",
           height: 140,
            width: 140,

          ),
        ],
      ),
    );
  }
}


