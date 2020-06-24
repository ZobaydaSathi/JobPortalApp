import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/reference.dart';
import 'package:jobportalapp/personal_details/upload_photo.dart';

class ReferenceInformation extends StatefulWidget {
  @override
  _ReferenceInformationState createState() => _ReferenceInformationState();
}

class _ReferenceInformationState extends State<ReferenceInformation> {
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Reference()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 45.0,top: 90),
                            child: Text('Reference',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            _container(label: 'Name *'),
            SizedBox(height: 20.0,),
            _container(label: 'Organization *'),
            SizedBox(height: 20.0,),
            _container(label: 'Designation *'),
            SizedBox(height: 20.0,),
           _container(label: 'Address'),
            SizedBox(height: 20.0,),
            _container(label: 'Phone No. (Office)'),
            SizedBox(height: 20.0,),
           _container(label: 'Mobile No.'),
            SizedBox(height: 20.0,),
            _container(label: 'Email Address'),
            Container(
              margin:EdgeInsets.only(right: 210.0,top: 40.0),
              child: Text('Relation *',
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
                        margin: EdgeInsets.only(top: 10.0,left: 25.0,bottom: 8.0,right: 5.0),
                        child: Text('Relative'),
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
                        width: 80.0,
                        margin: EdgeInsets.only(top: 10.0,left: 10.0,bottom: 8.0,),
                        child: Text('Family Friend'),
                      ),
                    ),
                  ),
                  Container(
                    margin:EdgeInsets.only(top: 20.0,left: 5.0),
                    child: Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 70.0,
                        margin: EdgeInsets.only(top: 10.0,left: 20.0,bottom: 8.0),
                        child: Text('Trainer'),
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
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        height: 20.0,
                        width: 70.0,
                        margin: EdgeInsets.only(top: 10.0,left: 20.0,bottom: 8.0),
                        child: Text('Academic',style: TextStyle(color: Colors.black),),
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
                        margin: EdgeInsets.only(top: 10.0,right: 15.0,bottom: 8.0,left: 15.0),
                        child: Text('Professional'),
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>UploadPhoto()));
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
