import 'dart:convert';
import 'package:crypto_app/model/price_model.dart';
import 'package:get/get.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class CoinWebSocket {
  static Rx<Coins> coins = Coins().obs;

  Future<void> connectSocket() async {
    final wsUrl =
        Uri.parse('wss://stream.binance.com:9443/ws'); // Correct endpoint
    final channel = WebSocketChannel.connect(wsUrl);

    await channel.ready;

    final subscribeMessage = {
      "method": "SUBSCRIBE",
      "params": ["btcusdt@ticker"], // ✅ Correct format for market data
      "id": 1
    };

    channel.sink.add(jsonEncode(subscribeMessage)); // Send the message

    channel.stream.listen((message) {
      coins.value = coinsFromJson(message);
    });
  }
}
