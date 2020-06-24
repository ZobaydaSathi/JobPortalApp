import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/language_information.dart';
import 'package:jobportalapp/personal_details/profile_details.dart';


class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileDetails()));
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
              SizedBox(height: 60.0,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LanguageInformation()));
                },
                child: Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: Image.asset('images/dash.gif'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40,left: 60.0),
                        child: Text('Add Language Proficiency',
                          style: TextStyle(
                              color:  Color(0xFF192965),
                              fontSize: 20.0
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 80,left: 130.0),
                        child: Icon(FontAwesomeIcons.plus,size: 60,color: Colors.black26,),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 130.0),
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
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
