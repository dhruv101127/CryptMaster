import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Buy extends StatefulWidget {
  const Buy({super.key});

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Buy",
          ),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {
                  Get.offAndToNamed("/sell");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFFEBEE),
                    foregroundColor: Color(0xFFD90429)),
                child: Text("SELL"),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 30,
            children: [
              Text(
                "Enter Amount in INR",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 80,
                width: 130,
                child: TextField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(5),
                  ],
                  autofocus: true,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      prefixIcon: Text(
                        "₹",
                        style: TextStyle(fontSize: 40),
                      ),
                      hintText: "0"),
                ),
              ),
              Text(
                "Min ₹100 - Max ₹10,000",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Current Balance: ₹0.00",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 2, padding: EdgeInsets.all(8)),
                      child: Text(
                        "+100",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 2, padding: EdgeInsets.all(8)),
                      child: Text(
                        "+300",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 2, padding: EdgeInsets.all(8)),
                      child: Text(
                        "+500",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 2, padding: EdgeInsets.all(8)),
                      child: Text(
                        "+1000",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 2, padding: EdgeInsets.all(8)),
                      child: Text(
                        "+2000",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      )),
                ],
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(350, 50),
                      backgroundColor: Color(0xFF0D4865),
                      foregroundColor: Colors.white),
                  child: Text(
                    "BUY",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
