import 'planets.dart';
import 'spaceships.dart';
import 'package:flutter/material.dart';
import 'people.dart';
import 'films.dart';
import 'species.dart';
import 'vehicles.dart';
import 'HomePage.dart';

void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    //backgroundImage: AssetImage('images/stars.jpg');
//    ImageProvider backgroundImage = AssetImage('assets/Background/stars.jpg');
//    backgroundImage.resolve(createLocalImageConfiguration(context));
//    body: Container(
//        decoration: BoxDecoration(
//          image: DecorationImage(
//            image: backgroundImage,
//            fit: BoxFit.fill,
//          ),
//        )
//    );
    return new MaterialApp
      (
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Star Wars'),
            backgroundColor: Colors.black,
          ),


          //body: Dice(),

          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/stars.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: HomePage(),
          ),

        )
//      title: "Blog App",
//      theme: new ThemeData(
//        primarySwatch: Colors.pink,
//      ),
//      //backgroundImage: AssetImage('images/userp.png'),
//      home : HomePage(),

//      initialRoute: HomePage.id,
//      routes: {
//        HomePage.id:(context) => HomePage(),
        //films.id:(context) => films(),
//        planets.id:(context) => planets(),
//        people.id:(context) => people(),
     // },
    );

//    return MaterialApp(
//      /* theme: ThemeData.dark().copyWith(
//        textTheme: TextTheme(
//          body1: TextStyle(color: Colors.black54),
//        ),
//      ),*/
//      initialRoute: HomePage.id,
//      routes: {
//        HomePage.id:(context) => HomePage(),
//        LoginScreen.id:(context) => LoginScreen(),
//        //RegisterScreen.id:(context) => RegisterScreen(),
//      },
//    );

  }
}