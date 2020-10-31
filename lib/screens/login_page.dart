import 'package:flutter/material.dart';
import 'package:si_pegat/screens/register_page.dart';

class LoginPage extends StatelessWidget {
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
                  padding: EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "S i - P E G A T",
                        style: TextStyle(color: Colors.white, fontSize: 45),
                      ),
                      // SizedBox(height: 5),
                      Text(
                        "Please Login",
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
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
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.only(left: 175),
                            child: Row(
                              children: [
                                Text(
                                  "Don't Have an Account?",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey[500]),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterPage()));
                                    print("Sign Up Tapped!");
                                  },
                                  child: Text(
                                    " Sign Up",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.orange[500]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          InkWell(
                            onTap: () {
                              print("Forgot Password Pressed!");
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                          SizedBox(height: 25),
                          InkWell(
                            onTap: () {
                              print("Login Tapped");
                            },
                            child: Container(
                              height: 60,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Continue With Phone Number or Google",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    print("Continue With Phone Number");
                                  },
                                  child: Container(
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          "Phone",
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ),
                                      height: 50,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50))),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    print("Continue With Google");
                                  },
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "Google",
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                    ),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(50))),
                                  ),
                                ),
                              )
                            ],
                          )
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
