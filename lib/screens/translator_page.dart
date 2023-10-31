import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslatorPage extends StatefulWidget {
  const TranslatorPage({Key? key}) : super(key: key);

  @override
  State<TranslatorPage> createState() => _TranslatorPageState();
}

class _TranslatorPageState extends State<TranslatorPage> {
  TextEditingController fromTextController = TextEditingController();
  TextEditingController toTextController = TextEditingController();
  final translator = GoogleTranslator();
  GlobalKey<FormState> formKey = GlobalKey();
  late StreamSubscription subscription;

  _translate() {
    translator
        .translate(fromTextController.text, to: "ja")
        .then((result) {
      setState(() {
        toTextController.text = result.toString();
      });
    });
  }

  _showSnackBar(ConnectivityResult result) {
    final hasInternet = result != ConnectivityResult.none;
    hasInternet
        ? _translate()
        : showDialog(
            context: context,
            builder: (ctx) {
              return AlertDialog(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "No Internet",
                      style: TextStyle(color: Colors.red),
                    ),
                    Icon(
                      Icons.signal_wifi_connected_no_internet_4_sharp,
                      color: Colors.red,
                    ),
                  ],
                ),
                content: Text("Sorry, there is no internet connection at the moment.\nPlease check your internet connection and try again. ",style: TextStyle(fontWeight: FontWeight.bold),),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Okay",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ))
                ],
              );
            });
  }

  @override
  void initState() {
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen(_showSnackBar);
  }

  @override
  Widget build(BuildContext context) {
    final Color PageColor = Colors.yellow;
    return Scaffold(
        backgroundColor: PageColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Translation"),
          backgroundColor: PageColor,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    autocorrect: true,
                    maxLines: null,
                    minLines: null,
                    validator: (data) {
                      if (data!.isEmpty) {
                        return "this field can not be empty";
                      }
                    },
                    controller: fromTextController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter  text ",
                      prefixIcon: Icon(
                        Icons.e_mobiledata,
                      ),

                      focusedBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1.0, color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1.0, color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      //When error accu
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(

                    keyboardType: TextInputType.none,
                    readOnly: true,
                    maxLines: null,
                    minLines: null,
                    controller: toTextController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: toTextController.text == ""
                          ? "Here you can see the Japanese translation"
                          : toTextController.text,
                      prefixIcon: Icon(
                        Icons.language_rounded,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1.0, color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1.0, color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () async {
                    final result = await Connectivity().checkConnectivity();

                    if (formKey.currentState!.validate()) {
                      try {
                        _showSnackBar(result);
                      } catch (e) {
                        print(e.toString());
                      }
                    }
                  },
                  child: Text(
                    "Translate",
                    style: TextStyle(color: Colors.yellow),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
