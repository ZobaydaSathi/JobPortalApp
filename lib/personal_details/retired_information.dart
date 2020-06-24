import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/Retired.dart';

class RetiredInformation extends StatefulWidget {
  @override
  _RetiredInformationState createState() => _RetiredInformationState();
}

class _RetiredInformationState extends State<RetiredInformation> {
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Retired()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40.0,top: 90),
                            child: Text('Employment History (Retir...',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 130,
                    margin: EdgeInsets.only(top: 20.0,left: 25.0),
                    child: _text(label: 'BA *'),
                  ),
                  Container(
                    width: 130,
                    margin: EdgeInsets.only(top: 20.0,left: 45.0),
                    child: _text(label: 'NO *')
                  ),
                ],
              ),
            ),
            _container(label: 'Ranks *'),
           _container(label: 'Type *'),
            _container(label: 'Arms *'),
           _container(label: 'Trade'),
            _container(label: 'Course'),
            _container(label: 'Date of Reirement *'),
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
      margin: EdgeInsets.only(top: 20.0),
      child: TextField(
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
