import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/preferred.dart';

class PreferredInformation extends StatefulWidget {
  @override
  _PreferredInformationState createState() => _PreferredInformationState();
}

class _PreferredInformationState extends State<PreferredInformation> {
  bool _checkbox=false;
  bool _select=false;

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
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Preferred()));
                            },
                              child: Container(
                                margin:EdgeInsets.only(top: 80.0,left: 40.0),
                                child: Icon(Icons.arrow_back,color: Colors.white,),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 45.0,top: 80),
                              child: Text('Preferred Areas',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                            ),
                          ]
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 310,
                margin: EdgeInsets.only(top: 20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(96, 96, 96, 96),width: 1 ),
                        borderRadius: BorderRadius.all(const Radius.circular(5.0))
                    ),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(96, 96, 96, 96),width: 1 ),
                        borderRadius: BorderRadius.all(const Radius.circular(5.0))
                    ),
                    labelText: "Perferred Functional Job Categories",
                    suffixIcon:  Icon(Icons.arrow_drop_down,color: Color(0xFF192965)),
                    labelStyle: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFF192965),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0,right: 80.0),
                child: Text('*Functional Job Categories Maximum 3',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black54,
                  ),
                ),
              ),
              Container(
                margin:EdgeInsets.only(right: 100.0,top: 10.0),
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(left: 20.0),
                      child: Text('Design/Creative',textAlign:TextAlign.center,
                        style: TextStyle(fontSize: 16.0,color: Colors.black),),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      child: Icon(Icons.close),
                    )
                  ],
                ),
              ),
              Container(
                width: 310,
                margin: EdgeInsets.only(top: 70.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(96, 96, 96, 96),width: 1 ),
                        borderRadius: BorderRadius.all(const Radius.circular(5.0))
                    ),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(96, 96, 96, 96),width: 1 ),
                        borderRadius: BorderRadius.all(const Radius.circular(5.0))
                    ),
                    labelText: "Perferred Special Skilled Job Categories",
                    suffixIcon:  Icon(Icons.arrow_drop_down,color: Color(0xFF192965)),
                    labelStyle: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFF192965),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0,right: 80.0),
                child: Text('*Functional Job Categories Maximum 3',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black54,
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 310,
                        padding: EdgeInsets.all(15.0),
                        margin: EdgeInsets.only(top: 70.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                        ),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                  child:Text('Perferred Organization Job',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Color(0xFF192965),
                                    ),
                                  )
                              ),
                              SizedBox(width: 30.0,),
                              Container(
                                margin: EdgeInsets.only(left: 50.0),
                                child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0,right: 150.0),
                child: Text('*Organization Maximum 12',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black54,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0,right: 130.0),
                child: Text('Perferred Job Location*',style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xFF192965),
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0,right: 195),
                child: Text('Inside Bangladesh',style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.black54,
                ),),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(left: 40.0),
                      child: Checkbox(
                        activeColor: Color(0xFF192965),
                        value: _checkbox,
                        onChanged: (bool value){
                          setState(() {
                            _checkbox=value;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text('Anywhere In Bangladesh',style: TextStyle(fontSize: 16.0,color: Color(0xFF192965)),),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(left: 40.0),
                      child: Checkbox(
                        activeColor: Color(0xFF192965),
                        checkColor: Colors.white,
                        value: _select,
                        onChanged: (bool value){
                          setState(() {
                            _select=value;
                          });
                        },
                      ),
                    ),
                    Container(
                      child: Text('Select Districts',style: TextStyle(fontSize: 16.0,color: Color(0xFF192965)),),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0,right: 195),
                child: Text('Outside Bangladesh',style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.black54,
                ),),
              ),
              Container(
                width: 310,
                margin: EdgeInsets.only(top: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(96, 96, 96, 96),width: 1 ),
                        borderRadius: BorderRadius.all(const Radius.circular(5.0))
                    ),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(96, 96, 96, 96),width: 1 ),
                        borderRadius: BorderRadius.all(const Radius.circular(5.0))
                    ),
                    labelText: "Select Country",
                    suffixIcon: Icon(Icons.arrow_drop_down,color: Color(0xFF192965),),
                    labelStyle: TextStyle(
                        fontSize: 15.0,
                        color: Color(0xFF192965),
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0,right: 110.0),
                child: Text('*Countries Maximum 12',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black54,
                  ),
                ),
              ),
              Container(
                margin:EdgeInsets.only(right: 110.0,top: 10.0),
                padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                width: 130,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(left: 20.0),
                      child: Text('America',textAlign:TextAlign.center,
                        style: TextStyle(fontSize: 16.0,color: Colors.black),),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      child: Icon(Icons.close),
                    )
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
