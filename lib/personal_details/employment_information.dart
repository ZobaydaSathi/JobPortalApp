import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/employment.dart';


class EmploymentInformation extends StatefulWidget {
  @override
  _EmploymentInformationState createState() => _EmploymentInformationState();
}

class _EmploymentInformationState extends State<EmploymentInformation> {
  bool _checkbox=false;

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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Employment()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.0,top: 90),
                            child: Text('Employment History',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            SizedBox(height: 25.0,),
            _container(label: 'Company Name*',),
            SizedBox(height: 20.0,),
            _container(label: 'Company Business*'),
            SizedBox(height: 20.0,),
            _container(label: 'Company Location'),
            SizedBox(height: 20.0,),
            _container(label: 'Designation*'),
            SizedBox(height: 20.0,),
            _container(label: 'Department'),
            SizedBox(height: 20.0,),
           _container(label: 'Responsibilities'),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 120,
                          margin: EdgeInsets.only(top: 20.0,left: 30.0),
                          child: _text(label: 'Start Date*'),
                        ),
                        Container(
                          width: 100,
                          margin: EdgeInsets.only(top: 20.0,left: 80.0),
                          child: _text(label: 'End Date*')
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    margin:EdgeInsets.only(left: 40.0),
                    child: Checkbox(
                      activeColor: Color(0xFF192965),
                      value: _checkbox,
                      onChanged: (bool value){
                        setState(() {
                          _checkbox=value;
                        });
                      },
                    ),
                  ),
                  Container(
                    child: Text('Currently Working',style: TextStyle(fontSize: 16.0,color: Color(0xFF192965)),),
                  )
                ],
              ),
            ),
            Container(
              child: FlatButton(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 310,
                      padding: EdgeInsets.all(15.0),
                      margin: EdgeInsets.only(top: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: Color.fromARGB(96, 96, 96, 96),width: 1)
                      ),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                                child:Text('Area of Experiences',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Color(0xFF192965),
                                  ),
                                )
                            ),
                            Container(
                              child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0,right: 110.0),
              child: Text('*Max 3 Working Disciplines',
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.black54,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 205,bottom: 40.0,top: 20.0),
              child: InkWell(
                onTap: (){
//                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrainingGraphics()));
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

class _text extends StatelessWidget {
  const _text({
    Key key,
    @required this.label
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder:OutlineInputBorder(borderSide: BorderSide(color:Colors.grey,width: 2),
            borderRadius: BorderRadius.all(const Radius.circular(10.0))
        ),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xFF192965),width: 2),
            borderRadius: BorderRadius.all(const Radius.circular(10.0))
        ),
        labelText: label,
        labelStyle: TextStyle(
            fontWeight: FontWeight.normal,
            color: Color(0xFF192965),
            fontSize: 20.0
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
      width: 300,
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
