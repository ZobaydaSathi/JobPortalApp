import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/pages/page_one.dart';
import 'package:jobportalapp/pages/page_three.dart';

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final _formkey=GlobalKey<FormState>();
  String _user;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child:Form(
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
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageOne()));
                                },
                                child: Icon(FontAwesomeIcons.arrowLeft,size: 20.0,color: Colors.black45,)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsets.only(right:228.0,top: 50.0),
                      child: Text('Sign in',
                        style: TextStyle(
                            fontSize: 35.0,
                            color: Color(0xFF381460)
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      width: 318,
                      child: TextFormField(
                        onSaved: (val)=> _user=val,
                        validator: (String value){
                          if(value.isEmpty)return 'Forgot Username?';
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                          labelText: 'Username, Email or Mobile No',
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF0f4c81),
                              fontSize: 20.0
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Container(
                      child: Text('Sign in with Social',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20.0,
                            color: Colors.black45
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 108.0),
                            child: _text(label: 'G',color: Colors.red,),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            child: _text(label: 'f', color: Colors.indigo)
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            child: _text(label: 'in', color: Colors.blue)
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      child: Text('Don`t have an account?',
                        style:TextStyle(
                            fontSize: 18.0,
                            color: Colors.black45
                        ) ,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      child: Text('Create Account',
                        style:TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF381460)
                        ) ,
                      ),
                    ),
                    SizedBox(height: 45.0,),
                    Container(
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            child: Image.asset('images/mg.png',fit: BoxFit.cover,),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 250),
                            child: InkWell(
                              onTap: (){
                                final form= _formkey.currentState;
                                if(form.validate()){
                                  form.save();
                                  print('user:$_user');
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageThree()));
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

class _text extends StatelessWidget {
  const _text({
    Key key,
    @required this.label,
    @required this.color,
  }) : super(key: key);
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      child: Text(label,style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),),
    );
  }
}
