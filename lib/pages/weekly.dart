import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Weekly extends StatefulWidget {
  @override
  _WeeklyState createState() => _WeeklyState();
}

class _WeeklyState extends State<Weekly> {
  Map<String, double> dataMap = {
    "Sun": 2,
    "Mon": 3,
    "Tue": 5,
    "Wed": 1,
    "Thu": 4,
    "Fri": 3,
    "Sat": 5,
  };

  DateTime _selectedDate;
  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
    print('...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weekly Expenses"),
        backgroundColor: Color(0xFF5e17eb),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15),
              width: double.infinity,
              //height: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 15,
                        left: 15,
                      ),
                      child: Text(
                        "This Week",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(left: 15, top: 5, right: 15),
                            child: Text(
                              "₹576",
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                color: Color(0xFF5e17eb),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: PieChart(
              dataMap: dataMap,
            ),
          ),
          // Flexible(
          //   flex: 1,
          //   child: Row(
          //     children: [
          //       Expanded(
          //         flex: 2,
          //         child: Container(
          //           padding: EdgeInsets.only(left: 15, right: 7.5),
          //           height: 75,
          //           child: RaisedButton(
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(15.0)),
          //             child: Text(
          //               _selectedDate == null
          //                   ? 'No Date Chosen!'
          //                   : 'Picked Date: ${DateFormat.yMd().format(_selectedDate)}',
          //               style: TextStyle(color: Colors.white, fontSize: 20),
          //             ),
          //             onPressed: _presentDatePicker,
          //             color: Color(0xFF5e17eb),
          //           ),
          //         ),
          //       ),
          //       Expanded(
          //         flex: 1,
          //         child: Container(
          //           padding: EdgeInsets.only(left: 7.5, right: 15),
          //           height: 75,
          //           child: RaisedButton(
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(15.0),
          //             ),
          //             child: Text(
          //               "Go",
          //               style: TextStyle(fontSize: 20, color: Colors.white),
          //             ),
          //             onPressed: _selectedDate == null
          //                 ? null
          //                 : () {
          //                     Navigator.push(
          //                       context,
          //                       MaterialPageRoute(
          //                           builder: (context) => Daily()),
          //                     );
          //                   },
          //             color: Color(0xFF5e17eb),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
