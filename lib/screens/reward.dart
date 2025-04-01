import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Reward extends StatelessWidget {
  const Reward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 242, 242, 243),
        appBar: AppBar(
          title: Text(
            "Reward section",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Color.fromARGB(255, 242, 242, 243),
        ),
        body: SafeArea(
            minimum: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            child: Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 200,
                    width: 389,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                            right: Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Coupons",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "No. of coupon Won",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                            Text("00",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Token won from spin",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                            Text("00",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Remaining coupons for spin",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                            Text("00",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    width: 389,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                            right: Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Referral",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total No.of referral",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                            Text("00",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total No.of Qualified referrals",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                            Text("00",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 170,
                    width: 389,
                    decoration: BoxDecoration(
                        color: Color(0xFFF59300),
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                            right: Radius.circular(30))),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Refer and Earn",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            SizedBox(
                              width: 230,
                              child: Text(
                                "Refer your friend and win Cryptocoins",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10)))),
                              child: Text(
                                "Refer now",
                                style: TextStyle(
                                  color: Color(0xFFF59300),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/referral.svg")
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 170,
                    width: 389,
                    decoration: BoxDecoration(
                        color: Color(0xFF9300F5),
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(30),
                            right: Radius.circular(30))),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rewards",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            SizedBox(
                              width: 225,
                              child: Text(
                                "Like, Share & get free coupons",
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(10),
                                          right: Radius.circular(10)))),
                              child: Text(
                                "Share now",
                                style: TextStyle(
                                  color: Color(0xFF9300F5),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/likeshare.svg")
                      ],
                    ),
                  ),
                ])));
  }
}
