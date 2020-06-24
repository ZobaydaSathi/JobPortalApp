import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/Language.dart';
import 'package:jobportalapp/personal_details/Retired.dart';
import 'package:jobportalapp/personal_details/academic.dart';
import 'package:jobportalapp/personal_details/career.dart';
import 'package:jobportalapp/personal_details/contact.dart';
import 'package:jobportalapp/personal_details/employment.dart';
import 'package:jobportalapp/personal_details/other.dart';
import 'package:jobportalapp/personal_details/personal.dart';
import 'package:jobportalapp/personal_details/preferred.dart';
import 'package:jobportalapp/personal_details/professional.dart';
import 'package:jobportalapp/personal_details/reference.dart';
import 'package:jobportalapp/personal_details/training.dart';
import 'package:jobportalapp/profile/itemtwo.dart';


class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
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
                      height:200,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('images/curve.jpg',fit: BoxFit.cover,),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>ItemTwo()));
                            },
                            child: Container(
                              margin:EdgeInsets.only(top: 50.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,)

                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  margin:EdgeInsets.only(top: 80.0,left: 70.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.person,color: Color(0xFF192965),),
                                  ),
                                ),
                                SizedBox(height: 10.0,),
                                Container(
                                  margin: EdgeInsets.only(left: 70.0),
                                  child: Text('Marium Mitu',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 40),
                    child: Text('Personal Information',
                      style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,color: Colors.black),),
                  )
                ],
              ),
            ),
            SizedBox(height: 25.0,),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 50),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.person,color: Color(0xFF0f4c81),),
                        ),
                        SizedBox(width: 20.0),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Personal()));
                          },
                          child: Container(
                            child:Text('Personal Details',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    margin:EdgeInsets.only(left: 50),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(FontAwesomeIcons.calendarAlt,color: Color(0xFF0f4c81),),
                        ),
                        SizedBox(width: 20.0),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Contact()));
                          },
                          child: Container(
                            child:Text('Contact Details',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    margin:EdgeInsets.only(left: 50),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.insert_drive_file,color:Color(0xFF0f4c81),),
                        ),
                        SizedBox(width: 20.0),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Career()));
                          },
                          child: Container(
                            child:Text('Career and Application Information',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    margin:EdgeInsets.only(left: 50),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(FontAwesomeIcons.mapMarkerAlt,color: Color(0xFF0f4c81),),
                        ),
                        SizedBox(width: 20.0),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Preferred()));
                          },
                          child: Container(
                            child:Text('Preferred Areas',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    margin:EdgeInsets.only(left: 50),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(FontAwesomeIcons.fileContract,color: Color(0xFF0f4c81),),
                        ),
                        SizedBox(width: 20.0),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Other()));
                          },
                          child: Container(
                            child:Text('Other Relevant Information',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 40),
                    child: Text('Education / Training',
                      style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,color: Colors.black),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0,),
            Container(
              margin:EdgeInsets.only(left: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(FontAwesomeIcons.graduationCap,color: Color(0xFF0f4c81),),
                  ),
                  SizedBox(width: 20.0),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Academic()));
                    },
                    child: Container(
                      child:Text('Academic Quailification',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin:EdgeInsets.only(left: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(FontAwesomeIcons.chalkboardTeacher,color: Color(0xFF0f4c81),),
                  ),
                  SizedBox(width: 20.0),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Training()));
                    },
                    child: Container(
                      child:Text('Training Summary',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin:EdgeInsets.only(left: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(FontAwesomeIcons.certificate,color: Color(0xFF0f4c81),),
                  ),
                  SizedBox(width: 20.0),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Professional()));
                    },
                    child: Container(
                      child:Text('Professional Certification Summary',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Divider(thickness: 2.0,),
            SizedBox(height: 10.0),
            Container(
              child:Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 40),
                    child: Text('Employment History',
                      style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,color: Colors.black),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin:EdgeInsets.only(left: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(FontAwesomeIcons.briefcase,color: Color(0xFF0f4c81),),
                  ),
                  SizedBox(width: 20.0),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Employment()));
                    },
                    child: Container(
                      child:Text('Employment History',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin:EdgeInsets.only(left: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(FontAwesomeIcons.briefcase,color: Color(0xFF0f4c81),),
                  ),
                  SizedBox(width: 20.0),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Retired()));
                    },
                    child: Container(
                      child:Text('Employment History (Retired Army Per...)',
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Divider(thickness: 2.0,),
            SizedBox(height: 10.0),
            Container(
              child:Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 40),
                    child: Text('Other Information',
                      style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0,color: Colors.black),),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin:EdgeInsets.only(left: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(FontAwesomeIcons.briefcase,color: Color(0xFF0f4c81),),
                  ),
                  SizedBox(width: 20.0),
                  Container(
                    child:Text('Specialization',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin:EdgeInsets.only(left: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(FontAwesomeIcons.book,color: Color(0xFF0f4c81),),
                  ),
                  SizedBox(width: 20.0),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Language()));
                    },
                    child: Container(
                      child:Text('Language Proficiency',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              margin:EdgeInsets.only(left: 50,bottom: 20.0),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(Icons.person,color: Color(0xFF0f4c81),),
                  ),
                  SizedBox(width: 20.0),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Reference()));
                    },
                    child: Container(
                      child:Text('Reference',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
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
                    margin: EdgeInsets.only(top: 35.0),
                    child: Text('Call at 163547',
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.pink
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 260,top: 20.0),
                    child: InkWell(
                      onTap: (){

                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.pink,
                        child: Icon(FontAwesomeIcons.fileImport,color: Colors.white,size: 20.0,),
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
