import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: PageViewDemo(),
  ));
}

class Postings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Volunteer Opportunities"),
        //backgroundColor: Colors.black,
        /*title: Text(
          'Volunteer Opportunities',
          style: TextStyle(height: 0, fontSize: 30),
        ),*/
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

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generous',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: Center (
            child: LoginPage(title: 'Login'),
        ),
            //PageViewDemo(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle loginStyle = TextStyle(
      fontSize: 25.0, fontWeight: FontWeight.w300, fontFamily: 'Open Sans');

  @override
  Widget build(BuildContext context) {
    //final callKey = Globalkey<PageViewDemo>();
    return Scaffold(
      body: Center(
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: new Image.asset('assets/generous.png',
                      width: 100.0, height: 100.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Text(
                      //   'Welcome!',
                      //   style: TextStyle(
                      //       color: Colors.green,
                      //       fontSize: 50.0,
                      //       fontWeight: FontWeight.bold),
                      // ),
                    ],
                  ),
                ),
                TextFormField(
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    labelText: 'Username',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  child: Text(
                    '                   Login                   ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22.0))),
                  padding: EdgeInsets.all(10),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile()),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Forgot username/password?',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Text(
                        'Need an account? Sign up',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        MyApp(),
        //Postings(),
        PopUp(),
      ],
    );
  }
}

class PopUp extends StatelessWidget {
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
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: new Text(
              'Posted by: ',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: new Image.asset('assets/AndyWick.png',
                width: 180.0, height: 70.0),
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
            child: new Text(
              'Date: Every Sunday at 12-1pm',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: new Text(
              'Place: Marshall Park, Riverside, CA',
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
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                ),
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EndPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Thank You';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center (
            child: Text('You have successfully signed up!',
                style: TextStyle(fontSize: 25),
            ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final callKey = Globalkey<PageViewDemo>();
    return Scaffold(
      body: Center(
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Text(
                      //   'Welcome!',
                      //   style: TextStyle(
                      //       color: Colors.green,
                      //       fontSize: 50.0,
                      //       fontWeight: FontWeight.bold),
                      // ),
                    ],
                  ),
                ),
                TextFormField(
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    labelText: 'First Name',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    labelText: 'Last Name',
                  ),
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    labelText: 'Phone #',
                  ),
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    labelText: 'Email Address',
                  ),
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                ),
                RaisedButton(
                  child: Text(
                    '                 Sign up                   ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(22.0))),
                  padding: EdgeInsets.all(10),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EndPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
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
          new Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: new Text(
              'My Profile',
              style: new TextStyle(
                fontSize: 30.0,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: new Image.asset('assets/dylan.png',
                width: 380.0, height: 170.0),
          ),
          new Container(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: new Text(
              '5 more hours to your next Master Volunteer Certificate',
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.green,
                fontWeight:  FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          RaisedButton(
            child: Text(
              '           Volunteer Opportunities                ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            color: Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            padding: EdgeInsets.all(10),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Postings()),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          RaisedButton(
            child: Text(
              '                     My Sign Ups                                     ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            color: Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            padding: EdgeInsets.all(10),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Postings()),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          RaisedButton(
            child: Text(
              '                     My Postings                          ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            color: Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            padding: EdgeInsets.all(10),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Postings()),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          RaisedButton(
            child: Text(
              '                   My Certificates                     ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            color: Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            padding: EdgeInsets.all(10),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Postings()),
              );
            },
          ),
        ],
      ),
    );
  }
}
