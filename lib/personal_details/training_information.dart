import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/training.dart';
import 'package:jobportalapp/personal_details/training_graphics.dart';

class TrainingInformation extends StatefulWidget {
  @override
  _TrainingInformationState createState() => _TrainingInformationState();
}

class _TrainingInformationState extends State<TrainingInformation> {
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Training()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30.0,top: 90),
                            child: Text('Training Summary',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            SizedBox(height: 25.0,),
            _container(label: 'Training Title*'),
            SizedBox(height: 20.0,),
           _container(label: 'Topic Covered*'),
            SizedBox(height: 20.0,),
            _container(label: 'Institute Name*'),
            SizedBox(height: 20.0,),
            _container(label: 'Country*'),
            SizedBox(height: 20.0,),
            _container(label: 'Location'),
            SizedBox(height: 20.0,),
            _container(label: 'Training Year*'),
            SizedBox(height: 20.0,),
            _container(label: 'Duration*'),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(left: 205,bottom: 40.0,top: 20.0),
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TrainingGraphics()));
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
