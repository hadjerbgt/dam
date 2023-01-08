// ignore_for_file: prefer_const_constructors


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatelessWidget {
   Details({Key? key, required this.projectname, required this.year, required this.stFullName, required this.ndFullName, required this.rdFullName, required this.finalmark}) : super(key: key);
  
  String projectname;
  String year;
  String stFullName;
  String ndFullName;
  String rdFullName; 
  String finalmark;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 118, 129, 125),
      appBar: AppBar(
        title: Text("Created Vivas Details"),
        backgroundColor: Color.fromARGB(255, 89, 148, 99),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),

      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.library_books_rounded),
              title: Text("The Project « $projectname »"),
              subtitle: Text("It was presnted by these students: ${stFullName.toUpperCase()}, ${ndFullName.toUpperCase()} and ${rdFullName.toUpperCase()}.\nOn $year.\nThey got $finalmark."),
            )
          ],
        ),
      )
    );
  }
}