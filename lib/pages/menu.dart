import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Menu"),
            Padding(
              padding: EdgeInsets.only(right: 50),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 55,
            padding: EdgeInsets.all(5),
            child: RaisedButton(
              color: Color(0xFF5e17eb),
              onPressed: () => {},
              child: Text(
                "Customize",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            padding: EdgeInsets.all(5),
            child: RaisedButton(
              color: Color(0xFF5e17eb),
              onPressed: () => {},
              child: Text(
                "Add Categories",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            padding: EdgeInsets.all(5),
            child: RaisedButton(
              color: Color(0xFF5e17eb),
              onPressed: () => {},
              child: Text(
                "Review Your Notes",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 55,
            padding: EdgeInsets.all(5),
            child: RaisedButton(
              color: Color(0xFF5e17eb),
              onPressed: () => {},
              child: Text(
                "Savings",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
