import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/profile/search_page.dart';

class Graphics extends StatefulWidget {
  @override
  _GraphicsState createState() => _GraphicsState();
}

class _GraphicsState extends State<Graphics> {
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
                    child: Image.asset('images/dark.jpg',height: 120,fit: BoxFit.cover,),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchPage()));
                              },
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 60.0,left: 25.0),
                                  child: Icon(Icons.arrow_back,color: Colors.white,),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(top: 60.0,left: 30.0),
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
                                margin:EdgeInsets.only(left: 20.0),
                                child: Text('Graphic Designer',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30.0,top: 60.0),
                          child: Icon(Icons.menu,color: Colors.white,),
                        )
                      ],
                    ),
                  ),
                  ]
                )
              ),
            SizedBox(height: 10.0),
            Container(
              height: 200,
              width: 330,
              child: Material(
                  borderRadius: BorderRadius.circular(10.0),
                  elevation: 5.0,
                  child:Column(
                    children: <Widget>[
                      Container(
                        child:Row(
                          children: <Widget>[
                            Container(
                              margin:EdgeInsets.only(bottom: 40.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin:EdgeInsets.only(left: 15.0,top: 20.0),
                                    child: Text('Graphics Designer',
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          color: Color(0xFF192965),
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:EdgeInsets.only(left: 18.0),
                                    child: Text('Razia Group of Companies',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 80),
                              child: Image.asset('images/mindtree.jpg',height: 40.0,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin:EdgeInsets.only(left: 18.0),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Icon(FontAwesomeIcons.calendar,size: 15.0,color: Color(0xFF192965)),
                                  ),
                                  SizedBox(width: 10.0),
                                  Container(
                                    child: Text('Deadline',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 60.0,),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Icon(FontAwesomeIcons.addressCard,size: 15.0,),
                                  ),
                                  SizedBox(width: 10.0),
                                  Container(
                                    child: Text('Experience',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
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
                              margin:EdgeInsets.only(left: 42.0),
                              child: Text('Dec 19,2019',style: TextStyle(color: Color(0xFF192965),fontSize: 16.0),),
                            ),
                            SizedBox(width: 60.0,),
                            Container(
                              child: Text('1 to 3 Years',style: TextStyle(color:Color(0xFF192965) ,fontSize: 16.0),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin:EdgeInsets.only(left: 18.0),
                                    child: Icon(FontAwesomeIcons.graduationCap,size: 15.0,color:Color(0xFF192965)),
                                  ),
                                  SizedBox(width: 10.0,),
                                  Container(
                                    child: Text('Education',style: TextStyle(color:Colors.grey ,fontSize: 15.0),),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 55.0),
                              child: Text('Bachelor Degree in any Discipline',
                                style: TextStyle(color:Color(0xFF192965) ,fontSize: 15.0),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin:EdgeInsets.only(left: 280.0),
                        child: Icon(Icons.star,color: Colors.amber,),
                      )
                    ],
                  )
              ),
            ),
            SizedBox(height: 15.0,),
            Container(
              height: 195,
              width: 330,
              margin: EdgeInsets.only(bottom: 20.0),
              child: Material(
                  borderRadius: BorderRadius.circular(10.0),
                  elevation: 5.0,
                  child:Column(
                    children: <Widget>[
                      Container(
                        child:Row(
                          children: <Widget>[
                            Container(
                              margin:EdgeInsets.only(left: 18.0,top: 40.0,bottom: 40.0),
                              child: Text('Razia Group of Companies',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 80),
                              child: Image.asset('images/mindtree.jpg',height: 40.0,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin:EdgeInsets.only(left: 40.0),
                              child: Text('Deadline',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                            ),
                            SizedBox(width: 62.0,),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Icon(FontAwesomeIcons.addressCard,size: 15.0,),
                                  ),
                                  SizedBox(width: 10.0),
                                  Container(
                                    child: Text('Experience',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
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
                              margin:EdgeInsets.only(left: 42.0),
                              child: Text('Dec 19,2019',style: TextStyle(color: Color(0xFF192965),fontSize: 16.0),),
                            ),
                            SizedBox(width: 60.0,),
                            Container(
                              child: Text('1 to 3 Years',style: TextStyle(color:Color(0xFF192965) ,fontSize: 16.0),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 185.0),
                              child: Text('Education',style: TextStyle(color:Colors.grey ,fontSize: 15.0),),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 55.0),
                              child: Text('Bachelor Degree in any Discipline',
                                style: TextStyle(color:Color(0xFF192965) ,fontSize: 15.0),),
                            )
                          ],
                        ),
                      ),
                    ],
                 )
              ),
            ),
            Container(
              height: 195,
              width: 330,
              margin: EdgeInsets.only(bottom: 20.0),
              child: Material(
                  borderRadius: BorderRadius.circular(10.0),
                  elevation: 5.0,
                  child:Column(
                    children: <Widget>[
                      Container(
                        child:Row(
                          children: <Widget>[
                            Container(
                              margin:EdgeInsets.only(left: 18.0,top: 40.0,bottom: 40.0),
                              child: Text('Razia Group of Companies',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 80),
                              child: Image.asset('images/mindtree.jpg',height: 40.0,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin:EdgeInsets.only(left: 40.0),
                              child: Text('Deadline',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                            ),
                            SizedBox(width: 62.0,),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Icon(FontAwesomeIcons.addressCard,size: 15.0,),
                                  ),
                                  SizedBox(width: 10.0),
                                  Container(
                                    child: Text('Experience',style: TextStyle(color: Colors.grey,fontSize: 15.0),),
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
                              margin:EdgeInsets.only(left: 42.0),
                              child: Text('Dec 19,2019',style: TextStyle(color: Color(0xFF192965),fontSize: 16.0),),
                            ),
                            SizedBox(width: 60.0,),
                            Container(
                              child: Text('1 to 3 Years',style: TextStyle(color:Color(0xFF192965) ,fontSize: 16.0),),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 185.0),
                              child: Text('Education',style: TextStyle(color:Colors.grey ,fontSize: 15.0),),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 55.0),
                              child: Text('Bachelor Degree in any Discipline',
                                style: TextStyle(color:Color(0xFF192965) ,fontSize: 15.0),),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ),
          ],
        )
      ),
    );
  }
}

