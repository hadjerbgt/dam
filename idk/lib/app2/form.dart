// import 'package:flutter/material.dart';
// import 'package:project/app2/details.dart';
// import 'package:project/app2/widgets/mytextfields.dart';
//
//
//
// class Myform extends StatefulWidget {
//   const Myform({super.key});
//
//   @override
//   State<Myform> createState() => _MyformState();
// }
//
// class _MyformState extends State<Myform> {
//   var _projectname;
//   final nameController=TextEditingController();
//   final yearController=TextEditingController();
//   final stfullnameController=TextEditingController();
//   final ndfullnameController=TextEditingController();
//   final rdfullnameController=TextEditingController();
//   final supnoteController=TextEditingController();
//   final viprenoteController=TextEditingController();
//   final exmnoteController=TextEditingController();
//   var finalmarkController;
//   var result;
//
//   final _formkey = GlobalKey<FormState>();
//
// //here we need to add the url and shit and link the php variables with the controllers
//   @override
//   void dispose() {
//     nameController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color.fromARGB(255, 118, 129, 125),
//       appBar: AppBar(
//         title: const Text("Viva Creator"),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 89, 148, 99),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(30.0),
//         child: ListView(
//           children: [
//             /*const Image(
//               image: AssetImage("assets/img/certificate.png"),
//               width: 50.0,
//               height: 100.0,
//               fit: BoxFit.scaleDown,
//             ),*/
//             const Text("Viva Finalizing",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),),
//             const Text("Please fill the form carefully"),
//             const SizedBox(height: 20.0,),
//
//             Form(
//               key: _formkey,
//               child: Column(
//                 children: [
//                   MyTextField(
//                     havecontroller: nameController,
//                     text:'Project Name', erromessage: 'Please enter a Name',
//                   ),
//                   const SizedBox(height: 10.0),
//                   MyTextField(
//                     havecontroller: yearController,
//                     text:'Project Year',
//                     leadingIcone: Icons.numbers_outlined, erromessage: 'Please enter a Year',
//                  ),
//                   const SizedBox(height: 10.0),
//                   MyTextField(
//                     havecontroller: stfullnameController,
//                     text: 'The First Student Full name',
//                     leadingIcone: Icons.person_outlined, erromessage: 'Please enter the Student Full name',
//                   ),
//                   const SizedBox(height: 10.0),
//                   MyTextField(havecontroller: ndfullnameController,
//                     text: 'The Second Student Full name',
//                     leadingIcone: Icons.person_outlined, erromessage: 'Please enter the Student Full name',
//                   ),
//                   const SizedBox(height: 10.0),
//                   MyTextField(havecontroller: rdfullnameController,
//                     text: 'The Third Student Full name', erromessage: 'Please enter the Student Full name',
//                     leadingIcone: Icons.person_outlined,
//                   ),
//                   const SizedBox(height: 10.0),
//                   MyTextField(
//                     havecontroller: supnoteController,
//                     text: 'The Supervisor note',
//                     leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter the Supervisor note ',
//
//                   ),
//                   const SizedBox(height: 10.0),
//                   MyTextField(
//                     havecontroller: viprenoteController,
//                     text: 'The Viva President note',
//                     leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter the Viva President note',
//
//                   ),
//                   const SizedBox(height: 10.0),
//                   MyTextField(
//                     havecontroller: exmnoteController,
//                     text: 'The Examinator note',
//                     leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter the Examinator note ',
//
//                   ),
//
//                   const SizedBox(height: 20.0,),
//                   myBtn(context),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       )
//     );
//   }
//
//   OutlinedButton myBtn(BuildContext context) {
//     return OutlinedButton(
//         style: OutlinedButton.styleFrom(minimumSize: const Size(200,50)),
//         onPressed: (){
//           if(_formkey.currentState!.validate()){
//             result= double.parse(supnoteController.text)*0.3+double.parse(viprenoteController.text)*0.3+double.parse(exmnoteController.text)*0.3;
//             finalmarkController= result.toStringAsFixed(2);
//
//             Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context){
//               return Details(projectname: nameController.text,year: yearController.text,stFullName: stfullnameController.text,ndFullName: ndfullnameController.text,rdFullName: rdfullnameController.text,finalmark: finalmarkController,);
//             }
//           ),
//         );
//       }
//     },
//       child: Text(
//         "Submit Viva".toUpperCase(),
//         style: const TextStyle(fontWeight: FontWeight.bold),
//       ),
//     );
//   }
// }
//
//
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/app2/details.dart';
import 'package:project/app2/widgets/mytextfields.dart';
import 'package:http/http.dart' as http;

