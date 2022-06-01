// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mncedisi_gumede_module3/authentication/constants/constants.dart';
import 'package:mncedisi_gumede_module3/authentication/registration.dart';
import 'package:mncedisi_gumede_module3/authentication/signin.dart';
import 'package:mncedisi_gumede_module3/authentication/signup.dart';
import 'package:mncedisi_gumede_module3/home/dashboard.dart';

class ProfileScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        shadowColor: Colors.white.withOpacity(.5),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ProfilePic(),
            SizedBox(height: 20,),
            ProfileMenu(
              text:"My Account",
              icon: Icon(Icons.person).toString(),
              onTap: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Dashboard()));
              },
            ),
            ProfileMenu(
              text: 'Dashboard',
              icon: Icon(Icons.home_max_outlined).toString(),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
              },
            ),
            ProfileMenu(
              text: 'Log out',
              icon: Icon(Icons.logout_outlined).toString(),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => WelcomeScreen())));
              }
            )
          ]
        ),
      )
    );
  }
}

class ProfilePic extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/image_5.jpg'),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: Color(0xfff5f6f9),
                ),
                onPressed: (){},
                child: Icon(Icons.camera_alt_sharp),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget{
  const ProfileMenu({
    required this.text,
    required this.icon,
    this.onTap,
  });

  final String text, icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          backgroundColor: kPrimaryColor
        ),
        onPressed: onTap,
        child: Row(
          children: [
            Expanded(
              child: Text(text),
            ),
            Icon(
              Icons.arrow_forward_ios,
            )
          ],
        ),
      ),
    );
  }
}