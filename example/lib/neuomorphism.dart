import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:example/utils/sizeConfig.dart';
import 'package:example/utils/uiData.dart';
import 'package:neuomorphic_container/neuomorphic_container.dart';

class Neuomorphism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final container = NeuomorphicContainer(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("   ${UIData.bankName}",
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic)),
              Image.asset(
                "assets/images/chip.png",
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          ),
          Row(
            children: <Widget>[
              Text("      5303   6084\n      2402   3649",
                  style: TextStyle(
                      color: Colors.black87, fontWeight: FontWeight.bold)),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          SizedBox(height: SizeConfig.blockSizeVertical * 2),
          Expanded(
              child: Image.asset(
            "assets/images/ce.png",
            fit: BoxFit.cover,
            width: SizeConfig.blockSizeHorizontal * 40,height:SizeConfig.blockSizeVertical*40
          )),
          Expanded(
              child: Align(
                  child: Row(children: [
                    Text("   ESAN \n   TOMISIN      \n",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold)),
                    Text("09/24    \n",
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.bold))
                  ], mainAxisAlignment: MainAxisAlignment.spaceAround),
                  alignment: Alignment.bottomRight))
        ],
      ),
      width: SizeConfig.blockSizeHorizontal * 53.33,
      height: SizeConfig.blockSizeVertical * 37,
      borderRadius: BorderRadius.circular(15.0),
    );
    return Scaffold(
        body: Column(
          children: <Widget>[
            Flexible(
                child: SizedBox(height: SizeConfig.blockSizeVertical * 2.5),
                flex: 1),
            Flexible(
                child: Column(
                  children: <Widget>[
                    Column(
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
                                            color: Color.fromRGBO(
                                                209, 205, 199, 1.0),
                                            blurRadius: 16.0),
                                      ],
                                      border: Border.all(
                                          color: Color.fromRGBO(
                                              239, 238, 238, 1.0))),
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.0),
                                          child: Icon(Icons.keyboard_backspace,
                                              color: Colors.blueGrey[500])),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                239, 238, 238, 1.0),
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
                                Text(UIData.statistic,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold)),
                              ],
                            )),
                        NeuomorphicContainer(
                            child: Row(
                              children: <Widget>[
                                Text("${UIData.period}:",
                                    style: TextStyle(
                                        color: Colors.blueGrey, fontSize: 15)),
                                Text(UIData.last30Days,
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 10.0),
                                NeuomorphicContainer(
                                    shape: BoxShape.circle,
                                    child: Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Icon(Icons.navigate_next,
                                          color: Colors.blueGrey, size: 30.0),
                                    ))
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                            ),
                            margin: EdgeInsets.all(20.0),
                            height: SizeConfig.blockSizeVertical * 6.12,
                            borderRadius: BorderRadius.circular(10.0)),
                      ],
                    ),
                  ],
                ),
                flex: 2),
            Flexible(child: container, flex: 5),
            Flexible(
                child: NeuomorphicContainer(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Color.fromRGBO(209, 205, 199, 1.0),
                              width: 2.0)),
                      width: SizeConfig.blockSizeHorizontal * 80,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.account_balance,
                                  color: Colors.blueGrey),
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
                              Text(UIData.bankName,
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
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Color.fromRGBO(239, 238, 238, 1.0), width: 3.0)),
                flex: 2),
            Flexible(
              child: Padding(
                child: Row(
                  children: [
                    NeuomorphicContainer(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.account_balance,
                              color: Colors.blueGrey[300], size: 30.0),
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                    NeuomorphicContainer(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.home,
                              color: Colors.blueGrey[300], size: 30.0),
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                    NeuomorphicContainer(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.credit_card,
                              color: Colors.blueGrey[300], size: 30.0),
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                    NeuomorphicContainer(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.settings,
                              color: Colors.blueGrey[300], size: 30.0),
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
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
