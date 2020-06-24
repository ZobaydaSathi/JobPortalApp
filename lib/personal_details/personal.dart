import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/personal_information.dart';
import 'package:jobportalapp/personal_details/profile_details.dart';


class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
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
                            margin: EdgeInsets.only(left: 40.0,top: 90),
                            child: Text('Personal Details',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PersonalInformation()));
                            },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 70.0),
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
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(30.0),
                    margin: EdgeInsets.only(top: 25.0,left: 25.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45.0),
                        border: Border.all(color: Color(0xFF192965),width: 1)
                    ),
                    child: Icon(FontAwesomeIcons.userPlus,size: 30.0,color: Color(0xFF192965),),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10.0,left: 20.0),
                      child: Text('Marium Mitu',style: TextStyle(color: Colors.grey,fontSize: 22.0),
                      )
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10.0,left: 20.0),
                      child: Text('Marium@pencilbox.edu.bd',style: TextStyle(color: Colors.grey,fontSize: 15.0),
                      )
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0),
                    child: Icon(FontAwesomeIcons.male,color: Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 20.0),
                    child: Text('Father`s Name',style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                  ),
                  SizedBox(width: 30.0,),
                  Container(
                    margin:EdgeInsets.only(left: 10.0),
                    child: Icon(FontAwesomeIcons.female,color: Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 20.0),
                    child: Text('Mother`s Name',style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0),
                    child: Icon(FontAwesomeIcons.calendarAlt,color: Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 20.0),
                    child: Text('Date of Birth*',style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                  ),
                  SizedBox(width: 30.0,),
                  Container(
                    margin:EdgeInsets.only(left: 20.0),
                    child: Icon(FontAwesomeIcons.bookReader,color: Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 20.0),
                    child: Text('Religion',style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0),
                    child: Icon(FontAwesomeIcons.venusMars,color: Color(0xFF192965),),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(left: 20.0),
                          child: Text('Gender*',style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                        ),
                        Container(
                          margin:EdgeInsets.only(left: 20.0),
                          child: Text('Female',
                            style: TextStyle(fontSize: 15.0,color: Color(0xFF192965),fontWeight: FontWeight.bold),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 30.0,),
                  Container(
                    margin:EdgeInsets.only(left: 50.0),
                    child: Icon(FontAwesomeIcons.book,color: Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 20.0),
                    child: Text('Marital Status',style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0),
                    child: Icon(FontAwesomeIcons.solidFlag,color: Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 20.0),
                    child: Text('Nationality*',style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                  ),
                  SizedBox(width: 30.0,),
                  Container(
                    margin:EdgeInsets.only(left: 30.0),
                    child: Icon(FontAwesomeIcons.idCardAlt,color: Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 20.0),
                    child: Text('National Id No',style: TextStyle(fontSize: 15.0,color: Colors.grey),),
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
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
