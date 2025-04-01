// ignore_for_file: unnecessary_this

class CryptoModel {
  List<Data>? data;
  int? timestamp;

  CryptoModel({this.data, this.timestamp});

  CryptoModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['timestamp'] = this.timestamp;
    return data;
  }
}

class Data {
  String? id;
  String? logo;
  String? rank;
  String? symbol;
  String? name;
  String? supply;
  String? maxSupply;
  String? marketCapUsd;
  String? volumeUsd24Hr;
  String? priceUsd;
  String? changePercent24Hr;
  String? vwap24Hr;
  String? explorer;

  Data(
      {this.id,
      this.logo,
      this.rank,
      this.symbol,
      this.name,
      this.supply,
      this.maxSupply,
      this.marketCapUsd,
      this.volumeUsd24Hr,
      this.priceUsd,
      this.changePercent24Hr,
      this.vwap24Hr,
      this.explorer});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logo = json['logo'];
    rank = json['rank'];
    symbol = json['symbol'];
    name = json['name'];
    supply = json['supply'];
    maxSupply = json['maxSupply'];
    marketCapUsd = json['marketCapUsd'];
    volumeUsd24Hr = json['volumeUsd24Hr'];
    priceUsd = json['priceUsd'];
    changePercent24Hr = json['changePercent24Hr'];
    vwap24Hr = json['vwap24Hr'];
    explorer = json['explorer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['logo'] = logo;
    data['rank'] = rank;
    data['symbol'] = symbol;
    data['name'] = name;
    data['supply'] = supply;
    data['maxSupply'] = maxSupply;
    data['marketCapUsd'] = marketCapUsd;
    data['volumeUsd24Hr'] = this.volumeUsd24Hr;
    data['priceUsd'] = this.priceUsd;
    data['changePercent24Hr'] = this.changePercent24Hr;
    data['vwap24Hr'] = vwap24Hr;
    data['explorer'] = explorer;
    return data;
  }
}
