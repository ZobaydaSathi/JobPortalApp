import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/profile/search_page.dart';


class ItemThree extends StatefulWidget {
  @override
  _ItemThreeState createState() => _ItemThreeState();
}

class _ItemThreeState extends State<ItemThree> {
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
                    width:MediaQuery.of(context).size.width,
                    child: Image.asset('images/dark.jpg',fit: BoxFit.cover,),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(top: 55.0,left: 30.0),
                          child: Text('Job Shortlisted',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(top: 55.0,left: 60.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Icon(FontAwesomeIcons.bell,color: Colors.white,),
                              ),
                              SizedBox(width: 15.0,),
                              Container(
                                child: InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchPage()));
                                    },
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Icon(Icons.search,color: Colors.white,size: 28.0,),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 15.0,),
                              Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 13.0,
                                  child: Icon(Icons.person,size: 20.0,color: Color(0xFF192965),),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              child: InkWell(
                onTap: (){
                  showDialog(
                    context: context,
                    builder: (context)=>Dialog(
                      child: Container(
                        height: 270,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin:EdgeInsets.only(top: 20.0,right: 70.0),
                              child: Text('Jobs Expire in',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Container(
                              margin:EdgeInsets.only(top: 20.0,right: 120.0),
                              child: Text('Today',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              margin:EdgeInsets.only(top: 20.0,right: 90.0),
                              child: Text('Tomorrow',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            _container(label: 'Next 2 Days'),
                           _container(label: 'Next 3 Days'),
                            _container(label: 'Next 4 Days')
                          ],
                        ),
                      ),
                    )
                  );
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      margin:EdgeInsets.only(left: 295),
                      child:Icon(Icons.menu,color: Color(0xFF0f4c81),),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 175,),
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Image.asset('images/dash.gif'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80,left: 70.0),
                    child: Text('O Shortlisted Job',
                      style: TextStyle(
                          color: Color(0xFFf57b51),
                          fontSize: 25.0
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

class _container extends StatelessWidget {
  const _container({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(top: 20.0,right: 80.0),
      child: Text(label,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}
