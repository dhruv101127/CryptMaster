import 'dart:convert';

import 'package:crypto_app/model/api_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<CryptoModel?> getModel() async {
    try {
      Uri url = Uri.parse("https://dummyjson.com/c/8c07-e76d-4544-ad8b");

      http.Response response = await http.get(url);

      if (response.statusCode == 200) {
        CryptoModel model = CryptoModel.fromJson(jsonDecode(response.body));

        return model;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
