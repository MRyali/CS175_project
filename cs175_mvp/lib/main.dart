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
        backgroundColor: Colors.black,
        title: Text(
          'Volunteer Opportunities',
          style: TextStyle(height: 0, fontSize: 30),
        ),
      ),
      body: Center(
        child: Scrollbar(
          child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return Card(
                    color: Colors.grey[400],
                    child: ListTile(
                      //backgroundColor: Colors.blue,
                      title: Text(
                          'Posting # ${index + 1}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ));
              }),
        ),
      ),
    );
  }
}