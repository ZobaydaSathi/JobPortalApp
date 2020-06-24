import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/other_information.dart';
import 'package:jobportalapp/personal_details/profile_details.dart';


class Other extends StatefulWidget {
  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {
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
                              margin: EdgeInsets.only(left: 20.0,top: 90),
                              child: Text('Other Relevent Information',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OtherInformation()));
                            },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 18.0),
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
                    margin:EdgeInsets.only(left: 30.0,top: 15.0),
                    child: Icon(FontAwesomeIcons.university,color:  Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 10.0,top: 15.0),
                    child: Text('Career Summary',style: TextStyle(fontSize: 18.0,color: Colors.black45),),
                  )
                ],
              ),
            ),
            SizedBox(height: 90.0,),
            Divider(height: 20.0,endIndent: 20.0,indent: 20.0,thickness: 2,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0,bottom: 60.0),
                    child: Icon(FontAwesomeIcons.award,color:  Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 10.0,bottom: 60.0),
                    child: Text('Special Qualification',style: TextStyle(fontSize: 18.0,color: Colors.black45),),
                  )
                ],
              ),
            ),
            SizedBox(height: 45.0,),
            Divider(height: 20.0,endIndent: 20.0,indent: 20.0,thickness: 2,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0,bottom: 60.0),
                    child: Icon(FontAwesomeIcons.searchLocation,color:  Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 10.0,bottom: 60.0),
                    child: Text('Keyword',style: TextStyle(fontSize: 18.0,color: Colors.black45),),
                  )
                ],
              ),
            ),
            SizedBox(height: 25.0),
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
