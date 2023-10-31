import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(
      {required this.text,
      required this.color,
      required this.onTap,
      required this.photo,
      this.height = 100,
      this.width = 100});
  VoidCallback onTap;
  String text;
  Color color;
  String photo;
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: Card(
                  elevation: 30,
                  color: color,
                  child: Column(
                    children: [
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Image.asset(
                        photo,
                        height: height,
                        width: width,
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
