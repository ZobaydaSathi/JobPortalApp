import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemOne extends StatefulWidget {
  @override
  _ItemOneState createState() => _ItemOneState();
}

class _ItemOneState extends State<ItemOne> {
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
                          height:200,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset('images/curve.jpg',fit: BoxFit.cover,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 70.0,left: 30.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.person),
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(top: 10.0),
                                      child: Text('Marium Mitu',
                                        style:TextStyle(
                                            color: Colors.white,
                                            fontSize: 30.0
                                           ) ,
                                         ),
                                       ),
                                       Container(
                                         child: Text('Marium@pencilbox.edu.bd',
                                           style:TextStyle(
                                               color: Colors.white,
                                           ) ,
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
                     SizedBox(height: 100),
                  _container(label: 'Dhaka,Bangladesh' ,icon: FontAwesomeIcons.tag ),
                  SizedBox(height: 10.0),
                   _container(label: 'Organization Type', icon: FontAwesomeIcons.briefcase),
                SizedBox(height: 20.0),
                Container(
                  width: 180,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(5.0),
                  ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(left: 15.0),
                          child: Icon(Icons.search, color: Colors.white),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text('Search Job',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                        )
                      ],
                    ),
                ),
                SizedBox(height: 15.0),
                Container(
                  width: 180,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:EdgeInsets.only(left: 20.0),
                        child: Icon(FontAwesomeIcons.solidShareSquare, color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: InkWell(
                          onTap: (){
                            showDialog(
                                context: context,
                              builder: (context)=>Dialog(
                                child: Container(
                                  height: 300,
                                 child: Column(
                                   children: <Widget>[
                                     Container(
                                       margin:EdgeInsets.only(top: 40.0,right: 180.0),
                                       child: Text('Exit',
                                         style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 20.0
                                       ),
                                       ),
                                     ),
                                     SizedBox(height: 20.0),
                                     Container(
                                       child: Column(
                                         children: <Widget>[
                                           Container(
                                             width:300,
                                             margin: EdgeInsets.only(right: 40.0,left: 35.0),
                                             child: Text('Are you sure you want to close the app?',
                                               style: TextStyle(color: Colors.grey,fontSize: 15.0),),
                                           )
                                         ],
                                       ),
                                     ),
                                     Container(
                                       child: Row(
                                         children: <Widget>[
                                           Container(
                                             margin:EdgeInsets.only(left: 15.0,top: 10.0),
                                             child: Image.asset('images/ad.jpg',height: 60.0,),
                                           ),
                                           Container(
                                             margin:EdgeInsets.only(left: 150.0,bottom: 20.0),
                                             child: Image.asset('images/Info.png',height: 20.0,),
                                           )
                                         ],
                                       ),
                                     ),
                                     Container(
                                       child: Row(
                                         children: <Widget>[
                                           Container(
                                             margin:EdgeInsets.only(left: 30.0),
                                             child: Image.asset('images/logo.png',height: 35,),
                                           ),
                                           Container(
                                             child: Column(
                                               children: <Widget>[
                                                 Container(
                                                   margin:EdgeInsets.only(left: 10.0),
                                                   child: Text('Foundation',
                                                     style: TextStyle(fontSize: 20.0,
                                                         color: Colors.grey,fontWeight: FontWeight.bold),),
                                                 ),
                                                 Container(
                                                   margin:EdgeInsets.only(right: 30.0),
                                                   child: Text('6 Month',
                                                     style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                                                 ),
                                                 Container(
                                                   margin:EdgeInsets.only(right: 16.0),
                                                   child: Text('Camdridge',
                                                     style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                                                 ),
                                               ],
                                             ),
                                           ),
                                           Container(
                                             width: 80,
                                             padding: EdgeInsets.only(top: 18.0,bottom: 18.0,left: 18.0,right: 18.0),
                                             margin: EdgeInsets.only(left: 15.0),
                                             decoration: BoxDecoration(
                                               color: Color(0xFF0f4c81),
                                               borderRadius: BorderRadius.circular(5.0),
                                             ),
                                             child: Text('OPEN',textAlign:TextAlign.center,style: TextStyle(color: Colors.white),),
                                           )
                                         ],
                                       ),
                                     ),
                                     Container(
                                       child: Row(
                                         children: <Widget>[
                                           Container(
                                             margin:EdgeInsets.only(left: 110.0,top: 20.0),
                                             child: Text('NO',
                                               style: TextStyle(color:Color(0xFF0f4c81),
                                                   fontSize: 18.0,fontWeight: FontWeight.bold ),
                                             ),
                                           ),
                                           SizedBox(width: 90.0,),
                                           Container(
                                             margin:EdgeInsets.only(top: 20.0),
                                             child: Text('YES',
                                               style: TextStyle(color:Color(0xFF0f4c81),
                                                   fontSize: 18.0,fontWeight: FontWeight.bold ),),
                                           )
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                                )
                              )
                            );
                          },
                          child: Text('Post a Job',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
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
      child: Column(
        children: <Widget>[
          Container(
            width: 300,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Color.fromARGB(255,30,144,255),width:8),
            color: Colors.black12
          ),
          child: Row(
            children: <Widget>[
              Container(
                child: Icon(icon,color: Colors.black54,),
            ),
             Container(
               margin:EdgeInsets.only(left: 60.0),
                 child: Text(label,
                    style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45
                  ),
                ),
              ),
            ],
         ),
       )
    ],
     ),
     );
  }
}
