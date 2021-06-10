import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
              'https://bayareacrisisnursery.org/wp-content/uploads/2019/08/Volunteer.jpg'),
          new Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: new Text(
              'Make Blessing Bags',
              style: new TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: new Text(
              'Create care packages of snacks and bottled water to hand out to homeless people you may encounter while driving.',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            alignment: AlignmentDirectional.center,
            child: ElevatedButton.icon(
              icon: Text('Sign up'),
              label: Icon(Icons.arrow_forward, size: 16),
              onPressed: () => {},
            ),
          ),
        ],
      ),
    );
  }
}
