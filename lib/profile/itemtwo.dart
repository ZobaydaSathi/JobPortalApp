import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/profile_details.dart';

class ItemTwo extends StatefulWidget {
  @override
  _ItemTwoState createState() => _ItemTwoState();
}

class _ItemTwoState extends State<ItemTwo> {
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
                              child: Text('Hot Jobs',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Container(
                              margin:EdgeInsets.only(top: 55.0,left: 110.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Icon(Icons.search,color: Colors.white,),
                                  ),
                                  SizedBox(width: 15.0,),
                                  Container(
                                    child: Icon(FontAwesomeIcons.bell,color: Colors.white,),
                                  ),
                                  SizedBox(width: 15.0,),
                                  Container(
                                    child:InkWell (
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileDetails()));
                                        },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 13.0,
                                        child: Icon(Icons.person,size: 20.0,color: Color(0xFF192965),),
                                      ),
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
                Container(
                  height:45,
                  width:MediaQuery.of(context).size.width,
                  child: Material(
                    elevation: 10.0,
                    child:Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text('175',
                              style: TextStyle(color: Colors.red,fontSize: 18.0,fontWeight:FontWeight.bold),),
                          ),
                          Container(
                            child: Text('New Job',style: TextStyle(fontSize: 18.0,color: Colors.black54),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                  height: 150,
                  width: 330,
                  child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      elevation: 5.0,
                      child:Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                _container(label: 'mindTree'),
                                Container(
                                  height: 35,
                                  width: 50.0,
                                  margin: EdgeInsets.only(left: 170,top: 20.0),
                                  child: Image.asset('images/mindtree.jpg'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Icon(FontAwesomeIcons.chevronRight,size: 15.0,),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      _text1(label: 'Creative Visualizer(3D Animator),',),
                                      _text2(label: 'Digital Media'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                  height: 150,
                  width: 330,
                  child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      elevation: 5.0,
                      child:Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                _container(label: 'mindTree'),
                                Container(
                                  height: 35,
                                  width: 50.0,
                                  margin: EdgeInsets.only(left: 170,top: 20.0),
                                  child: Image.asset('images/mindtree.jpg'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Icon(FontAwesomeIcons.chevronRight,size: 15.0,),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      _text1(label: 'Creative Visualizer(3D Animator),',),
                                      _text2(label: 'Digital Media'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                  height: 150,
                  width: 330,
                  child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      elevation: 5.0,
                      child:Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                _container(label: 'mindTree'),
                                Container(
                                  height: 35,
                                  width: 50.0,
                                  margin: EdgeInsets.only(left: 170,top: 20.0),
                                  child: Image.asset('images/mindtree.jpg'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Icon(FontAwesomeIcons.chevronRight,size: 15.0,),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      _text1(label: 'Creative Visualizer(3D Animator),',),
                                      _text2(label: 'Digital Media'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                  height: 150,
                  width: 330,
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      elevation: 5.0,
                      child:Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                _container(label: 'mindTree'),
                                Container(
                                  height: 35,
                                  width: 50.0,
                                  margin: EdgeInsets.only(left: 170,top: 20.0),
                                  child: Image.asset('images/mindtree.jpg'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.0),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Icon(FontAwesomeIcons.chevronRight,size: 15.0,),
                                ),
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      _text1(label: 'Creative Visualizer(3D Animator),',),
                                      _text2(label: 'Digital Media'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

class _text2 extends StatelessWidget {
  const _text2({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right:35.0 ),
      child: Text(label,
        style: TextStyle(fontSize: 15.0,),
      ),
    );
  }
}

class _text1 extends StatelessWidget {
  const _text1({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      child: Text(label,
        style: TextStyle(fontSize: 15.0,),
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
      margin: EdgeInsets.only(top: 10.0,left: 20.0),
      child: Text(label,
        style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Color(0xFF192965)),),
    );
  }
}


