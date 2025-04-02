// To parse this JSON data, do
//
//     final coins = coinsFromJson(jsonString);

import 'dart:convert';

Coins coinsFromJson(String str) => Coins.fromJson(json.decode(str));

String coinsToJson(Coins data) => json.encode(data.toJson());

class Coins {
  String? coinsE;
  int? e;
  String? s;
  String? coinsP;
  String? p;
  String? w;
  String? x;
  String? coinsC;
  String? q;
  String? coinsB;
  String? b;
  String? coinsA;
  String? a;
  String? coinsO;
  String? h;
  String? coinsL;
  String? v;
  String? coinsQ;
  int? o;
  int? c;
  int? f;
  int? l;
  int? n;

  Coins({
    this.coinsE,
    this.e,
    this.s,
    this.coinsP,
    this.p,
    this.w,
    this.x,
    this.coinsC,
    this.q,
    this.coinsB,
    this.b,
    this.coinsA,
    this.a,
    this.coinsO,
    this.h,
    this.coinsL,
    this.v,
    this.coinsQ,
    this.o,
    this.c,
    this.f,
    this.l,
    this.n,
  });

  factory Coins.fromJson(Map<String, dynamic> json) => Coins(
        coinsE: json["e"],
        e: json["E"],
        s: json["s"],
        coinsP: json["p"],
        p: json["P"],
        w: json["w"],
        x: json["x"],
        coinsC: json["c"],
        q: json["Q"],
        coinsB: json["b"],
        b: json["B"],
        coinsA: json["a"],
        a: json["A"],
        coinsO: json["o"],
        h: json["h"],
        coinsL: json["l"],
        v: json["v"],
        coinsQ: json["q"],
        o: json["O"],
        c: json["C"],
        f: json["F"],
        l: json["L"],
        n: json["n"],
      );

  Map<String, dynamic> toJson() => {
        "e": coinsE,
        "E": e,
        "s": s,
        "p": coinsP,
        "P": p,
        "w": w,
        "x": x,
        "c": coinsC,
        "Q": q,
        "b": coinsB,
        "B": b,
        "a": coinsA,
        "A": a,
        "o": coinsO,
        "h": h,
        "l": coinsL,
        "v": v,
        "q": coinsQ,
        "O": o,
        "C": c,
        "F": f,
        "L": l,
        "n": n,
      };
}
