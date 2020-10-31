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
                                buildTextField(Icons.person, "Full Name"),
                                buildTextField(Icons.mail, "Email"),
                                buildTextField(Icons.lock, "Password"),
                                buildTextField(
                                    Icons.lock_outline, "Repeat Password"),
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
                          SizedBox(height: 40),
                          InkWell(
                            onTap: () {
                              print("Account Created!");
                            },
                            child: Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 80),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))),
                              child: Center(
                                child: Text(
                                  "Create",
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

  Container buildTextField(IconData icon, String _hintText) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300])),
      ),
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(
              icon,
              size: 20,
              color: Colors.orange,
            ),
            hintText: _hintText,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
            border: InputBorder.none),
      ),
    );
  }
}
