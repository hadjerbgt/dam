import 'package:project/app1/Calculate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget {
  String val1, val2, val3, val4, val5, val6, val7, val8, val9, val10;

  result({
    required this.val1,
    required this.val2,
    required this.val3,
    required this.val4,
    required this.val5,
    required this.val6,
    required this.val7,
    required this.val8,
    required this.val9,
    required this.val10,
  });
  @override
  Widget build(BuildContext context) {
    double result = double.parse(val1) +
        double.parse(val2) +
        double.parse(val3) +
        double.parse(val4) +
        double.parse(val5) +
        double.parse(val6) +
        double.parse(val7) +
        double.parse(val8) +
        double.parse(val9) +
        double.parse(val10);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 118, 129, 125),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 89, 148, 99),
        title: Text('final teacher’s mark'),
      ),
      body: Container(
        child: Center(
            child: Center(
                child:
                    Text("YOUR FINAL MARK IS :\n                 $result"))),
      ),
    );
    ;
  }
}
