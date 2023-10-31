import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

class Item extends StatelessWidget {
  Item({required this.number, required this.color, this.fontSize});
  Color color;
  double? fontSize;
  AppModel number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          number.image == null
              ? SizedBox(
                  width: 3,
                )
              : Container(
                  color: Color(0Xfffef6d8),
                  height: 100,
                  child: Image.asset(
                    number.image!,
                    scale: 1.5,
                    fit: BoxFit.contain,
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize == null ? 20 : fontSize,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: IconButton(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                AudioCache player = AudioCache();
                player.play(number.sound);
              },
            ),
          ),
        ],
      ),
    );
  }
}
