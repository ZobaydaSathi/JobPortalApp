import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/career.dart';


class CareerInformation extends StatefulWidget {
  @override
  _CareerInformationState createState() => _CareerInformationState();
}

class _CareerInformationState extends State<CareerInformation> {
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Career()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 45.0,top: 90),
                            child: Text('Career and Application',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            _container(label: 'Objective*'),
            SizedBox(height: 5.0),
            Container(
              child: Row(
                children: <Widget>[
                 Container(
                     margin:EdgeInsets.only(left: 35.0),
                     child: Text('What is Objective?',style: TextStyle(fontSize: 15.0,),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
                    child: Image.asset('images/question.png',height: 15.0,),
                    )
                  ],
                ),
             ),
           _container(label: 'Present Salary(TK / Month)'),
            _container(label: 'Expected Salary(TK / Month)'),
            Container(
              margin:EdgeInsets.only(right: 110.0,top: 40.0),
              child: Text('Looking For (Job Level)',
                style: TextStyle(fontSize: 20.0,color: Color(0xFF192965),fontWeight: FontWeight.bold ),),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0,top: 20.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 100.0,
                        margin: EdgeInsets.only(top: 10.0,left: 15.0,bottom: 8.0),
                        child: Text('Entry Level Job'),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 20.0,top: 20.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 100.0,
                        margin: EdgeInsets.only(top: 10.0,left: 15.0,bottom: 8.0),
                        child: Text('Entry Level Job'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:EdgeInsets.only(right: 175.0,top: 20.0),
              child: Card(
                elevation: 3.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                child: Container(
                  height: 20.0,
                  width: 100.0,
                  margin: EdgeInsets.only(top: 10.0,left: 20.0,bottom: 8.0),
                  child: Text('Top Level Job'),
                ),
              ),
            ),
            Container(
              margin:EdgeInsets.only(right: 90.0,top: 40.0),
              child: Text('Available For (Job Nature)',
                style: TextStyle(fontSize: 20.0,color: Color(0xFF192965),fontWeight: FontWeight.bold ),),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0,top: 20.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 70.0,
                        margin: EdgeInsets.only(top: 10.0,left: 15.0,bottom: 8.0),
                        child: Text('Full Time'),
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
                        child: Text('Part Time'),
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
                        margin: EdgeInsets.only(top: 10.0,left: 20.0,bottom: 8.0),
                        child: Text('Contract'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 30.0,top: 20.0),
                    child: Card(
                      elevation: 3.0,
                      color: Color(0xFF192965),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 70.0,
                        margin: EdgeInsets.only(top: 10.0,left: 20.0,bottom: 8.0),
                        child: Text('Internship',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 5.0,top: 20.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 70.0,
                        margin: EdgeInsets.only(top: 10.0,left: 20.0,bottom: 8.0),
                        child: Text('Internship'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 205,bottom: 40.0,top: 30.0),
              child: InkWell(
                onTap: (){
//                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageTwo()));
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

class _container extends StatelessWidget {
  const _container({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          labelText: label,
          labelStyle: TextStyle(
              fontWeight: FontWeight.normal,
              color: Color(0xFF192965),
              fontSize: 20.0
          ),
        ),
      ),
    );
  }
}
