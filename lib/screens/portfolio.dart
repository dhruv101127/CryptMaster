import 'package:crypto_app/model/api_model.dart';
import 'package:crypto_app/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  CryptoModel model = CryptoModel();

  _PortfolioState() {
    ApiServices().getModel().then((value) {
      setState(() {
        if (value != null) {
          model = value;
        }
      });
    }).onError(
      (error, stackTrace) {
        print(error);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 200,
                width: 389,
                decoration: BoxDecoration(
                    color: Color(0xFF0063F5),
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(30), right: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Portfolio",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Holding value",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    Text(
                      "₹21,905.75/-",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Invested value",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "₹0.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Current value",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Text(
                              "₹0.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/deposit");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFF0063F5),
                        elevation: 4,
                        side: BorderSide(color: Color(0xFF0063F5)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fixedSize: Size(169, 50)),
                    child: Text(
                      "Deposit INR",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/withdraw");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Color(0xFF0063F5),
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        side: BorderSide(color: Color(0xFF0063F5)),
                        fixedSize: Size(169, 50)),
                    child: Text(
                      "Withdraw INR",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              Text("Your coins",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              model.data == null
                  ? Center(
                      child: CircularProgressIndicator(
                      color: Color(0xFF0063F5),
                    ))
                  : Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                foregroundImage:
                                    NetworkImage(model.data?[index].logo ?? ""),
                                radius: 25,
                              ),
                              title: Text(model.data?[index].name ?? ""),
                              subtitle:
                                  Text("0.00 ${model.data?[index].symbol}"),
                              tileColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(10),
                                      right: Radius.circular(10))),
                              trailing: Text(
                                "₹0.00/-",
                              ),
                              onTap: () {},
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 20),
                          itemCount: 5),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
