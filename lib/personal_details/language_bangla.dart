import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/language_information.dart';


class LanguaegBangla extends StatefulWidget {
  @override
  _LanguaegBanglaState createState() => _LanguaegBanglaState();
}

class _LanguaegBanglaState extends State<LanguaegBangla> {
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LanguageInformation()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.0,top: 90),
                            child: Text('Language Proficiency',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            Container(
              height: 210,
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
                            child: Icon(FontAwesomeIcons.language,size: 30.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20.0,left: 20.0),
                            child: Text('Bangla',style: TextStyle(fontSize: 20.0,color: Color(0xFF192965)),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 80.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.bookOpen,size: 15.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0,left: 15.0),
                            child: Text('Reading:',style: TextStyle(fontSize: 15.0),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5.0,top: 10.0),
                            child: Text('High',
                              style: TextStyle(fontSize: 15.0,color: Color(0xFF192965),fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 80.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.penSquare,size: 15.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 15.0),
                                  child: Text('Writting:',style: TextStyle(fontSize: 15.0),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                  child: Text('High',
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
                            margin: EdgeInsets.only(left: 80.0,top: 10.0),
                            child: Icon(FontAwesomeIcons.volumeUp,size: 15.0,color: Color(0xFF192965),),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 15.0),
                                  child: Text('Speaking:',style: TextStyle(fontSize: 15.0),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10.0,left: 5.0),
                                  child: Text('High',
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
                            margin: EdgeInsets.only(left: 220.0),
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
            SizedBox(height: 145.0,),
            Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      child: Image.asset('images/mg.png',fit: BoxFit.cover,),
                    ),
                    Container(
                      margin:EdgeInsets.only(bottom: 5.0),
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
                      child: Text('Call at 16479',
                        style: TextStyle(
                            fontSize: 20.0,
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
