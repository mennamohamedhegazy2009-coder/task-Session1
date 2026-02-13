class  SilverModel {
  String? name;
  double? price;
  String? symbol;
  String? updatedAt;
  String? updatedAtReadable;

  SilverModel(
      {this.name,
      this.price,
      this.symbol,
      this.updatedAt,
      this.updatedAtReadable});

  SilverModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    symbol = json['symbol'];
    updatedAt = json['updatedAt'];
    updatedAtReadable = json['updatedAtReadable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['price'] = this.price;
    data['symbol'] = this.symbol;
    data['updatedAt'] = this.updatedAt;
    data['updatedAtReadable'] = this.updatedAtReadable;
    return data;
  }
}