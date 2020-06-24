import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/Language.dart';
import 'package:jobportalapp/personal_details/language_bangla.dart';

class LanguageInformation extends StatefulWidget {
  @override
  _LanguageInformationState createState() => _LanguageInformationState();
}

class _LanguageInformationState extends State<LanguageInformation> {
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Language()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40.0,top: 90),
                            child: Text('Language Proficiency',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(const Radius.circular(10.0))
                  ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(const Radius.circular(10.0))
                  ),
                  labelText: "Language *",
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF192965),
                      fontSize: 20.0
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 212.0,top: 30.0),
              child: Text('Reading *',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF192965),
                    fontSize: 20.0,
                ),
              )
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(top: 20.0,left: 30.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      color: Color(0xFF192965) ,
                      child: Container(
                        height: 20.0,
                        width: 50.0,
                        margin: EdgeInsets.only(top: 10.0,left: 30.0,bottom: 8.0),
                        child: Text('High',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 20.0,left: 10.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 70.0,
                        margin: EdgeInsets.only(top: 10.0,left: 15.0,bottom: 8.0),
                        child: Text('Medium'),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 20.0,left: 10.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 50.0,
                        margin: EdgeInsets.only(top: 10.0,left: 30.0,bottom: 8.0),
                        child: Text('Low'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 212.0,top: 30.0),
                child: Text('Writting *',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF192965),
                    fontSize: 20.0,
                  ),
                )
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(top: 20.0,left: 30.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 50.0,
                        margin: EdgeInsets.only(top: 10.0,left: 30.0,bottom: 8.0),
                        child: Text('High'),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 20.0,left: 10.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 70.0,
                        margin: EdgeInsets.only(top: 10.0,left: 15.0,bottom: 8.0),
                        child: Text('Medium'),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 20.0,left: 10.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 50.0,
                        margin: EdgeInsets.only(top: 10.0,left: 30.0,bottom: 8.0),
                        child: Text('Low'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 212.0,top: 30.0),
                child: Text('Speaking *',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF192965),
                    fontSize: 20.0,
                  ),
                )
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(top: 20.0,left: 30.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 50.0,
                        margin: EdgeInsets.only(top: 10.0,left: 30.0,bottom: 8.0),
                        child: Text('High'),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 20.0,left: 10.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 70.0,
                        margin: EdgeInsets.only(top: 10.0,left: 15.0,bottom: 8.0),
                        child: Text('Medium'),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 20.0,left: 10.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 50.0,
                        margin: EdgeInsets.only(top: 10.0,left: 30.0,bottom: 8.0),
                        child: Text('Low'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 205,bottom: 40.0,top: 40.0),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LanguaegBangla()));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Icon(FontAwesomeIcons.check,color: Colors.white,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
