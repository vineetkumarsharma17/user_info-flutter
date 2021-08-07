import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDetails extends StatelessWidget {
  final String img;
  final String name;
  final String emails;
  final String blood;

  const MyDetails({required this.img,required this.name,required this.emails, required this.blood});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Details"),
      ),
      body: Center(
        child: Container(
         padding: EdgeInsets.all(20),
         // alignment: Alignment.center,
          height: 500,
         //  width: 300,
          decoration: BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: Colors.lightGreen,
                offset: new Offset(8, 6)
              )
            ],
            borderRadius: BorderRadius.circular(50),
            color: Colors.green,
            border:Border.all(color: Colors.black,width: 4),
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(img),
              ),
              SizedBox(height: 40,),
              Text(name,style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 25,),
              Text('Email:-'+emails,style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 30,),
              Text('Blood Group:'+blood,style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
