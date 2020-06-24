import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/profile/graphics.dart';
import 'package:jobportalapp/profile/itemthree.dart';


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
                              child: InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ItemThree()));
                                    },
                                  child: Icon(FontAwesomeIcons.arrowLeft,size: 20.0,color: Colors.white,)
                              ),
                            ),
                            Container(
                              margin:EdgeInsets.only(top: 55.0,left: 30.0),
                              child: Text('Job Search',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Container(
                              width: 100,
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              margin:EdgeInsets.only(top: 50.0,left: 40.0),
                              child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Graphics()));
                                  },
                                child: Text('Search',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0,),
                Container(
                  child: FlatButton(
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
                                _text(label: 'Keyword'),
                                SizedBox(width: 175.0,),
                                Container(
                                  child: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  child: FlatButton(
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
                                    child: _text(label: 'General Category')
                                ),
                                SizedBox(width: 100.0,),
                                Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  child: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  child: Text('OR',style: TextStyle(fontSize: 20.0,color: Colors.black54),),
                ),
                SizedBox(height: 10.0),
                Container(
                  child: FlatButton(
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
                                    child: _text(label: 'Special Skilled Category')
                                ),
                                SizedBox(width: 50.0,),
                                Container(
                                  margin: EdgeInsets.only(left: 5.0),
                                  child: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  child: FlatButton(
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
                                    child: _text(label: 'Location')
                                ),
                                SizedBox(width: 175.0,),
                                Container(
                                  child: Icon(Icons.arrow_drop_down,color: Colors.grey,),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  margin:EdgeInsets.only(right: 220),
                  child: Text('Experience',
                    style: TextStyle(fontSize: 20.0,color: Color(0xFF0f4c81),fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 15.0),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 150,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                        ),
                        margin:EdgeInsets.only(left: 30.0),
                        child: _text1(label: 'Less than 1 year'),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 100,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                        ),
                        child: _text1(label: '1-3 years')
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                        ),
                        margin:EdgeInsets.only(left: 30.0),
                        child: _text1(label: '3 - 5 years ')
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        width: 120,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                        ),
                        child: _text1(label: '5 - 10 years')
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: 120,
                  margin: EdgeInsets.only(right: 180,bottom: 20.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                  ),
                  child: _text1(label: 'Over 10 years')
              ),
           ],
         ),
      )
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
    return Text(label,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.black54
      ),
    );
  }
}

class _text extends StatelessWidget {
  const _text({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Text(label,
          style: TextStyle(
            fontSize: 20.0,
            color:Colors.black54,
          ),
        )
    );
  }
}
