import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jobportalapp/pages/page_one.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),
        (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageOne()));
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child:Center(
          child:Column(
            children: <Widget>[
                Container(
                  margin:EdgeInsets.only(top: 200),
                  child: Image.asset('images/pencil.png',height: 100,fit: BoxFit.cover,),
                ),
                Container(
                    margin:EdgeInsets.only(top: 15.0),
                    child: CircularPercentIndicator(
                      radius: 90.0,
                      animation: true,
                      animationDuration: 3400,
                      lineWidth: 15.0,
                      percent: 1.0,
                      center: new Text(
                        '100.0%',
                        style:
                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.butt,
                      backgroundColor: Color(0xFFFDB515),
                      progressColor: Colors.red,
                    )
                ),
                SizedBox(height: 10.0,),
                Container(
                  child: Text('PencilBox',
                    style:TextStyle(
                        fontSize: 40.0,
                        color: Colors.black
                    ) ,
                  ),
                ),
                Container(
                  child: Text('Training Institute',
                    style:TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 2.0
                    ) ,
                  ),
                ),
                SizedBox(height: 110),
                Container(
                  child: Text('v1.0.0.16(85)',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
          )
        ),
      )
    );
  }
}
