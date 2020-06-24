import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/pages/page_five.dart';
import 'package:jobportalapp/pages/page_three.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
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
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageThree()));
                            },
                            child: Icon(FontAwesomeIcons.arrowLeft,size: 20.0,color: Colors.black45,)
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(top: 25.0,left: 50.0),
                  child: LinearPercentIndicator(
                    width: 270.0,
                    animation: true,
                    animationDuration: 1700,
                    lineHeight: 10.0,
                    percent: 0.5,
                    center: Text('20.0%',style: TextStyle(fontSize: 10.0),),
                    progressColor: Colors.green,
                  ),
                ),
                SizedBox(height: 40.0,),
                Container(
                  margin:EdgeInsets.only(right:90.0,top: 5.0),
                  child: Text('Select skills from the list',
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  child: _flatbutton(label: 'Accounting/Finance'),
                ),
                SizedBox(height: 10.0),
                Container(
                  child: _flatbutton(label: 'Media/Advertisement/Event Mgt.'),
                ),
                SizedBox(height: 10.0),
                Container(
                  child: _flatbutton(label: 'Medical/Pharma')
                ),
                SizedBox(height: 10.0),
                Container(
                  child: _flatbutton(label: 'NGO/Development')
                ),
                SizedBox(height: 10.0),
                Container(
                  child: _flatbutton(label: 'Research/Consultancy')
                ),
                SizedBox(height: 10.0),
                Container(
                  child: _flatbutton(label: 'Secretary/Receptionist')
                ),
                SizedBox(height: 30.0),
                Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset('images/mg.png',fit: BoxFit.cover),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 250,bottom: 50.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageFive()));
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

class _flatbutton extends StatelessWidget {
  const _flatbutton({
    Key key,
    @required this.label,
  }) : super(key: key);
  final String label;


  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
            ),
            child:Text(label,
              style: TextStyle(
                  fontSize: 20.0,
                  color:Color(0xFF192965),
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
