import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/personal.dart';


class PersonalInformation extends StatefulWidget {
  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Personal()));
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
                    width: 165,
                    margin: EdgeInsets.only(top: 20.0,left: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder:OutlineInputBorder(borderSide: BorderSide(color:Colors.grey,width: 2),
                            borderRadius: BorderRadius.all(const Radius.circular(10.0))
                        ),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xFF192965),width: 2),
                            borderRadius: BorderRadius.all(const Radius.circular(10.0))
                        ),
                        labelText: "First Name*",
//                        hintText: "Marium",
//                        hintStyle: TextStyle(
//                            color: Colors.black
//                        ),
                        suffixIcon: Icon(Icons.close,color:Color(0xFF192965) ,),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF192965),
                            fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    margin: EdgeInsets.only(top: 20.0,left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder:OutlineInputBorder(borderSide: BorderSide(color:Colors.grey,width: 2),
                            borderRadius: BorderRadius.all(const Radius.circular(10.0))
                        ),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xFF192965),width: 2),
                            borderRadius: BorderRadius.all(const Radius.circular(10.0))
                        ),
                        labelText: "Last Name*",
                        hintText: "Last Name",
                        hintStyle: TextStyle(
                            color: Colors.black
                        ),
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF192965),
                            fontSize: 20.0
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            _container(label: 'Father`s Name'),
            SizedBox(height: 20.0,),
            _container(label: 'mother`s Name'),
            SizedBox(height: 20.0,),
            Container(
              child: Row(
                children: <Widget>[
                 Container(
                      width: 130,
                       margin: EdgeInsets.only(left: 25.0),
                         child: TextField(
                            decoration: InputDecoration(
                              enabledBorder:OutlineInputBorder(borderSide: BorderSide(color:Colors.grey,width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xFF192965),width: 1),
                              ),
                              labelText: "Date of Birth*",
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black45,
                                  fontSize: 18.0
                            ),
                         ),
                     ),
                  ),
                  SizedBox(width: 15.0,),
                  Container(
                    width: 165,
                    padding: EdgeInsets.all(18.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                    ),
                    child: Text('Religion',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(right: 255.0),
              child: Text('Gender*',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Color(0xFF192965)),),
            ),
            SizedBox(height: 20.0,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 22.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                    ),
                    child: _text1(label: 'Male',color: Colors.black45,),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF192965)
                    ),
                    child: _text1(label: 'Female', color: Colors.white)
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                    ),
                    child: _text1(label: 'Others', color: Colors.black45)
                  )
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              margin: EdgeInsets.only(right: 200.0),
              child: Text('Marital Status*',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Color(0xFF192965)),),
            ),
            SizedBox(height: 20.0,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(left: 22.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                    ),
                    child: _text2(label: 'Married'),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                    ),
                    child: _text2(label: 'Unmarried')
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                    ),
                    child: _text2(label: 'Single')
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            _container2(label: 'Nationality*'),
            SizedBox(height: 20.0,),
           _container2(label: 'National Id No'),
            Container(
              margin: EdgeInsets.only(left: 265,bottom: 40.0,top: 40.0),
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

class _container2 extends StatelessWidget {
  const _container2({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
      ),
      child: Text(label,
        style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black45
        ),
      ),
    );
  }
}

class _text2 extends StatelessWidget {
  const _text2({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.black45
      ),
    );
  }
}

class _text1 extends StatelessWidget {
  const _text1({
    Key key,
    @required this.label,
    @required this.color,
  }) : super(key: key);
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: color
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
        child: Column(
          children: <Widget>[
            Container(
              width: 310,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
              ),
              child: Text(label,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45
                ),
              ),
            )
          ],
        ),
      );
  }
}