class Myform extends StatefulWidget {
  const Myform({super.key});

  @override
  State<Myform> createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  var _projectname;
  TextEditingController nameController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController stfullnameController = TextEditingController();
  TextEditingController ndfullnameController = TextEditingController();
  TextEditingController rdfullnameController = TextEditingController();
  TextEditingController supnoteController = TextEditingController();
  TextEditingController viprenoteController = TextEditingController();
  TextEditingController exmnoteController = TextEditingController();
  var finalmarkController;
  var result;

  final _formkey = GlobalKey<FormState>();
  Future viva() async {
    var url = Uri.http("192.168.1.6", '/phpcode/viva.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "projectname": nameController.text,
      "year": yearController.text,
      "st1": stfullnameController.text,
      "st2": ndfullnameController.text,
      "st3": rdfullnameController.text,
      "note_ex": exmnoteController.text,
      "note_p": viprenoteController.text,
      "note_s": supnoteController.text,
      "note_f": finalmarkController.text,
    });

    var data = json.decode(response.body);
    if (data.toString() == "Success") {
      Fluttertoast.showToast(
        msg: 'viva submited',
        backgroundColor: Colors.green,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
      );
    } else {
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'error',
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }

//here we need to add the url and shit and link the php variables with the controllers
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 118, 129, 125),
        appBar: AppBar(
          title: const Text("Viva Creator"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 89, 148, 99),
        ),
        body: Container(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              /*const Image(
              image: AssetImage("assets/img/certificate.png"),
              width: 50.0,
              height: 100.0,
              fit: BoxFit.scaleDown,
            ),*/
              const Text(
                "Viva Finalizing",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
              ),
              const Text("Please fill the form carefully"),
              const SizedBox(
                height: 20.0,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: [
                    MyTextField(
                      havecontroller: nameController,
                      text: 'Project Name',
                      erromessage: 'Please enter a Name',
                    ),
                    const SizedBox(height: 10.0),
                    MyTextField(
                      havecontroller: yearController,
                      text: 'Project Year',
                      leadingIcone: Icons.numbers_outlined,
                      erromessage: 'Please enter a Year',
                    ),
                    const SizedBox(height: 10.0),
                    MyTextField(
                      havecontroller: stfullnameController,
                      text: 'The First Student Full name',
                      leadingIcone: Icons.person_outlined,
                      erromessage: 'Please enter the Student Full name',
                    ),
                    const SizedBox(height: 10.0),
                    MyTextField(
                      havecontroller: ndfullnameController,
                      text: 'The Second Student Full name',
                      leadingIcone: Icons.person_outlined,
                      erromessage: 'Please enter the Student Full name',
                    ),
                    const SizedBox(height: 10.0),
                    MyTextField(
                      havecontroller: rdfullnameController,
                      text: 'The Third Student Full name',
                      erromessage: 'Please enter the Student Full name',
                      leadingIcone: Icons.person_outlined,
                    ),
                    const SizedBox(height: 10.0),
                    MyTextField(
                      havecontroller: supnoteController,
                      text: 'The Supervisor note',
                      leadingIcone: Icons.note_alt_outlined,
                      erromessage: 'Please enter the Supervisor note ',
                    ),
                    const SizedBox(height: 10.0),
                    MyTextField(
                      havecontroller: viprenoteController,
                      text: 'The Viva President note',
                      leadingIcone: Icons.note_alt_outlined,
                      erromessage: 'Please enter the Viva President note',
                    ),
                    const SizedBox(height: 10.0),
                    MyTextField(
                      havecontroller: exmnoteController,
                      text: 'The Examinator note',
                      leadingIcone: Icons.note_alt_outlined,
                      erromessage: 'Please enter the Examinator note ',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    myBtn(context),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        if (_formkey.currentState!.validate()) {
          viva();
          result = double.parse(supnoteController.text) * 0.3 +
              double.parse(viprenoteController.text) * 0.3 +
              double.parse(exmnoteController.text) * 0.3;
          finalmarkController = result.toStringAsFixed(2);

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return Details(
                projectname: nameController.text,
                year: yearController.text,
                stFullName: stfullnameController.text,
                ndFullName: ndfullnameController.text,
                rdFullName: rdfullnameController.text,
                finalmark: finalmarkController,
              );
            }),
          );
        }
      },
      child: Text(
        "Submit Viva".toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
