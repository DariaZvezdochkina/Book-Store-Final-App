import 'package:book_store_app/detailed_product_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class BookStoreHome extends StatelessWidget {
  const BookStoreHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                child: Text('ARCHAIC',
                    style: TextStyle(
                        color: Color.fromRGBO(193, 148, 93, 1), fontSize: 48)),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 40,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                        color: Color.fromRGBO(193, 148, 93, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'Log out',
                        )),
                  ),
                  Container(
                    width: 60,
                    height: 40,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(
                              color: Color.fromRGBO(193, 148, 93, 1)),
                        ),
                        onPressed: () {},
                        child: Image.asset('image/akar-icons_cart.png')),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 40,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      color: Color.fromRGBO(223, 212, 202, 1),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(193, 148, 93, 1)),
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: Text('Home'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(193, 148, 93, 1)),
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: Text('New'),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color.fromRGBO(193, 148, 93, 1)),
                          borderRadius: BorderRadius.circular(30)),
                      onPressed: () {},
                      child: Text('Profile'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: IconButton(
                          icon: Image.asset(
                            'image/book1.png',
                            height: 220,
                            width: 170,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductPage()));
                          },
                        ),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(223, 212, 202, 1),
                            border: Border.all(
                                color: Color.fromRGBO(193, 148, 93, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                      Container(
                        child: Image.asset('image/book2.png'),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(223, 212, 202, 1),
                            border: Border.all(
                                color: Color.fromRGBO(193, 148, 93, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset('image/book3.png'),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(223, 212, 202, 1),
                            border: Border.all(
                                color: Color.fromRGBO(193, 148, 93, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                      Container(
                        child: Image.asset('image/book4.png'),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(223, 212, 202, 1),
                            border: Border.all(
                                color: Color.fromRGBO(193, 148, 93, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset('image/book5.png'),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(223, 212, 202, 1),
                            border: Border.all(
                                color: Color.fromRGBO(193, 148, 93, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      ),
                      Container(
                        child: Image.asset('image/book6.png'),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(223, 212, 202, 1),
                            border: Border.all(
                                color: Color.fromRGBO(193, 148, 93, 1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            )
          ], //
        )));
  }
}
