import 'package:crypto_app/screens/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text.trim(), password: password.text.trim());
    Get.offAll(Wrapper());
  }

  loginGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    await FirebaseAuth.instance.signInWithCredential(credential);
    debugPrint("login wrapper");
    Get.offAll(Wrapper());
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Color(0xFF0F172A),
        body: SingleChildScrollView(
          child: Center(
            child: SafeArea(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/crypto-logo.png",
                      height: 200,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 50),
                    height: MediaQuery.of(context).size.height * 0.71,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(19, 252, 252, 254),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(30),
                          right: Radius.circular(30),
                        ),
                        border: Border.all(color: Color(0xFFD4A054), width: 2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      spacing: 10,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Welcome\n",
                              style: TextStyle(fontSize: 30)),
                          TextSpan(text: "to ", style: TextStyle(fontSize: 30)),
                          TextSpan(
                              text: "CryptMaster,\n",
                              style: TextStyle(
                                  fontSize: 33,
                                  color: Color(0xFFD4A054),
                                  fontWeight: FontWeight.w700)),
                          TextSpan(
                              text: "Login to your account",
                              style: TextStyle(
                                fontSize: 32,
                              ))
                        ])),
                        TextField(
                          textInputAction: TextInputAction.next,
                          controller: email,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              filled: true,
                              fillColor: Colors.grey[700],
                              label: Text(
                                "Email",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        TextField(
                          obscureText: true,
                          controller: password,
                          onSubmitted: (value) => signIn(),
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              filled: true,
                              fillColor: Colors.grey[700],
                              label: Text(
                                "Choose password",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        // TextField(
                        //   decoration: InputDecoration(
                        //       filled: true,
                        //       fillColor: Colors.grey[800],
                        //       label: Text(
                        //         "Re-enter Password",
                        //         style: TextStyle(color: Colors.white),
                        //       )),
                        // ),
                        ElevatedButton(
                            onPressed: (() {
                              if (email.text == "") {
                                Get.snackbar("Error", "Please give credentials",
                                    snackPosition: SnackPosition.BOTTOM,
                                    backgroundColor: Colors.red,
                                    duration: Duration(seconds: 2));
                              } else {
                                signIn();
                              }
                            }),
                            child: Text(
                              "LOGIN",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            )),
                        Divider(),
                        Text(
                          "Login with Google",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            loginGoogle();
                          },
                          child: Image.asset(
                            "assets/google.png",
                            height: 60,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Not a member?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.offAndToNamed("/signup");
                                },
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
