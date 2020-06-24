import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/contact.dart';


class ContactInformation extends StatefulWidget {
  @override
  _ContactInformationState createState() => _ContactInformationState();
}

class _ContactInformationState extends State<ContactInformation> {
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
                      height:150,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('images/dark.jpg',fit: BoxFit.cover,),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          InkWell(onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Contact()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 80.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40.0,top: 80),
                            child: Text('Contact Details',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 160.0,top: 30.0),
              child: Text('Present Address*',
                style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Color(0xFF192965)),),
            ),
            SizedBox(height: 10.0,),
            _container(label: 'District*',),
           _container(label: 'Thana*'),
           _container(label: 'House No. / Road /Village*'),
            Container(
              margin: EdgeInsets.only(right: 140.0,top: 30.0),
              child: Text('Parmanent Address*',
                style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Color(0xFF192965)),),
            ),
            SizedBox(height: 10.0,),
            _container(label: 'District*'),
            _container(label: 'Thana*'),
           _container(label: 'House No. / Road /Village*'),
            Container(
              margin: EdgeInsets.only(right: 160.0,top: 30.0),
              child: Text('Mobile Number',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Color(0xFF192965)),),
            ),
            _container(label: 'Mobile No. 1'),
            Container(
              width: 150,
              margin: EdgeInsets.only(left: 140.0),
              child: Card(
                elevation: 5.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Text('Add Mobile No.',style: TextStyle(color: Colors.redAccent),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.phone,color: Colors.redAccent,),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 160.0,top: 30.0),
              child: Text('Email Address',
                style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Color(0xFF192965)),),
            ),
           _container(label: 'Primary Email Address'),
            Container(
              width: 170,
              margin: EdgeInsets.only(left: 120.0),
              child: Card(
                elevation: 5.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Text('Add Email Address',style: TextStyle(color: Colors.redAccent),),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: Icon(Icons.mail_outline,color: Colors.redAccent,),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(left: 235,bottom: 30.0),
              child: InkWell(
                onTap: (){
//                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PageTwo()));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.pink,
                  child: Icon(FontAwesomeIcons.check,color: Colors.white,),
                ),
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
      width: 310,
      padding: EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(const Radius.circular(10.0))
          ),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(const Radius.circular(10.0))
          ),
          labelText: label,
          labelStyle: TextStyle(
              fontWeight: FontWeight.normal,
              color: Color(0xFF192965),
              fontSize: 20.0
          ),
        ),
      ),
    );
  }
}
