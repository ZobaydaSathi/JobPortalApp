import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/pages/page_nine.dart';
import 'package:jobportalapp/profile/home_profile.dart';

class PageTen extends StatefulWidget {
  @override
  _PageTenState createState() => _PageTenState();
}

class _PageTenState extends State<PageTen> {
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
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageNine()));
                            },
                            child: Icon(FontAwesomeIcons.arrowLeft,size: 20.0,color: Colors.black45,)
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  margin: EdgeInsets.only(top: 60.0),
                  child: Image.asset('images/achive.gif'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text('Congratulations!',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Color(0xFF192965),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text('Your account has been created successfully.',
                    style:TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF192965),
                    ) ,
                  ),
                ),
                SizedBox(height: 40.0,),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(left: 20.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF192965),
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0),width: 1)
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:EdgeInsets.only(left: 60.0),
                        child: Icon(Icons.search, color: Colors.white),
                      ),
                      Container(
                        margin:EdgeInsets.only(left: 10.0),
                        child: InkWell(
                          onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeProfile()));
                          },
                          child: Text('Find  favorite  jobs',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
          ],
        )
      ),
    );
  }
}
