import 'package:project/app1/result.dart';
import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  const Calculate({Key? key}) : super(key: key);

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  TextEditingController note1Controller = TextEditingController();
  TextEditingController note2Controller = TextEditingController();
  TextEditingController note3Controller = TextEditingController();
  TextEditingController note4Controller = TextEditingController();
  TextEditingController note5Controller = TextEditingController();
  TextEditingController note6Controller = TextEditingController();
  TextEditingController note7Controller = TextEditingController();
  TextEditingController note8Controller = TextEditingController();
  TextEditingController note9Controller = TextEditingController();
  TextEditingController note10Controller = TextEditingController();
  TextEditingController note11Controller = TextEditingController();
  TextEditingController note12Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromARGB(255, 118, 129, 125),
      appBar: AppBar(
        title: Text('calculate'),
        backgroundColor: Color.fromARGB(255, 89, 148, 99),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Table(
                border: TableBorder.all(width: 1, color: Colors.black),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                defaultColumnWidth: FlexColumnWidth(115),
                children: [
                  TableRow(children: [
                    TableCell(child: Text("")),
                    TableCell(child: Text("Barème(max)")),
                    TableCell(child: Text("Note"))
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("Organisation du mémoire ")),
                    TableCell(child: Text("0.5")),
                    TableCell(
                        child: TextField(
                      controller: note1Controller,
                      keyboardType: TextInputType.number,
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("Qualité rédactionnelle")),
                    TableCell(child: Text("1")),
                    TableCell(
                        child: TextField(
                      controller: note2Controller,
                      keyboardType: TextInputType.number,
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("Qualité de la bibliographie")),
                    TableCell(child: Text("0.5")),
                    TableCell(
                        child: TextField(
                      controller: note3Controller,
                      keyboardType: TextInputType.number,
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("Ergonomie/clarté de l’analyse")),
                    TableCell(child: Text("1")),
                    TableCell(
                        child: TextField(
                      controller: note4Controller,
                      keyboardType: TextInputType.number,
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("Qualité des résultats ")),
                    TableCell(child: Text("1")),
                    TableCell(
                        child: TextField(
                      controller: note5Controller,
                      keyboardType: TextInputType.number,
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("Maîtrise des outils")),
                    TableCell(child: Text("1")),
                    TableCell(
                        child: TextField(
                      controller: note6Controller,
                      keyboardType: TextInputType.number,
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("Qualité de la présentation ")),
                    TableCell(child: Text("1")),
                    TableCell(
                        child: TextField(
                      controller: note7Controller,
                      keyboardType: TextInputType.number,
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("Expression orale aisée")),
                    TableCell(child: Text("1")),
                    TableCell(
                        child: TextField(
                      controller: note8Controller,
                      keyboardType: TextInputType.number,
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("Barème(max)")),
                    TableCell(child: Text("1")),
                    TableCell(
                        child: TextField(
                      controller: note9Controller,
                      keyboardType: TextInputType.number,
                    ))
                  ]),
                  TableRow(children: [
                    TableCell(child: Text("Problématique bien posée")),
                    TableCell(child: Text("2")),
                    TableCell(
                        child: TextField(
                      controller: note10Controller,
                      keyboardType: TextInputType.number,
                    ))
                  ]),
                ]),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 89, 148, 99), foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => result(
                                val1: note1Controller.text,
                                val2: note2Controller.text,
                                val3: note3Controller.text,
                                val4: note4Controller.text,
                                val5: note5Controller.text,
                                val6: note6Controller.text,
                                val7: note7Controller.text,
                                val8: note8Controller.text,
                                val9: note9Controller.text,
                                val10: note10Controller.text,
                              )));
                },
                child: const Text(
                  "calculate",

                ))
          ],
        ),
      ),
    );
  }
}
