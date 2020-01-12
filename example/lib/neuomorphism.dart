import 'package:flutter/material.dart';
import 'package:example/utils/sizeConfig.dart';
import 'package:example/utils/uiData.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';

class Neuomorphism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Column(
          children: <Widget>[
            Flexible(child: SizedBox(height: 20.0), flex: 2),
            Flexible(
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.blueGrey[100],
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                        Color.fromRGBO(209, 205, 199, 1.0),
                                        blurRadius: 16.0),
                                  ],
                                  border: Border.all(
                                      color:
                                      Color.fromRGBO(239, 238, 238, 1.0))),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Icon(Icons.keyboard_backspace,
                                          color: Colors.blueGrey[500])),
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                        Color.fromRGBO(239, 238, 238, 1.0),
                                        borderRadius:
                                        BorderRadius.circular(10.0)),
                                    child: Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Icon(Icons.apps,
                                            size: 30.0,
                                            color: Colors.blueGrey[200])),
                                    margin: EdgeInsets.only(left: 10.0),
                                  )
                                ],
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                              ),
                            ),
                            SizedBox(width: 20.0),
                            Text("Statistic",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold)),
                          ],
                        )),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text("Period:",
                              style: TextStyle(color: Colors.blueGrey)),
                          Text("Last 30 days",
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 10.0),
                          Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                        Color.fromRGBO(209, 205, 199, 1.0),
                                        offset: Offset(6.0, 6.0),
                                        blurRadius: 16.0),
                                    BoxShadow(
                                        color:
                                        Color.fromRGBO(255, 255, 255, 1.0),
                                        offset: Offset(-6.0, -6.0),
                                        blurRadius: 16.0),
                                  ],
                                  color: Color.fromRGBO(239, 238, 238, 1.0),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Icon(Icons.navigate_next,
                                    color: Colors.blueGrey, size: 30.0),
                              ))
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),
                      height: 50.0,
                      margin: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(209, 205, 199, 1.0),
                                offset: Offset(6.0, 6.0),
                                blurRadius: 16.0),
                            BoxShadow(
                                color: Color.fromRGBO(255, 255, 255, 1.0),
                                offset: Offset(-6.0, -6.0),
                                blurRadius: 16.0),
                          ],
                          color: Color.fromRGBO(239, 238, 238, 1.0)),
                    )
                  ],
                ),
                flex: 2),
            Flexible(
                child: Container(
                  child: //Image.asset("images/chip.png",alignment: Alignment.topRight,width: 5.0,height: 5.0,)
                  Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("   CT Bank",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    fontStyle: FontStyle.italic)),
                            Image.asset(
                              "assets/images/chip.png",
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ),
                        Row(
                          children: <Widget>[
                            Text("      5303   6084\n      2402   3649",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold)),
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                        ),
                        Image.asset(
                          "assets/images/ce.png",
                          width: 150.0,
                        ),
                        Expanded(
                            child: Align(
                                child: Row(
                                    children: [
                                      Text("   ESAN \n   TOMISIN      \n\n\n",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold)),
                                      Text("09/24    \n\n\n",
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold))
                                    ],
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround),
                                alignment: Alignment.bottomRight))
                      ],
                    ),
                  ),
                  width: 200.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(209, 205, 199, 1.0),
                            offset: Offset(6.0, 6.0),
                            blurRadius: 16.0),
                        BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 16.0),
                      ],
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color.fromRGBO(239, 238, 238, 1.0)),
                ),
                flex: 4),
            Flexible(
                child: Container(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                            color: Color.fromRGBO(209, 205, 199, 1.0),
                            width: 2.0)),
                    width: 300.0,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.account_balance, color: Colors.blueGrey),
                            Text("25%",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            Text("CT Bank",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold)),
                            Text("₦ 950,000",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold))
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  ),
                  height: 100.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(209, 205, 199, 1.0),
                            offset: Offset(6.0, 6.0),
                            blurRadius: 16.0),
                        BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 16.0),
                      ],
                      color: Color.fromRGBO(239, 238, 238, 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: Color.fromRGBO(239, 238, 238, 1.0),
                          width: 3.0)),
                ),
                flex: 2),
            Flexible(
              child: Padding(
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(209, 205, 199, 1.0),
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 16.0),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 1.0),
                                  offset: Offset(-6.0, -6.0),
                                  blurRadius: 16.0),
                            ],
                            color: Color.fromRGBO(239, 238, 238, 1.0),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.account_balance,
                              color: Colors.blueGrey[300], size: 30.0),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(209, 205, 199, 1.0),
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 16.0),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 1.0),
                                  offset: Offset(-6.0, -6.0),
                                  blurRadius: 16.0),
                            ],
                            color: Color.fromRGBO(239, 238, 238, 1.0),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.home,
                              color: Colors.blueGrey[300], size: 30.0),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(209, 205, 199, 1.0),
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 16.0),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 1.0),
                                  offset: Offset(-6.0, -6.0),
                                  blurRadius: 16.0),
                            ],
                            color: Color.fromRGBO(239, 238, 238, 1.0),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.credit_card,
                              color: Colors.blueGrey[300], size: 30.0),
                        )),
                    Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(209, 205, 199, 1.0),
                                  offset: Offset(6.0, 6.0),
                                  blurRadius: 16.0),
                              BoxShadow(
                                  color: Color.fromRGBO(255, 255, 255, 1.0),
                                  offset: Offset(-6.0, -6.0),
                                  blurRadius: 16.0),
                            ],
                            color: Color.fromRGBO(239, 238, 238, 1.0),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.settings,
                              color: Colors.blueGrey[300], size: 30.0),
                        ))
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
                padding: EdgeInsets.only(bottom: 5.0),
              ),
              flex: 1,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ),
        backgroundColor: Color.fromRGBO(239, 238, 238, 1.0));
  }
}

