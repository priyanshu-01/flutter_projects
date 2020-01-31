import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//void main() => runApp(MyApp());

class Home1 extends StatefulWidget {
  Home1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Home1 createState() => _Home1();
}



class _Home1 extends State<Home1> {
  // This widget is the root of your application.
  String _text1="text here";
  @override
  Widget build(BuildContext context) {
    //return MaterialApp(
    return Scaffold(

        appBar: AppBar(
          //backgroundColor: Colors.blue,
          title: Text("Notes",


          textAlign: TextAlign.center),


        ),
        body: GridView.count(
            crossAxisCount: 2,
          children: <Widget>[
            FlatButton(
              child: Text(_text1, style: GoogleFonts.mcLaren()),

              textColor: Colors.black,
              color: Colors.blue,
            ),
            FlatButton(
              child: Text(_text1),
            ),FlatButton(
              child: Text(_text1),
            ),FlatButton(
              child: Text(_text1),
            ),FlatButton(
              child: Text(_text1),
            ),FlatButton(
              child: Text(_text1),
            ),
            FlatButton(
              child: Text(_text1),
            ),FlatButton(
              child: Text(_text1),
            ),FlatButton(
              child: Text(_text1),
            ),FlatButton(
              child: Text(_text1),

            ),
            Text(
              "hey",
                style: GoogleFonts.mcLaren()

            ),

          ]),

        floatingActionButton: FloatingActionButton(
        onPressed: (){},
          child: Icon(Icons.note_add),


    ),
    );
  }
}