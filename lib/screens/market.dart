import 'package:crypto_app/controller/market_controller.dart';
import 'package:crypto_app/model/api_model.dart';
import 'package:crypto_app/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  CryptoModel model = CryptoModel();
  MarketController _marketController = Get.find<MarketController>();

  _MarketState() {
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
      backgroundColor: Color.fromARGB(255, 242, 242, 243),
      body: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Market status...",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    iconSize: 27,
                  )
                ],
              ),
              Text("In the past 24 hours"),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Coins",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text("Market-INR"),
                    icon: Icon(
                      Icons.arrow_drop_down_rounded,
                      size: 27,
                    ),
                  )
                ],
              ),
              TabBar(
                controller: _marketController.marketController,
                tabs: [
                  Tab(text: "All"),
                  Tab(text: "Gainer"),
                  Tab(text: "Loser"),
                  Tab(text: "Favourite"),
                ],
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Color(0xFF0063F5),
                labelColor: Color(0xFF0063F5),
                unselectedLabelColor: Colors.grey[600],
              ),
              Expanded(
                child: TabBarView(
                  controller: _marketController.marketController,
                  children: [
                    model.data == null
                        ? Center(
                            child: CircularProgressIndicator(
                            color: Color(0xFF0063F5),
                          ))
                        : Column(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  itemCount: model.data?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: CircleAvatar(
                                        child: Image.network(
                                            model.data?[index].logo ?? ""),
                                      ),
                                      title:
                                          Text(model.data?[index].name ?? ""),
                                      subtitle:
                                          Text(model.data?[index].symbol ?? ""),
                                      tileColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(10),
                                              right: Radius.circular(10))),
                                      trailing: Text(
                                        model.data?[index].priceUsd ?? "",
                                      ),
                                      onTap: () {
                                        Get.toNamed("/coinpage", arguments: {
                                          'logo': model.data?[index].logo,
                                          'name': model.data?[index].name,
                                          'price': model.data?[index].priceUsd,
                                          'symbol': model.data?[index].symbol,
                                        });
                                      },
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    height: 10,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                ),
                              ),
                            ],
                          ),
                    model.data == null
                        ? Center(
                            child: CircularProgressIndicator(
                            color: Color(0xFF0063F5),
                          ))
                        : Column(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  itemCount: 7,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: CircleAvatar(
                                        child: Image.network(
                                            model.data?[index].logo ?? ""),
                                      ),
                                      title:
                                          Text(model.data?[index].name ?? ""),
                                      subtitle:
                                          Text(model.data?[index].symbol ?? ""),
                                      tileColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(10),
                                              right: Radius.circular(10))),
                                      trailing: Text(
                                        model.data?[index].priceUsd ?? "",
                                      ),
                                      onTap: () {
                                        Get.toNamed("/coinpage", arguments: {
                                          'logo': model.data?[index].logo,
                                          'name': model.data?[index].name,
                                          'price': model.data?[index].priceUsd,
                                          'symbol': model.data?[index].symbol,
                                        });
                                      },
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    height: 10,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                ),
                              ),
                            ],
                          ),
                    model.data == null
                        ? Center(
                            child: CircularProgressIndicator(
                            color: Color(0xFF0063F5),
                          ))
                        : Column(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: CircleAvatar(
                                        child: Image.network(
                                            model.data?[index].logo ?? ""),
                                      ),
                                      title:
                                          Text(model.data?[index].name ?? ""),
                                      subtitle:
                                          Text(model.data?[index].symbol ?? ""),
                                      tileColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(10),
                                              right: Radius.circular(10))),
                                      trailing: Text(
                                        model.data?[index].priceUsd ?? "",
                                      ),
                                      onTap: () {
                                        Get.toNamed("/coinpage", arguments: {
                                          'logo': model.data?[index].logo,
                                          'name': model.data?[index].name,
                                          'price': model.data?[index].priceUsd,
                                          'symbol': model.data?[index].symbol,
                                        });
                                      },
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    height: 10,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                ),
                              ),
                            ],
                          ),
                    model.data == null
                        ? Center(
                            child: CircularProgressIndicator(
                            color: Color(0xFF0063F5),
                          ))
                        : Column(
                            children: [
                              Expanded(
                                child: ListView.separated(
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: CircleAvatar(
                                        child: Image.network(
                                            model.data?[index].logo ?? ""),
                                      ),
                                      title:
                                          Text(model.data?[index].name ?? ""),
                                      subtitle:
                                          Text(model.data?[index].symbol ?? ""),
                                      tileColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.horizontal(
                                              left: Radius.circular(10),
                                              right: Radius.circular(10))),
                                      trailing: Text(
                                        model.data?[index].priceUsd ?? "",
                                      ),
                                      onTap: () {
                                        Get.toNamed("/coinpage", arguments: {
                                          'logo': model.data?[index].logo,
                                          'name': model.data?[index].name,
                                          'price': model.data?[index].priceUsd,
                                          'symbol': model.data?[index].symbol,
                                        });
                                      },
                                    );
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    height: 10,
                                  ),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
