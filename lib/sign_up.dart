import 'package:book_store_app/book_store_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height_var = MediaQuery.of(context).size.height; //whole height
    double width_var = MediaQuery.of(context).size.width; //whole width
    List img = ['image 4.png', 'image 5.png', 'image 6.png'];
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
                    image: AssetImage('image/Group 4.png'), fit: BoxFit.cover),
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
                child: RaisedButton(
                  color: Color.fromRGBO(193, 148, 93, 1),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 32, color: Color.fromRGBO(6, 2, 1, 1)),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BookStoreHome()));
                  },
                ),
              ),
            ),
            SizedBox(height: width_var * 0.04),
            Container(
              child: Text(
                'or sign up with social media account',
                style: TextStyle(
                    color: Color.fromRGBO(193, 148, 93, 1), fontSize: 16),
              ),
            ),
            SizedBox(height: width_var * 0.02),
            Wrap(
              children: List<Widget>.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('image/' + img[index]),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
