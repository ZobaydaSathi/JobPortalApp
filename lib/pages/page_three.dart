import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:jobportalapp/pages/page_four.dart';
import 'package:jobportalapp/pages/page_two.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:EdgeInsets.only(top: 65.0,left: 30.0),
                        child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageTwo()));
                            },
                            child: Icon(FontAwesomeIcons.arrowLeft,size: 20.0,color: Colors.black45,)
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(right:160.0,top: 40.0),
                  child: Text('Registration',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xFF192965)
                    ),
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(right:65.0,top: 30.0),
                  child:Text('Please choose your relevant type',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height:100,
                        width: 300,
                        child: Material(
                          color: Colors.white,
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10.0),
                            child: Row(
                            children: <Widget>[
                              Container(
                                child: Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.only
                                        (topLeft:Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                                      child: Container(
                                        height: 70.0,
                                        margin: EdgeInsets.only(bottom: 30.0),
                                        child: Image.asset('images/curve1.png'),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0,left: 8.0),
                                      child: Icon(FontAwesomeIcons.briefcase,color: Colors.white,size: 40.0,),
                                    )
                                  ],
                                ),
                              ),
                             Container(
                               child: Column(
                                 children: <Widget>[
                                   Container(
                                     width: 200,
                                     margin: EdgeInsets.only(top: 15.0,),
                                     child: _text1(
                                       label: 'Functional Category'),
                                   ),
                                   SizedBox(height: 5.0,),
                                   Container(
                                       width: 200,
                                       margin: EdgeInsets.only(right: 20.0),
                                       child: _text2(label: 'Finance,Media/Advertisement/Event')
                                   ),
                                 ],
                               ),
                             )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height:100,
                          width: 300,
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            elevation: 5.0,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Stack(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.only
                                          (topLeft:Radius.circular(10.0),
                                            bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0)),
                                        child: Container(
                                          height: 70.0,
                                          margin: EdgeInsets.only(bottom: 30.0),
                                          child: Image.asset('images/curve1.png'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10.0,left: 8.0),
                                        child: Icon(FontAwesomeIcons.tools,color: Colors.white,size: 40.0,),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 200,
                                        margin: EdgeInsets.only(top: 15.0,),
                                        child: _text1(
                                          label: 'Special Skilled Category'),
                                      ),
                                      SizedBox(height: 5.0,),
                                      Container(
                                        width: 200,
                                        margin: EdgeInsets.only(right: 20.0),
                                        child: _text2(label: 'Computer Operator,Mechanic/technic'),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                ),
                SizedBox(height: 80.0,),
                Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset('images/mg.png',fit: BoxFit.cover,),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: Text('For Any help',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50.0),
                        child: Text('Call at 163547',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.pink
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 250),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageFour()));
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
      )
    );
  }
}

class _text2 extends StatelessWidget {
  const _text2({
    Key key,
    @required this.label,

  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return GradientText(label,
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.white, Colors.black, Colors.white],),
        style: TextStyle(fontSize: 13),
        textAlign: TextAlign.center);
  }
}

class _text1 extends StatelessWidget {
  const _text1({
    Key key,
    @required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      style: TextStyle(
          color: Color(0xFFc02739),
          fontSize: 20.0
      ),
    );
  }
}
