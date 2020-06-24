import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemFive extends StatefulWidget {
  @override
  _ItemFiveState createState() => _ItemFiveState();
}

class _ItemFiveState extends State<ItemFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 50,top: 55.0),
                    child: Row(
                      children: <Widget>[
                         _container(label: 'Manage',label2: 'Resume',color: Colors.lightGreen,icon: FontAwesomeIcons.fileAlt,),
                        SizedBox(width: 30.0),
                        _container(label: 'Applied', label2: 'Jobs', color: Colors.indigo,icon: FontAwesomeIcons.file,),
                          SizedBox(width: 30.0),
                         _container(label: 'Favorite', label2: 'Search', color: Colors.red, icon: FontAwesomeIcons.solidHeart),
                          SizedBox(width: 30.0),
                          _container(label: 'Followed', label2: 'Emploers', color: Colors.blueGrey, icon: Icons.person)
                        ],
                      ),
                    ),
                    SizedBox(height: 40.0,),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin:EdgeInsets.only(left: 50),
                          child: Text('Job Search'),
                        )
                      ],
                    ),
                   ),
                SizedBox(height: 30.0),
                _container2(label: 'General Search',icon: Icons.search,),
                SizedBox(height: 10.0),
               _container2(label: 'New Jobs (24 hrs)', icon: FontAwesomeIcons.briefcase),
                SizedBox(height: 10.0),
               _container2(label: 'Deadline tomorrow', icon: Icons.watch_later),
                SizedBox(height: 10.0),
               _container2(label: 'Part Time Jobs', icon: FontAwesomeIcons.briefcaseMedical),
                SizedBox(height: 10.0),
                _container2(label: 'Contractual Jobs', icon: FontAwesomeIcons.fileContract),
                SizedBox(height: 10.0),
                _container2(label: 'Government Jobs', icon: FontAwesomeIcons.globeAsia),
                SizedBox(height: 20.0,),
                Divider(thickness: 2.0,),
                SizedBox(height: 20.0),
              _container2(label: 'Job Application Guidline', icon: FontAwesomeIcons.phabricator),
                SizedBox(height: 10.0),
               _container2(label: 'Emailed Resume', icon: Icons.mail),
                SizedBox(height: 10.0),
             _container2(label: 'Employer Viewed Resume', icon: Icons.remove_red_eye),
                SizedBox(height: 10.0),
                _container2(label: 'Interview Invitation', icon: FontAwesomeIcons.users),
                SizedBox(height: 10.0),
               _container2(label: 'Upcoming Training', icon: FontAwesomeIcons.chalkboardTeacher),
                SizedBox(height: 10.0),
               _container2(label: 'Settings', icon: FontAwesomeIcons.cogs),
                SizedBox(height: 20.0),
                Divider(thickness: 2.0,),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:EdgeInsets.only(left: 50,top: 20.0),
                        child: Text('About App'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                _container3(label:'App Guides',icon: FontAwesomeIcons.infoCircle),
                SizedBox(height: 10.0),
                _container3(label: 'Rate Us On Google Play Store', icon: FontAwesomeIcons.star),
                SizedBox(height: 10.0),
               _container3(label: 'Feedback And Support', icon: Icons.watch_later),
                SizedBox(height: 10.0),
                _container3(label: 'Privacy Policy', icon: FontAwesomeIcons.lock),
                SizedBox(height: 10.0),
                _container3(label: 'Terms And Policies', icon: FontAwesomeIcons.newspaper),
                SizedBox(height: 20.0),
            ],
          ),
       ),
    );
  }
}

class _container3 extends StatelessWidget {
  const _container3({
    Key key,
    @required this.label,
    @required this.icon,
  }) : super(key: key);
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(left: 50),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(icon,color: Colors.black,),
          ),
          SizedBox(width: 20.0),
          Container(
            child:Text(label,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          )
        ],
      ),
    );
  }
}

class _container2 extends StatelessWidget {
  const _container2({
    Key key,
    @required this.label,
    @required this.icon,
  }) : super(key: key);
  final String label;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(left: 50),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(icon,color: Colors.black,),
          ),
          SizedBox(width: 20.0),
          Container(
            child:Text(label,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          ),
        ],
      ),
    );
  }
}

class _container extends StatelessWidget {
  const _container({
    Key key,
    @required this.label,
    @required this.label2,
    @required this.color,
    @required this.icon,
  }) : super(key: key);
  final String label;
  final String label2;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: CircleAvatar(
              backgroundColor: color,
              child: Icon(icon,color:Colors.white),
            ),
          ),
          Container(
            child: Text(label,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Container(
            child: Text(label2,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
