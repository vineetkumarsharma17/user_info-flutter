import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String img="assets/images/vineet.jpg";
  String name='Vineet Kumar Sharma';
  String email='vineetsha@student.iul.ac.in';
  String blood='O+';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Information"),
      ),
      body: ListView(
        //padding: EdgeInsets.all(20),
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide()),
            ),
            child: ListTile(
              contentPadding:EdgeInsets.all(30),
              //EdgeInsets.symmetric(vertical: 20.0, horizontal: 26.0),
              // dense: true,
              //isThreeLine: false,
              tileColor: Colors.green[200],
              title: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              subtitle: Text(email+"\n"+blood,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(img),
              ),
              onTap: (){
                print("hello");
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide()),
            ),
            child: ListTile(
              contentPadding:EdgeInsets.all(30),
              //EdgeInsets.symmetric(vertical: 20.0, horizontal: 26.0),
              // dense: true,
              //isThreeLine: false,
              tileColor: Colors.green[200],
              title: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              subtitle: Text(email+"\n"+blood,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(img),
              ),
              onTap: (){

                print("hello");
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide()),
            ),
            child: ListTile(
              contentPadding:EdgeInsets.all(30),
              //EdgeInsets.symmetric(vertical: 20.0, horizontal: 26.0),
              // dense: true,
              //isThreeLine: false,
              tileColor: Colors.green[200],
              title: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              subtitle: Text(email+"\n"+blood,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(img),
              ),
              onTap: (){

                print("hello");
              },
            ),
          ),
        ],
      ),
    );
  }
}
