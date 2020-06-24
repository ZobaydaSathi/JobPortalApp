import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/pages/page-seven.dart';
import 'package:jobportalapp/pages/page_five.dart';


class PageSix extends StatefulWidget {
  @override
  _PageSixState createState() => _PageSixState();
}

class _PageSixState extends State<PageSix> {
  final _formkey=GlobalKey<FormState>();
  String _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(top: 65.0,left: 30.0),
                      child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageFive()));
                          },
                          child: Icon(FontAwesomeIcons.arrowLeft,size: 20.0,color: Colors.black45,)
                      ),
                    ),
                  ],
                ),
              ),
                Container(
                  margin:EdgeInsets.only(right: 210.0,top: 50.0),
                  child: Text('Sign in',
                    style: TextStyle(
                        fontSize: 35.0,
                        color: Color(0xFF192965)
                    ),
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(right: 195.0,top: 40.0),
                  child: Text('Write Name',
                    style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFF192965)
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 300,
                        child: TextFormField(
                          onSaved: (val)=> _user=val,
                          validator: (String value){
                            if(value.isEmpty)return 'Invalid Name';
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF0f4c81),
                                  fontSize: 20.0
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 220),
                Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset('images/mg.png',),
                      ),
                      Container(
                        child: Text('For any help',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.black
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 50.0),
                        child: Text('Call at 163547',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.pink
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 250),
                        child: InkWell(
                          onTap: (){
                            final form= _formkey.currentState;
                            if(form.validate()){
                              form.save();
                              print('user:$_user');
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageSeven()));
                            }
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.pink,
                            child: Icon(FontAwesomeIcons.arrowRight,color: Colors.white,),
                          ),
                        ),
                      )
                  ],
                 ),
              )
            ],
           ),
        ),
      )
    );
  }
}
