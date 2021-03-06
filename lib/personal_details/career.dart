import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/career_information.dart';
import 'package:jobportalapp/personal_details/profile_details.dart';

class Career extends StatefulWidget {
  @override
  _CareerState createState() => _CareerState();
}

class _CareerState extends State<Career> {
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
                            margin: EdgeInsets.only(left: 30.0,top: 90),
                            child: Text('Career and Application',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CareerInformation()));
                            },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
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
                    child: Icon(FontAwesomeIcons.bullseye,color:  Color(0xFF192965),),
                  ),
                  Container(
                    margin:EdgeInsets.only(left: 10.0,top: 15.0),
                    child: Text('Objective',style: TextStyle(fontSize: 18.0,color: Colors.black45),),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            Divider(height: 20.0,endIndent: 20.0,indent: 20.0,thickness: 2,),
            Container(
              child:Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(left: 30.0,bottom: 40.0,top: 20.0),
                          child: Icon(FontAwesomeIcons.moneyCheckAlt,color: Color(0xFF192965)),
                        ),
                        Container(
                          margin:EdgeInsets.only(left: 10.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin:EdgeInsets.only(right: 170.0,top: 20.0),
                                child: Text('Present Salary',style: TextStyle(fontSize: 18.0,color: Colors.black45),),
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                margin:EdgeInsets.only(right: 240.0,bottom: 20.0),
                                child: Text('20000',style: TextStyle(fontSize: 16.0,color: Color(0xFF192965)),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(left: 30.0,bottom: 40.0),
                          child: Icon(FontAwesomeIcons.moneyCheck,color:  Color(0xFF192965),size: 18.0,),
                        ),
                        Container(
                          margin:EdgeInsets.only(left: 10.0,bottom: 20.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin:EdgeInsets.only(right: 160),
                                child: Text('Expected Salary',style: TextStyle(fontSize: 18.0,color: Colors.black45),),
                              ),
                              SizedBox(height: 10.0,),
                              Container(
                                margin:EdgeInsets.only(right: 240.0),
                                child: Text('50000',style: TextStyle(fontSize: 16.0,color: Color(0xFF192965)),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(height: 20.0,endIndent: 20.0,indent: 20.0,thickness: 2,),
            Container(
              child:Column(
                children: <Widget>[
                  _container(icon: FontAwesomeIcons.searchengin,),
                  _container(icon: FontAwesomeIcons.checkSquare)
                ],
              ),
            ),
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

class _container extends StatelessWidget {
  const _container({
    Key key,
    @required this.icon
  }) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            margin:EdgeInsets.only(left: 30.0,bottom: 35.0,top: 20.0),
            child: Icon(icon,color:  Color(0xFF192965),),
          ),
          Container(
            margin:EdgeInsets.only(top: 20.0,bottom: 40.0,left: 10.0),
            child: Text('Looking For',style: TextStyle(fontSize: 18.0,color: Colors.black45),),
          ),
        ],
      ),
    );
  }
}
