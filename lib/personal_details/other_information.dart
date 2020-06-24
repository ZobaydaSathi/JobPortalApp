import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/other.dart';


class OtherInformation extends StatefulWidget {
  @override
  _OtherInformationState createState() => _OtherInformationState();
}

class _OtherInformationState extends State<OtherInformation> {
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Other()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.0,top: 90),
                            child: Text('Other Relevant Information',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            _container(label: 'Career Summary*'),
            SizedBox(height: 5.0),
            _container1(label: 'What is Objective?'),
            SizedBox(height: 30.0,),
            _container(label: 'Special Qualification*'),
            SizedBox(height: 5.0),
            _container1(label: 'What is Special Qualification'),
            SizedBox(height: 30.0,),
            _container(label: 'Keyword*'),
            SizedBox(height: 5.0),
            _container1(label: 'What is Keyword'),
            SizedBox(height: 60.0,),
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

class _container1 extends StatelessWidget {
  const _container1({
    Key key,
    @required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            margin:EdgeInsets.only(left: 35.0),
            child: Text(label,style: TextStyle(fontSize: 15.0,),),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0,bottom: 5.0),
            child: Image.asset('images/question.png',height: 15.0,),
          )
        ],
      ),
    );
  }
}

class _container extends StatelessWidget {
  const _container({
    Key key,
    @required this.label,
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
