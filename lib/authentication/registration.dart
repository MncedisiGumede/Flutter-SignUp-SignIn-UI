// ignore_for_file: prefer_const_constructors
import 'package:mncedisi_gumede_module3/authentication/signin.dart';
import 'constants/constants.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen ({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "CODING ADVENTURE\n",
                        style: Theme.of(context).textTheme.headline4,
                        
                      ),
                      TextSpan(
                        text: "MASTER ONE LANGUAGE AT A TIME",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: ((context) => SignInScreen())
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 80),
                      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "START JOURNEY",
                            style: Theme.of(context).textTheme.button?.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                )
            )],
            ),
          )
        ],
      ),
    );
  }
}