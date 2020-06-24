import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/pages/page_eight.dart';
import 'package:jobportalapp/pages/page_ten.dart';

import 'package:percent_indicator/percent_indicator.dart';

class PageNine extends StatefulWidget {
  @override
  _PageNineState createState() => _PageNineState();
}

class _PageNineState extends State<PageNine> {
  final _formkey= GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  bool _obscureText=true;
  String _password;
  String _confirmpassword;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin:EdgeInsets.only(top: 65.0,left: 30.0),
                            child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageEight()));
                                },
                                child: Icon(FontAwesomeIcons.arrowLeft,size: 20.0,color: Colors.black45,)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin:EdgeInsets.only(left:50.0,top: 25.0),
                        child: LinearPercentIndicator(
                          width: 270.0,
                          animation: true,
                          animationDuration: 1700,
                          lineHeight: 10.0,
                          percent: 1.0,
                          center: Text('100.0%',style: TextStyle(fontSize: 10.0),),
                          progressColor: Colors.green,
                        )
                    ),
                    Container(
                      margin:EdgeInsets.only(left:30.0,top: 15.0),
                      child: Text('Set as User ID(Email Address/ Mobile)',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25.0,
                            color: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: 290,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(const Radius.circular(10.0))
                            ),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(const Radius.circular(10.0))
                            ),
                            filled: true,
                            fillColor: Color(0xFF0f4c81),
                            prefixIcon: Icon(Icons.mail,color: Colors.white,),
                            labelText:'Email',
                            labelStyle:TextStyle(
                                fontSize: 18.0,
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: 290,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(const Radius.circular(10.0))
                            ),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(const Radius.circular(10.0))
                            ),
                            prefixIcon: Icon(FontAwesomeIcons.mobile),
                            labelText: 'Mobile Number',
                            labelStyle:TextStyle(
                                fontSize: 20.0
                            )
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(right:170.0,top: 30.0),
                      child: Text('Type Password',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20.0,
                            color: Colors.black
                        ),
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(right:105.0,top: 10.0),
                      child: Text('Use at least 8 to 12 characters',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15.0,
                            color: Colors.black
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                        width: 290,
                        child: TextFormField(
                          obscureText: _obscureText,
                          controller: _pass,
                          onSaved: (val)=> _password=val,
                          validator: (val)=>val.length<8?'Password is Too Short':null,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                              suffixIcon: GestureDetector(
                                child: Icon(
                                    _obscureText?Icons.visibility:Icons.visibility_off),
                                onTap: (){
                                  setState(() {
                                    _obscureText=!_obscureText;
                                  });
                                }
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontSize: 20.0,
                              )
                          ),
                        ),
                      ),
                    SizedBox(height: 20.0),
                    Container(
                        width: 290,
                        child: TextFormField(
                          obscureText: _obscureText,
                          onSaved: (val)=>_confirmpassword=val,
                          validator: (val){
                            if(val.isEmpty) return 'Empty';
                            if(val != _pass.text) return 'Not Match';
                          return null;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                              suffixIcon: GestureDetector(
                                  child: Icon(
                                      _obscureText?Icons.visibility:Icons.visibility_off),
                                  onTap: (){
                                    setState(() {
                                      _obscureText=!_obscureText;
                                    });
                                  }
                              ),
                              labelText: "Confirm Password",
                              labelStyle: TextStyle(
                                fontSize: 20.0
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
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
                                  print('pass:$_password,confirm:$_confirmpassword');
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageTen()));
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
      ),
    );
  }
}
