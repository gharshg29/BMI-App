import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Buisness Card',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/pic.jpg'),
              ),
            ),
            Text(
              'Harsh Gupta',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25.0,
              child: Divider(
                color: Colors.tealAccent,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 45.0,
                  ),
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    '7275585838',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 75, vertical: 10),
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'gharshgupta29@gmail.com',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
