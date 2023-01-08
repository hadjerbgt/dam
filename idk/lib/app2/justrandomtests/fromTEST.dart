import 'package:flutter/material.dart';
import 'package:project/app2/details.dart';
import 'package:project/app2/widgets/mytextfields.dart';



class Myform extends StatefulWidget {
  const Myform({super.key});

  @override
  State<Myform> createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  var _projectname;
  final nameController=TextEditingController();
  final yearController=TextEditingController();
  final stfullnameController=TextEditingController();
  final ndfullnameController=TextEditingController();
  final rdfullnameController=TextEditingController();
  final supnoteController=TextEditingController();
  final viprenoteController=TextEditingController();
  final exmnoteController=TextEditingController();
  var finalmarkController;
  var result;

  final _formkey = GlobalKey<FormState>();


  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Viva Creator"),
        centerTitle: true,  
      ),
      body: Column( 
         crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
          children: [ const Image( 
              image: AssetImage("assets/img/certificate.png"),
              width: 100.0,
              height: 100.0,
              
            ),
            const Text(
              "Viva Finalizing",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700),
            ),
            const Text("Please fill the form carefully"),
            const SizedBox(height: 20.0,),            
            Form(
              key: _formkey,
              child: Column(
                children: [
                  MyTextField(
                    havecontroller: nameController,
                    text:'Project Name', erromessage: 'Please enter a Name',
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                    havecontroller: yearController,
                    text:'Project Year',
                    leadingIcone: Icons.numbers_outlined, erromessage: 'Please enter a Year',
                 ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                    havecontroller: stfullnameController, 
                    text: 'The First Student Full name',
                    leadingIcone: Icons.person_outlined, erromessage: 'Please enter the Student Full name',
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(havecontroller: ndfullnameController, 
                    text: 'The Second Student Full name',
                    leadingIcone: Icons.person_outlined, erromessage: 'Please enter the Student Full name',
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(havecontroller: rdfullnameController, 
                    text: 'The Third Student Full name', erromessage: 'Please enter the Student Full name',
                    leadingIcone: Icons.person_outlined,
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                    havecontroller: supnoteController, 
                    text: 'The Supervisor note',
                    leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter the Supervisor note ',
              
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                    havecontroller: viprenoteController, 
                    text: 'The Viva President note',
                    leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter the Viva President note',
              
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                    havecontroller: exmnoteController, 
                    text: 'The Examinator note',
                    leadingIcone: Icons.note_alt_outlined, erromessage: 'Please enter the Examinator note ',
              
                  ),

                  const SizedBox(height: 20.0,),
                  myBtn(context),
                ],
              ),
            ),
          ],
        
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(minimumSize: const Size(200,50)),
        onPressed: (){
          if(_formkey.currentState!.validate()){
            result= double.parse(supnoteController.text)*0.3+double.parse(viprenoteController.text)*0.3+double.parse(exmnoteController.text)*0.3;
            finalmarkController= result.toStringAsFixed(2);

            Navigator.push(
             context, 
             MaterialPageRoute(builder: (context){
              return Details(projectname: nameController.text,year: yearController.text,stFullName: stfullnameController.text,ndFullName: ndfullnameController.text,rdFullName: rdfullnameController.text,finalmark: finalmarkController,);
            }
          ),
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

 
