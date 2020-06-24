import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/training_information.dart';


class TrainingGraphics extends StatefulWidget {
  @override
  _TrainingGraphicsState createState() => _TrainingGraphicsState();
}

class _TrainingGraphicsState extends State<TrainingGraphics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                  children: <Widget>[
                    Container(
                      height:150,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('images/dark.jpg',fit: BoxFit.cover,),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          InkWell(onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrainingInformation()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.0,top: 90),
                            child: Text('Training Summary',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            Container(
              height: 310,
              width: 300,
              margin: EdgeInsets.only(top: 20.0),
              child: Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 30.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.userGraduate,size: 30.0,color: Color(0xFF192965),),
                          ),
                         Container(
                           child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 20.0,left: 15.0),
                                  child: Text('Graphics and Web UI',style: TextStyle(fontSize: 20.0,color: Color(0xFF192965)),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 90.0),
                                  child: Text('Design',style: TextStyle(fontSize: 20.0,color: Color(0xFF192965)),),
                                )
                              ],
                           ),
                         )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 70.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.solidDotCircle,size: 10.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0,left: 10.0),
                            child: Text('Topic Covered:',style: TextStyle(fontSize: 15.0),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: Text('Logo Design,',
                              style: TextStyle(fontSize: 15.0,color: Color(0xFF192965),fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 25.0),
                            child: Text('UI Design , Cliping Path,',
                              style: TextStyle(fontSize: 15.0,color: Color(0xFF192965),fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 15.0),
                            child: Text('Flyer Design etc',
                              style: TextStyle(fontSize: 15.0,color: Color(0xFF192965),fontWeight: FontWeight.bold ),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 70.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.solidDotCircle,size: 10.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0,left: 10.0),
                            child: Text('Institute Name:',style: TextStyle(fontSize: 15.0),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0,top: 10.0),
                            child: Text('BITM',
                              style: TextStyle(fontSize: 15.0,color: Color(0xFF192965),fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 70.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.solidDotCircle,size: 10.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 10.0),
                                  child: Text('Country:',style: TextStyle(fontSize: 15.0),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                  child: Text('Bangladesh',
                                    style: TextStyle(fontSize: 15.0,color: Color(0xFF192965),fontWeight:FontWeight.bold ),),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 70.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.solidDotCircle,size: 10.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 10.0),
                                  child: Text('Location:',style: TextStyle(fontSize: 15.0),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                  child: Text('Kawran Bazar',
                                    style: TextStyle(fontSize: 15.0,color: Color(0xFF192965),fontWeight:FontWeight.bold ),),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 70.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.solidDotCircle,size: 10.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 10.0),
                                  child: Text('Training Year:',style: TextStyle(fontSize: 15.0),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                  child: Text('2019',
                                    style: TextStyle(fontSize: 15.0,color: Color(0xFF192965),fontWeight:FontWeight.bold ),),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 70.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.solidDotCircle,size: 10.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 10.0),
                                  child: Text('Duration:',style: TextStyle(fontSize: 15.0),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                  child: Text('3 Months',
                                    style: TextStyle(fontSize: 15.0,color: Color(0xFF192965),fontWeight:FontWeight.bold ),),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 140.0),
                            child: Icon(Icons.arrow_drop_up,color: Colors.black45,),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40.0),
                            child: Icon(FontAwesomeIcons.calendarAlt,color: Colors.black45,),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0),
                            child: Icon(FontAwesomeIcons.trashAlt,color: Colors.black45,),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 75.0,),
            Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.asset('images/mg.png',fit: BoxFit.cover,),
                    ),
                    Container(
                      child: Text('For any help',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40.0),
                      child: Text('Call at 163547',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.pink
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 205,bottom: 90.0,top: 20.0),
                      child: InkWell(
                        onTap: (){
//                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AcademicBsc()));
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.pink,
                          child: Icon(FontAwesomeIcons.plus,color: Colors.white,),
                        ),
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
