import 'package:flutter/material.dart';
import 'main.dart';
import 'contact.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key, required this.data}) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_box),
        backgroundColor: Colors.red,
        title: Text('About Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is the About screen',
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
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Go to Home Page')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('Go to Contact Page'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(data),
          ],
        ),
      ),
    );
  }
}
