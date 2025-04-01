import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Sell extends StatelessWidget {
  const Sell({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sell",
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {
                  Get.offAndToNamed("/buy");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFDCF9EB),
                    foregroundColor: Color(0xFF21BF73)),
                child: Text("BUY"),
              ),
            )
          ],
          centerTitle: false,
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
                "Availabe Balance: ₹0.00",
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
                    "SELL",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
