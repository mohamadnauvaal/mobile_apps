import 'package:flutter/material.dart';

class absen extends StatefulWidget {
  const absen({Key? key}) : super(key: key);

  @override
  _absenState createState() => _absenState();
}

class _absenState extends State<absen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff112d35),
          leading: Icon(Icons.arrow_back_ios),
          title: Text('tes'),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
