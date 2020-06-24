import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/home_page.dart';
import 'package:jobportalapp/pages/page_two.dart';



class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
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
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                              },
                              child: Icon(FontAwesomeIcons.arrowLeft,size: 20.0,color: Colors.black45,)
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(top: 65.0,left: 230.0),
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Color(0xFF111d5e),
                            child: Icon(Icons.person,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    margin:EdgeInsets.only(right: 163.0),
                    child: Text('Search Job',
                      style: TextStyle(
                          fontSize: 33.0,
                          color: Color(0xFF111d5e)
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  Container(
                       child: _flatbutton(
                         label: 'Job Title',
                         icon: Icons.arrow_drop_down,
                         color: Colors.black,
                       ),
                      ),
                  SizedBox(height: 15.0),
                  Container(
                    child: _flatbutton(
                      label: 'Location',
                      icon: Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Container(
                    child: _flatbutton(
                      label: 'Location',
                      icon: Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    child: Container(
                      width: 300,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF192965),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.search, color: Colors.white),
                          ),
                          Container(
                            margin:EdgeInsets.only(left: 85.0),
                            child: Text('Search',
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
                  ),
                  SizedBox(height: 10.0,),
                   Container(
                        width: 300,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Icon(FontAwesomeIcons.firefox,color: Colors.pink,),
                            ),
                            Container(
                              margin:EdgeInsets.only(left: 60.0),
                              child: Text('View New Jobs',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black45
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  SizedBox(height: 25.0),
                  Container(
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          child: Image.asset('images/mg.png',fit: BoxFit.cover,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Text('For Any help',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 50.0),
                          child: Text('Call at 163547',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.pink
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 250),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageTwo()));
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
        );
      }
  }
class _flatbutton extends StatelessWidget {
  const _flatbutton({
    Key key,
    @required this.label,
    @required this.icon,
    @required this.color,
  }) : super(key: key);
  final String label;
  final IconData icon;
  final Color color;

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
            child: Container(
              child: Row(
                children: <Widget>[
                  Container(
                      child:Text(label,
                        style: TextStyle(
                          fontSize: 20.0,
                          color:Colors.black,
                        ),
                      )
                  ),
                  SizedBox(width: 175.0,),
                  Container(
                    child: Icon(icon,color: color,),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
