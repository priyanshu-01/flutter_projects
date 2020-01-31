import 'package:flutter/material.dart';
import 'home1.dart';

void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        //title: 'Flutter',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  Color _color = Colors.blue;
  int flag=0;


  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }
  Color _generateColor()
  {
    if (flag==1)
    return Colors.orange;
    else
      return Colors.blue;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),

      ),
      body: Center(

        child : Container(
          color: Colors.redAccent,
          alignment: Alignment.center,

          constraints: BoxConstraints.expand(),
            //height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,

          //width: ,
         child: Column(

           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             /*GridView.count(
               crossAxisCount: 1,
               children: <Widget>[
                 Text("hello"),
                 Text("hello"),Text("hello"),
               ],
             ),*/
           children: <Widget>[
             /*
             Padding(
               padding: EdgeInsets.all(50.0),
             ),*/
             FlatButton(


               //child: Image(
               child: Text(
                 "Click Me",
                 style: TextStyle(fontSize: 80.0 ),
               ),


               color: _color,
               textColor: Colors.black,
               textTheme: ButtonTextTheme.accent,
               //disabledColor: Colors.green,
               onPressed: (){
                 print('pressed');
                 setState(() {
                   if(flag==0)
                     flag = 1;
                   else
                     flag=0;
                   _color = _generateColor();

                 });

               },
               //width: 120.0,
               //alignment: Alignment.bottomLeft,

               //image: NetworkImage("https://wallpapercave.com/wp/wp2162760.jpg"),
               // image: AssetImage("assets/images/img1.jpg"),
             ),


             new RaisedButton(
               onPressed: (){
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Home1())
                 );
               },
               child: Text(
                 "hey",
                 style: TextStyle(fontSize: 80.0 ),
               ),
               color: Colors.blue,
               highlightColor: Colors.black,



             ),
             Text(
               "Click Me",
               style: TextStyle(fontSize: 80.0 ),
             ),
             Text(
               "Click Me",
               style: TextStyle(fontSize: 80.0 ),
             ),
             /* new */
           ],
         ),
        ),


          // color: Colors.yellowAccent,
          //child: Text("heyyyyyyy",
          //textAlign: TextAlign.right,
        ),
      backgroundColor: Colors.black,

      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.


      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.accessibility_new),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
      ], backgroundColor: Colors.yellow),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
