import 'package:crypto_app/model/api_model.dart';
import 'package:crypto_app/services/api_services.dart';
import 'package:crypto_app/services/web_socket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CryptoModel model = CryptoModel();
  _HomeScreenState() {
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
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: Color(0xFFF8F9FA),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 150,
                  width: 389,
                  decoration: BoxDecoration(
                      color: Color(0xFF0063F5),
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(30),
                          right: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Welcome Investor,",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        "Make your first Investment today",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed("/quickinvest");
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(10),
                                    right: Radius.circular(10)))),
                        child: Text(
                          "Invest now",
                          style: TextStyle(
                            color: Color(0xFF0063F5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Trending Coins",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                model.data == null
                    ? Center(
                        child: CircularProgressIndicator(
                        color: Color(0xFF0063F5),
                      ))
                    : Expanded(
                        child: ListView.separated(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Obx(
                              () => ListTile(
                                leading: CircleAvatar(
                                  child: Image.network(
                                      model.data?[index].logo ?? ""),
                                ),
                                title: Text(model.data?[index].name ?? ""),
                                subtitle: Text(model.data?[index].symbol ?? ""),
                                tileColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(10),
                                        right: Radius.circular(10))),
                                trailing: Text(
                                    "\$${CoinWebSocket.coins.value.coinsC}"),
                                onTap: () {
                                  Get.toNamed("/coinpage", arguments: {
                                    'logo': model.data?[index].logo,
                                    'name': model.data?[index].name,
                                    'price': model.data?[index].priceUsd,
                                    'symbol': model.data?[index].symbol,
                                  });
                                },
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            height: 10,
                          ),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
