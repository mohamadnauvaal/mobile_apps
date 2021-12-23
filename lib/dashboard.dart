import 'package:flutter/material.dart';
import 'package:mobile_apps/absen.dart';

class dashboard extends StatefulWidget {
  final String nama;
  final String password;

  dashboard({Key? key, required this.nama, required this.password})
      : super(key: key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<dashboard> {
  final String OpenSansBold = 'Open Sans Bold';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome,',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25.0,
                          fontFamily: 'Open Sans',
                          color: Color(0xff112d35)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${widget.nama}',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25.0,
                          fontFamily: 'Open Sans',
                          color: Color(0xff112d35)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'PT. Marketlab Kreatif Media',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                          fontFamily: 'Open Sans',
                          color: Color(0xff112d35)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Web Developer',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                          fontFamily: 'Open Sans',
                          color: Color(0xff112d35)),
                    ),
                  ),
                ]),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffd9dbda),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        )
                      ]),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.all(40),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MaterialButton(
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => absen()),
                              )
                            },
                            minWidth: 150.0,
                            height: 150.0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            color: Color(0xff112d35),
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.access_time,
                                    color: Colors.white, size: 60.0),
                                Text("Absen",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: OpenSansBold))
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: () => {},
                            minWidth: 150.0,
                            height: 150.0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0)),
                            color: Color(0xff112d35),
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              // Replace with a Row for horizontal icon + text
                              children: <Widget>[
                                Icon(Icons.access_time,
                                    color: Colors.white, size: 60.0),
                                Text("Absen",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: OpenSansBold))
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
