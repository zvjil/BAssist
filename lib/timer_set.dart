import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lerapp/TimerPicker.dart';
import 'package:lerapp/timer_widget.dart';

class TextFieldInput extends StatefulWidget {
  // @override
  TextFieldInputState createState() => TextFieldInputState();
}

class TextFieldInputState extends State<TextFieldInput> {
  TextEditingController timerController;

  // @override
  // void dispose() {
  //     timerController.dispose();
  //     super.dispose();
  // }

  final description = Padding(
    padding: EdgeInsets.all(10),
    child: RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
          text:
              'Welcome to the LER Breastfeeding Assistant App. Please select the tab at the bottom that you want to use to continue.',
          style: TextStyle(color: Colors.black, fontSize: 20)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    TimerWidget();
    return Scaffold(
      appBar: AppBar(
        title: Text("Set Timer"),
        backgroundColor: Color(0xffaf006a),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                icon: Icon(Icons.timer),
                hintText: "Please enter target breastfeeding time"),
            controller: timerController,
            onSubmitted: (duration) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Timer(
                        duration: int.parse(duration),
                      )));
            }),
      ),
    );
  }
}
