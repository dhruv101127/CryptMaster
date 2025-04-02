import 'package:flutter/material.dart';

class Ui extends StatelessWidget {
  const Ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          height: 450,
          width: 370,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(15), right: Radius.circular(15))),
          child: Column(
            spacing: 20,
            children: [
              Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Email or Number",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.solid))),
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.lock),
                    fillColor: Colors.white,
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(style: BorderStyle.solid))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Accept all terms and conditions")],
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Submit"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    foregroundColor: Colors.white,
                    fixedSize: Size(290, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10)))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text("Forget Password"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
