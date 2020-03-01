import 'package:flutter/material.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';
import 'package:neuomorphism/demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neuomorphic Container',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Demo(),debugShowCheckedModeBanner: false,
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
 Color color;
 double distance;
 double blur;
 double intensity;
 double radius;
 double height;
 double width;

 @override
  void initState() {
    color = Color.fromRGBO(209, 238, 238, 1.0);
    intensity =0.2;
    distance=20;
    radius=30.0;
    height=200.0;
    width=200.0;
    blur=60.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      padding: EdgeInsets.all(50.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        children:[
          Text("Flutter Neuomorphic Container",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.w600,color: Colors.blueGrey),),
          SizedBox(height: 10.0),
          Text("Neuomorphic Container Code Generator",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w300,color: Colors.blueGrey),),
          SizedBox(height: 10.0),
        SizedBox(child:  NeuomorphicContainer(
            height: height,
            width: width,
            borderRadius: BorderRadius.circular(radius),
            intensity: intensity,
            offset: Offset(distance,distance),
            color: color,
            blur: blur,
            style: NeuomorphicStyle.Pressed,
          ),height: 300,width: 300,
        )
       /*  SizedBox(child: Row(children: <Widget>[
              NeuomorphicContainer(
                height: height,
                width: width,
                borderRadius: BorderRadius.circular(radius),
                intensity: intensity,
                offset: Offset(distance,distance),
                color: color,
                blur: blur,
                style: NeuomorphicStyle.Pressed,
              ),
               SizedBox(width: 100.0),
               NeuomorphicContainer(
                 height: 400,
                 width: 400,
                 borderRadius: BorderRadius.circular(40.0),
                 intensity: intensity,
                 offset: Offset(distance,distance),
                 color: color,
                 blur: blur,
                 style: NeuomorphicStyle.Flat,
               )
              ],mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,mainAxisSize: MainAxisSize.max,

              ),width: 900,


          )*/
        ]
      ),
    ),
      backgroundColor: color,
    );
  }
}
