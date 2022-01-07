import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Flexible(
            child: ListView.builder(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Center(
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent)),
                            child: Text(text))),
                  );
                }),
          ),
          Container(child: TextField(
            onChanged: (text) {
              setState(() {
                this.text = text;
              });
            },
          )),
        ],
      )),
    );
  }
}
