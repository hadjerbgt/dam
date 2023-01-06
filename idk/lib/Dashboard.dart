import 'package:flutter/material.dart';
import 'package:project/app1/Calculate.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('VIVA application'),
          backgroundColor: Color.fromARGB(255, 86, 237, 141),
        ),
        body: Column(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 78, 88, 87),
                Color.fromARGB(255, 40, 40, 40)
              ])),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Calculate(),
                    ),
                  );
                },
                child: Text('calculate your mark')),
          ],
        ),
      ),
    );
  }
}
