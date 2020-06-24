import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/preferred_information.dart';
import 'package:jobportalapp/personal_details/profile_details.dart';


class Preferred extends StatefulWidget {
  @override
  _PreferredState createState() => _PreferredState();
}

class _PreferredState extends State<Preferred> {
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
                            child: Text('Preferred Areas',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PreferredInformation()));
                            },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 80.0),
                              child: Icon(FontAwesomeIcons.edit,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0,bottom: 55.0,top: 20.0),
                    child: Icon(FontAwesomeIcons.briefcase,color:  Color(0xFF192965)),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 10.0,bottom: 20.0,top: 25.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(right: 40.0),
                          child: Text('Perferred Functional Job Categories',
                            style: TextStyle(fontSize: 16.0,color: Colors.black45),),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          margin:EdgeInsets.only(right: 150),
                          padding: EdgeInsets.only(top: 5.0),
                          width: 120,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Text('Design/Creative',textAlign:TextAlign.center,
                            style: TextStyle(fontSize: 16.0,color: Color(0xFF192965)),),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            Divider(height: 20.0,endIndent: 20.0,indent: 20.0,thickness: 2,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0,top: 15.0),
                    child: Icon(FontAwesomeIcons.briefcase,color:  Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 10.0,top: 15.0),
                    child: Text('Perferred Special Skilled Job Categories',
                      style: TextStyle(fontSize: 16.0,color: Colors.black45),),
                  )
                ],
              ),
            ),
            SizedBox(height: 80.0,),
            Divider(height: 20.0,endIndent: 20.0,indent: 20.0,thickness: 2,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0,top: 15.0),
                    child: Icon(FontAwesomeIcons.building,color:  Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 10.0,top: 15.0),
                    child: Text('Perferred Organization Type',style: TextStyle(fontSize: 16.0,color: Colors.black45),),
                  )
                ],
              ),
            ),
            SizedBox(height: 80.0,),
            Divider(height: 20.0,endIndent: 20.0,indent: 20.0,thickness: 2,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0,bottom: 170.0,top: 20.0),
                    child: Icon(FontAwesomeIcons.mapMarkerAlt,color:  Color(0xFF192965)),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 10.0,bottom: 20.0,top: 25.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(right: 40.0),
                          child: Text('Perferred Functional Job Categories',
                            style: TextStyle(fontSize: 16.0,color: Colors.black45),),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          margin: EdgeInsets.only(bottom: 20.0,right: 155),
                          child: Text('Inside Bangladesh',style: TextStyle(color: Colors.black54),),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 85.0),
                          padding: EdgeInsets.only(top: 10.0),
                          width: 180,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Text('Anywhere In Bangladesh',textAlign:TextAlign.center,
                            style: TextStyle(fontSize: 16.0,color: Color(0xFF192965)),),
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          margin: EdgeInsets.only(bottom: 20.0,right: 150.0),
                          child: Text('Outside Bangladesh',style: TextStyle(color: Colors.black54),),
                        ),
                        Container(
                          margin:EdgeInsets.only(right: 160.0),
                          padding: EdgeInsets.only(top: 5.0),
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Text('America',textAlign:TextAlign.center,
                            style: TextStyle(fontSize: 16.0,color: Color(0xFF192965)),),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                    margin: EdgeInsets.only(top: 35.0),
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
      ),
    );
  }
}
