import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemFour extends StatefulWidget {
  @override
  _ItemFourState createState() => _ItemFourState();
}

class _ItemFourState extends State<ItemFour> {
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
                          child: Text('Lorem',
                            style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white
                            ),
                          ),
                        ),
                        Container(
                          margin:EdgeInsets.only(top: 55.0,left: 130.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Icon(Icons.search,color: Colors.white,size: 28.0,),
                              ),
                              SizedBox(width: 15.0,),
                              Container(
                                child: Icon(FontAwesomeIcons.bell,color: Colors.white,),
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
            SizedBox(height: 20.0,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 14.0,bottom: 14.0,left: 10.0,right: 8.0),
                    margin: EdgeInsets.only(left: 80.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)),
                        color: Colors.black,
                        border: Border.all(color: Color.fromARGB(64,64,64,64),width: 2)
                    ),
                    child: Text('This Month',style: TextStyle(fontSize: 18.0,color: Colors.white),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 14.0,bottom: 14.0,left: 15.0,right: 20.0),
                    margin: EdgeInsets.only(right: 80.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        border: Border.all(color: Color.fromARGB(64,64,64,64),width: 2)
                    ),
                    child: Text('All Time',style: TextStyle(fontSize: 18.0),),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
               child: CustomScrollView(
                 primary: false,
                 slivers: <Widget>[
                   SliverPadding(
                     padding: const EdgeInsets.all(20),
                     sliver: SliverGrid.count(
                       crossAxisSpacing: 8,
                       mainAxisSpacing: 3,
                       crossAxisCount: 2,
                       children: <Widget>[
                         Container(
                           child: Card(
                             elevation: 2.0,
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                             color: Colors.purple,
                              margin: EdgeInsets.only(bottom: 10.0),
                             child: Column(
                               children: <Widget>[
                                 _text2(label: '13'),
                                 SizedBox(height: 5.0,),
                                 Container(
                                  margin: EdgeInsets.only(right: 70.0),
                                   child: _text4(label: 'Jobs'),
                                 ),
                                Container(
                                  margin: EdgeInsets.only(right: 50.0),
                                  child: _text4(label: 'Applied'),
                                ),
                                 Container(
                                   margin: EdgeInsets.only(left: 90.0),
                                   child: Icon(Icons.insert_drive_file,color: Colors.grey,size: 30.0,),
                                 )
                               ],
                             ),
                           ),
                         ),
                         Container(
                           child: Card(
                             elevation: 2.0,
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                             color: Colors.indigo,
                             margin: EdgeInsets.only(bottom: 10.0),
                             child: Column(
                               children: <Widget>[
                                _text2(label: '13'),
                                 SizedBox(height: 5.0,),
                                 Container(
                                   margin: EdgeInsets.only(right: 7.0),
                                   child: _text5(label:'Times Emailed'),
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(right: 45.0),
                                  child: _text5(label: 'Resume'),
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(left: 90.0),
                                   child: Icon(Icons.send,color: Colors.grey,size: 30.0,),
                                 )
                               ],
                             ),
                           ),
                         ),
                         Container(
                           child: Card(
                             elevation: 2.0,
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                             color: Colors.blue,
                              margin: EdgeInsets.only(bottom: 10.0),
                             child: Column(
                               children: <Widget>[
                                 _text1(label: '9'),
                                 SizedBox(height: 5.0,),
                                 Container(
                                   child: _text6(label: 'Employers Viewed',),
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(right: 70.0),
                                   child:_text6(label: 'Applied')
                                 ),
                               ],
                             ),
                           ),
                         ),
                         Container(
                           child: Card(
                             elevation: 2.0,
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                             color: Colors.pink,
                              margin: EdgeInsets.only(bottom: 10.0),
                             child: Column(
                               children: <Widget>[
                                 _text1(label: '7'),
                                 SizedBox(height: 5.0,),
                                 Container(
                                   margin: EdgeInsets.only(right: 50.0),
                                   child: _text7(label: 'Employers'),
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(right: 60.0),
                                   child: _text7(label: 'Followed')
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(left: 90.0),
                                   child: Icon(FontAwesomeIcons.userPlus,color: Colors.grey,size: 30.0,),
                                 )
                               ],
                             ),
                           ),
                         ),
                         Container(
                           child: Card(
                             elevation: 2.0,
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                             color: Colors.blueGrey,
                             margin: EdgeInsets.only(bottom: 10.0),
                             child: Column(
                               children: <Widget>[
                                 _text3(label: '5'),
                                 SizedBox(height: 5.0,),
                                 Container(
                                   margin: EdgeInsets.only(right: 50.0),
                                   child: _text8(label: 'Interview'),
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(right: 50.0),
                                   child: _text7(label: 'Invitations')
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(left: 90.0),
                                   child: Icon(FontAwesomeIcons.chalkboardTeacher,color: Colors.grey,size: 30.0,),
                                 )
                               ],
                             ),
                           ),
                         ),
                         Container(
                           child: Card(
                             elevation: 2.0,
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                             color: Colors.lightGreen,
                             margin: EdgeInsets.only(bottom: 10.0),
                             child: Column(
                               children: <Widget>[
                               _text3(label: '5'),
                                 SizedBox(height: 5.0,),
                                 Container(
                                   margin: EdgeInsets.only(right: 20.0),
                                   child: _text9(label: 'Messages by'),
                                 ),
                                 Container(
                                   margin: EdgeInsets.only(right: 40.0),
                                   child: _text9(label: 'Employers')
                                 ),
                                 Container(
                                     child:Column(
                                       children: <Widget>[
                                         Container(
                                           height: 45.0,
                                           margin: EdgeInsets.only(left: 88.0,),
                                           child: InkWell(
                                             onTap: (){
                                               showDialog(
                                                   context: context,
                                                    builder:(context)=>Dialog(
                                                      child: Container(
                                                        height: 300,
                                                        child: Container(
                                                          child: Column(
                                                            children: <Widget>[
                                                              Container(
                                                                margin:EdgeInsets.only(top: 20.0,left: 200.0),
                                                                child: InkWell(
                                                                  onTap: (){
                                                                  Navigator.of(context).pop(context);
                                                                  },
                                                                  child: Icon(Icons.close,color: Colors.grey,),
                                                                ),
                                                              ),
                                                              SizedBox(height: 10.0,),
                                                              Container(
                                                                margin: EdgeInsets.only(right: 85.0),
                                                                child: Text('Manage Resume',
                                                                  style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 22.0
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(height: 20.0,),
                                                              _container(label: 'Edit Resume',icon: FontAwesomeIcons.fileSignature,),
                                                              SizedBox(height: 10.0,),
                                                             _container(label: 'View Resume', icon: FontAwesomeIcons.eye),
                                                              SizedBox(height: 10.0,),
                                                              _container(label: 'Upload Resume', icon: FontAwesomeIcons.cloudUploadAlt),
                                                                ],
                                                            ),
                                                         ),
                                                      ),
                                                  ),
                                                );
                                             },
                                             child: CircleAvatar(
                                               radius: 35.0,
                                               backgroundColor: Colors.pink,
                                               child: Icon(FontAwesomeIcons.cogs,color: Colors.white,),
                                             ),
                                           ),
                                         )
                                       ],
                                     )
                                 )
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
            ),
          ],
        ),
      )
    );
  }
}

class _text9 extends StatelessWidget {
  const _text9({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      style: TextStyle(
          fontSize: 20.0,
          color: Colors.white
      ),
    );
  }
}

class _text8 extends StatelessWidget {
  const _text8({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      style: TextStyle(
          fontSize: 20.0,
          color: Colors.white
      ),
    );
  }
}

class _text7 extends StatelessWidget {
  const _text7({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      style: TextStyle(
          fontSize: 17.0,
          color: Colors.white
      ),
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
      width: 200,
      padding: EdgeInsets.only(top: 10.0,bottom: 10.0,left: 8.0,right: 20.0),
      margin: EdgeInsets.only(right: 25.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(icon,color: Colors.grey,),
          ),
          Container(
            margin:EdgeInsets.only(left: 10.0),
            child: Text(label,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _text6 extends StatelessWidget {
  const _text6({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      style: TextStyle(
          fontSize: 17.0,
          color: Colors.white
      ),
    );
  }
}

class _text5 extends StatelessWidget {
  const _text5({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      style: TextStyle(
          fontSize: 18.0,
          color: Colors.white
      ),
    );
  }
}

class _text4 extends StatelessWidget {
  const _text4({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label,
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white
      ),
    );
  }
}

class _text3 extends StatelessWidget {
  const _text3({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0,right: 80.0),
      child: Text('5',
        style: TextStyle(
          color: Colors.white,fontSize: 45.0,
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
      margin: EdgeInsets.only(top: 10.0,right: 60.0),
      child: Text(label,
        style: TextStyle(
            color: Colors.white,fontSize: 45.0,
        ),
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
      margin: EdgeInsets.only(top: 10.0,right: 80.0),
      child: Text(label,
        style: TextStyle(
          color: Colors.white,fontSize: 45.0,
        ),
      ),
    );
  }
}

