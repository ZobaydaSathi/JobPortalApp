import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobportalapp/personal_details/reference_information.dart';

class UploadPhoto extends StatefulWidget {
  @override
  _UploadPhotoState createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReferenceInformation()));
                          },
                            child: Container(
                              margin:EdgeInsets.only(top: 90.0,left: 40.0),
                              child: Icon(Icons.arrow_back,color: Colors.white,),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 45.0,top: 90),
                            child: Text('Upload Photo',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              child: Image.asset('images/male.png',height: 150,fit: BoxFit.cover,color: Color(0xFF192965),),
            ),
            SizedBox(height: 15.0,),
            Container(
              child: Text('No Photo is Uploaded Yet',
                style:TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold) ,),
            ),
            SizedBox(height: 15.0,),
            Container(
              child: Text('Upload JPG , GIF , PNG or BMP',
                style: TextStyle(fontSize: 15.0,color: Colors.black54),),
            ),

            Container(
              child: Text('Max Size of Photo is 3 MB',
                style: TextStyle(fontSize: 15.0,color: Colors.black54),),
            ),
            SizedBox(height: 20.0,),
            Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Image.asset('images/dash.gif',fit: BoxFit.cover,width: 200,),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20,left: 50.0),
                      child: Text('Upload Photo',
                        style: TextStyle(
                            color:  Colors.black45,
                            fontSize: 20.0
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50,left: 80.0),
                      child: Icon(FontAwesomeIcons.image,size: 40,color: Colors.black26,),
                    )
                  ],
                ),
              ),
            SizedBox(height: 10.0,),
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset('images/mg.png',fit: BoxFit.cover,),
                  ),
                  Container(
                    child: Text('For any help',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40.0),
                    child: Text('Call at 163547',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.pink
                      ),
                    ),
                  ),
                ],
              ),
            )





          ],
        ),
      ),
    );
  }
}
