import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

List data1;
List data2;
List data3;
List data4;
List data5;
List data6;


//void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  final String datea;
  HomePage({Key key, @required this.datea} ) : super(key: key);
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  //final String url="https://swapi.dev/api/people";
  final String f="https://swapi.dev/api/films/";
  final String peo="https://swapi.dev/api/people/";
  final String p="https://swapi.dev/api/planets/";
  final String ss="https://swapi.dev/api/starships/";
  final String v="https://swapi.dev/api/vehicles/";
  final String spe="https://swapi.dev/api/species/";

  final myController = TextEditingController();
  @override
  void initState(){
    super.initState();
    this.films();
    this.people();
    this.planets();
    this.spaceships();
    this.vehicles();
    this.species();
    //Planets, Spaceships, Vehicles, People, Films and Species
  }
  Future<String> films() async
  {
    var response = await http.get(
      //Encode the url
        Uri.encodeFull(f),
        //only accept json response
        headers: {"Accept": "application/json"}
    );
    print(response.body);

    setState(() {
      var convertDataTojson = json.decode(response.body); //JSON.decode() == new version json.decode() or jsonDecode()
      data1 = convertDataTojson['results'];
    });

    return "Success";
  }
  Future<String> people() async
  {
    var response = await http.get(
      //Encode the url
        Uri.encodeFull(peo),
        //only accept json response
        headers: {"Accept": "application/json"}
    );
    print(response.body);

    setState(() {
      var convertDataTojson = json.decode(response.body); //JSON.decode() == new version json.decode() or jsonDecode()
      data2 = convertDataTojson['results'];
    });

    return "Success";
  }
  Future<String> planets() async
  {
    var response = await http.get(
      //Encode the url
        Uri.encodeFull(p),
        //only accept json response
        headers: {"Accept": "application/json"}
    );
    print(response.body);

    setState(() {
      var convertDataTojson = json.decode(response.body); //JSON.decode() == new version json.decode() or jsonDecode()
      data3 = convertDataTojson['results'];
    });

    return "Success";
  }
  Future<String> spaceships() async
  {
    var response = await http.get(
      //Encode the url
        Uri.encodeFull(ss),
        //only accept json response
        headers: {"Accept": "application/json"}
    );
    print(response.body);

    setState(() {
      var convertDataTojson = json.decode(response.body); //JSON.decode() == new version json.decode() or jsonDecode()
      data4 = convertDataTojson['results'];
    });

    return "Success";
  }
  Future<String> vehicles() async
  {
    var response = await http.get(
      //Encode the url
        Uri.encodeFull(v),
        //only accept json response
        headers: {"Accept": "application/json"}
    );
    print(response.body);

    setState(() {
      var convertDataTojson = json.decode(response.body); //JSON.decode() == new version json.decode() or jsonDecode()
      data5 = convertDataTojson['results'];
    });

    return "Success";
  }
  Future<String> species() async
  {
    var response = await http.get(
      //Encode the url
        Uri.encodeFull(spe),
        //only accept json response
        headers: {"Accept": "application/json"}
    );
    print(response.body);

    setState(() {
      var convertDataTojson = json.decode(response.body); //JSON.decode() == new version json.decode() or jsonDecode()
      data6 = convertDataTojson['results'];
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
     // body: Center(child: SelectionButton()),
        backgroundColor: Colors.black,
      body : SafeArea(
//        child: Container(
//        decoration: BoxDecoration(
//        image: DecorationImage(
//        image: NetworkImage('https://specials-images.forbesimg.com/imageserve/5d65b894fead2800089255b0/960x0.jpg?fit=scale'),
//    fit: BoxFit.cover,
//    ),
//    ),
        child: Column(
          children: <Widget>[
            Container(
              //margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 40.0),
              child: Image(
                image:  NetworkImage('https://lh3.googleusercontent.com/0j2btgbeiif5qFLkknxUVAWcjyGnJ4vkyeMQ01FakCp6Dr5id7yOb1LhxU3511B3FOw=w720-h310'),
              ),

            ),
        Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.black,
          margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 20.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SelectionButton()
                  )
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SelectionButton1()
                ),
              ),
            ],
          ),
        ),
            Container(
              padding: EdgeInsets.all(5.0),
              color: Colors.black,
              //margin: EdgeInsets.symmetric(vertical: 0.0,horizontal: 2.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: 200.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://specials-images.forbesimg.com/imageserve/5d65b894fead2800089255b0/960x0.jpg?fit=scale'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: null /* add child content here */,
                  ),

                  Container(
                    height: 200.0,
                    width: 200.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://vignette.wikia.nocookie.net/starwars/images/6/69/Various_ships-SWU.jpg/revision/latest/scale-to-width-down/340?cb=20170401153204'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: null /* add child content here */,
                  ),
                ],
              ),
            ),
