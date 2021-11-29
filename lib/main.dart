import 'package:book_store_app/book_store_page.dart';
import 'package:book_store_app/login.dart';
import 'package:book_store_app/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  final Future<FirebaseApp> _initialize = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialize,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text('Error: ${snapshot.error}'),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          //check the login state live
          return StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, streamSnapshot) {
                if (streamSnapshot.hasError) {
                  return Scaffold(
                    body: Center(
                      child: Text('Error: ${streamSnapshot.error}'),
                    ),
                  );
                }

                if (streamSnapshot.connectionState == ConnectionState.active) {
                  //get the user. If the user is login
                  Object? _user = streamSnapshot.data;
                  if (_user == null) {
                    return Login();
                  } else {
                    return BookStoreHome(); ////PROBLEM
                  }
                }

                //check the authentication state
                return Scaffold(
                  body: Center(
                    child: Text('Checking the authentication...'),
                  ),
                );
              });
        }
        return Scaffold(
          body: Center(
            child: Text('Loading...'),
          ),
        );
      },
    );
  }
}
