import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/pages/page_four.dart';
import 'package:jobportalapp/pages/page_six.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PageFive extends StatefulWidget {
  @override
  _PageFiveState createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive> {
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
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageFour()));
                            },
                            child: Icon(FontAwesomeIcons.arrowLeft,size: 20.0,color: Colors.black45,)
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:EdgeInsets.only(left: 40.0,top: 25.0),
                  child: LinearPercentIndicator(
                    width: 270.0,
                    animation: true,
                    animationDuration: 1700,
                    lineHeight: 10.0,
                    percent: 0.6,
                    center: Text('40.0%',style: TextStyle(fontSize: 10.0),),
                    progressColor: Colors.green,
                  ),
                ),
                SizedBox(height: 40.0,),
                Container(
                  margin:EdgeInsets.only(right:10.0,top: 20.0),
                  child: Text('Create Your Free BDJobs Account',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                _container(label: 'Import From Google',icon: FontAwesomeIcons.google,color: Colors.red),
                SizedBox(height: 15.0),
               _container(label: 'Import From Facebook', icon: FontAwesomeIcons.facebookF,color: Colors.indigo,),
              Container(
                height:80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width:140,
                      child: Image.asset('images/divider.png',fit: BoxFit.cover),
                    ),
                    Container(
                      child: Text('OR',style: TextStyle(color: Colors.grey),),
                    ),
                    Container(
                      width:140,
                      child: Image.asset('images/divider.png',fit: BoxFit.cover,),
                    )
                  ],
                ),
              ),
              Container(
                width: 280,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                color: Colors.black,
                 borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:EdgeInsets.only(left: 65.0),
                        child: Text('Enter your information',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 70.0),
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageSix()));
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
    @required this.color
  }) : super(key: key);
  final String label;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Color.fromARGB(128, 128, 128, 128),width: 1)
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin:EdgeInsets.only(left: 40.0),
            child: Icon(icon, color:color),
          ),
          SizedBox(width: 10.0),
          Container(
            child: Text(label,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey
              ),
            ),
          )
        ],
      ),
    );
  }
}
