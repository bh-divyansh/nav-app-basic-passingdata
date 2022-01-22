import 'package:flutter/material.dart';
import 'about.dart';
import 'contact.dart';

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MyHomescreen(),
      '/contact': (context) => ContactPage(),
      // '/about': (context) => AboutPage(),
    },
  ));
}

class MyHomescreen extends StatelessWidget {
  const MyHomescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        backgroundColor: Colors.red,
        title: Text('Homescreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is the Homescreen',
              style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AboutPage(data: 'fist page data recd')));
                  // Navigator.pushNamed(context, '/about', );
                },
                child: Text('Go to About Page')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('Go to Contact Page'),
            )
          ],
        ),
      ),
    );
  }
}
