import 'package:flutter/material.dart';
import 'package:pdpui6/animation/FadeAnimation.dart';
import 'package:pdpui6/pages/next_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  static final String id="home_page";
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  bool _isSignin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/photo1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.5),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
               child: Column(
                 children: [
                   SizedBox(
                     height: 70,
                   ),
                   FadeAnimation(
                       1.5,
                       Text(
                         "Find the best parties near you", // #title top
                         style: TextStyle(
                             color: Colors.yellow,
                             fontSize: 30,
                             fontWeight: FontWeight.bold,
                             height: 1.1),
                       ),
                   ),
                   SizedBox(
                     height: 30,
                   ),
                   FadeAnimation(
                       1.5,
                       Text(
                         "Let us find you a party for your interest", // #title bottom
                         style: TextStyle(
                             color: Colors.green,
                             fontSize: 22,
                             fontWeight: FontWeight.normal),
                       ),
                   ),
                 ],
               ),
             ),
              SizedBox(
                height: 100,
              ),
              _isSignin ? FadeAnimation(1.6, GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, NextPage.id);
                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow[900]
                  ),
                  child: Center(
                      child: Text(
                        "Start", // #start
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ),
              ),) : FadeAnimation(1.6,Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8.0,),
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red
                          ),
                          child: Center(
                            child: Text(
                              "Google+", // #google
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8.0,),
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Text(
                              "Facebook", // #facebook
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
