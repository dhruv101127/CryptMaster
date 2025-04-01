import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  signout() async {
    await FirebaseAuth.instance.signOut();
    GoogleSignIn().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: SafeArea(
        child: Column(
          spacing: 15,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              height: 250,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF0D4965),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  spacing: 10,
                  children: [
                    CircleAvatar(
                      radius: 53,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        onForegroundImageError: (exception, stackTrace) => null,
                        radius: 50,
                        foregroundImage: NetworkImage(
                            FirebaseAuth.instance.currentUser!.photoURL ?? ""),
                        backgroundImage:
                            AssetImage("assets/profile_default.jpeg"),
                      ),
                    ),
                    Text(
                      FirebaseAuth.instance.currentUser!.displayName ?? "USER",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    Text(FirebaseAuth.instance.currentUser!.email ?? "",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    Text(
                        FirebaseAuth.instance.currentUser!.phoneNumber ??
                            "Phone no.",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              onTap: () {},
              leading: Icon(
                Icons.history_rounded,
                size: 25,
              ),
              title: Text(
                "History",
                style: TextStyle(fontSize: 20),
              ),
              tileColor: Colors.white,
              trailing: Icon(
                Icons.navigate_next_rounded,
                size: 35,
              ),
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              onTap: () {},
              leading: Icon(
                Icons.monetization_on_rounded,
                size: 25,
              ),
              title: Text(
                "Bank Details",
                style: TextStyle(fontSize: 20),
              ),
              tileColor: Colors.white,
              trailing: Icon(
                Icons.navigate_next_rounded,
                size: 35,
              ),
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              onTap: () {},
              leading: Icon(
                Icons.notifications,
                size: 25,
              ),
              title: Text(
                "Notifications",
                style: TextStyle(fontSize: 20),
              ),
              tileColor: Colors.white,
              trailing: Icon(
                Icons.navigate_next_rounded,
                size: 35,
              ),
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              onTap: () {},
              leading: Icon(
                Icons.question_mark_rounded,
                size: 25,
              ),
              title: Text(
                "Help and Support",
                style: TextStyle(fontSize: 20),
              ),
              tileColor: Colors.white,
              trailing: Icon(
                Icons.navigate_next_rounded,
                size: 35,
              ),
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              onTap: () {},
              leading: Icon(
                Icons.pending,
                size: 25,
              ),
              title: Text(
                "Terms & Conditions",
                style: TextStyle(fontSize: 20),
              ),
              tileColor: Colors.white,
              trailing: Icon(
                Icons.navigate_next_rounded,
                size: 35,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                signout();
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(250, 45),
                  backgroundColor: Colors.red[100],
                  foregroundColor: Colors.red),
              child: Text(
                "Sign Out",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
