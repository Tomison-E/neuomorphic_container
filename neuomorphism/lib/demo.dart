import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';
import 'package:url_launcher/url_launcher.dart';







class Demo extends StatefulWidget {
  final String title;
  Demo({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
   return _Demo();
  }

}

class _Demo extends State<Demo> with SingleTickerProviderStateMixin {

  Color color;
  Color pickedColor;
  double distance;
  double blur;
  double intensity;
  double radius;
  double height;
  double width;
  NeuomorphicStyle style;
  List<Color> navColors;
  TabController _tabController;

  @override
  void initState() {
    color = Color.fromRGBO(209, 238, 238, 1.0);
    intensity = 0.2;
    distance = 10;
    radius = 0.0;
    height = 200.0;
    width = 200.0;
    blur = 20.0;
    style = NeuomorphicStyle.Flat;
    _tabController = TabController(vsync: this, length: 5, initialIndex: 2);
    navColors = [Colors.grey, Colors.grey, color, Colors.grey, Colors.grey];
    super.initState();
  }

  void changeColor(Color selectedColor) {
    setState(() => pickedColor = selectedColor);
  }


  void _showDialog(BuildContext context) {
    // flutter defined function

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Pick a color!'),
            content: SingleChildScrollView(
              child: ColorPicker(
                pickerColor: color,
                onColorChanged: changeColor,
                showLabel: true,
                pickerAreaHeightPercent: 0.8,
              ),
            ), actions: <Widget>[
            FlatButton(
              child: const Text('Got it'),
              onPressed: () {
                setState(()
                    {color = pickedColor;navColors[1]=pickedColor;});
                Navigator.of(context).pop();
              },
            ),
          ],
          );
        }
    );
  }

  Widget widgetA() {
    return Container(
        constraints: BoxConstraints.expand(),
        color: CupertinoColors.white,
        padding: EdgeInsets.all(20.0),
        child: RichText(text: TextSpan(text: "NeuomorphicContainer(\nheight:",
            style: TextStyle(color: Colors.black, fontSize: 15.0),
            children: [
              TextSpan(text: " ${height.round()}.0, ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: "width:", style: TextStyle(color: Colors.black)),
              TextSpan(text: " ${width.round()}.0, ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: "borderRadius: BorderRadius.circular(",
                  style: TextStyle(color: Colors.black)),
              TextSpan(text: "${radius.round()}.0",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: "),\nintensity:",
                  style: TextStyle(color: Colors.black)),
              TextSpan(text: " ${intensity.toStringAsPrecision(2)}, ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: "color:", style: TextStyle(color: Colors.black)),
              TextSpan(text: " $color,\n",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: "offset: Offset(",
                  style: TextStyle(color: Colors.black)),
              TextSpan(text: "${distance.round()}.0,${distance.round()}.0",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: "), blur:", style: TextStyle(color: Colors.black)),
              TextSpan(text: " ${blur.round()}.0,\n",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: "style:", style: TextStyle(color: Colors.black)),
              TextSpan(text: " $style\n",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              TextSpan(text: ")", style: TextStyle(color: Colors.black)),
            ])
        ));
  }

  Widget widgetD() {
    return Column(
        children: [
          Row
            (children: [
            Text("   Size: ", style: TextStyle(color: Colors.blueGrey,
                fontSize: 15.0,
                fontWeight: FontWeight.w600)),
            Expanded(child: Slider.adaptive(value: height,
                onChanged: (value) =>
                    setState(() {
                      height = value;
                      width = value;
                      distance = height / 10;
                    }),
                label: "$height",
                min: 10.0,
                max: 300.0,
                activeColor: color == CupertinoColors.white
                    ? Colors.red
                    : color,
                inactiveColor: CupertinoColors.inactiveGray))
          ]),
          Row
            (children: [
            Text("   Radius: ", style: TextStyle(color: Colors.blueGrey,
                fontSize: 15.0,
                fontWeight: FontWeight.w600)),
            Expanded(child: Slider.adaptive(value: radius,
                onChanged: (value) =>
                    setState(() {
                      radius = value;
                    }),
                label: "$radius",
                min: 0.0,
                max: 50.0,
                activeColor: color == CupertinoColors.white
                    ? Colors.red
                    : color,
                inactiveColor: CupertinoColors.inactiveGray))
          ]),
          Row
            (children: [
            Text("   Distance: ", style: TextStyle(color: Colors.blueGrey,
                fontSize: 15.0,
                fontWeight: FontWeight.w600)),
            Expanded(child: Slider.adaptive(value: distance,
                onChanged: (value) =>
                    setState(() {
                      distance = value;
                    }),
                label: "$distance",
                min: 5.0,
                max: 50.0,
                activeColor: color == CupertinoColors.white
                    ? Colors.red
                    : color,
                inactiveColor: CupertinoColors.inactiveGray))
          ]),
          Row
            (children: [
            Text("   Blur: ", style: TextStyle(color: Colors.blueGrey,
                fontSize: 15.0,
                fontWeight: FontWeight.w600)),
            Expanded(child: Slider.adaptive(value: blur,
                onChanged: (value) => setState(() => blur = value),
                label: "$blur",
                min: 1.0,
                max: 100.0,
                activeColor: color == CupertinoColors.white
                    ? Colors.red
                    : color,
                inactiveColor: CupertinoColors.inactiveGray))
          ]),


        ]
    );
  }


  Widget widgetB() {
    return Column(children: [Row(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 15.0), child: Column(
          children: [
            Text("Esan Tomisin", style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0), textAlign: TextAlign.left),
           IconButton(icon:ImageIcon(AssetImage("assets/twitter.png"),color: color == CupertinoColors.white ? Colors.red : color,size: 50.0,),onPressed: (){
             try{
               _launchURL("https://twitter.com/OluwatomisinEs2");
             }
             catch(e){
               print (e);
             }
           },)
          ]
          , crossAxisAlignment: CrossAxisAlignment.start,)),
        GestureDetector(child:Container(decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.red)),
          child: Padding(padding: EdgeInsets.all(5.0),
              child: Row(children: [
                Image.asset("assets/coffee.png", height: 30.0, width: 30.0),
                Text("  Buy me a coffee  ", style: TextStyle(color: Colors.red))
              ])),
          margin: EdgeInsets.only(right: 10.0),),onTap:(){
          try{
            _launchURL("https://www.buymeacoffee.com/urNGRFs");
          }
          catch(e){
            print (e);
          }
        } )
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
    ),
      Row(children: <Widget>[
        Expanded(child: FlatButton.icon(onPressed: () {
          try{
            _launchURL("https://github.com/Tomison-E/neuomorphic_container");
          }
          catch(e){
            print (e);
          }
        },
            icon: Icon(Icons.star, color: Colors.black45,),
            label: Text("Star this repo"))),
        Expanded(child: FlatButton.icon(onPressed: () {
          try{
            _launchURL("https://pub.dev/packages/neuomorphic_container");
          }
          catch(e){
            print (e);
          }
        },
            icon: Icon(Icons.thumb_up, color: Colors.black45,),
            label: Text("Like this package")))
      ],)
    ], mainAxisAlignment: MainAxisAlignment.spaceAround,);
  }

  Widget widgetC() {
    return Column(
      children: [
        Row
          (children: [
          Text("   Intensity: ", style: TextStyle(color: Colors.blueGrey,
              fontSize: 20.0,
              fontWeight: FontWeight.w600)),
          Expanded(child: Slider.adaptive(value: intensity,
              onChanged: (value) => setState(() => intensity = value),
              label: "$intensity",
              min: 0.01,
              max: 0.6,
              activeColor: color == CupertinoColors.white ? Colors.red : color,
              inactiveColor: CupertinoColors.inactiveGray))
        ]),
        FlatButton.icon(onPressed: () => _showDialog(context),
            icon: Icon(Icons.color_lens,
              color: color == CupertinoColors.white ? Colors.red : color,),
            label: Text(
              "select a color", style: TextStyle(color: Colors.blueGrey),)),
      ], mainAxisAlignment: MainAxisAlignment.center,);
  }


  Widget widgetE() {
    return Row
      (children: [
      SizedBox(width: 10.0),
      RaisedButton(color: color == CupertinoColors.white ? Colors.red : color,
        focusColor: color,
        child: Text("Flat"),
        onPressed: () => setState(() => style = NeuomorphicStyle.Flat),),
      RaisedButton(color: color == CupertinoColors.white ? Colors.red : color,
        focusColor: color,
        child: Text("Concave"),
        onPressed: () => setState(() => style = NeuomorphicStyle.Concave),),
      RaisedButton(color: color == CupertinoColors.white ? Colors.red : color,
        focusColor: color,
        child: Text("Pressed"),
        onPressed: ()=> style = NeuomorphicStyle.Pressed),
      RaisedButton(color: color == CupertinoColors.white ? Colors.red : color,
        focusColor: color,
        child: Text("Convex"),
        onPressed: () => setState(() => style = NeuomorphicStyle.Convex),),
      SizedBox(width: 10.0),
    ], mainAxisAlignment: MainAxisAlignment.spaceEvenly);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
          color: color,
        ),
        child:
        new Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              centerTitle: true,
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios),
                onPressed: () {
                },
              ),
              actions: <Widget>[
                new IconButton(
                  icon: new Icon(Icons.close, size: 26.0,),
                  onPressed: () {},
                ),
              ],
            ),
            body:  Column(
                children: [
                  Expanded(child: Center(child: NeuomorphicContainer(
                    height: height,
                    width: width,
                    borderRadius: BorderRadius.circular(radius),
                    intensity: intensity,
                    offset: Offset(distance, distance),
                    color: color,
                    blur: blur,
                    style: style,
                  ))),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: CupertinoColors.black),
                      height: 300.0,
                      alignment: Alignment.center,
                      child: Column(
                          children: [
                            SizedBox(height: 30.0),
                            SizedBox(child: TabBarView(
                              controller: _tabController,
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                widgetB(),
                                widgetC(),
                                widgetA(),
                                widgetD(),
                                widgetE(),
                              ],
                            ), height: 200.0),
                            Expanded(child: Align(
                                alignment: Alignment.bottomCenter, child:
                            Padding(padding: EdgeInsets.only(
                                bottom: 30.0, left: 30.0, right: 30.0),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(icon: Icon(
                                        Icons.person, color: navColors[0]),
                                        onPressed: () =>
                                            setState(() {
                                              _tabController.animateTo(0);
                                              navColors = [
                                                color,
                                                Colors.grey,
                                                Colors.grey,
                                                Colors.grey,
                                                Colors.grey
                                              ];
                                            })),
                                    IconButton(icon: Icon(
                                        Icons.format_color_fill,
                                        color: navColors[1]), onPressed: () =>
                                        setState(() {
                                          _tabController.animateTo(1);
                                          navColors = [
                                            Colors.grey,
                                            color,
                                            Colors.grey,
                                            Colors.grey,
                                            Colors.grey
                                          ];
                                        })),
                                    Container(decoration: BoxDecoration(
                                        color: navColors[2],
                                        shape: BoxShape.circle),
                                        child: IconButton(icon: Icon(
                                            Icons.add, color: Colors.white),
                                            onPressed: () =>
                                                setState(() {
                                                  _tabController.animateTo(2);
                                                  navColors = [
                                                    Colors.grey,
                                                    Colors.grey,
                                                    color,
                                                    Colors.grey,
                                                    Colors.grey
                                                  ];
                                                }))),
                                    IconButton(icon: Icon(Icons.aspect_ratio,
                                        color: navColors[3]), onPressed: () =>
                                        setState(() {
                                          _tabController.animateTo(3);
                                          navColors = [
                                            Colors.grey,
                                            Colors.grey,
                                            Colors.grey,
                                            color,
                                            Colors.grey
                                          ];
                                        })),
                                    IconButton(icon: Icon(
                                        Icons.settings, color: navColors[4]),
                                        onPressed: () =>
                                            setState(() {
                                              _tabController.animateTo(4);
                                              navColors = [
                                                Colors.grey,
                                                Colors.grey,
                                                Colors.grey,
                                                Colors.grey,
                                                color
                                              ];
                                            }))
                                  ],
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                ))))
                          ])
                  )
                ]
            )

        )
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}


