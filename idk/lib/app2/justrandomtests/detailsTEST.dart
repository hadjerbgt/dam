// ignore_for_file: prefer_const_constructors

import 'dart:html';

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
      appBar: AppBar(
        title: Text("Created Vivas Details"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),

      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ListTile(
              title: Column(
                children: <Widget>[
                  Container(
                    
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0,20,255,1.000),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(projectname,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23.0,
                            ),
                            ),
                          RichText( 
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.percent_outlined, size: 14),
                                ),
                                TextSpan(text: stFullName,
                                ),
                              ],
                            ),
                          ),
                          RichText( 
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.percent_outlined, size: 14),
                                ),
                                TextSpan(text: ndFullName,
                                ),
                              ],
                            ),
                          ),
                          RichText( 
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(Icons.percent_outlined, size: 14),
                                ),
                                TextSpan(text: rdFullName,
                                ),
                              ],
                            ),
                          ),
                         ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(child: Column(
                            children: <Widget>[
                              Text("The Final Mark",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text(finalmark,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600,
                          ),
                          ),
                            ],
                          ))
                        ],
                      ),
                    ],
                  ),
                  )
                ],
              )
              )
            ],
          ),
        )
      );
 }
}