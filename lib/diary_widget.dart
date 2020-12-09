import 'package:flutter/material.dart';

import 'listView.dart';

class DiaryWidget extends StatefulWidget {
  @override
  _DiaryWidgetState createState() => _DiaryWidgetState();
}

var myFoodList = List(); // var myList = [];

printFoodList() {
  print(myFoodList);
}

class _DiaryWidgetState extends State<DiaryWidget> {
  @override
  Widget build(BuildContext context) {
    final inputFood = Padding(
      padding: EdgeInsets.only(bottom: 10, top: 15),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Enter The Last Food You Ate Here',
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    new Container(
      height: 97.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new MyFoodListView(),
          // ...
        ],
      ),
    );

    final addButton = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child:
              Text('Add', style: TextStyle(color: Colors.white, fontSize: 20)),
          color: Color(0xFF1db9e8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {
            myFoodList.add(inputFood);
            print(myFoodList);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => MyFoodListView()));
          },
        ),
      ),
    );

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[
            inputFood,
            addButton,
            Container(),
          ],
        ),
      ),
    ));
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       appBar: AppBar(
//         title: Text("LER Food Diary"),
//         backgroundColor: Color(0xffaf006a),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: TextField(
//           keyboardType: TextInputType.text,
//           decoration: InputDecoration(
//               icon: Icon(Icons.fastfood),
//               hintText: "Please enter food you ate last"),
//           onSubmitted: myFoodList.add,
//           )
//       ),
//     );
//   }
  }
}
