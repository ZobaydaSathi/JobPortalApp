import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/academic_information.dart';

class AcademicBsc extends StatefulWidget {
  @override
  _AcademicBscState createState() => _AcademicBscState();
}

class _AcademicBscState extends State<AcademicBsc> {
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AcademicInformation()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.0,top: 90),
                            child: Text('Academic Qualification',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            Container(
              height: 280,
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
                            margin: EdgeInsets.only(left: 30.0,top: 20.0),
                            child: Icon(FontAwesomeIcons.userGraduate,size: 30.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0,left: 10.0),
                            child: Text('BSC',style: TextStyle(fontSize: 20.0,color: Color(0xFF192965)),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 70.0),
                            child: Icon(FontAwesomeIcons.solidDotCircle,size: 10.0,color: Color(0xFF192965),),
                          ),
                         Container(
                           child: Column(
                             children: <Widget>[
                               Container(
                                 margin: EdgeInsets.only(top: 10.0,left: 10.0),
                                 child: Text('Computer Science and',style: TextStyle(fontSize: 15.0),),
                               ),
                               Container(
                                 margin: EdgeInsets.only(right: 50.0),
                                 child: Text('Engineering',style: TextStyle(fontSize: 15.0),),
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
                            margin: EdgeInsets.only(left: 70.0),
                            child: Icon(FontAwesomeIcons.solidDotCircle,size: 10.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,right: 28.0),
                                  child: Text('Institute Name:',style: TextStyle(fontSize: 15.0),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 12.0),
                                  child: Text('Northern University',
                                    style: TextStyle(fontSize: 17.0,color: Color(0xFF192965),fontWeight: FontWeight.bold),),
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
                                  child: Text('Result:',style: TextStyle(fontSize: 15.0),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                  child: Text('3.75 out of 4.00',
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
                                  child: Text('Passing Year:',style: TextStyle(fontSize: 15.0),),
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
                                  child: Text('4 Year',
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
            SizedBox(height: 100.0,),
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
