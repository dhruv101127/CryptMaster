import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CoinPage extends StatefulWidget {
  const CoinPage({
    super.key,
  });

  @override
  State<CoinPage> createState() => _CoinPageState();
}

class _CoinPageState extends State<CoinPage> {
  String? name;
  String? logo;
  String? price;
  String? symbol;

  @override
  void initState() {
    name = Get.arguments['name'];
    logo = Get.arguments['logo'];
    price = Get.arguments['price'];
    symbol = Get.arguments['symbol'];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          spacing: 5,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(logo ?? ""),
            ),
            SizedBox(
              width: 65,
              child: Text(
                name ?? "",
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              "($symbol)",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton.icon(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 250,
                        child: Column(
                          children: [
                            Text(
                              "Exchange",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w700),
                            ),
                            ListTile(
                              onTap: () {},
                              leading: Icon(
                                Icons.arrow_outward_rounded,
                                color: Color(0xFF0063F5),
                                size: 30,
                              ),
                              title: Text(
                                "Send Crypto",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              subtitle: Text(
                                  "Send Crypto from one wallet to another wallet"),
                            ),
                            Divider(),
                            ListTile(
                              onTap: () {},
                              leading: Icon(
                                Icons.call_received_rounded,
                                color: Color(0xFF0063F5),
                                size: 30,
                              ),
                              title: Text(
                                "Receive Crypto",
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              subtitle: Text(
                                  "Receive Crypto from one wallet to another wallet"),
                            )
                          ],
                        ),
                      );
                    });
              },
              label: Text("Exchange"),
              icon: SvgPicture.asset(
                "assets/arrow.svg",
                height: 20,
              ),
              style: ElevatedButton.styleFrom(
                  elevation: 3, backgroundColor: Colors.blue[50]),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            spacing: 10,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  "$price",
                  style: TextStyle(fontSize: 27),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                color: Colors.grey[100],
                child: SvgPicture.asset(
                  "assets/cryptograph.svg",
                  height: 410,
                ),
              ),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          foregroundColor: Colors.grey[700],
                          elevation: 5),
                      child: Text("1H")),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          foregroundColor: Colors.grey[700],
                          elevation: 5),
                      child: Text("24H")),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          foregroundColor: Colors.grey[700],
                          elevation: 5),
                      child: Text("1M")),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          foregroundColor: Colors.grey[700],
                          elevation: 5),
                      child: Text("1Y")),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          foregroundColor: Colors.grey[700],
                          elevation: 5),
                      child: Text("All")),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  foregroundImage: NetworkImage(logo ?? ""),
                  radius: 30,
                ),
                title: Text(name ?? ""),
                subtitle: Text("0.00 $symbol"),
                tileColor: Colors.white,
                trailing: Text(
                  "₹ 0.00",
                  style: TextStyle(fontSize: 20),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              ListTile(
                  onTap: () {},
                  title: Text(
                    "Transactions",
                    style: TextStyle(fontSize: 18),
                  ),
                  tileColor: Colors.white,
                  trailing: Icon(
                    Icons.navigate_next_rounded,
                    size: 30,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/sell");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[400],
                  foregroundColor: Colors.white,
                  elevation: 30,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  minimumSize: Size(120, 57)),
              child: Text(
                "SELL",
                style: TextStyle(fontSize: 18),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/buy");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[400],
                  foregroundColor: Colors.white,
                  elevation: 30,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  minimumSize: Size(120, 57)),
              child: Text(
                "BUY",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
