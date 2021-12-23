import 'package:flutter/material.dart';
import 'package:mobile_apps/dashboard.dart';

class LoginPage extends StatelessWidget {
  final String OpenSansBold = 'Open Sans Bold';
  final myUsernameController = TextEditingController();
  final myPasswordController = TextEditingController();
  late String nUsername, nPassword;

  //tambahkan form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Container(
          decoration: BoxDecoration(color: Color(0xfff4f4f4)),
          padding: EdgeInsets.all(30),
          child: Column(children: <Widget>[
            Container(
              child: new Image(
                  image: AssetImage("assets/images/Marketlab.png"), width: 200),
            ),
            Container(
                child: Text(
              "Sign in to continue",
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
            SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
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
                  padding: EdgeInsets.all(40),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Username Kosong';
                          }
                          return null;
                        },
                        controller: myUsernameController,
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xffd9d9d9), width: 3.0)),
                          hintText: "Masukan Username Anda",
                          labelText: "Username",
                          icon: Icon(Icons.people),
                          hintStyle: TextStyle(
                              color: Color(0xff737373),
                              fontWeight: FontWeight.bold),
                          labelStyle: TextStyle(
                              color: Color(0xff737373),
                              fontWeight: FontWeight.bold),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffd9d9d9), width: 3.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password Kosong';
                          }
                          return null;
                        },
                        controller: myPasswordController,
                        obscureText: true,
                        decoration: new InputDecoration(
                          hintText: "Masukan Password",
                          labelText: "Password",
                          hintStyle: TextStyle(
                              color: Color(0xff737373),
                              fontWeight: FontWeight.bold),
                          labelStyle: TextStyle(
                              color: Color(0xff737373),
                              fontWeight: FontWeight.bold),
                          icon: Icon(Icons.lock),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xffd9d9d9), width: 3.0)),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffd9d9d9), width: 3.0),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(5.0)),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      MaterialButton(
                        minWidth: 500.0,
                        height: 60.0,
                        color: Color(0xff112d35),
                        textColor: Colors.white,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(8.0)),
                        onPressed: () {
                          nUsername = myUsernameController.text;
                          nPassword = myPasswordController.text;

                          if (_formKey.currentState!.validate()) {
                            if (nUsername != 'nauval') {
                              print("Username Salah");
                            } else if (nPassword != 'marketlab123') {
                              print("Password Salah");
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dashboard(
                                            nama: nUsername,
                                            password: nPassword,
                                          )));
                            }
                          }
                        },
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                              letterSpacing: 1.0,
                              fontFamily: OpenSansBold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
