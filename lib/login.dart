import 'package:book_store_app/book_store_page.dart';
import 'package:book_store_app/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Future<void> createUser() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _registerEmail, password: _registerPassword);
      print('User $userCredential');
    } on FirebaseAuthException catch (e) {
      print('Error: $e');
    } catch (e) {
      print('Error: $e');
    }
  }

  //2 variables for users input
  String _registerEmail = '';
  String _registerPassword = '';

  @override
  Widget build(BuildContext context) {
    double height_var = MediaQuery.of(context).size.height; //whole height
    double width_var = MediaQuery.of(context).size.width; //whole width
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width_var,
              height: height_var * 0.55,
              decoration: BoxDecoration(
                //creating a box that will hold an image
                image: DecorationImage(
                    image: AssetImage('image/Group 1.png'), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 70, right: 70),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(223, 212, 202, 1)),
                    child: TextField(
                      onChanged: (value) {
                        _registerEmail = value;
                      },
                      //let users enter data(email, password)
                      cursorColor: Color.fromRGBO(223, 212, 202, 1),
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle:
                              TextStyle(color: Color.fromRGBO(193, 148, 93, 1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(193, 148, 93, 1))),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(223, 212, 202, 1)),
                    child: TextField(
                      onChanged: (value) {
                        _registerPassword = value;
                      },
                      //let users enter data(email, password)
                      cursorColor: Color.fromRGBO(193, 148, 93, 1),
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle:
                              TextStyle(color: Color.fromRGBO(193, 148, 93, 1)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(193, 148, 93, 1))),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container()),
                      Text(
                        'Forgot your password?',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(193, 148, 93, 1),
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: ButtonTheme(
                minWidth: 200,
                height: 50,
                // ignore: deprecated_member_use
                child: MaterialButton(
                    color: Color.fromRGBO(193, 148, 93, 1),
                    child: Text(
                      'Sign IN',
                      style: TextStyle(
                          fontSize: 32, color: Color.fromRGBO(6, 2, 1, 1)),
                    ),
                    onPressed: () {
                      createUser();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BookStoreHome()));
                    }),
              ),
            ),
            SizedBox(height: 20),
            RichText(
                text: TextSpan(
              //if we want to do more than 1 part in a different way
              text: 'Don\'t have an account?  ',
              style: TextStyle(
                  color: Color.fromRGBO(193, 148, 93, 1), fontSize: 18),
            )),
            SizedBox(
              height: 5,
            ),
            // ignore: deprecated_member_use
            Container(
              child: RaisedButton(
                color: Colors.white,
                child: Text(
                  'Create an account',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => SignUp()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
