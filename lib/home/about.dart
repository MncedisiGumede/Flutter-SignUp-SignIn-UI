// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mncedisi_gumede_module3/authentication/constants/constants.dart';
import 'package:mncedisi_gumede_module3/home/dashboard.dart';

class AboutScreen extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('About '),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shadowColor: Colors.white.withOpacity(.5),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> Dashboard()));
          },
          child: Container(
            height: 90,
            width: 250,
            margin: EdgeInsets.only(bottom: 100),
            padding: EdgeInsets.symmetric(horizontal: 91, vertical: 35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: kPrimaryColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Dashboard',
                style: Theme.of(context).textTheme.button?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}