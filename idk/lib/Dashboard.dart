import 'package:flutter/material.dart';
import 'package:project/app1/Calculate.dart';
import 'package:project/app2/form.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 118, 129, 125),
        appBar: AppBar(
          title: const Text('VIVA application'),
          backgroundColor: Color.fromARGB(255, 89, 148, 99),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   height: double.infinity,
            //   width: double.infinity,
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //       gradient: LinearGradient(colors: [
            //     Color.fromARGB(255, 78, 88, 87),
            //     Color.fromARGB(255, 40, 40, 40)
            //   ])),
            // ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 89, 148, 99), foregroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Calculate(),
                      ),
                    );
                  },
                  child: Text('calculate your mark')),

            ), const SizedBox(
              height: 35,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 89, 148, 99), foregroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Myform(),
                      ),
                    );
                  },
                  child: Text(' calculate the viva Mark')),

            ),
            const SizedBox(
              height: 35,
            ),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 89, 148, 99), foregroundColor: Colors.white),
                  onPressed: () {
                   //hadi nrigloha mbaad
                  },
                  child: Text(' check your filled viva')),

            ),

          ],
        ),
      ),
    );
  }
}
