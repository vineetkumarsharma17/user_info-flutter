import 'package:flutter/material.dart';
import 'package:user_info/details.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("User Information"),
        ),
        body: HomePage(),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  final img=[
    "assets/images/vineet.jpg",
    "assets/images/khalid.jpg",
    "assets/images/sahil.jpg",
    "assets/images/vineet.jpg",
    "assets/images/khalid.jpg","assets/images/sahil.jpg",
  ];
  final name=[
    'Vineet kumar sharma',
    'Khalid Pathan',
    'Sahil Khan',
    'Vineet kumar sharma',
    'Khalid Pathan','Sahil Khan',
  ];
  final email=[
    'vineetsha@student.iul.ac.in',
    'khalidpathan@gmail.com',
    'sahilpathan@gmail.com',
    'vineetsha@student.iul.ac.in',
    'khalidpathan@gmail.com',
    'sahilpathan@gmail.com',
  ];
  final blood=['O+','B+',"A-",'O+','B+',"A-"];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: name.length,
itemBuilder: (context,index){
        return ListTile(
          contentPadding:EdgeInsets.all(30),
          //EdgeInsets.symmetric(vertical: 20.0, horizontal: 26.0),
          // dense: true,
          //isThreeLine: false,
          tileColor: Colors.green,
          title: Text(
            name[index],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          subtitle: Text(email[index]+"\nBlood: "+blood[index],
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(img[index]),
          ),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>
                  MyDetails(img: img[index], name: name[index], emails: email[index], blood: blood[index]),
            ),
            );
            print("hello");
          },

        );
},
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          height: 0,
          thickness: 5,
          color: Colors.white,
        ); },
    );
  }
}