//            Container(
//             // padding: EdgeInsets.all(2.0),
//           child: Image(
//             image: NetworkImage('https://specials-images.forbesimg.com/imageserve/5d65b894fead2800089255b0/960x0.jpg?fit=scale'),
//             height: 257,
//             width: 500,
//           ),
//            ),
                ],
      ),
    )
      //),
    );
      }
}


class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Films'),
    );
  }
  _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Films'),
        backgroundColor: Colors.black,
      ),

      body:new ListView.builder(
          itemCount: data1==null ? 0 : data1.length,
          itemBuilder: (BuildContext context , int index)
          {
            return new Container(
                child: Container(
                decoration: BoxDecoration(
                image: DecorationImage(
                image: NetworkImage('https://eskipaper.com/images/star-wars-hd-1.jpg'),
            fit: BoxFit.cover,
            ),
            ),
              child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Card(
                      child: new Container(
                        child: new Text( data1[index]['title'] + "\n\nRelease Date: " + data1[index]['release_date']
                       +"\n\nDirector: "+data1[index]['director'] +"\n\nOverView: "+data1[index]['opening_crawl']),
                        padding: const EdgeInsets.all(40.0),
                      ),
                    )
                  ],
                ),  //column
              ),  //center
            ),
            );//container
          }   //itembuilder
      ),
    );
  }
}

class SelectionButton1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Characters'),
    );
  }
  _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen1()),
    );

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}

class SelectionScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your Favorite Characters'),
        backgroundColor: Colors.black,
      ),
      body:new ListView.builder(
          itemCount: data2==null ? 0 : data2.length,
          itemBuilder: (BuildContext context , int index)
          {
            return new Container(
                child: Container(
                decoration: BoxDecoration(
                image: DecorationImage(
                image: NetworkImage('https://eskipaper.com/images/star-wars-hd-1.jpg'),
            fit: BoxFit.cover,
            ),
            ),
              child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    new Card(
                      child: new Container(
                        child: new Text(data2[index]['name']+" \nEye Color: " +data2[index]['eye_color']
                        +"\nBirth Year: "+data2[index]['birth_year']+"\nGender: "+data2[index]['gender']
                            +"\nHome Planet: "+data3[index]['name']
                           +"\nStarship: "+ data4[index]['name']
                            ),
                        padding: const EdgeInsets.all(30.0),
                      ),
                    )
                  ],
                ),  //column
              ),
                )//center
            );  //container
          }   //itembuilder
      ),
    );
  }
}

class SelectionButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('Directors'),
    );
  }
  _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen2()),
    );

    // After the Selection Screen returns a result, hide any previous snackbars
    // and show the new result.
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$result")));
  }
}

class SelectionScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About Director'),
      ),
      body:new ListView.builder(
          itemCount: data4==null ? 0 : data4.length,
          itemBuilder: (BuildContext context , int index)
          {
            return new Container(
                child: Container(
                decoration: BoxDecoration(
                image: DecorationImage(
                image: NetworkImage('https://eskipaper.com/images/star-wars-hd-1.jpg'),
            fit: BoxFit.cover,
            ),
            ),
              child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    new Card(
                      child: new Container(
                        child: new Text(data4[index]['name']
                            +" \nClimate " +data5[index]['name']
                        //+"\nPopulation: "+data3[index]['population']
                        ),
                        padding: const EdgeInsets.all(40.0),
                      ),
                    )
                  ],
                ),  //column
              ),
                ) //center
            );  //container
          }   //itembuilder
      ),
    );
  }
}