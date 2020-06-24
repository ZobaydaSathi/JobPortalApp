import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/profile/itemfive.dart';
import 'package:jobportalapp/profile/itemfour.dart';
import 'package:jobportalapp/profile/itemone.dart';
import 'package:jobportalapp/profile/itemthree.dart';
import 'package:jobportalapp/profile/itemtwo.dart';

class HomeProfile extends StatefulWidget {
  @override
  _HomeProfileState createState() => _HomeProfileState();
}

class _HomeProfileState extends State<HomeProfile> {
  int _indexpage=0;
  final _pageoption=[
   ItemOne(),
   ItemTwo(),
   ItemThree(),
   ItemFour(),
   ItemFive()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageoption[_indexpage],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20.0,
        unselectedFontSize: 10.0,
        fixedColor: Color(0xFF0f4c81),
        type: BottomNavigationBarType.fixed,
        currentIndex: _indexpage,
        onTap: (int index){
          setState(() {
            _indexpage=index;
          });
        },
          items: [
           BottomNavigationBarItem(
               icon: Icon(Icons.home,size: 25.0,),
             title: Text('Home',style: TextStyle(fontSize: 15.0),)
           ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.firefox,size: 22.0,),
                title: Text('Hot Jobs',style: TextStyle(fontSize: 15.0),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.star,size: 25.0,),
                title: Text('Shortlisted',style: TextStyle(fontSize: 15.0),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,size: 25.0,),
                title: Text('Lorem',style: TextStyle(fontSize: 15.0),)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz,size: 25.0,),
                title: Text('More',style: TextStyle(fontSize: 15.0),)
            ),
          ],
      ),
    );
  }
}
