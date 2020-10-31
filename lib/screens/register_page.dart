import 'package:flutter/material.dart';
import 'package:si_pegat/screens/login_page.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.orange[400],
              Colors.orange[700],
              Colors.orange[900]
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            // padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "S i - P E G A T",
                        style: TextStyle(color: Colors.white, fontSize: 45),
                      ),
                      // SizedBox(height: 5),
                      Text(
                        "Create an Account",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            // padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.orange,
                                      blurRadius: 10,
                                      offset: Offset(0, 0))
                                ]),
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.person, size: 20),
                                        hintText: "FullName",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.person_pin, size: 20),
                                        hintText: "Username",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        icon:
                                            Icon(Icons.phone_android, size: 20),
                                        hintText: "Phone",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.mail, size: 20),
                                        hintText: "Email",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.lock, size: 20),
                                        hintText: "Password",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                        border: InputBorder.none),
                                    obscureText: true,
                                  ),
                                ),
                                Container(
                                  child: TextField(
                                    decoration: InputDecoration(
                                        icon:
                                            Icon(Icons.lock_outline, size: 20),
                                        hintText: "Repeat Password",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                        border: InputBorder.none),
                                    obscureText: true,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 205),
                            child: Row(
                              children: [
                                Text(
                                  "Already Have One?",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey[500]),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pop(MaterialPageRoute(
                                        builder: (contex) => LoginPage()));
                                    print("Login Screen Tapped!");
                                  },
                                  child: Text(
                                    " Login",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.orange[500]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 60),
                          InkWell(
                            onTap: () {
                              print("Account Created!");
                            },
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))),
                              child: Center(
                                child: Text(
                                  "Create Your Account",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
