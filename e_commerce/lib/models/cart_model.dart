class CartModel {
  int? id;
  String? name;
  int? price;
  int? stars;
  String? img;
  int? typeId;
  int? quantity;
  bool? isExit;
  String? time;

  CartModel(
      {this.id,
      this.name,
      this.price,
      this.stars,
      this.img,
      this.typeId,
      this.quantity,
      this.isExit,
      this.time});

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    stars = json['stars'];
    img = json['img'];
    typeId = json['type_id'];
    quantity = json['quantity'];
    isExit = json['isExit'];
    time = json['time'];
  }
}
