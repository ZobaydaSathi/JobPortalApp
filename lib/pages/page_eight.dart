import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/pages/page-seven.dart';
import 'package:jobportalapp/pages/page_nine.dart';
import 'package:percent_indicator/percent_indicator.dart';


class PageEight extends StatefulWidget {
  @override
  _PageEightState createState() => _PageEightState();
}

class _PageEightState extends State<PageEight> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin:EdgeInsets.only(top: 65.0,left: 30.0),
                            child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageSeven()));
                                },
                                child: Icon(FontAwesomeIcons.arrowLeft,size: 20.0,color: Colors.black45,)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin:EdgeInsets.only(left:50.0,top: 25.0),
                        child: LinearPercentIndicator(
                          width: 270.0,
                          animation: true,
                          animationDuration: 1700,
                          lineHeight: 10.0,
                          percent: 0.8,
                          center: Text('80.0%',style: TextStyle(fontSize: 10.0),),
                          progressColor: Colors.green,
                        )
                    ),
                    Container(
                      margin:EdgeInsets.only(left:40.0,top: 30.0),
                      child: Text('Provied your Mobile No and Email Address (atleast one)',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20.0,
                            color: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0,),
                    Container(
                       width: 290,
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                            ),
                            labelText: 'Country Code',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF0f4c81),
                              fontSize: 20.0
                            ),
                          ),
                        ),
                      ),
                    SizedBox(height: 15.0,),
                    Container(
                      width: 290,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                          ),
                          labelText: 'Mobile Number',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF0f4c81),
                              fontSize: 20.0
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height:80.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width:140,
                            child: Image.asset('images/divider.png',fit: BoxFit.cover),
                          ),
                          Container(
                            child: Text('OR',style: TextStyle(color: Colors.grey),),
                          ),
                          Container(
                            width:140,
                            child: Image.asset('images/divider.png',fit: BoxFit.cover,),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 290,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder:OutlineInputBorder(borderSide: BorderSide(color:Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xFF192965)),
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF0f4c81),
                              fontSize: 20.0
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0,),
                    Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            child: Image.asset('images/mg.png',),
                          ),
                          Container(
                            child: Text('For any help',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 50.0),
                            child: Text('Call at 163547',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.pink
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 250),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageNine()));
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.pink,
                                child: Icon(FontAwesomeIcons.arrowRight,color: Colors.white,),
                              ),
                            ),
                          )
                      ],
                     ),
                )
             ],
         ),
      ),
    );
  }
}

