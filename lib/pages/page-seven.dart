import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/pages/page_eight.dart';
import 'package:jobportalapp/pages/page_six.dart';
import 'package:percent_indicator/percent_indicator.dart';


class PageSeven extends StatefulWidget {
  @override
  _PageSevenState createState() => _PageSevenState();
}

class _PageSevenState extends State<PageSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:EdgeInsets.only(top: 65.0,left: 30.0),
                        child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageSix()));
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
                    percent: 0.7,
                    center: Text('60.0%',style: TextStyle(fontSize: 10.0),),
                    progressColor: Colors.green,
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(right:185.0,top: 30.0),
                  child: Text('Select gender',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 22.0,
                        color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 45.0),
                _container(label: 'Male',icon: Icons.person),
                SizedBox(height: 15.0),
                Container(
                  child: FlatButton(
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 300,
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1),
                             color: Color(0xFF0f4c81)
                          ),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Icon(FontAwesomeIcons.female,color:Colors.white,),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 15.0),
                                child: Text('Female',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                _container(label: 'Other', icon: FontAwesomeIcons.transgender),
                SizedBox(height: 130),
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
                              fontWeight: FontWeight.normal,
                              color: Colors.pink
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 250),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageEight()));
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
      )
    );
  }
}

class _container extends StatelessWidget {
  const _container({
    Key key,
    @required this.label,
    @required this.icon,
  }) : super(key: key);
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Column(
          children: <Widget>[
            Container(
              width: 300,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Icon(icon,color:Color(0xFF0f4c81),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Text(label,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0f4c81)
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
