import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [const Color(0xff213A50), const Color(0xff071930)],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 100),
            CircleAvatar(
              radius: 100,
              child: Image.asset('circle-cropped.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Aditya Negandhi',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Self-Taught Fullstack Application developer based in India.',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '#FLUTTERDEV ❤️',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 25),
            Text(
              'Connect with Me',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // openGithub();
                    htmlOpenGithub();
                  },
                  child: Image.asset(
                    'icons8-github-100.png',
                    height: 50,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    htmlOpenLinkedin();
                  },
                  child: Image.asset('icons8-linkedin-100.png', height: 65)),
                GestureDetector(
                  onTap: (){
                    htmlOpenTwitter();
                  },
                  child: Image.asset('icons8-twitter-100.png', height: 50)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
               htmlOpenMySite(); 
              },
                          child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(colors: [
                      const Color(0xffA2834D),
                      const Color(0xffBC9A5F)
                    ])),
                child: Text(
                  "Download My Resume",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Made With ❤️ Using Flutter Web',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
    );
  }
}

void htmlOpenGithub() {
  String url = 'https://github.com/binarybeast01';
  html.window.open(url, '_blank');
}

void htmlOpenLinkedin() {
  String url = 'https://www.linkedin.com/in/aditya-negandhi-49290318b/';
  html.window.open(url, '_blank');
}

void htmlOpenTwitter() {
  String url = 'https://twitter.com/aditya_negandhi';
  html.window.open(url, '_blank');
}

void htmlOpenMySite() {
  String url = 'https://binarybeast-portfolio.netlify.app/';
  html.window.open(url, '_blank');
}
