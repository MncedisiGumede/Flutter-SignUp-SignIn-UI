// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mncedisi_gumede_module3/authentication/constants/constants.dart';
import 'package:mncedisi_gumede_module3/home/about.dart';
import 'package:mncedisi_gumede_module3/home/profile.dart';

import '../authentication/signin.dart';


// Mncedisi Gumede Module-3: IT University (MTNAppAcademy)
// Left Sliding Drawer. Date 19 May 2022 **23**

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard',),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shadowColor: Colors.white.withOpacity(.5),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black
              ),
              child: Icon(Icons.person_sharp,
                color: kPrimaryColor,
                size: 150,
              ),),
            ListTile(
              title: Text('Profile'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()));
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 145),
              ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()));
              },
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutScreen())
                  );
                },
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: Text('About Screen'),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              )
            ),
            SizedBox(height: 25,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()));
              },
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen())
                  );
                },
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: Text('Profile Screen'),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              )
              ),
          ],
        )
      ),
    );
  }
}